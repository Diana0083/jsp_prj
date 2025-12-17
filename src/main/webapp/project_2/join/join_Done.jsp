<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 완료 시 환영 페이지</title>

<!-- Bootstrap CSS 추가 -->
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">


<!-- 2024 경주월드 -->
<link rel="stylesheet" type="text/css"
    href="https://www.gjw.co.kr/inc/gjw_2024/bs/bootstrap.min.css?ver=1763706557">
<link rel="stylesheet"
    href="https://www.gjw.co.kr/css/gjw_2024/reset.css?ver=1763706557">
<link rel="stylesheet" type="text/css"
    href="https://www.gjw.co.kr/css/gjw_2024/sub.css?ver=1763706557">

<!-- jQuery CDN 시작 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<jsp:include page="../common/include/vivatemplet_css.jsp"></jsp:include>

<style>
    body {
        font-family: 'Pretendard', sans-serif;
        background-color: #fffaf5;
        margin: 0;
        padding: 0;
    }

    #completeWrap {
        width: 600px;
        margin: 120px auto;
        text-align: center;
        padding: 80px 60px;
        background: #ffffff;
        border-radius: 22px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.1);
    }

    #logo {
        width: 240px;
        margin-bottom: 30px;
    }

    #completeWrap h2 {
        font-size: 28px;
        font-weight: 700;
        margin-bottom: 15px;
    }

    #completeWrap p {
        font-size: 16px;
        color: #888;
        margin-bottom: 40px;
    }

    #confirmBtn {
        width: 160px;
        padding: 14px 0;
        font-size: 17px;
        background: #ffffff;
        border: 2px solid #ff7a00;
        color: #ff7a00;
        border-radius: 12px;
        cursor: pointer;
        transition: 0.2s;
    }

    #confirmBtn:hover {
        background: #ff7a00;
        color: #ffffff;
    }
</style>
</head>
<body>
	<div class="wrap">
		<!-- 헤더 -->
		<div id="closetop" class="close"></div>
		<div id="header">
			<jsp:include page="../common/include/header.jsp"></jsp:include>
		</div>
		<!-- 햄버거 메뉴-->
		<jsp:include page="../common/include/hamberger.jsp"></jsp:include>

		<!-- 메인 공간(비어있는 흰 배경 영역) -->
		<div class="container">
		<div id="completeWrap">
    
    <!-- 로고 -->
    <img src="../common/Images/logo.png" id="logo">

    <!-- 안내 문구 -->
    <h2>조나영님<br>회원가입이 완료되었습니다</h2>
    <p>로그인 하시면 더욱 다양한 서비스와 혜택을 받으실 수 있습니다</p>

    <!-- 확인 버튼 -->
    <button id="confirmBtn" onclick="location.href='../project_2/main/mainPg_Include.jsp'">
        확인
    </button>

</div>
		<h1></h1>
		</div>
		</div>
		<!-- container 끝 -->

		<div id="footer">
			<jsp:include page="../common/include/footer.jsp"></jsp:include>
		</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
