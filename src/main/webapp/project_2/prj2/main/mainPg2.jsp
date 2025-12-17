<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 메인화면 </title>

<!-- 공통 템플릿 CSS -->
<link rel="stylesheet" type="text/css"
   href="http://192.168.10.78/html_prj/prj2/common/css/NewFile.css" />

<!-- jQuery CDN 시작 -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


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


<!-- 메인화면 디자인 시작 -->
<style type="text/css">

/* 메인 전체 레이아웃 */
.main-container {
    max-width: 1280px;       /* 롯데월드 기준 1200~1280 */
    margin: 0 auto;          /* 중앙 정렬 */
    padding: 160px 20px 80px;/* 헤더+카드 때문에 위쪽 여백 크게 */
    box-sizing: border-box;
}

/* 내부 섹션 디자인 기본 */
.main-section {
    margin-top: 80px;        /* 카드 아래에 거리 주기 */
}

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
.main-info-card {
    position: absolute; /* Carousel 위로 띄우기 */
    top: 380px;         /* 카드가 Carousel 아래쪽에 위치하도록 조정 */
    left: 50%;
    transform: translateX(-50%);
    width: 85%;
    max-width: 1200px;
    background: #fff;
    border-radius: 25px;
    padding: 35px 45px;
    box-shadow: 0 10px 35px rgba(0,0,0,0.08);
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 10;       /* Carousel보다 위에 뜨도록 */
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
<body class="py-4">

   <!-- 헤더 -->
   <div class="close" style="width: 100%; height: 10px;"></div>
   <div id="header">
    <div class="close"></div> <!-- 추가 여백용 div -->
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
   
   

<!-- 메인 비주얼: Carousel -->
<main class="main-container">
    <section class="main-section">   
   
<div id="mainCarousel" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="http://192.168.10.78/html_prj/prj2/common/images/bibimtuna.jpg" class="d-block w-100" alt="메인 배너1">
    </div>
    <div class="carousel-item">
      <img src="http://192.168.10.78/html_prj/prj2/common/images/hyuna.png.png" class="d-block w-100" alt="메인 배너2">
    </div>
    <div class="carousel-item">
      <img src="http://192.168.10.78/html_prj/prj2/common/images/cutiee.png" class="d-block w-100" alt="메인 배너3">
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
<!-- 메인 비주얼 끝: Carousel -->  
   
   

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
	        <div class="menu-box">
	            <img src="http://192.168.10.78/html_prj/prj2/common/images/icon_ticket.png">
	            <span>티켓요금</span>
	        </div>
	
	        <div class="menu-box">
	            <img src="http://192.168.10.78/html_prj/prj2/common/images/icon_event.png">
	            <span>이달의 행사</span>
	        </div>
	
	        <div class="menu-box">
	            <img src="http://192.168.10.78/html_prj/prj2/common/images/icon_gift.png">
	            <span>기념품</span>
	        </div>
	
	        <div class="menu-box">
	            <img src="http://192.168.10.78/html_prj/prj2/common/images/icon_info.png">
	            <span>운영/문휴</span>
	        </div>
	
	        <div class="menu-box">
	            <img src="http://192.168.10.78/html_prj/prj2/common/images/icon_mypage.png">
	            <span>마이페이지</span>
	        </div>
	    </div>
	</div>
	    </section>
	</main>  
	<!-- 메인 배너 영역 끝-->


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
</html>





