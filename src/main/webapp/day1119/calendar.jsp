<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<title> JSP 템플릿 </title>
<link rel ="shortcut icon" href="http://192.168.10.78/jsp_prj/common/images/favicon.ico"/>


<script src="http://192.168.10.78/jsp_prj/common/js/color-modes.js"></script>

<!-- bootstrap 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>

<meta name="theme-color" content="#712cf9">
<link href="http://192.168.10.78/jsp_prj/common/css/carousel.css" rel="stylesheet">
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
/* 달력객체의 디자인 */
#calWrap{
   font-family: "맑은 고딕",sans-serif;
}
#calHeader{
   text-align: center;
   margin-bottom: 20px;
}
#calTab{
   margin: 0px auto;
   border:1px solid #eee;
}
tr,td{
   border:1px solid #929292;
}
.calTitle{
   font-size:30px;
   font-weight: bold;
}
.sunTitle{
   width:120px;
   text-align: center;
   color:#c7c8c9;
   background-color: #de4f44;
}
.weekTitle{
   width:120px;
   text-align: center;
   font-weight: normal;
}
.satTitle{
   width:120px;
   text-align: center;
   color:#c7c8c9;
   background-color: #327eef;
}

a{
   text-decoration: none; 
   color:#000000;
}
a:hover{
   text-decoration: none; 
   color:#eee;
}
td{
   height: 80px;
   text-align: left;
   vertical-align: top;
}
.blankTd{
   background-color: #eee;
}

.sunText{
   color:#da3f35
}
.weekText{
   color:293048
}
.satText{
   color:#9696B8
}
.toDayTd{ /* 오늘 */
   background-color: #FFE69C;
}
</style>

<style type="text/css">
#wrap{margin:0px auto; width:1200px; height:1000px;} 
#header{height:150px;}
#container{height:700px;}
#footer{height:150px;}
 
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript">
$(function(){
   
});

</script>
</head>
<body>
   <header data-bs-theme="dark">
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
         <div class="container-fluid">
            <a class="navbar-brand" href="#">조나영</a>
            <button class="navbar-toggler" type="button"
               data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
               aria-controls="navbarCollapse" aria-expanded="false"
               aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
               <ul class="navbar-nav me-auto mb-2 mb-md-0">
                  <li class="nav-item"><a class="nav-link active"
                     aria-current="page" href="#">똥</a></li>
                  <li class="nav-item"><a class="nav-link" href="#">뿌직</a></li>
                  <li class="nav-item"><a class="nav-link disabled"
                     aria-disabled="true">뿌지직</a></li>
               </ul>
               <form class="d-flex" role="search">
                  <input class="form-control me-2" type="search"
                     placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Search</button>
               </form>
            </div>
         </div>
      </nav>
   </header>
   <main>
      <div id="myCarousel" class="carousel slide mb-6"
         data-bs-ride="carousel">
         <div class="carousel-indicators">
            <button type="button" data-bs-target="#myCarousel"
               data-bs-slide-to="0" class="active" aria-current="true"
               aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#myCarousel"
               data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#myCarousel"
               data-bs-slide-to="2" aria-label="Slide 3"></button>
         </div>
         <div class="carousel-inner">
            <div class="carousel-item active">
               <svg aria-hidden="true" class="bd-placeholder-img " height="100%"
                  preserveAspectRatio="xMidYMid slice" width="100%"
                  xmlns="http://www.w3.org/2000/svg">
                  <rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect></svg>
               <div class="container">
                  <div class="carousel-caption text-start">
                     <h1>이현아작아작</h1>
                     <p class="opacity-75">삼각김밥 우걱우걱</p>
                     <p>
                        <a class="btn btn-lg btn-primary" href="#">잠 자러가기</a>
                     </p>
                  </div>
               </div>
            </div>
            <div class="carousel-item">
               <svg aria-hidden="true" class="bd-placeholder-img " height="100%"
                  preserveAspectRatio="xMidYMid slice" width="100%"
                  xmlns="http://www.w3.org/2000/svg">
                  <rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect></svg>
               <div class="container">
                  <div class="carousel-caption">
                     <h1>Another example headline.</h1>
                     <p>Some representative placeholder content for the second
                        slide of the carousel.</p>
                     <p>
                        <a class="btn btn-lg btn-primary" href="#">Learn more</a>
                     </p>
                  </div>
               </div>
            </div>
            <div class="carousel-item">
               <svg aria-hidden="true" class="bd-placeholder-img " height="100%"
                  preserveAspectRatio="xMidYMid slice" width="100%"
                  xmlns="http://www.w3.org/2000/svg">
                  <rect width="100%" height="100%" fill="var(--bs-secondary-color)"></rect></svg>
               <div class="container">
                  <div class="carousel-caption text-end">
                     <h1>One more for good measure.</h1>
                     <p>Some representative placeholder content for the third
                        slide of this carousel.</p>
                     <p>
                        <a class="btn btn-lg btn-primary" href="#">Browse gallery</a>
                     </p>
                  </div>
               </div>
            </div>
         </div>
         <button class="carousel-control-prev" type="button"
            data-bs-target="#myCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
         </button>
         <button class="carousel-control-next" type="button"
            data-bs-target="#myCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
         </button>
      </div>
      <!-- Marketing messaging and featurettes
  ================================================== -->
      <!-- Wrap the rest of the page in another container to center all the content. -->
      <div class="container marketing">
         <!-- Three columns of text below the carousel -->
         <!-- START THE FEATURETTES -->
         <hr class="featurette-divider">
         <div class="row featurette">
         <div class="calWrap">
         <jsp:useBean id="cDTO" class="kr.co.sist.calendar.calendarDTO" scope="page"></jsp:useBean>
         <jsp:setProperty property="*" name="cDTO"/>
         <% 

         Calendar cal= Calendar.getInstance();
         //오늘을 저장하는 flag 변수
         StringBuilder flagDate=new StringBuilder();
         flagDate.append(cal.get(Calendar.YEAR)).append(cal.get(Calendar.MONTH)+1).append(cal.get(Calendar.DAY_OF_MONTH));
         
         int nowYear=0;
         int nowMonth=0;
         int nowDay=cal.get(Calendar.DAY_OF_MONTH);

         //입력된 년 받기 : web parameter가 존재하지 않으면 null이 발생
         String paramYear=cDTO.getParamYear();         
         
         if(paramYear !=null){//web parameter가 존재
            cal.set(Calendar.YEAR, Integer.parseInt(paramYear));         
         }//end if
         
         //if를 타면 설정된 년이 저장되고, if를 타지 않으면 현재년이 저장된다
         nowYear=cal.get(Calendar.YEAR);
         
         //입력된 월 받기
         String paramMonth=cDTO.getParamMonth();         
         if(paramMonth !=null){
            //calendar 객체의 월은 0월부터 ~11월 12달을 사용
            //10월이 입력되면 자바는 11월
            cal.set(Calendar.MONTH,Integer.parseInt(paramMonth)-1);
         }//end if
         
         //if를 타면 설정된 월이 저장되고, if를 타지 않으면 현재월이 저장된다.
         nowMonth=cal.get(Calendar.MONTH)+1;
         
         
         
         %>
         <div id="calHeader">
