<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 익스플로러 호환성 보기 방지 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 모바일 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<title>아이디 찾기</title>
<style>
#findId_result #margin-bottom {
margin-top:50px;
	margin-bottom: 150px;
}

#
#findId_result h2 {
	margin-bottom: 100px;
}

#findId_result h3 {
	margin-top: 200px;
}

#findId_result div {
	text-align: center;
}

#findId_result #margin_top {
	margin-top: 50px;
}

div {
	/* 	border: 1px solid black; */
	/* 	box-sizing: border-box; */
	
}
</style>
</head>
<body>
	<div id='header'><jsp:include page="../index_header.jsp" /></div>

	<div class="container" id="findId_result">
		<form name="frm_findId_result" method="post">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4" id="margin_top">
					<h3>아이디 찾기 결과</h3>
				</div>
				<div class="col-md-4"></div>


				<div class="col-md-12" id="margin_top">
					<h2>${msg}</h2>
				</div>


				<div class="col-md-3"></div>
				<div class="col-md-6" id="margin-bottom">
					<button type="button" class="btn btn-success btn-md" id="btnLogin"
						onclick="goLogin('login.member')">로그인 하기</button>

					<button type="button" class="btn btn-success btn-md" id="btnFindId"
						onclick="goURL('findId.jsp')">아이디 찾기</button>

					<button type="button" class="btn btn-success btn-md" id="btnFindId"
						onclick="goURL('findPwd.jsp')">비밀번호찾기</button>
				</div>
				<div class="col-md-3"></div>



			</div>
		</form>


	</div>
	<div id='footer'>
		<%@include file="../index_footer.jsp"%></div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script>
		//로그인 하기
		var frm = document.frm_findId_result;
		function goLogin(url) {
			frm.action = "loginMain.member";
			frm.submit();
		}
		//아이디 찾기
		function goURL(url) {

			var url = 'index.jsp?content=./member/' + url;
			location.href = url;

		}
	</script>
</body>
</html>