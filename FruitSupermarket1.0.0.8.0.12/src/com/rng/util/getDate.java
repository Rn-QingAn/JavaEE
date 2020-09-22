package com.rng.util;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;



public class getDate{
	public  String  getDate(){        
		Date date = new Date();        
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:MM:ss");        
		String str = simpleDateFormat.format(date);        
		return str;    
		}
}
