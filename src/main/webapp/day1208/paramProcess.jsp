<%@page import="java.time.LocalDate"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
/* 사용자에게 응답하는 페이지가 아님 */
request.setCharacterEncoding("UTF-8");

String name=request.getParameter("na");
String age=request.getParameter("age");

/* 
전송 방식과 값 출력해보기
System.out.println( request.getMethod() + " / " + name + " / " + age ); 
*/


//JSONObject을 응답 : 나이를 가지고 태어난 해를 구해서 응답
int nowYear=LocalDate.now().getYear();
/* int nowYear=Calendar.getInstance().get(Calendar.YEAR);  이것도 가능한데 LocalDate가 더 짧음*/
//1. JSONObject을 생성( MAP 기반 )
JSONObject jsonObj=new JSONObject();

int intAge=0;
if(age != null && !age.isEmpty()){
	intAge=Integer.parseInt(age);
}//end if

//2. JSONObject에 응답할 값 설정
jsonObj.put("name", name+"님 안녕하세여?");
jsonObj.put("age", intAge +"살");
jsonObj.put("birth", nowYear-intAge );

//3. JSONObject을 출력
out.print( jsonObj.toString() );


%>    