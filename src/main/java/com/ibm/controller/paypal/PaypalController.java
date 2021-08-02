package com.ibm.controller.paypal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ibm.bean.PaypalPaymentIntent;
import com.ibm.bean.PaypalPaymentMethod;
import com.ibm.common.URLUtils;
import com.ibm.controller.test.TestController;
import com.ibm.service.PayPalService;
import com.paypal.api.payments.Amount;
import com.paypal.api.payments.Item;
import com.paypal.api.payments.ItemList;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Order;
import com.paypal.api.payments.Payee;
import com.paypal.api.payments.Payer;
import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.Phone;
import com.paypal.api.payments.RedirectUrls;
import com.paypal.api.payments.RelatedResources;
import com.paypal.api.payments.Sale;
import com.paypal.api.payments.ShippingAddress;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;


@Controller
@SpringBootApplication(scanBasePackages = "com.ibm") 
public class PaypalController {
	public static void main(String[] args) {
		SpringApplication.run(PaypalController.class, args);
		System.out.println("server start");
	    
	}
	public static final String PAYPAL_SUCCESS_URL = "pay/success";
    public static final String PAYPAL_CANCEL_URL = "pay/cancel";


    @Autowired
    private PayPalService paypalService;
    //购物车
    @RequestMapping("/goCart")
    public ModelAndView goCart(HttpServletRequest request){
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("/cart");
    	
    	String[] prdlist = request.getParameterValues("prdlist");
    	List list = new ArrayList();
    	HashMap map = new HashMap();
    	
    	// 商品settings
    	for (int i = 0; i < prdlist.length; i++) {
    		map = new HashMap();
			if(("PD0000001").equals(prdlist[i])){
				map.put("optname", "Hot Deal");
				map.put("prdname", "Product1 SPF 50+ PA++++");
				map.put("prdcd", "PD0000001");
				map.put("prdprice", "50");
				map.put("img", "https://images.innisfree.co.kr/upload/product/29802_p_S_107.jpg");
				map.put("idx", i);
				list.add(map);
			}
			else if(("PD0000002").equals(prdlist[i])){
				map.put("optname", "新产品");
				map.put("prdname", "Product2 SPF 50+");
				map.put("prdcd", "PD0000002");
				map.put("prdprice", "50");
				map.put("img", "https://images.innisfree.co.kr/upload/product/29302_l_S_107.jpg");
				map.put("idx", i);
				list.add(map);
			}
			else if(("PD0000003").equals(prdlist[i])){
				map.put("optname", "库存紧张");
				map.put("prdname", "Product3 Sample 50+");
				map.put("prdcd", "PD0000003");
				map.put("prdprice", "30");
				map.put("img", "https://images.innisfree.co.kr/upload/product/24588_l_S_107.jpg");
				map.put("idx", i);
				list.add(map);
			}
			else if(("PD0000004").equals(prdlist[i])){
				map.put("optname", "库存紧张");
				map.put("prdname", "Product4 Sample spa++");
				map.put("prdcd", "PD0000004");
				map.put("prdprice", "40");
				map.put("img", "https://images.innisfree.co.kr/upload/product/5424_l_S_107.jpg");
				map.put("idx", i);
				list.add(map);
			}
			else if(("PD0000005").equals(prdlist[i])){
				map.put("optname", "Hot Deal");
				map.put("prdname", "Product5");
				map.put("prdcd", "PD0000005");
				map.put("prdprice", "35");
				map.put("img", "https://images.innisfree.co.kr/upload/product/20446_l_S_107.jpg");
				map.put("idx", i);
				list.add(map);
			}
			else if(("PD0000006").equals(prdlist[i])){
				map.put("optname", "Hot Deal");
				map.put("prdname", "Product6 Sample spa++");
				map.put("prdcd", "PD0000006");
				map.put("prdprice", "20");
				map.put("img", "https://images.innisfree.co.kr/upload/product/28677_l_S_107.jpg");
				map.put("idx", i);
				list.add(map);
			}
			else if(("PD0000007").equals(prdlist[i])){
				map.put("optname", "Hot Deal");
				map.put("prdname", "Product7 Sample spa++");
				map.put("prdcd", "PD0000007");
				map.put("prdprice", "21");
				map.put("img", "https://images.innisfree.co.kr/upload/product/18239_l_S_107.jpg");
				map.put("idx", i);
				list.add(map);
			}
			else if(("PD0000008").equals(prdlist[i])){
				map.put("optname", "Hot Deal");
				map.put("prdname", "Product8 Sample spa++");
				map.put("prdcd", "PD0000008");
				map.put("prdprice", "15");
				map.put("img", "https://images.innisfree.co.kr/upload/product/28738_l_S_107.jpg");
				map.put("idx", i);
				list.add(map);
			}
		}
    	mv.addObject("prdlist",list);
    	return mv ; 
    }
    @RequestMapping("/pay")
    public String pay(HttpServletRequest request){
    	
    	//从前台获取个人信息
    	String firstName = request.getParameter("firstName");
    	String lastName =  request.getParameter("lastName");
    	String phonNumber =  request.getParameter("phonNumber");
    	String email_address =  request.getParameter("email_address");
    	String postal_code =  request.getParameter("postal_code");
    	String country_code =  request.getParameter("country_code");
    	String state =  request.getParameter("state");
    	String city =  request.getParameter("city");
    	String adress1 =  request.getParameter("adress1");
    	String adress2 =  request.getParameter("adress2");
    	
    	//获取订单信息
    	String [] prdprice =  request.getParameterValues("prdprice");
    	String [] prdqty =  request.getParameterValues("prdqty");
    	String [] prdname =  request.getParameterValues("prdname");
    	String [] prdcd =  request.getParameterValues("prdcd");
    	String [] selPrdFlag =  request.getParameterValues("selPrdFlag");
    	
    	String cancelUrl = URLUtils.getBaseURl(request) + "/" + PAYPAL_CANCEL_URL;
        String successUrl = URLUtils.getBaseURl(request) + "/" + PAYPAL_SUCCESS_URL;

        // 收货信息
        ShippingAddress shippingAddress = new ShippingAddress();
        shippingAddress.setState(state);
        shippingAddress.setCity(city);
        shippingAddress.setCountryCode(country_code);
        shippingAddress.setLine1(adress1);
        shippingAddress.setLine2(adress2);
        shippingAddress.setPhone(phonNumber);
        shippingAddress.setPostalCode(postal_code);
        shippingAddress.setRecipientName(firstName+"."+lastName);
        //商品信息
        ItemList itemList = new ItemList();
		List<Item> items = new ArrayList<Item>();
        Item item = new Item();
        Double total = 0.00;
        for (int i = 0; i < prdqty.length; i++) {
        	item = new Item();
        	//商品是否点击checkbox
        	if("Y".equals(selPrdFlag[i])){
        		total = total + (Double.valueOf(prdprice[i]) * Double.valueOf(prdqty[i]));
        		item.setName(prdname[i]).setQuantity(prdqty[i]).setCurrency("USD").setPrice(prdprice[i]).setSku(prdcd[i]);
        		items.add(item);
        	}
        	
		}
		itemList.setItems(items);
		
		 //订单信息
        Amount amount = new Amount();
        amount.setCurrency("USD");
        amount.setTotal(total.toString());

        Transaction transaction = new Transaction();
        transaction.setAmount(amount);
        itemList.setShippingAddress(shippingAddress);
        transaction.setItemList(itemList);
        
        List<Transaction> transactions = new ArrayList<>();
        transactions.add(transaction);
        
        Payee payee = new Payee();
        payee.setEmail("sb-wr1ym6594779@business.example.com");
        
        Phone phone = new Phone();
        phone.setCountryCode("US");
        phone.setNationalNumber(phonNumber);
        
        Payer payer = new Payer();
        payer.setPaymentMethod(PaypalPaymentMethod.paypal.toString());
        
        //付款人信息
        PayerInfo payerInfo = new PayerInfo();
        payerInfo.setEmail(email_address);
        payerInfo.setFirstName(firstName);
        payerInfo.setLastName(lastName);
        payer.setPayerInfo(payerInfo);
        
        RedirectUrls redirectUrls = new RedirectUrls();
        redirectUrls.setCancelUrl(cancelUrl);
        redirectUrls.setReturnUrl(successUrl);
        try {
        	//创建 payment 对象
            Payment payment = paypalService.createPayment(
            		transactions,
            		payer,
            		payee,
                    PaypalPaymentMethod.paypal, 
                    PaypalPaymentIntent.sale,
                    cancelUrl,
                    successUrl
                    );
            for(Links links : payment.getLinks()){
                if(links.getRel().equals("approval_url")){
                	System.out.println("return URL::"+links.getHref());
                	return "redirect:" + links.getHref();
                }
            }
        } catch (PayPalRESTException e) {
            e.printStackTrace();
        }
        return "redirect:/";
    }
    //支付取消->返回cart页面
    @RequestMapping(method = RequestMethod.GET, value = PAYPAL_CANCEL_URL)
    public ModelAndView cancelPay(){
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("/index");
    	return mv;
    }

