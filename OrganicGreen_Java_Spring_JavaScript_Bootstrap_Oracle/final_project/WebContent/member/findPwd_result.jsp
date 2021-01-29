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
<title>Insert title here</title>
<style>
#findPwd_result #margin_bottom {
	margin-bottom: 150px;
}

#btnLogin {
	width: 150px;
}

#btnFindPwd {
	width: 150px;

}

#findPwd_result #margin-top {
	margin-top: 300px;
	margin-bottom: 50px;
}

#findPwd_result div {
	text-align: center;
/* 	border: 1px solid black; */
/* 	box-sizing: border-box; */
}
</style>
</head>
<body>
	<div id='header'><jsp:include page="../index_header.jsp" /></div>
	<form name = "frm_findPwd_result">
	<div class="container" id="findPwd_result">
		<div class="row">
			<div class="col-md-12"></div>
	

			<div class="col-md-12" id="margin-top">
				<h3>${msg}</h3>
			</div>
			<div class="col-md-4"></div>

			<div class="col-md-4" id="margin_bottom">
				<button type="button" class="btn btn-success" name="btnLogin"
					id="btnLogin" onclick="goController('loginMain.member')">로그인하기</button>
				<button type="button" class="btn btn-success" name="btnFindPwd"
					id="btnFindPwd" onclick="goURL('findPwd.jsp')">비밀번호찾기</button>
			</div>
			<div class="col-md-4"></div>




		</div>
	

	</div>

</form>

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
	var frm =document.frm_findPwd_result;
	function goController(url) {
		frm.action=url;
		frm.submit();
	}
		function goURL(url) {
			var url = 'index.jsp?content=./member/' + url;
			location.href = url;
		}
		
	</script>
</body>
</html>