<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko">

<head>
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
		new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
		})(window,document,'script','dataLayer','GTM-MTXRTGK5');</script>
<!-- End Google Tag Manager -->

<title>로그인 - 경주월드</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="subject" content="">
<meta name="title" content="로그인 - 경주월드">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="publisher" content="">
<meta property="og:type" content="website">
<meta property="og:title" content="">
<meta property="og:description" content="">
<meta property="og:image" content="">
<meta property="og:url" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="canonical" href="">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="apple-touch-icon" sizes="180x180"
	href="/img/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/img/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/img/favicon-16x16.png">
<link rel="manifest" href="/img/site.webmanifest">
<link rel="stylesheet" type="text/css" href="/css/font.css" />
<link rel="stylesheet" type="text/css" href="/css/base.css" />
<link rel="stylesheet" type="text/css"
	href="/css/layout.css?ver=Fri Nov 21 15:30:18 KST 2025" />
<link rel="stylesheet" type="text/css" href="/css/contents.css?ver=2" />
<link rel="stylesheet" type="text/css" href="/css/flatpickr.min.css" />
<link rel="stylesheet" type="text/css" href="/css/toastr.min.css" />
<link rel="stylesheet" type="text/css" href="/css/smart_new.css?ver=5">

<!-- 복사 파트 시작!! -->
<script src="/js/jquery-1.12.4.js"></script>
<script src="/jquery-ui/jquery-ui.min.js"></script>
<link href="/jquery-ui/jquery-ui.min.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="/js/lib/iframeResizer.min.js"></script>
<script type="text/javascript"
	src="/js/lib/iframeResizer.contentWindow.min.js"></script>
<script type="text/javascript" src="/js/lib/jquery-barcode.js"></script>
<script type="text/javascript" src="/js/lib/jQuery.print.min.js"></script>
<script type="text/javascript" src="/js/approval_key.js"></script>

<script type="text/javascript" src="/js/toastr.min.js"></script>
<script type="text/javascript" src="/js/flatpickr.min.js"></script>
<script type="text/javascript" src="/js/ko.js"></script>

<!-- Include jQuery Popup Overlay -->
<!-- <script src="https://cdn.rawgit.com/vast-engineering/jquery-popup-overlay/1.7.13/jquery.popupoverlay.js"></script> -->
<script type="text/javascript" src="/js/jquery.popupoverlay.js"></script>

<script>
			const _ctx = '';			
			const _fullUrl ='https' + '://' + 'smart.gjw.co.kr' + ':' + '443' + '';
			
	        toastr.options = {
	                "closeButton": false,
	                "debug": false,
	                "newestOnTop": false,
	                "progressBar": false,
	                "positionClass": "toast-top-center",
	                "preventDuplicates": false,
	                "onclick": null,
	                "showDuration": "300",
	                "hideDuration": "1000",
	                "timeOut": "5000",
	                "extendedTimeOut": "1000",
	                "showEasing": "swing",
	                "hideEasing": "linear",
	                "showMethod": "fadeIn",
	                "hideMethod": "fadeOut"
	            };
		</script>
<script src="/js/common.js"></script>
<script src="/js/kakao.min.js"></script>
<style type="text/css">
#BarcodeView {
	position: fixed !important;
}

#BarcodeView ul {
	margin-bottom: 5px;
}

#barcodeDiv {
	display: table;
	margin: 0 auto;
}

@page {
	size: auto; /* auto is the current printer page size */
	margin: 0mm; /* this affects the margin in the printer settings */
}

body {
	background-color: #FFFFFF;
	margin: 0px; /* the margin on the content before printing */
}
</style>