    //成功的时候返回到这里
    @RequestMapping(method = RequestMethod.GET, value = PAYPAL_SUCCESS_URL)
    public ModelAndView successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId){
    	ModelAndView mv = new ModelAndView();
    	try {
            Payment payment = paypalService.executePayment(paymentId, payerId);
            List<Transaction> transactions = payment.getTransactions();
            String ordercd = "";
            for (int i = 0; i < transactions.size(); i++) {
            	Transaction transaction = transactions.get(i);
            	List<RelatedResources> relatedResources = transaction.getRelatedResources();
            	for (int j = 0; j < relatedResources.size(); j++) {
            		RelatedResources relatedResources2 = relatedResources.get(j);
            		Sale sale = relatedResources2.getSale();
            		ordercd = sale.getId();
				}
			}
            if(payment.getState().equals("approved")){
            	mv.addObject("OrderID",ordercd);
            	mv.addObject("PaymentId",paymentId);
            	mv.addObject("PayerID",payerId);
            	mv.setViewName("pay/success_java");
            }
        } catch (PayPalRESTException e) {
        	e.printStackTrace();
        }
        return mv;
    }
    //这是js sdk 过来的
    @RequestMapping("/complete")
    public ModelAndView searchOrder(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/pay/success_js");
		String orderID = request.getParameter("orderID");
		String payerID = request.getParameter("payerID");
		mv.addObject("OrderID",orderID);
		mv.addObject("PayerID",payerID);
		System.out.println("complete");
		return mv;
	}
    //支付失败页面
    @RequestMapping("/fail")
    public ModelAndView fail(HttpServletRequest request){
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("/pay/fail");
    	return mv;
    }
    @RequestMapping("/")
    public ModelAndView cart(HttpServletRequest request){
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("/index");
    	
    	return mv;
    }
}
