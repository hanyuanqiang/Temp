package com.java1234.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	/*public static String formatDate(Date date,String format){
		String result="";
		SimpleDateFormat sdf=new SimpleDateFormat(format);
		if(date!=null){
			result=sdf.format(date);
		}
		return result;
	}*/
	//把Date对象转换为特定格式的字符串
	public static String formatDate(Date date,String format){
		String result="";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		if(date!=null){
			result = sdf.format(date);
		}
		return result;
	}
	
	
	/*public static Date formatString(String str,String format) throws Exception{
		SimpleDateFormat sdf=new SimpleDateFormat(format);
		return sdf.parse(str);
	}*/
	//把字符串(按特定格式)转换为Date对象
	public static Date formatString(String str,String format) throws Exception{
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.parse(str);
	}
}
