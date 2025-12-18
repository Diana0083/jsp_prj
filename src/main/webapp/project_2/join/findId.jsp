<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복확인</title>

<!-- bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
body {
	background: #FFF7F2;
	font-family: "Noto Sans KR", sans-serif;
}

/* 팝업 전체 */
#wrap {
	width: 420px;
	margin: 40px auto;
}

/* 카드 */
#container {
	background: #fff;
	border-radius: 16px;
	padding: 30px;
	box-shadow: 0 8px 20px rgba(0,0,0,0.08);
}

/* 타이틀 */
.popup-title {
	text-align: center;
	font-size: 22px;
	font-weight: 700;
	margin-bottom: 20px;
	color: #333;
}

/* 입력 영역 */
#searchFrm {
	display: flex;
	gap: 10px;
	justify-content: center;
	margin-bottom: 20px;
}

#searchFrm input[type="text"] {
	width: 220px;
	height: 44px;
	border-radius: 8px;
	border: 1px solid #ccc;
	padding: 0 12px;
	font-size: 15px;
	background: #FAFAFA;
}

#searchFrm input[type="text"]:focus {
	border-color: #FF6A2B;
	box-shadow: 0 0 0 4px rgba(255,106,43,0.18);
	outline: none;
	background: #fff;
}

/* 결과 영역 */
#searchResult {
	text-align: center;
	font-size: 15px;
	margin-top: 15px;
}

/* 결과 색상 */
.fail {
	color: #E53935;
	font-weight: 600;
}

.success {
	color: #FF6A2B;
	font-weight: 700;
}

/* 사용 링크 */
#searchResult a {
	display: inline-block;
	margin-left: 8px;
	color: #FF6A2B;
	font-weight: 600;
	text-decoration: underline;
	cursor: pointer;
}
</style>

<script type="text/javascript">
window.onload=function(){
	document.getElementById("btnSearch").addEventListener("click",findId);
}

function findId(){
	let num=parseInt(Math.random()*2);
	let id=document.popupFrm.id.value;

	if(id.trim()===""){
		alert("아이디를 입력해주세요.");
		return;
	}

	let useCss='fail';
	let resultMsg="이미 사용 중인 아이디입니다.";
	if( num == 1 ){
		useCss='success';
		resultMsg="사용 가능한 아이디입니다.";
	}

	let msg=`[ <span class='${useCss}'>${id}</span> ] ${resultMsg}`;

	if(useCss == 'success'){
		msg +=` <a href='javascript:sendId("${id}")'>사용하기</a>`;
	}

	document.getElementById("searchResult").innerHTML=msg;
}

function sendId(id){
	opener.window.document.joinFrm.user_id.value=id;
	self.close();
}
</script>
</head>

<body>
<div id="wrap">
	<div id="container">

		<div class="popup-title">아이디 중복확인</div>

		<div id="searchFrm">
			<form name="popupFrm" class="d-flex gap-2">
				<input type="text" name="id"
					value="<%= request.getParameter("id") %>"
					placeholder="아이디 입력">
				<button type="button" id="btnSearch"
					class="btn btn-warning text-white">
					확인
				</button>
			</form>
		</div>

		<div id="searchResult"></div>

	</div>
</div>
</body>
</html>
