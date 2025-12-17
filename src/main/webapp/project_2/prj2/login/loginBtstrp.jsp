<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인창 - 부트스트랩 사용 : 성공 완료</title>

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


<!-- 로그인폼 디자인 시작 -->
<style type="text/css">

/* 배경 영역 */
#loginBgWrap {
    position: relative;
    height: calc(100vh - 120px);
    overflow: hidden;
}

.bg-img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

/* 로그인 카드 */
.loginFrm {
    width: 380px;
    background: #fff;
    padding: 45px 40px;
    border-radius: 22px;
    box-shadow: 0 12px 35px rgba(0,0,0,0.15);

    position: absolute;
    top: 50%;
    right: 8%;
    transform: translateY(-50%);
}

/* 제목 */
.page_tit h2 {
    font-size: 26px;
    font-weight: 700;
    text-align: center;
    margin-bottom: 30px;
}

/* 입력창 */
.input_type {
    margin-bottom: 20px;
}

.input_type input {
    width: 100%;
    padding: 14px 15px;
    border: 1px solid #ddd;
    border-radius: 12px;

    font-size: 15px;
    background: #fafafa;
    transition: all .25s;
}

.input_type input:focus {
    background: #fff;
    border-color: #ff4b66;
    box-shadow: 0 0 0 4px rgba(255,75,102,0.15);
}

/* 메뉴 */
.find_joinLink {
    display: flex;
    justify-content: space-between;
    margin-bottom: 20px;
}

.find_joinLink a {
    font-size: 13px;
    color: #888;
}

.find_joinLink a:hover {
    text-decoration: underline;
}

/* 버튼 */
.btn_red {
    width: 100%;
    padding: 14px 0;
    border-radius: 12px;
    border: none;

    background: #ff4b66;
    color: #fff;
    font-size: 17px;
    font-weight: 600;
    cursor: pointer;

    transition: all .25s;
}

.btn_red:hover {
    background: #ff2f52;
}

</style>
<!-- 로그인폼 디자인 끝 -->


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
   
   <!-- 로그인 창 -->
   <div id="loginBgWrap">
       <img src="http://192.168.10.78/html_prj/prj2/common/images/loginPg.png" class="bg-img" alt="로그인 배경">
   
       <div class="loginFrm">
           <div class="page_tit">
               <h2>로그인</h2>
           </div>
   
           <div class="input_type">
               <input type="text" id="inputId" placeholder="아이디 입력">
           </div>
   
           <div class="input_type">
               <input type="password" id="inputPw" placeholder="비밀번호 입력">
           </div>
   
           <div class="find_joinLink">
               <a href="#void">아이디 찾기</a>
               <a href="#void">비밀번호 찾기</a>
               <a href="#void">회원가입</a>
           </div>
   
           <button type="submit" class="btn_red" id="btn_login">
               로그인
           </button>
       </div>
   </div>

   <!-- 로그인창 끝 -->
   
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