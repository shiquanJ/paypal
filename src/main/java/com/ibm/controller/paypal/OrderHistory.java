package com.ibm.controller.paypal;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.paypal.api.payments.Links;
import com.paypal.api.payments.Order;
import com.paypal.api.payments.Payment;
import com.paypal.base.APICallPreHandler;
import com.paypal.base.ConfigManager;
import com.paypal.base.Constants;
import com.paypal.base.HttpConfiguration;
import com.paypal.base.SDKUtil;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.HttpMethod;
import com.paypal.base.rest.PayPalRESTException;
import com.paypal.base.rest.PayPalResource;
import com.paypal.base.rest.RESTUtil;
import com.paypal.base.sdk.info.SDKVersionImpl;

@Controller
public class OrderHistory {
	@Autowired(required=true)
    private APIContext apiContext;
	
	
	@RequestMapping("/searchOrder")
    public ModelAndView searchOrder(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/pay/order");
		String ordercd = request.getParameter("ordercd");
		Object[] parameters = new Object[] {ordercd.trim()};
		Payment payment = null;
		try {
			if(ordercd.startsWith("PAYID")){
				// 这是 java sdk 返回的paymentID
				payment = Payment.get(apiContext, ordercd.trim());
			}else{
				// 这是 java sdk 返回的orderID
				String pattern = "v1/payments/sale/{0}";
				String resourcePath = RESTUtil.formatURIPath(pattern, parameters);
				String payLoad = "";
				payment = PayPalResource.configureAndExecute(apiContext, HttpMethod.GET, resourcePath, payLoad, Payment.class);
			}
			
			System.out.println(payment.toString());
			mv.addObject("json", payment.toJSON());
			
			for(Links links : payment.getLinks()){
                if(links.getRel().equals("self")){
                	System.out.println("return URL::"+links.getHref());
                	
                }
            }
			
		}catch(PayPalRESTException e) {
			// 这是 js 返回的orderID
			String pattern = "v2/checkout/orders/{0}";
			String resourcePath = RESTUtil.formatURIPath(pattern, parameters);
			String payLoad = "";
			try {
				payment = PayPalResource.configureAndExecute(apiContext, HttpMethod.GET, resourcePath, payLoad, Payment.class);
				mv.addObject("json", payment.toJSON());
				
				return mv;
			} catch (PayPalRESTException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		return mv;
	}
}
