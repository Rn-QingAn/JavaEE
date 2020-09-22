package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016102800773032";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCJUUNm/4WVYcNdFM/h5t+FcrQc946wTcXj3y3kG1YBQ1jY5+nh0iKNV33hkEsBhrWVUzTtGvcBcYm2d7KL+/mKiOR2jtSrnipiyE77baHl1CuXpBu6K9g38Hli1FrMfqAv4kXmkjGGNwtqWsJtWpwd0/NkTmUhHfyhbNIcqBmA6iO2WNILRQ027is88rZAxuUIgHQ6vl1njiU0oc7imYOmfH+BCHrvaWqX377m2cQa3NdMAU6sOluqmmApBQFu0eaQfkSzXh7ucUGdZ+44d3LQQAIX5mahK6s0fQ3KVcvcbhXaclu4H/u40dO4WoryatCgeNy8pEEMnfPw7KennNlNAgMBAAECggEAer84iB6Lc7ATaeZLuXyee/S/ylEErNaouXxr0kcZR0HDbwlICUPE/SGjdfl9At0+/j+FxRlgiVrLpl8zLGzOcSbTSqN8ufhFnU2/RIOIwCA7426gFnhQ7Bg6+bwnejsKyCL1JxmxyW709loxCH2BpiwrmpN1VPgwNsBGxbUCLzhNmst0j8XFtMBkpp4ohArsGcEIZahxwKAKq8g6jiRpqyd1V+JaKIgzJFEZlyuIZCeH/dMuQnyb/hGNmUCwbXaFWTTj0RVMzF3XfTHQuBNBEsZF3Xg6HtXOAoMGxyW7w/ij4mLQFet0VtnWTvvMMB33BQdBejO0NtpN2w2FvV5c4QKBgQDFI0LsSNPrupRip4YgaEsPd0UBpgyyaDWUf3P84qZscSe804HoMg6TphhyZOi1zm6ywW+iqWt4u3Zb/+KeE21Z6pKpOkW0Ub1z4g6I5gvuyCvRmw1EYYCm9aF0Ac55DMm9ZaLOIa8DYXI6eyLChwzMcjvYLtgMXD2mW6FXlMvmZQKBgQCyUXr+KysxfqGgdIP458JFgvtDJbM2jaJXKEcC2VQtRhARfcTKjDoq5EiGZx1NfPvz/HJxyK9i6DrDS5Ju1OSPp+GhfHAUtfCeppUO172L2EIEjd0x94NaGnPI1BxjiS9P9g4oepOfO+Y4bgq/C+FuR/MPV1J1n26TifGpVlfkyQKBgQCqow3vZk6BMZv1FNqFPKET/wHtHmTJHGicZAHqt+ij3wItcMp2SLXTWaa5hdzkWY36DnNp0cnj1CfsFD5844X4mZFfB8CEB2i8YMSB/NYBVqSPJu3B7b+lROH+fv3QS6Bn3wyf7goGHBf6xNDennUWlh50zn9Vm5YFZDTwkSw4/QKBgCPdKWyHSCerPVylMonUKwmJ/3kQ0wuMzvLSof2bskdsyPyLnBHUxDouMbv+bzFPiukWg/oIj+XHqVHwGCJ8ZP/TlxjAi1ZPBXcTL/WNRI0k0JpT4gITsvJjUZg5uP/37nEZnt1bUed7x6Df2P91p0Bj7inOuUH47+dyng0d1Y2pAoGAJp/O+7VzFOGSM1Tvd2/tRaWXG2cMWP1SNft5MYNmiGgX+8yUOo9CtLWi9T437/XK6ED29XLVM7LwV6EVya4npgouIMJAXyjyPJ7KMxATntfcubWqxHzuBT1mIMjuhWrNZSMdLiTPHHkqkRMuHB2yOnz3UEf0gpt6Lr4Ng/X0ogk=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmVg4w+QHNSQXYjdpW+QVIpIeZM8tO3ftt+Y+yQgcrPT6CdxUrDvJDCOsiS0OpPT+zoXr1vU2whnh++sea1pHvzV5oo4Zh5UXI6oZgNkg+0qkmIlQZS1NsibrPsK4ePyX6YTsFXkTBfAGSF2Hc7/QgIcc65LSvZ90ZQMT2EvqQgwCAjA6hOQfzVgwv+COk+84MHdEa7YtDdVqPqeQDBal6kfsdXYSrMZpLr8KB2dRsPQNusv9mN0KTSy1jAoLqbl+WFQS80oVP9e/FJM8bh/qkDjd9xILuXLlUub4NixabcbwFEZ2+WfmBLB+4k/RG45S8myXpg2UCH3I2B3MIMSG5QIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/FruitSupermarket1.0.0.8.0.6/index";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/FruitSupermarket1.0.0.8.0.6/index";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	

	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
	

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

