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
<link rel="stylesheet" href="./css/bootstrap.css">

<title>회원가입 완료</title>
<style>
#frm_register_information_ok h3 {
	margin-bottom: 50px;
}

#frm_register_information_ok #btnList {
	font-size: 30px;
	width: 360px;
	height: 70px;
}

#frm_register_information_ok {

	margin-bottom: 150px;
}

#register_information_ok #text_align_center {
	text-align: center;
}
</style>
</head>
<body>
	<div id='header'><jsp:include page="../index_header.jsp" /></div>
	
	<form name="frm_register_information_ok"
		id="frm_register_information_ok" method="post">
		<div class="container" id="register_information_ok" style="padding-top: 250px;">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6" id="text_align_center">
					<h3>${msg}</h3>
				</div>


				<div class="col-md-3"></div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<div class="col-md-3"></div>
				<div class="col-md-6" id="text_align_center">
					<button type="button" class="btn btn-success btn-sm" name="btnList"
						id="btnList">메인으로 가기</button>
				</div>
				<div class="col-md-3"></div>

			</div>
		</div>
	</form>
	<div id='footer'>
		<%@include file="../index_footer.jsp"%></div>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
		var frm = document.frm_register_information_ok;
		frm.btnList.onclick = function() {
			var url = 'index.jsp';

			frm.action = url;
			frm.submit();
		}
	</script>


</body>
</html>