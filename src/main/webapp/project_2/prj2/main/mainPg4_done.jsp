<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>VIVA PARK</title>
<link rel="stylesheet" type="text/css"
	href="http://192.168.10.78/html_prj/prj2/common/css/vivatemplet.css" />

<!-- 공지 가져오기 -->
<!-- 2024 경주월드 -->
<script src="https://www.gjw.co.kr/inc/gjw_2024/js/14jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://www.gjw.co.kr/inc/gjw_2024/bs/bootstrap.min.css?ver=1763706557">
<link rel="stylesheet"
	href="https://www.gjw.co.kr/css/gjw_2024/reset.css?ver=1763706557">
<link rel="stylesheet" type="text/css"
	href="https://www.gjw.co.kr/css/gjw_2024/sub.css?ver=1763706557">

<style>

.subWrap {
	padding: 0;
}

/* <!-- 미니 메뉴 버튼 건드리지 말것 --> */
#inner {
	width: 70%;
	margin: 0px auto
}

#title {
	background-color: #00FF00;
	height: 120px;
	font-size: 60px;
	text-align: center;
	padding: 20px;
}

#miniMenu, .miniMenuSub {
	display: flex;
}
#miniMenu, .miniMenuSub, .nav-link-mini {
	font-family: 'NotoSansKR', sans-serif !important;
	text-decoration: none !important;
	color: gray;
}

.container {
	height: auto;
	margin-top: 100px;
}

.nav-link:hover {
	color: gray;
}

.nav-item.dropdown {
	margin-left: 10px;
}

#miniHome {
	height: 30px;
}

.nav-item {
	list-style: none;
}
</style>

<!-- 미니 메뉴 버튼 건드리지 말것 -->


<!-- 메인화면 디자인 시작 -->
<style type="text/css">
/* 사진 슬라이드 */
#mainCarousel {
    position: relative;
    z-index: 1;  /* 카드보다 아래 */
    height: 480px; 
    overflow: hidden; /* 넘치는 이미지 잘림 */
}

#mainCarousel .carousel-item {
    height: 480px;
}

#mainCarousel .carousel-item img {
    width: 100%;
    height: 480px;
    object-fit: cover; 
}


/* 메인 정보 카드 */

/* 카드 올리기 */
.mainWrap {
    position: relative;  /* 카드 위치 기준 */
    margin-top: 100px;   /* 헤더 아래 여백 */
    padding-bottom: 100px; /* 카드 아래 여백 */
    max-width: 1200px;
    margin-left: auto;
    margin-right: auto;
}


.main-info-card {
    position: relative;  /* absolute → relative */
    top: -80px;          /* Carousel 아래 살짝 겹치기 */
    margin: 0 auto;
    width: 85%;
    max-width: 1200px;
    background: #fff;
    border-radius: 25px;
    padding: 35px 45px;
    box-shadow: 0 10px 35px rgba(0,0,0,0.08);
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 10;
}


/* 왼쪽 운영시간 */
.left-info {
    display: flex;
    align-items: center;
    gap: 20px;
}

.left-info h3 {
    font-size: 22px;
    font-weight: 700;
}

.today-title {
    margin: 5px 0 0;
    font-size: 14px;
    color: #777;
}

.today-time {
    font-size: 18px;
    font-weight: 700;
    color: #1a73e8;
}

.info-icon {
    width: 70px;
    border-radius: 50%;
}

/* 오른쪽 메뉴 아이콘 */
.right-menu-icons a {
    text-decoration: none; 
    color: inherit;
}


.right-menu-icons {
    display: flex;
    align-items: center;
    gap: 45px;
}

.menu-box {
    text-align: center;
    font-size: 14px;
    font-weight: 500;
}

.menu-box img {
    width: 45px;
    height: 45px;
    display: block;
    margin: 0 auto 8px;
}
/* 메인화면 디자인 끝 */

</style>


<!-- jQuery CDN 시작 -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
 -->
<script type="text/javascript">
	$(function() {

		$("#mainMenu>li").mouseover(function() {
			$(".opensubMenu").slideDown(200);
			$("#subBar").slideDown(200);
			$(".subItems").slideDown(200);
		});

		$(".container").mouseover(function() {

			$(".opensubMenu").slideUp(200);
			$("#subBar").slideUp(200);
			$(".subItems").slideUp(200);
		});
		$(".header-btns").mouseover(function() {

			$(".subItems").slideUp(200);
			$(".opensubMenu").slideUp(200);
			$("#subBar").slideUp(200);
		});
		$(".close").mouseover(function() {

			$(".subItems").slideUp(200);
			$(".opensubMenu").slideUp(200);
			$("#subBar").slideUp(200);
		});

		$('.hamburger-toggle').on('click', function() {
			// 햄버거 버튼 클릭 시 메뉴 목록에 'is-open' 클래스를 토글합니다.
			$('.hamburger-list').toggleClass('is-open');
			$('.container').toggleClass('isClose');
			// 아이콘 모양을 바꾸려면 버튼에도 클래스를 토글할 수 있습니다.
			$(this).toggleClass('active');

		});
	});
