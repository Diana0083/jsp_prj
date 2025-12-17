<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! String msg="현아님은 하루종일 루미큐브 중~" ;

	public String lunch(){
		return "오늘의 점심은 참치마요닷!! 뿌직";
	}

%>

<%= msg %>
<marquee scrollamount="10"><%= lunch() %></marquee>

</body>
</html>