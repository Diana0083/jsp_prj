<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<title> EL 사용 </title>
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
</style>

<style type="text/css">
#wrap{margin:0px auto; width:1200px; height:1000px;} 
#header{height:150px;}
#container{height:700px;}
#footer{height:150px;}
 
</style>

<!-- jQuery CDN 시작 -->
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
            <a class="navbar-brand" href="#">메인</a>
            <button class="navbar-toggler" type="button"
               data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
               aria-controls="navbarCollapse" aria-expanded="false"
               aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
               <ul class="navbar-nav me-auto mb-2 mb-md-0">
                  <li class="nav-item"><a class="nav-link active"
                     aria-current="page" href="#">Home</a></li>
                  <li class="nav-item"><a class="nav-link" href="#">Link</a></li>
                  <li class="nav-item"><a class="nav-link disabled"
                     aria-disabled="true">Disabled</a></li>
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
                     <h1>Example headline.</h1>
                     <p class="opacity-75">Some representative placeholder content
                        for the first slide of the carousel.</p>
                     <p>
                        <a class="btn btn-lg btn-primary" href="#">Sign up today</a>
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
            <div class="col-md-7">
            
            
               <strong>EL에서 제공하는 연산자</strong>
               <ul>
               <li><strong>산술 연산자</strong></li>
               <li>11 + 29 = ${ 11 + 29 }</li>
               <li>11 * 29 = ${ 11 * 29 }</li>
               <li>10을 2로 나눈 나머지 = ${ 10 % 2 } ( ${10 mod 2 } )</li>
               
               
               <li><strong>관계 연산자</strong></li>
               <li> 5 &gt; 4 =  ${ 5 > 4 } ( ${ 5 gt 4 } )</li> 
               <li> 5 &lt; 4 =  ${ 5 < 4 } ( ${ 5 lt 4 } )</li> 
               <li> 5 &gt;= 4 =  ${ 5 >= 4 } ( ${ 5 ge 4 } )</li> 
               <li> 5 &lt;= 4 =  ${ 5 <= 4 } ( ${ 5 le 4 } )</li>
               <li> 5 == 4 =  ${ 5 == 4 } ( ${ 5 eq 4 } )</li>
<%--                <li> 5 != 4 =  ${ 5 != 4 } ( ${ 5 ne 4 } )</li> --%>  
             <!-- 특수기호 표기법과 문자 표기법 -->
           <!-- &gt; , gt 크다 / &lt; , lt 작다 / &gt;= , ge 크거나 같다 / &lt;= , le 작거나 같다-->
           <!-- ==; , eq 같니 / != , ne 다르니 -->
               <li><strong>논리 연산자</strong></li>
               <li> 5 &gt; 4 &amp;&amp; 4 &lt; 5 = ${ 5 > 4 && 4 < 5 } ( ${ 5 gt 4 and 4 lt 5 } )</li> 
               <li> 5 &gt; 4 || 4 &lt; 5 = ${ 5 > 4 || 4 < 5 } ( ${ 5 gt 4 or 4 lt 5 } )</li> 

               <li><strong>단항 연산자</strong></li>
               <li> !(5 &gt; 4 &amp;&amp; 4 &lt; 5) = ${ !(5 > 4 && 4 < 5) } ( ${ not(5 gt 4 and 4 lt 5) } )</li> 
               
               <li><strong>삼항 연산자</strong></li>
               <li> 10은 = ${ 10 % 2 == 0 ? "짝수":"홀수" } ( ${ 10 mod 2 eq 0 ? '짝수':'홀수' } )</li>
               
               
               <%
               String temp=null;
               String temp2="";
               List<String> list=new ArrayList();
               if( new Random().nextBoolean()){
            	   temp="안녕";
            	   list.add("안녕");
               }//end if
			
               pageContext.setAttribute("temp", temp );
               pageContext.setAttribute("temp2", temp );
               pageContext.setAttribute("list", list);
               %>
               
               <li><strong>EL에서는 null을 출력하지 않는다</strong></li>
               <li>temp = ${ temp } <%= temp %></li>
             
             
               <li><strong>empty 연산자</strong></li>
               <li>temp 가 null 이니 ? ${ empty temp } </li>
               <li>temp2 가 null 이니 ? ${ empty temp2 } </li>
               <li>list에 방의 갯수가 0 이니 ? ${ empty list } </li>
               
               
               
               
               </ul>
            
            
            </div>
            
         </div>
         <hr class="featurette-divider">
         <!-- /END THE FEATURETTES -->
      </div>
      <!-- /.container -->
      <!-- FOOTER -->
      <footer class="container">
         <p class="float-end">
            <a href="#">위로</a>
         </p>
         <p>
            &copy; SIST class2. &middot; <a href="#">개인정보호정책</a>
            &middot; 개인정보관리 책임자 : 이현아 ( 꼬우면 연락 ㄱ )
         </p>
      </footer>
      </main>
</body>
</html>