</script>
</head>
<body>
	<div class="wrap">
		<!-- 헤더 -->
		<div class="close"
			style="width: 100%; position: fixed; top: 0; left: 0; height: 10px;"></div>
		<div id="header">
			<div class="close"></div>
			<div id="mainBar">
				<div class="logo">
					<img
						src="http://192.168.10.73/html_prj/practice/images/vivaLog.png"
						alt="VIVA PARK Logo" id="logImg" />
				</div>
				<button class="hamburger-toggle"
					style="background-color: #fff; border: 0px;">
					<img
						src="http://192.168.10.73/html_prj/practice/images/hamburger_menu.png" />
				</button>
				<div id="nav">
					<ul id="mainMenu" class="">
						<li>
							<div class="liDiv">
								즐길거리
								<div class="subItems">
									<ul>
										<li><a href="#void">어트랙션</a></li>
										<li><a href="#void">푸드코트</a></li>
										<li><a href="#void">기프트샵</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<div class="liDiv">
								행사
								<div class="subItems">
									<ul>
										<li><a href="#void">행사 안내</a></li>
										<li><a href="#void">행사 예약</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<div class="liDiv">
								요금/예매
								<div class="subItems">
									<ul>
										<li><a href="#void">티켓 요금</a></li>
										<li><a href="#void">연간 이용권</a></li>
										<li><a href="#void">할인/제휴</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<div class="liDiv">
								이용정보
								<div class="subItems">
									<ul>
										<li><a href="#void">오시는 길</a></li>
										<li><a href="#void">운영/운휴</a></li>
										<li><a href="#void">파크 이용 안내</a></li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<div class="liDiv">
								소통 서비스
								<div class="subItems">
									<ul>
										<li><a href="#void">공지</a></li>
										<li><a href="#void">FAQ</a></li>
										<li><a href="#void">문의</a></li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>

				<div class="header-btns">
					<button class="btn"
						style="color: #FF6124; border: 1.5px solid #FF6124;">예약하기</button>
					<button class="btn" style="color: #000; border: 1.5px solid #000;">로그인</button>
				</div>
			</div>
			<div id=subBar>
				<div class="close"></div>
				<div class="close"
					style="position: fixed; top: 100px; right: 0px; height: 200px;"></div>
			</div>
			<div class="close"></div>
			<hr style="margin: 0px !important">
		</div>
		<!-- 햄버거 메뉴 시작 -->
		<div class="hamburger-list">

			<div class="login-box">
				<span>로그인해 주세요</span> <span>〉</span>
			</div>

			<div class="reservation-box">
				<div>예매하기</div>
				<div>|</div>
				<div>티켓등록</div>
			</div>

			<div class="menu-section">
				<div class="menu-title">즐길거리</div>
				<div class="menu-list">
					<div>
						<a href="#void">어트랙션</a><br> <a href="#void">푸드코트</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">기프트샵</a>
					</div>
				</div>

				<div class="menu-title">행사</div>
				<div class="menu-list">
					<div>
						<a href="#void">행사안내</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">행사예약</a>
					</div>
				</div>

				<div class="menu-title">요금/예매</div>
				<div class="menu-list">
					<div>
						<a href="#void">티켓 요금</a><br> <a href="#void">연간 이용권</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">할인/제휴</a>
					</div>
				</div>

				<div class="menu-title">이용정보</div>
				<div class="menu-list">
					<div>
						<a href="#void">오시는 길</a><br> <a href="#void">영업 시간</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">파크 이용안내</a>
					</div>
				</div>

				<div class="menu-title">소통 서비스</div>
				<div class="menu-list">
					<div>
						<a href="#void">공지</a><br> <a href="#void">FAQ</a>
					</div>
					<div style="margin-right: 100px">
						<a href="#void">문의</a>
					</div>
				</div>

			</div>
		</div>
		<!-- 햄버거 메뉴 끝 -->

		<!-- 메인 공간(비어있는 흰 배경 영역) -->
		<div class="container">
			<!-- 미니 메뉴바 시작 -->
			<div id="inner">
				<!-- 페이지 상단 여백 -->
				<div style="height: 50px"></div>
				<!-- 미니 버튼 -->
				<div id="miniMenu" style="margin: 0px auto; height: 30px">
					<div>
						<a href="#void"><img
							src="http://192.168.10.72/html_prj/common/images/minihome.png"
							id="miniHome"></a> |&nbsp;
					</div>
					<div class="miniMenuSub">
						<ul style="display:flex">
						<li class="nav-item dropdown"><a
							class="nav-link-mini dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="font-weight: normal;"> 이용정보 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">즐길거리</a></li>
								<li><a class="dropdown-item" href="#">행사</a></li>
								<li><a class="dropdown-item" href="#">요금/예매</a></li>
								<li><a class="dropdown-item" href="#">소통서비스</a></li>
							</ul></li>

						<li class="nav-item dropdown"><a
							class="nav-link-mini dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> <span
								style="font-weight: bold; color: black">운영/운휴</span>
						</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">오시는길</a></li>
								<li><a class="dropdown-item" href="#">파크 이용 안내</a></li>
							</ul></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 미니 메뉴바 끝 -->


		<!-- 코딩영역 contatiner 시작 !!!!! -->
		<div class="mainWrap">
    <!-- 메인 비주얼: Carousel -->
    <div id="mainCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="2"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="http://192.168.10.78/html_prj/prj2/common/images/bibimtuna.jpg" class="d-block w-100" alt="메인 배너1">
            </div>
            <div class="carousel-item">
                <img src="http://192.168.10.78/html_prj/prj2/common/images/mascots.png" class="d-block w-100" alt="메인 배너2">
            </div>
            <div class="carousel-item">
                <img src="http://192.168.10.78/html_prj/prj2/common/images/cutiee.png" class="d-block w-100" alt="메인 배너3">
            </div>
            <div class="carousel-item">
                <img src="http://192.168.10.78/html_prj/prj2/common/images/vivaMainSlide.png" class="d-block w-100" alt="메인 배너3">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#mainCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#mainCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    
    <!-- 메인 정보 카드 -->
    <div class="main-info-card">
        <div class="left-info">
            <img src="http://192.168.10.78/html_prj/prj2/common/images/cutiee.png" class="info-icon">
            <div>
                <h3>비바 파크</h3>
                <p class="today-title">오늘의 운영시간</p>
                <p class="today-time">10:00 ~ 21:00</p>
            </div>
        </div>

        <div class="right-menu-icons">
            <a href="ticket.jsp" class="menu-box">
                <img src="http://192.168.10.78/html_prj/prj2/common/images/icon_ticket.png">
                <span>티켓요금</span>
            </a>
            <a href="event.jsp" class="menu-box">
                <img src="http://192.168.10.78/html_prj/prj2/common/images/icon_event.png">
                <span>이달의 행사</span>
            </a>
            <a href="gift.jsp" class="menu-box">
                <img src="http://192.168.10.78/html_prj/prj2/common/images/icon_gift.png">
                <span>기념품</span>
            </a>
            <a href="info.jsp" class="menu-box">
                <img src="http://192.168.10.78/html_prj/prj2/common/images/icon_info.png">
                <span>운영/운휴</span>
            </a>
            <a href="mypage.jsp" class="menu-box">
                <img src="http://192.168.10.78/html_prj/prj2/common/images/icon_mypage.png">
                <span>마이페이지</span>
            </a>
        </div>
    </div>

		<!-- container 끝 -->

		<!-- 푸터 -->
		<div id="footer">
			<div class="footer-inner">

				<div class="footer-top">
					<img
						src="http://192.168.10.73/html_prj/practice/images/vivaLog.png"
						alt="VIVA PARK Logo" style="height: 50px;" />

					<div class="footer-menu">
						<span>비바파크 어트랙션 소개</span> <span>비바파크 소개</span> <span>ESG</span> <span>이용약관</span>
						<span style="color: #6A35FF">개인정보처리방침</span> <span>영상정보처리기기
							운영/관리방침</span> <span>이메일무단수집거부</span> <span>채용안내</span> <span>사업문의</span>
						<span>언제사용</span> <span>사이트맵</span>
					</div>
				</div>

				<div class="footer-bottom">
					비바파크 어트랙션<br> 사업장소재지: 충남 아산시 송악면 외암로 200 비바파크 아산랜드 | 대표자: 박정호<br>
					사업자등록번호: 219-85-00014 | 통신판매업신고번호: 아산 제 1532호 | 전화: 1605-2000
				</div>

				<div class="footer-icons"></div>

			</div>
		</div>
	</div>
	</div>
	</div>
	
	<!-- Bootstrap 필수: Carousel 동작하려면 이게 필요 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>
</body>
</html>
