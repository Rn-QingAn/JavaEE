package com.rng.controller;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.config.AlipayConfig;
import com.rng.entity.AccountFruit;
import com.rng.entity.Fruit;
import com.rng.service.AccountService;
import com.rng.service.OrderService;
import com.rng.util.getDate;




@Controller
public class AccountController {
	@Autowired
	AccountService accountService;
	@Autowired
	OrderService orderService;
	@RequestMapping("/createAccount") 
	@ResponseBody
	public void createAccount(@RequestBody AccountFruit accountFruit,HttpSession session) {
		String accountName=(String) session.getAttribute("UserName");
		String accountNo=accountService.SelectAccountNo(accountFruit.getAccountNo());
		//����Ϊ�պͶ����Ų�����ͬ
		if(accountFruit !=null || accountNo!=accountFruit.getAccountNo()) {
			getDate date=new getDate();
			//�����û�����
			accountFruit.setAccountUser(accountName);
			//�µ�ʱ��
			accountFruit.setAccountDate(date.getDate());
			//���������
			accountService.createAccount(accountFruit);
			List<AccountFruit>  account = accountService.SelectAccountFruit(accountFruit.getAccountNo());
			//��ѯ�ܼ�
			String accountSumPrice=accountService.SelectAccountPrice(accountFruit.getAccountNo());
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>�������ɳɹ�"+accountSumPrice);
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>�������ɳɹ�");
			session.setAttribute("accountSumPrice", accountSumPrice);
			session.setAttribute("WIDout_trade_no", accountFruit.getAccountNo());
			session.setAttribute("ACCOUNT", account);
			
		
		}
		
	}
	
	
	@RequestMapping(value="/goAlipay") 
	public @ResponseBody String alipay(HttpSession session){
		String result = null;
		
		String accountName=(String) session.getAttribute("name");
		//��չ��ﳵ
		orderService.emptyCat(accountName);
		String no=(String) session.getAttribute("WIDout_trade_no");
		AccountFruit accountFruit=accountService.selectAccountAll(no);
		
		if(accountFruit!=null || no!=null) {
			String WIDout_trade_no=accountService.SelectAccountNo(no);
			String WIDtotal_amount=accountFruit.getAccountPrice();
			String WIDsubject=accountFruit.getAccountName();
			String WIDbody="���ʲ�ժ";
			//��ó�ʼ����AlipayClient
			AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
			
			//�����������
			AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
			alipayRequest.setReturnUrl(AlipayConfig.return_url);
			alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
			
			//�̻������ţ��̻���վ����ϵͳ��Ψһ�����ţ�����
			String out_trade_no;
			String total_amount;
			String subject;
			String body;
			try {
				out_trade_no = new String(WIDout_trade_no.getBytes("ISO-8859-1"),"UTF-8");
				
				//���������
				total_amount = new String(WIDtotal_amount.getBytes("ISO-8859-1"),"UTF-8");
				//�������ƣ�����
				subject = new String(WIDsubject.getBytes("ISO-8859-1"),"UTF-8");
				//��Ʒ�������ɿ�
				body = new String(WIDbody.getBytes("ISO-8859-1"),"UTF-8");
				
				alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
						+ "\"total_amount\":\""+ total_amount +"\"," 
						+ "\"subject\":\""+ subject +"\"," 
						+ "\"body\":\""+ body +"\"," 
						+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			//�����BizContent����������ѡ����������������Զ��峬ʱʱ�����timeout_express������˵��
			//alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
			//		+ "\"total_amount\":\""+ total_amount +"\"," 
			//		+ "\"subject\":\""+ subject +"\"," 
			//		+ "\"body\":\""+ body +"\"," 
			//		+ "\"timeout_express\":\"10m\"," 
			//		+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
			//��������ɲ��ġ�������վ֧����API�ĵ�-alipay.trade.page.pay-����������½�
			
			//����
			
			try {
				result = alipayClient.pageExecute(alipayRequest).getBody();
			} catch (AlipayApiException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		//���
		return result;
    }

}
