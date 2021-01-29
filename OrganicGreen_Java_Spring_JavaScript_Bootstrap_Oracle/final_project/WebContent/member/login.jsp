<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 익스플로러 호환성 보기 방지 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 모바일 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link href="./css/yoonji.css" rel="stylesheet" media="screen">

<title>login</title>
<style>
#btnLogin_register {
	margin-bottom: 50px;
}

#login h3 {
	margin-top: 50px;
	margin-bottom: 20px;
}

#login div {
	text-align: center;
	margin-bottom: 5px;
	/* border: 1px solid black; box-sizing: border-box; */
}

#login button {
	width: 320px;
	height: 50px;
}

#login #sbId, #login #sbPwd {
	height: 50px;
	font-size: medium;
}
</style>
</head>
<body>
	<div id='header'><jsp:include page="../index_header.jsp" /></div>

	<div class="container" id="login" style="padding-top:155px;">
		<form name="frm_login_login" method="post">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<h3>로그인</h3>
				</div>
				<div class="col-md-4"></div>
			</div>

			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<input type="text" placeholder="ID" size="40" name="sbId" id="sbId">
				</div>
				<div class="col-md-4"></div>
			</div>

			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<input type="password" placeholder="PASSWORD" size="40"
						name="sbPwd" id="sbPwd">
				</div>
				<div class="col-md-4"></div>
			</div>
			<!-- 			보안접속 -->
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">

					<div class="row">
					
						<div class="col-md-12" style="text-align: center; margin-top: 5px;">
							<a href="#" onclick="goURL('findId.jsp')">아이디</a> / 
							<a href="#" onclick="goURL('findPwd.jsp')"> 비밀번호 찾기</a>

						</div>

					</div>
				</div>
				<div class="col-md-4"></div>
			</div>

			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<button type="submit" class="btn btn-success" id="btnLogin_login">
						로그인</button>
				</div>
				<div class="col-md-4"></div>
			</div>

			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<button type="submit" class="btn btn-success"
						id="btnLogin_register">회원가입</button>
				</div>
				<div class="col-md-4"></div>
			</div>


		</form>
	</div>
	<div id='footer'>
		<%@include file="../index_footer.jsp"%></div>
	<!-- 부트 스트랩 관련 ------------------------------------------------------->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script src="./js/bootstrap.min.js"></script>

	<script>
		function goURL(url) {
			var url = 'index.jsp?content=./member/'+ url;
			location.href = url;
		}
		//로그인 실패시 메세지 출력
		window.onload = function() {
			if ("${msg}" != "") {
				alert("${msg}");
			}

		}

		var frm = document.frm_login_login;
		//배너 삭제
		$("div").remove("#sub_menu");

		//로그인 버튼 클릭
		frm.btnLogin_login.onclick = function() {
			frm.action = "login.member";

		}
		//회원가입 버튼 클릭
		frm.btnLogin_register.onclick = function() {
			frm.action = "register.member";
		}
	</script>
</body>
</html>