<!-- 
nowMonth-1==0?nowYear-1:nowYear : 지금 월에서 1을 뺀값이 0이면 지금 년도에서 1을 뺀다
nowMonth-1==0?12:nowMonth-1 : 지금 월에서 1을 뺀값이 0월이면 현 

nowMonth+1==13?nowYear+1:nowYear : 지금 월에서 1을 더한값이 13이면 년도에서 1을 더한다.
-->


         <a href="calendar.jsp?paramYear=<%= nowMonth-1==0?nowYear-1:nowYear %>&paramMonth=<%=nowMonth-1==0?12:nowMonth-1 %>"><span class="calTitle" title="이전월">&lt;</span></a>
         <span class="calTitle"><%= nowYear %>-<%= nowMonth %></span>
         <a href="calendar.jsp?paramYear=<%= nowMonth+1==13?nowYear+1:nowYear %>&paramMonth=<%=nowMonth+1==0?12:nowMonth+1 %>"><span class="calTitle"title="다음월">&gt;</span></a>
         <a href="calendar.jsp" class="btn btn-success">오늘</a>
         </div>
         <div id="calBody">
         <table id="calTab">
         <thead>
         <tr>
         <th class="sunTitle">일</th>
         <th class="weekTitle">월</th>
         <th class="weekTitle">화</th>
         <th class="weekTitle">수</th>
         <th class="weekTitle">목</th>
         <th class="weekTitle">금</th>
         <th class="satTitle">토</th>
         </tr>
         <thead>
         <tbody>
         <tr>
         <%
         cal.set(Calendar.DAY_OF_MONTH,1);//1일로 설정.
         //1일의 요일을 얻어와서 1일을 출력하기전에 공백을 넣는다. 
         int dayOfWeek=cal.get(Calendar.DAY_OF_WEEK);
         
         //요일별 글자색 css
         String dayColorCss="";
         
         //오늘을 강조할 css
         String toDayTd="";

         for (int i=1; i<dayOfWeek; i++){
         %>
         <td class="blankTd"></td>
         <%   
         }//end for
         
         for(int tempDay=1;; tempDay++){//마지막 날을 모름
            //증가하는 임시 일자로 달력 객체 설정
            //(현재월에 없는 날짜가 입력되면 자동으로 다음 달 1일)
            cal.set(Calendar.DAY_OF_MONTH,tempDay);
         //임시일자와 설정된 날짜가 다르면 (다음달 1일)
            if(tempDay != cal.get(Calendar.DAY_OF_MONTH)){
               dayOfWeek=cal.get(Calendar.DAY_OF_WEEK);
               
               for (int i=dayOfWeek; i<8; i++){
               %>
               <td class="blankTd"></td>
               <%   
               }//end for
               %>
               </tr>
               <%
               break;
            }//end if
            
            dayColorCss="WeekText";
            switch(cal.get(Calendar.DAY_OF_WEEK)){
            case Calendar.SATURDAY:dayColorCss="satText";break;
            case Calendar.SUNDAY:dayColorCss="sunText";break;
            }
                     
            //오늘을 강조하는 css
            toDayTd="";
            if(flagDate.toString().equals(nowYear+""+nowMonth+tempDay)){
               toDayTd=" toDayTd";
            }
            
            %>
            <td class="<%= dayColorCss %><%=toDayTd%>">
               <div><%= tempDay %></div>
            </td>
            <%
            switch(cal.get(Calendar.DAY_OF_WEEK)){
            case Calendar.SATURDAY :
            %>
            <tr></tr>
            <%   
            }
         }
         
         %>
         </tbody>
         </table>
         </div>
         </div>
         </div>
         
         <hr class="featurette-divider">

            </div>
         <hr class="featurette-divider">
         <!-- /END THE FEATURETTES -->
      <!-- /.container -->
      <!-- FOOTER -->
      <footer class="container">
         <p class="float-end">
            <a href="#">위로</a>
         </p>
         <p>
            &copy; SIST class2. &middot; <a href="#">개인정보보호정책</a>
         </p>
      </footer>
   </main>
</body>
</html>