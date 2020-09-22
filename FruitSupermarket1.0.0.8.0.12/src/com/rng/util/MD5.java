package com.rng.util;

import java.security.MessageDigest;



public class MD5 {
//	@Test
//	public void TestClass() {
//		String teString="huage";
//		String passwordByMd5=MD5.MD5("teString");
//		System.out.println(passwordByMd5);
//		System.out.println(MD5.JM(passwordByMd5));
//	}
	public static String MD5(String inStr) {
	    MessageDigest md5 = null;
	    try {
	        md5 = MessageDigest.getInstance("MD5");
	    } catch (Exception e) {
	        System.out.println(e.toString());
	        e.printStackTrace();
	        return "";
	    }
	    char[] charArray = inStr.toCharArray();
	    byte[] byteArray = new byte[charArray.length];

	    for (int i = 0; i < charArray.length; i++)
	        byteArray[i] = (byte) charArray[i];

	    byte[] md5Bytes = md5.digest(byteArray);

	    StringBuffer hexValue = new StringBuffer();

	    for (int i = 0; i < md5Bytes.length; i++) {
	        int val = ((int) md5Bytes[i]) & 0xff;
	        if (val < 16)
	            hexValue.append("0");
	        hexValue.append(Integer.toHexString(val));
	    }

	    return hexValue.toString();
	}

	// ����ļ����㷨
	public static String KL(String inStr) {
	    // String s = new String(inStr);
	    char[] a = inStr.toCharArray();
	    for (int i = 0; i < a.length; i++) {
	        a[i] = (char) (a[i] ^ 't');
	    }
	    String s = new String(a);
	    return s;
	}

	// ���ܺ����
	public static String JM(String inStr) {
	    char[] a = inStr.toCharArray();
	    for (int i = 0; i < a.length; i++) {
	        a[i] = (char) (a[i] ^ 't');
	    }
	    String k = new String(a);
	    return k;
	}
}
