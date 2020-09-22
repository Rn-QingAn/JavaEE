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
		//不能为空和订单号不能相同
		if(accountFruit !=null || accountNo!=accountFruit.getAccountNo()) {
			getDate date=new getDate();
			//设置用户订单
			accountFruit.setAccountUser(accountName);
			//下单时间
			accountFruit.setAccountDate(date.getDate());
			//创建付款订单
			accountService.createAccount(accountFruit);
			List<AccountFruit>  account = accountService.SelectAccountFruit(accountFruit.getAccountNo());
			//查询总价
			String accountSumPrice=accountService.SelectAccountPrice(accountFruit.getAccountNo());
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>订单生成成功"+accountSumPrice);
			System.out.println("======================>>>>>>>>>>>>>>>>>>>>>订单生成成功");
			session.setAttribute("accountSumPrice", accountSumPrice);
			session.setAttribute("WIDout_trade_no", accountFruit.getAccountNo());
			session.setAttribute("ACCOUNT", account);
			
		
		}
		
	}
	
	
	@RequestMapping(value="/goAlipay") 
	public @ResponseBody String alipay(HttpSession session){
		String result = null;
		
		String accountName=(String) session.getAttribute("name");
		//清空购物车
		orderService.emptyCat(accountName);
		String no=(String) session.getAttribute("WIDout_trade_no");
		AccountFruit accountFruit=accountService.selectAccountAll(no);
		
		if(accountFruit!=null || no!=null) {
			String WIDout_trade_no=accountService.SelectAccountNo(no);
			String WIDtotal_amount=accountFruit.getAccountPrice();
			String WIDsubject=accountFruit.getAccountName();
			String WIDbody="新鲜采摘";
			//获得初始化的AlipayClient
			AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
			
			//设置请求参数
			AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
			alipayRequest.setReturnUrl(AlipayConfig.return_url);
			alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
			
			//商户订单号，商户网站订单系统中唯一订单号，必填
			String out_trade_no;
			String total_amount;
			String subject;
			String body;
			try {
				out_trade_no = new String(WIDout_trade_no.getBytes("ISO-8859-1"),"UTF-8");
				
				//付款金额，必填
				total_amount = new String(WIDtotal_amount.getBytes("ISO-8859-1"),"UTF-8");
				//订单名称，必填
				subject = new String(WIDsubject.getBytes("ISO-8859-1"),"UTF-8");
				//商品描述，可空
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
			
			
			
			//若想给BizContent增加其他可选请求参数，以增加自定义超时时间参数timeout_express来举例说明
			//alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
			//		+ "\"total_amount\":\""+ total_amount +"\"," 
			//		+ "\"subject\":\""+ subject +"\"," 
			//		+ "\"body\":\""+ body +"\"," 
			//		+ "\"timeout_express\":\"10m\"," 
			//		+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
			//请求参数可查阅【电脑网站支付的API文档-alipay.trade.page.pay-请求参数】章节
			
			//请求
			
			try {
				result = alipayClient.pageExecute(alipayRequest).getBody();
			} catch (AlipayApiException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		//输出
		return result;
    }

}
