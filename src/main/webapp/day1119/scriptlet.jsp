<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

//결과값 출력 함수 생성
function result( num, num2 ){
	alert( num + " x " + num2 + " = " + (num*num2) + " / " + num3);
}

</script>

</head>
<body>
<% //scriptlet => JSP 가 Java로 변경될 때 _jspService()안에 생성된다.
String name="이현아";
%>
ㅎㅇ ㅋ <span><%= name %></span> 애송이 녀석 <br>
<ul>
<%
for(int i=0 ; i < 10 ; i++ ){
%>
<li><%= i  %></li>
<%
}
%>
</ul>
<%-- <%! int today=19; %> <!-- field에 선언된다. 인스턴스 변수 --> --%>

<!-- 테이블에 구구단 2단을 출력 -->
<table border="1">
<tr>
<%
for(int i=1 ; i < 10 ; i++ ){
%>
<td onclick="result(2, <%= i %>, <%= 2*1 %>)">2 X <%= i %></td>
<%
}
%>
</tr>
</table>


<div>
<%for(int i=1 ; i < 7 ; i++){ %>
<h<%=i %>> ㅎㅇ ㅋ </h<%=i %>>
<% } //end for%>
</div>



<div>
구구단 모든 단을 테이블로 출력
<table border="1">
<% for( int i=1 ; i < 10 ; i++){ %>
<tr>
	<% for( int dan=2 ; dan < 10 ; dan++ ){%>
<td> <%= dan %> X <%= i %> = <%= dan*i %></td>
	<% } //end for%>
</tr>
<% } //end for%>

</table>
</div>





</body>
</html>