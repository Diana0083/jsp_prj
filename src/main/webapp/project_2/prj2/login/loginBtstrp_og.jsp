<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<title>로그인창 - 부트스트랩 사용 : 성공 완료</title>

<link rel="stylesheet" type="text/css"
	href="http://192.168.10.73/html_prj/practice/vivatemplet.css" />

<!-- jQuery CDN 시작 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script src="http://192.168.10.78/html_prj/prj2/login_color-modes.js"></script>

<!-- bootstrap 시작 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
	crossorigin="anonymous"></script>

<link href="http://192.168.10.78/html_prj/prj2/login_bootstrap.min.css">

<meta name="theme-color" content="#712cf9">
<link href="sign-in.css" rel="stylesheet">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem
	}
}

.b-example-divider {
	width: 100%;
	height: 3rem;
	background-color: #0000001a;
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em #0000001a, inset 0 .125em .5em #00000026
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh
}

.bi {
	vertical-align: -.125em;
	fill: currentColor
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch
}

.btn-bd-primary {
	--bd-violet-bg: #712cf9;
	--bd-violet-rgb: 112.520718, 44.062154, 249.437846;
	--bs-btn-font-weight: 600;
	--bs-btn-color: var(--bs-white);
	--bs-btn-bg: var(--bd-violet-bg);
	--bs-btn-border-color: var(--bd-violet-bg);
	--bs-btn-hover-color: var(--bs-white);
	--bs-btn-hover-bg: #6528e0;
	--bs-btn-hover-border-color: #6528e0;
	--bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
	--bs-btn-active-color: var(--bs-btn-hover-color);
	--bs-btn-active-bg: #5a23c8;
	--bs-btn-active-border-color: #5a23c8
}

.bd-mode-toggle {
	z-index: 1500
}

.bd-mode-toggle .bi {
	width: 1em;
	height: 1em
}

.bd-mode-toggle .dropdown-menu .active .bi {
	display: block !important
}


    body {
      /* 원하는 배경 추가 */
      background-image: url("http://192.168.10.78/html_prj/prj2/images/loginPg.png"); /* 예시 이미지 */
      background-size: cover;
      background-position: center;
      background-attachment: fixed; /* 패럴럭스 느낌 */
      min-height: 100vh;
    }
</style>



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
			// 아이콘 모양을 바꾸려면 버튼에도 클래스를 토글할 수 있습니다.
			$(this).toggleClass('active');

		});
	});
</script>

</head>
<body class="py-4 bg-body-tertiary">

	<!-- 헤더 -->
	<div class="close" style="width: 100%; height: 10px;"></div>
	<div id="header">
		<div class="close"></div>
		<div id="mainBar">
			<div class="logo">
				<img src="http://192.168.10.73/html_prj/practice/images/vivaLog.png"
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
									<li><a href="#void">영업 시간</a></li>
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
				<button class="btn">예약하기</button>
				<button class="btn" style="color: #000; border: 1.5px solid #000;">로그인</button>
			</div>
		</div>
		<div id=subBar>
			<div class="close"></div>
			<div class="close"
				style="position: fixed; top: 100px; right: 0px; height: 200px;"></div>
		</div>

		<hr>
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
					<a href="#void">어트랙션</a><br>
					<a href="#void">푸드코트</a>
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
					<a href="#void">티켓 요금</a><br>
					<a href="#void">연간 이용권</a>
				</div>
				<div style="margin-right: 100px">
					<a href="#void">할인/제휴</a>
				</div>
			</div>

			<div class="menu-title">이용정보</div>
			<div class="menu-list">
				<div>
					<a href="#void">오시는 길</a><br>
					<a href="#void">영업 시간</a>
				</div>
				<div style="margin-right: 100px">
					<a href="#void">파크 이용안내</a>
				</div>
			</div>

			<div class="menu-title">소통 서비스</div>
			<div class="menu-list">
				<div>
					<a href="#void">공지</a><br>
					<a href="#void">FAQ</a>
				</div>
				<div style="margin-right: 100px">
					<a href="#void">문의</a>
				</div>
			</div>

		</div>
	</div>
	<!-- 햄버거 메뉴 끝 -->
<div class="container d-flex justify-content-center align-items-center" style="min-height: 70vh;">
		<main class="form-signin w-100 m-auto">
			<form>
				<img class="mb-4"
					src="http://192.168.10.78/html_prj/prj2/images/logo.png" alt=""
					width="72" height="57">
				<h1 class="h3 mb-3 fw-normal">Please sign in</h1>
				<div class="form-floating">
					<input type="email" class="form-control" id="floatingInput"
						placeholder="name@example.com"> <label for="floatingInput">Email
						address</label>
				</div>
				<div class="form-floating">
					<input type="password" class="form-control" id="floatingPassword"
						placeholder="Password"> <label for="floatingPassword">Password</label>
				</div>
				<div class="form-check text-start my-3">
					<input class="form-check-input" type="checkbox" value="remember-me"
						id="checkDefault"> <label class="form-check-label"
						for="checkDefault"> Remember me </label>
				</div>
				<button class="btn btn-primary w-100 py-2" type="submit">Sign
					in</button>
				<p class="mt-5 mb-3 text-body-secondary">&copy; 2017–2025</p>
			</form>
		</main>
	</div>
	<!-- 푸터 -->
	<div id="footer">
		<div class="footer-inner">

			<div class="footer-top">
				<img src="http://192.168.10.73/html_prj/practice/images/vivaLog.png"
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

</body>
</html> 어떤 역할을 하는 코드인지 표시해줘