<!-- Google tag (gtag.js) -->
<script>
		// 데이터 레이어 초기화
		window.dataLayer = window.dataLayer || [];

		// 공통 로직: SalesMap 데이터를 처리하고 Data Layer에 추가
		const handlePurchaseEvent = (pageName, step) => {
		  try {
		    const salesDataElement = document.getElementById("JSELECTED_LIST");
		    if (!salesDataElement) {
		      return;
		    }

		    const SalesMap = JSON.parse(salesDataElement.value);
		    const totalAmount = SalesMap.reduce((sum, item) => sum + item.quantity * item.price, 0);
		    const items = SalesMap.map((item) => ({
		      item_id: item.id,
		      item_name: item.name,
		      price: item.price,
		      quantity: item.quantity,
		    }));

		    window.dataLayer.push({
		      event: "purchase",
		      page: pageName,
		      step: step, // 현재 단계
		      ecommerce: {
		        transaction_id: SalesMap[0].transid,
		        value: totalAmount,
		        currency: "KRW",
		        items: items,
		      },
		    });
		  } catch (error) {
		    console.error(`:`, error);
		  }
		};

		// 경로별 처리 로직을 담은 객체 (마지막 경로만 키로 사용)
		const pathHandlers = {
		  "SMBIA001.do": () => {
		    window.dataLayer.push({
		      event: "date_selection",
		      page: "SMBIA001",
		      step: 1, // 날짜 선택 단계
		    });
		  },
		  "SMBIA002.do": () => {
		    window.dataLayer.push({
		      event: "option_selection",
		      page: "SMBIA002",
		      step: 2, // 옵션 선택 단계
		    });
		  },
		  "SMBIA003.do": () => {
		    window.dataLayer.push({
		      event: "payment_selection",
		      page: "SMBIA003",
		      step: 3, // 카드사 제휴 할인 결제 단계
		      discount_type: "card",
		    });
		  },
		  "SMBIA004.do": () => {
		    window.dataLayer.push({
		      event: "payment_selection",
		      page: "SMBIA004",
		      step: 3, // 기타 할인 옵션 결제 단계
		      discount_type: "member_or_afternoon",
		    });
		  },
		  "SMBIA005.do": () => handlePurchaseEvent("SMBIA005", 4),
		  "SMBIC005.do": () => handlePurchaseEvent("SMBIC005", 4),
		  "resMain.do": () => {
		    window.dataLayer.push({
		      event: "page_view",
		      page: "resMain",
		      step: "start", // 여정의 시작
		    });
		  },
		  "loginPage.do": () => {
		    window.dataLayer.push({
		      event: "page_view",
		      page: "login",
		      step: "login",
		    });
		  },
		};

		const currentPathSegment = location.pathname.split("/").pop();

		if (pathHandlers[currentPathSegment]) {
		  pathHandlers[currentPathSegment]();
		}
		</script>
<!-- Kakao -->
<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/kas/static/kp.js"></script>
<script type="text/javascript">
			kakaoPixel('4564186191118487507').pageView();
			if(location.pathname == "/reservation/amusement/SMBIA005.do" || location.pathname == "/reservation/californiaBeach/SMBIC005.do"){
				let SalesMap = JSON.parse('');
				let SalesTotCnt = 0;
				let SalesTotAmt = 0;
				for(let i = 0; i < SalesMap.length; i++){
					SalesTotCnt += SalesMap[i].quantity;
					SalesTotAmt += SalesMap[i].quantity * SalesMap[i].price;
				}
				kakaoPixel('4564186191118487507').purchase(
						{
							total_quantity: SalesTotCnt, // 주문 내 상품 개수(optional)
							total_price: SalesTotAmt, // 주문 총 가격(optional)
							currency: "KRW", // 주문 가격의 화폐 단위(optional, 기본 값은 KRW) 
							products: SalesMap
						}); 
				var hpt_trace_info={'_mode':'order','_memid':'gjworld','_total_price':SalesTotAmt};
			}
		</script>

<!-- 전환페이지 설정 -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript"> 
			if(location.pathname == "/reservation/amusement/SMBIA005.do" || location.pathname == "/reservation/californiaBeach/SMBIC005.do"){
				let SalesMap = JSON.parse('');
				let SalesTotAmt = 0;
				for(let i = 0; i < SalesMap.length; i++){
					SalesTotAmt += SalesMap[i].quantity * SalesMap[i].price;
				}
				var _nasa={};
				if(window.wcs) _nasa["cnv"] = wcs.cnv("1",SalesTotAmt);
			}
		</script>

<script type="text/javascript"> 
			if (!wcs_add) var wcs_add={};
			wcs_add["wa"] = "s_32270bfad5de";
			if (!_nasa) var _nasa={};
			if(window.wcs){
				wcs.inflow();
				wcs_do(_nasa);
			}
		</script>

