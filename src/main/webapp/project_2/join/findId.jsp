<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="http://192.168.10.68/html_prj/common/images/favicon.ico">
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 내가만든 CSS -->
<!-- <link rel="stylesheet" type="text/css" href="http://192.168.10.68/html_prj/common/css/main_v251031.css"/> -->

<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<!-- bootstrap CDN 끝 -->

<style type="text/css">
#wrap{  margin: 0px auto; width: 480px; height: 380px; }	
#container{ height: 380px; position:relative;	
	background: #FFFFFF url(images/id_background.png) no-repeat; }	
#searchFrm{ position: absolute; top: 180px; left: 100px }	

#searchResult{ position: absolute; top: 230px; left: 100px  }

.fail{ color:#FF0000 }
.success{ color:#186292 }
</style>
<script type="text/javascript">
window.onload=function(){
	document.getElementById("btnSearch").addEventListener("click",findId);
}//onload

function findId(){
	let num=parseInt(Math.random()*2);
	
	let id=document.popupFrm.id.value;
	
	let useCss='fail';
	let resultMsg="이미 사용 중인 아이디";
	if( num == 1 ){//사용가능한 경우
		useCss='success';
		resultMsg="사용 가능한 아이디";
	}//end if
	let msg=`[<span class='${ useCss }'>${id }</span>]는 <span class='${ useCss }'>${ resultMsg }</span> 입니다. `;
	
	if(useCss == 'success'){
		msg +=`<a href='javascript:sendId("${id}")'>사용</a>`;
	}//end if
	
	//처리 결과를 div에 출력
	document.getElementById("searchResult").innerHTML=msg;
}//findId

function sendId( id ){
	//부모창(opener )으로 값 전달
	opener.window.document.joinFrm.id.value=id;
	//자식창 닫기
	self.close();
}

</script>
</head>
<body>
<div id="wrap">
	<div id="container">
	<div id="searchFrm">
	<form name="popupFrm">
		<input type="text" name="id" value="<%= request.getParameter("id") %>" style="width:200px"/>
		<input type="button" value="중복확인" class="btn btn-success btn-sm"
		id="btnSearch"/>
	</form>
	</div>
	<%-- <div id="searchResult"><%= request.getQueryString() %></div> --%>
	<%-- <div id="searchResult"><%= request.getParameter("id") %></div> --%>
	<div id="searchResult"></div>
	</div>
</div>
</body>
</html>