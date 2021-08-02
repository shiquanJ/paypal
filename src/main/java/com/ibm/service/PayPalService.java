package com.ibm.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ibm.bean.PaypalPaymentIntent;
import com.ibm.bean.PaypalPaymentMethod;
import com.paypal.api.payments.Amount;
import com.paypal.api.payments.Item;
import com.paypal.api.payments.ItemList;
import com.paypal.api.payments.Payee;
import com.paypal.api.payments.Payer;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.PaymentExecution;
import com.paypal.api.payments.PaymentInstruction;
import com.paypal.api.payments.Phone;
import com.paypal.api.payments.PotentialPayerInfo;
import com.paypal.api.payments.RedirectUrls;
import com.paypal.api.payments.ShippingAddress;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;
@Component
public class PayPalService {
	@Autowired(required=true)
    private APIContext apiContext;

    public Payment createPayment(
    		List<Transaction> transactions,
    		Payer payer,
    		Payee payee,
            PaypalPaymentMethod method, 
            PaypalPaymentIntent intent, 
            String cancelUrl, 
            String successUrl) throws PayPalRESTException{
        
    	Payment payment = new Payment();
        payment.setPayer(payer);
        payment.setIntent(intent.toString());
        payment.setState("COMPLETED");
        payment.setTransactions(transactions);
        
        RedirectUrls redirectUrls = new RedirectUrls();
        redirectUrls.setCancelUrl(cancelUrl);
        redirectUrls.setReturnUrl(successUrl);
        payment.setRedirectUrls(redirectUrls);
        
        return payment.create(apiContext);
    }

    public Payment executePayment(String paymentId, String payerId) throws PayPalRESTException{
        Payment payment = new Payment();
        payment.setId(paymentId);
        PaymentExecution paymentExecute = new PaymentExecution();
        paymentExecute.setPayerId(payerId);
        return payment.execute(apiContext, paymentExecute);
    }
}