<!-- Meta Pixel Code -->
<script>
		!function(f,b,e,v,n,t,s)
		{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
		n.callMethod.apply(n,arguments):n.queue.push(arguments)};
		if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
		n.queue=[];t=b.createElement(e);t.async=!0;
		t.src=v;s=b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t,s)}(window, document,'script',
		'https://connect.facebook.net/en_US/fbevents.js');
		fbq('init', '1305114507242906');
		fbq('track', 'PageView');
		</script>
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=1305114507242906&ev=PageView&noscript=1" />
</noscript>
<!-- End Meta Pixel Code -->
</head>
<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MTXRTGK5"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->



	<div id="WrapContents">


		<link rel="stylesheet" type="text/css" href="/css/rpopup.css">
		<script type="text/javascript" src="/js/common2.js"></script>
		<script
			src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
			charset="utf-8"></script>
		<script src="/js/lib/kakao.min.js"></script>
		<script src="/js/rpopup.min.js"></script>

		<script>
	window.fbAsyncInit = function() {
   FB.init({
     appId      : '2087660441253238',
     cookie     : true,
     xfbml      : true,
     version    : 'v3.1'
   });
};
(function(d, s, id){
   var js, fjs = d.getElementsByTagName(s)[0];
   if (d.getElementById(id)) {return;}
   js = d.createElement(s); js.id = id;
   js.src = "https://connect.facebook.net/ko_KR/sdk.js";
   fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk'));

 $(document).ready(function(){
	 
	var agent = navigator.userAgent.toLowerCase();

	if ((navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) ||agent.indexOf('msie') != -1) {
		alert("인터넷 익스플로러는 지원하지 않습니다.\n다른 브라우저를 이용해주세요!");
	}
	
/* 	var urls = $("#url").val(); 
	if(urls.includes("SMBIX001")){
		$.rpopup({
	        imgSrc : "/img/card_1.jpg",
	        mobile_imgSrc : "/img/card_2.jpg",
	        positionTop :"70px",
	        positionLeft :"50%", //(좌우 중간 위치)
	        headerText :"'여행가는 달' 이용방법",
	        buttonText :"닫기"
	    });
	} */
		
	$(".no_pc").click(function(){
	    window.history.back();
	});
	$("#btn_findIdPage").click(function(){
	   	location.href=_ctx+"/common/findIdPage.do";
	});
	$("#btn_findPwPage").click(function(){
	   	location.href=_ctx+"/common/findPwPage.do";
	});
    $(".btn_home").click(function(){
    	window.location.href = "https://www.gjw.co.kr/Contents/contents.php";
    });

	/* alert("점검 중 입니다");
	history.back();
	return false; */
	
    //네이버로그인 시작
    var naverLogin = new naver.LoginWithNaverId({
        clientId: "3U36qq9G3a_B4YgZYGLI",
        //callbackUrl: "https://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + _ctx+"/common/naverLoginComplete.do",
		callbackUrl: "https://smart.gjw.co.kr/common/naverLoginComplete.do",
        isPopup: true, /* 팝업을 통한 연동처리 여부 */ 
        callbackHandle: true,
        //loginButton: {color: "green", type: 3, height: 52} /* 로그인 버튼의 타입을 지정 */
    });        
    /* 설정정보를 초기화하고 연동을 준비 */
    naverLogin.init();
    //네이버로그인 끝

    //카카오 로그인 시작
    Kakao.init('c41acb38e86ba421c691f2143fe82c44');
    //카카오 로그인 끝 
    
  	/**
     * 아이디 저장 시작
     */
    var saveId = commonJS.getCookie("saveId");
    $("#mbIdStr").val(saveId);  

    if($("#mbIdStr").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
        $("#chk_saveId").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    };

    $("#chk_saveId").change(function(){ // 체크박스에 변화가 있다면,
        if($("#chk_saveId").is(":checked")){ // ID 저장하기 체크했을 때,
            var userInputId = $("#mbIdStr").val();
            commonJS.setCookie("saveId", userInputId, 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시        
            commonJS.deleteCookie("saveId");
        }
    });

    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("#mbIdStr").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#chk_saveId").is(":checked")){ // ID 저장하기를 체크한 상태라면,        
            commonJS.setCookie("saveId", $("#mbIdStr").val(), 7); // 7일 동안 쿠키 보관
        }
    });
    /**
     * 아이디 저장 끝
     */

    //경주월드 로그인 버튼 클릭
    $("#btn_login").click(function(){    
    	if($("#mbIdStr").val()==null || $("#mbIdStr").val() == ""){
    		alert("아이디를 입력해주세요.");
    		return false;
    	}
    	if($("#mbPw").val()==null || $("#mbPw").val() == ""){
    		alert("패스워드를 입력해주세요.");
    		return false;
    	}
    	
    	$("#mbId").val($("#mbIdStr").val());    	
        $("#loginForm").submit();
    });    
    
    //네이버 로그인 버튼 클릭
    $("#btn_naverLogin").click(function(){
        var naverLoginPopup = window.open(naverLogin.generateAuthorizeUrl(), "naverLoginPopup", "width=400,height=600");      
    });  

    //카카오 로그인 버튼 클릭
    $("#btn_kakaoLogin").click(function(){     
    	// 로그인 창을 띄웁니다.
      	Kakao.Auth.login({
            success: function(authObj) {
                //정보 요청         
                Kakao.API.request({
                    url: '/v2/user/me',                  
                    success: function(data){     
                    	if("name" in data.kakao_account){
                    		$("#mbWname").val(data.kakao_account.name);
                    	} else {
                    		$("#mbWname").val(data.properties.nickname);    
                    	}
    					$("#idOriginName").val("KAKAO");
    					$("#mbEmail").val(data.kakao_account.email);
    					$("#mbWbirthymd").val(data.kakao_account.birthyear + data.kakao_account.birthday);
    					var mbWsex = "02";
    					if(data.kakao_account.gender == "male"){
    						mbWsex = "01";
    					}
    					$("#mbWsex").val(mbWsex);
    					var hpNum = data.kakao_account.phone_number;
    					hpNum = hpNum.replace("+82 ", "0");
    					$("#mbHp").val(hpNum);
    				 	var param = { 
   				            mbId : 'KAKAO-'+data.id
   				        };
						commonJS.postAjax("/member/memberJoin/idDuplCheck.json", param,function(d){
							
							$("#mbId").val('KAKAO-'+data.id);
  				            if(d.isDup == "N"){
  				            	$("#loginForm").prop("action",_ctx+"/member/memberJoin/KfirstSocialLogin.do");
  				            	$("#loginForm").submit();
  				            }else{  				            	
  				            	$("#loginForm").submit();
  				            }
						}); 
                    }
                })                
            },
            fail: function(err) {
                alert(JSON.stringify(err));
            }
        });
    });
    
    //페이스북 로그인 버튼
    $("#btn_facebookLogin").click(function(){
	   	    FB.login(function(response) {
	   	        if (response.authResponse) {
	   	            console.log('facebook login auth');
	   	            
					var fbname;
		   	    	var accessToken = response.authResponse.accessToken;
					FB.api('/me', {fields:['email','name']}, function(response) {
						var fb_data = jQuery.parseJSON(JSON.stringify(response));
						$("#mbWname").val(fb_data.name);    
						$("#idOriginName").val("FACEBOOK");
						$("#mbEmail").val(fb_data.email);
						var mbWsex = "02";
						if(fb_data.gender == "mail"){
							mbWsex = "01";
						}
						$("#mbWsex").val(mbWsex);
						
						var param = { 
				            mbId : 'FACEBOOK-'+fb_data.id
				        };
		   	         	commonJS.postAjax("/member/memberJoin/idDuplCheck.json", param,function(d){
							
							$("#mbId").val('FACEBOOK-'+fb_data.id);
				            if(d.isDup == "N"){
				            	alert("가입된 이력이 없으며 현재 페이스북 가입은 불가합니다.\n다른 가입수단을 이용해주세요.");
				            	return;
				            	$("#loginForm").prop("action",_ctx+"/member/memberJoin/firstSocialLogin.do");
				            	$("#loginForm").submit();
				            }else{  			
				            	$("#loginForm").submit();
				            }
						}); 
					    
					});
	   	        } else {
	   	            //user hit cancel button
	   	            console.log('User cancelled login or did not fully authorize.');
	   	        }
	   	    }, {scope: 'public_profile,email'}
	   	 );
	   });

    $(".btn_join").click(function(){
    	location.href=_ctx+"/member/memberJoin/memberJoinEnter.do";
    });
    
    $("#btn_findIdPage").click(function(){
    	location.href=_ctx+"/common/findIdPage.do";
    });
    $("#btn_findPwPage").click(function(){
    	location.href=_ctx+"/common/findPwPage.do";
    });
});
function fn_mobileCert(){
    commonJS.fn_authPop("fn_cbAuth");
};

