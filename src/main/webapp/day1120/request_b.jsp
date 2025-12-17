<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.getColor{ color: #0000ff }
.postColor{ color: #ff0000 }

</style>


</head>
<body>
<!-- get일 때 post일 때 각 문자열 컬러를 다르게 출력 -->
<%
String requestColorCss="getColor";
if( "POST".equals(request.getMethod())){
	requestColorCss="postColor";
}//end if
%>
<strong><span class="<%= requestColorCss %>"><%= request.getMethod() %></span></strong> 방식의 요청.
<br>
<a href="javascript:history.back();">뒤로</a>

</body>
</html>