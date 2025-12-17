<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
        
    
<%
	//업무 처리할 결과 > List ( web parameter로 전달될 수 없다. )
	//web parameter는 무조건 String으로 넘어간다.
	List<String> names=new ArrayList<String>();
	names.add("존나똥");
	names.add("이현아파트");
	names.add("최서똥");
	names.add("란희랄련");
	
	//scope 객체에 데이터를 할당 > scope객체를 사용해 값 받기
	request.setAttribute("names", names ); 

	String name="최서호"; //scope객체에 넘겨도 되지만 parameter로 넘기고 싶다
	int age=26;
%>

<!-- parameter가 없는 경우 -->
<%-- <jsp:forward page="forward_action_b.jsp"/> --%>

<!-- parameter가 있는 경우 -->
<jsp:forward page="forward_action_b.jsp">
<jsp:param value="<%= name %>" name="name"/>
<jsp:param value="<%= age %>" name="age"/>
</jsp:forward>
