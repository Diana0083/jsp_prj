<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">

/* ===== 아이디 찾기 Wrapper ===== */
#findWrap {
	position: relative;
	z-index: 5;
	max-width: 1000px;
	width: 90%;
	margin: 0 auto;
	padding: 10px 0;
	font-family: "Noto Sans KR", sans-serif;
}

/* 테이블 */
#findFrmTd {
	width: 100%;
	border-collapse: separate;
	border-spacing: 0 14px;
}

/* 라벨 */
.findTitle {
	width: 230px;
	padding: 18px 22px;
	background: #FFF2E8;
	font-weight: 700;
	font-size: 16px;
	color: #333;
	border-right: 2px solid #FFD4BF;
	border-radius: 12px;
	vertical-align: middle;
}

/* 입력칸 */
.findInput {
	padding-left: 12px;
}

/* 인풋 */
.findInputBox {
	width: 260px;
	height: 44px;
	border: 1px solid #ccc;
	border-radius: 8px;
	font-size: 15px;
	padding: 10px 12px;
	background: #FAFAFA;
	transition: 0.25s;
	box-sizing: border-box;
}

.findInputBox:focus {
	background: white;
	border-color: #FF6A2B;
	box-shadow: 0 0 0 4px rgba(255, 106, 43, 0.18);
}

/* 설명 텍스트 */
.findDesc {
	text-align: center;
	margin-top: 10px;
	font-size: 17px;
	color: #666;
	line-height: 1.6;
}

/* 버튼 */
.findBtns {
	text-align: center;
	padding-top: 40px;
}

.btnFind, .btnCancel {
	height: 44px;
	border-radius: 8px;
	padding: 0 30px;
	font-size: 15px;
	font-weight: 600;
	cursor: pointer;
	transition: 0.2s;
	margin: 0 10px;
}

.btnFind {
	background: #FF6A2B;
	color: white;
	border: none;
}

.btnFind:hover {
	background: #E4581E;
}

.btnCancel {
	border: 2px solid #FF6A2B;
	background: white;
	color: #FF6A2B;
}

.btnCancel:hover {
	background: #FFE4D6;
}

/* 캐릭터·타이틀 전체 영역 */
.character-wrap {
    margin-top: 40px;
    position: relative;
    z-index: 1;
}

/* 캐릭터 + 타이틀 */
.title-line-box {
    position: relative;
    top: 60px;           /* 아래로 이동 */
    width: 100%;
    max-width: 1200px;
    height: 200px;
    margin: 0 auto;
}


/* 캐릭터 이미지 */
.title-character {
    position: absolute;
    bottom: 0;
    height: auto;
}

/* poppy */
.title-character.poppy {
    left: 10%;
    height: 260px;
}

/* bibi */
.title-character.bibi {
    right: 10%;
    margin-bottom: 40px;
    height: 210px;
}

/* 선 영역 — joinWrap 아래로 들어가야 함 */
.title-cover-line {
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 130px;
    background-color: #ffffff;
    border-top: 1px solid #333;
    z-index: 0;            
}

.title-text {
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
    top: 10px;
    font-size: 30px;
    font-weight: bold;
}


</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn").click(function() {
			chkNull();
		});//click
		$("#id").keydown(function(evt) {
			//엔터가 눌러졌을때 만 null 유효성 검증
			if (evt.which == 13) {
				chkNull();
			}//end if
		});//keydown
		$("#tel").keydown(function(evt) {
			//엔터가 눌러졌을때 만 null 유효성 검증
			if (evt.which == 13) {
				chkNull();
			}//end if
		});//keydown

	});//ready

	function chkNull() {
		var name = $("#name").val();
		var birth = $("#birth").val();
		var tel = $("#tel").val();
		if (name.replace(/ /g, "") == "") {
			alert("이름을 입력해주세요.");
			$("#name").focus();
			return;
		}//end if
		else if (tel.replace(/ /g, "") == "") {
			alert("전화번호를 입력해주세요.");
			$("#tel").focus();
			return;
		}
		$("#frm").submit();
	}
</script>



<form name="frm" id="frm" action="chk_IdPg_css.jsp">
	<!-- 컨테이너 시작 -->
	<div class="container" style="margin-top: 200px;">

<!-- 상단 캐릭터 영역 (join 페이지와 동일하게 유지) -->
<div class="character-wrap">
	<div class="title-line-box">

		<div class="title-text">아이디 찾기</div>

		<img src="../common/Images/poppy.png" class="title-character poppy">
		<img src="../common/Images/bibi.png" class="title-character bibi">
		<div class="title-cover-line"></div>
	</div>
</div>

<!-- 아이디 찾기 영역 -->
<div id="findWrap">
	<form name="findFrm" id="findFrm">
	<!-- 설명 -->
	<div class="findDesc">
		등록된 회원정보로<br>
		아이디를 찾으실 수 있습니다.
	</div>



		<table id="findFrmTd">

			<tr>
				<td class="findTitle">
					이름
				</td>
				<td class="findInput">
					<input type="text" id="name" name="name" class="findInputBox">
				</td>
			</tr>

			<tr>
				<td class="findTitle">
					생년월일
				</td>
				<td class="findInput">
					<input type="date" id="birth" name="birth" class="findInputBox">
				</td>
			</tr>

			<tr>
				<td class="findTitle">
					휴대폰 번호
				</td>
				<td class="findInput">
					<input type="text" id="tel" name="tel" class="findInputBox"
						   placeholder="숫자만 입력해주세요.">
				</td>
			</tr>

		</table>

		<!-- 버튼 -->
		<div class="findBtns">
			<button type="submit" class="btnFind">아이디 찾기</button>
			<button type="button" class="btnCancel" onclick="history.back()">취소</button>
		</div>

	</form>

</div>

		</div>

</form>