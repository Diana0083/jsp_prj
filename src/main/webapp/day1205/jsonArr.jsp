<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    
<%@ include file="../fragments/siteProperty.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%
//1. JSONArray 생성 ( List 기반 )
JSONArray jsonArr= new JSONArray();
JSONObject jsonObj=new JSONObject();
jsonObj.put("name","이현아");
jsonObj.put("age","150");

JSONObject jsonObj2=new JSONObject();
jsonObj2.put("name","이현아");
jsonObj2.put("age","150");

JSONObject jsonObj3=new JSONObject();
jsonObj3.put("name","이현아");
jsonObj3.put("age","150");


//2-2 JSONObject 을 JSONArray
jsonArr.add(jsonObj);
jsonArr.add(jsonObj2);
jsonArr.add(jsonObj3);

//3. 츨력
String jsonArrStr=jsonArr.toJSONString();
out.print( jsonArrStr);

%>    