function fn_cbAuth(data){	
	$("#mbId").val("MCERT-"+data.uniqueAuthCode);	
	$("#mbWname").val(data.mbWname);	
	$("#mbWbirthymd").val(data.mbWbirthymd);	
	$("#uniqueAuthCode").val(data.uniqueAuthCode);
	$("#mbWsex").val(data.mbWsex);			
	$("#idOriginName").val("MCERT");	
	$("#loginForm").submit();		
};

if(""=="1"){
	alert("탈퇴한 회원입니다.");
}else if(""=="2"){
	alert("로그인 정보가 올바르지 않습니다.");
}
</script>

		<form id="loginForm" name="loginForm" action="/common/doLogin.do"
			method="post">
			<input type="hidden" id="idOriginName" name="idOriginName"
				value="GJW" /> <input type="hidden" id="mbWname" name="mbWname"
				value="" /> <input type="hidden" name="mbWbirthymd" id="mbWbirthymd" />
			<input type="hidden" name="mbHp" id="mbHp" /> <input type="hidden"
				name="mbId" id="mbId" /> <input type="hidden" name="uri" id="uri"
				value="" /> <input type="hidden" name="url" id="url" value="" /> <input
				type="hidden" name="mbEmail" id="mbEmail" value="" /> <input
				type="hidden" name="parkType" id="parkType" value="" /> <input
				type="hidden" name="mbWsex" id="mbWsex" value="" /> <input
				type="hidden" name="uniqueAuthCode" id="uniqueAuthCode" value="" />

			<div class="wrap">
				<header id="header">
					<button type="button" class="btn_back no_pc">뒤로가기</button>
					<h1>
						<a href="javascript:void(0);" class="btn_home"> <img
							src="/img/40yearslogo.png" alt="경주월드">
						</a>
					</h1>
				</header>
				
				<!-- 로그인 -->
				<div id="container">
					<div class="contents">
						<div class="small_page">
							<div class="page_tit">
								<h2>로그인</h2>
							</div>

							<div class="login_wrap">
								<div class="input_wrap">
									<div class="input_type">
										<label for="login_id">아이디</label> <input type="text"
											id="mbIdStr" name="mbIdStr" placeholder="" value="" />
									</div>
									<div class="input_type">
										<label for="login_pw">비밀번호</label> <input type="password"
											id="mbPw" name="mbPw" placeholder="" value="" />
									</div>
								</div>
								<div class="login_menu">
									<div class="chk_type">
										<input type="checkbox" name="chk_saveId" id="chk_saveId"
											value=""> <label for="chk_saveId">아이디 저장</label>
									</div>
									<div class="find_menu">
										<a href="javascript:void(0);" id="btn_findIdPage">아이디 찾기</a> <a
											href="javascript:void(0);" id="btn_findPwPage">비밀번호 찾기</a>
									</div>
								</div>
								<div class="btn_wrap btn_one">
									<button type="submit" class="btn_type btn_red" value="로그인"
										id="btn_login">로그인</button>
								</div>
							</div>
							<div class="sns_login">
								<h3>SNS 간편 로그인</h3>
								<div>
									<a href="javascript:void(0);" class="btn_type btn_white"
										id="btn_kakaoLogin"> <span> <i>카카오</i> 로그인
									</span>
									</a> <a href="javascript:void(0);" class="btn_type btn_white"
										id="btn_naverLogin"> <span> <i>네이버</i> 로그인
									</span>
									</a> <a href="javascript:void(0);" class="btn_type btn_white"
										id="btn_facebookLogin"> <span> <i>페이스북</i> 로그인
									</span>
									</a>
								</div>
							</div>
							<div class="join_link">
								<h3>아직 회원이 아니신가요?</h3>
								<p>회원이 되시면 홈페이지에서 제공하는 온라인 서비스를 이용하실 수 있습니다.</p>
								<a href="javascript:void(0);"
									class="btn_type btn_white btn_join">회원가입</a>
							</div>

						</div>
					</div>
				</div>
				
				<!-- 로그인 끝 -->
				
				
				<footer id="footer">
					<img src="/img/logo.png" alt="경주월드">
					<ul>
						<li>경주월드 주식회사(경주지점)</li>
						<li>주소 경주시 보문로 544(천군동)</li>
						<li>대표전화 1544-8765</li>
						<li>사업자등록번호 505-85-15586</li>
						<li>대표이사 정원기, 함영관</li>
						<li>개인정보관리자 권준오</li>
						<li>&copy; GyeongjuWorld. All rights reserved.</li>
					</ul>
				</footer>
			</div>
		</form>
	</div>
	<!-- 본인인증 서비스 팝업을 호출하기 위해서는 다음과 같은 form이 필요합니다. -->
	<form name="authForm" id="authForm" method="post">
		<input type="hidden" name="m" value="checkplusSerivce" />
		<!-- 필수 데이타로, 누락하시면 안됩니다. -->
		<input type="hidden" name="EncodeData" id="EncodeData" value="" />
		<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
	</form>





	<!-- Naver(Smartlog) -->
	<script type="text/javascript"> 
		    var hpt_info={'_account':'UHPT-70564', '_server': 'a70'};
		</script>
	<script language="javascript" src="//cdn.smlog.co.kr/core/smart.js"
		charset="utf-8"></script>
	<noscript>
		<img src="//a70.smlog.co.kr/smart_bda.php?_account=70564"
			style="display: none; width: 0; height: 0;" border="0" />
	</noscript>
</body>
</html>