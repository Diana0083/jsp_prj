package day1124;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;


public class UseURLEncoder {

	public static void main(String[] args) throws UnsupportedEncodingException {
	
	String name="이현아";
	System.out.println( name );
	
	//문자열을 Web parameter 형식으로 변환일
	String enName=URLEncoder.encode(name ,"UTF-8");
	System.out.println( enName );
	String deName=URLEncoder.encode(name ,"UTF-8");
	System.out.println( deName );
	//id=%ED%99%8D%EA%B8%B8%EB%8F%99
	
	String str= new String(enName.getBytes("8859_1"),"UTF-8");
	
	
	
	}
}//class
