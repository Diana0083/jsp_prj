<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel ="shortcut icon" href="http://192.168.10.78/jsp_prj/common/images/favicon.ico"/>
<meta charset="UTF-8">
<title> inline </title>

<!-- 내가만든 CSS -->
<!-- <link rel="stylesheet" type="text/css" href="http://192.168.10.78/html_prj/common/css/main_v251031.css"/> -->
<!-- bootsstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<!-- bootsstrap CDN 끝 -->

<style type="text/css">
#wrap{margin:0px auto; width:1200px; height:1000px;} 
#header{height:150px;}
#container{height:700px;}
#footer{height:150px;}
</style>

<script type="text/javascript">
$(function(){
	
});
</script> 

</head>
<body>
   <div id="wrap">
   <div id="header">
   header 1200(w) x 150(h)
   사이트 로고, 주력서비스, navigation bar
   </div>
   
   <div id="container">
   <div>
   <% String msg="현아는 응가 중 푸데덱!"; %>
   
   JSP 주석 : 
   HTML 주석 : 
   </div>
   </div>
   
      
   <div id="footer">
   footer 1200(w) x 150(h)
   </div>
   
   
</div>
</body>
</html>
