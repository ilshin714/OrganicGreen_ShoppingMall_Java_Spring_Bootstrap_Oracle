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
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link href="../css/yoonji.css" rel="stylesheet" media="screen">
<title>findId</title>
<style>
#findId button {
margin-top:10px;
	width: 235px;
}

#findId_btn {
	text-align: center;
}

#findId h3 {
	margin-top: 250px;
	text-align: center;
}

#findId div {
	/* 	border: 1px solid black; */
	/* 	box-sizing: border-box; */
	text-align: center;
	margin-bottom: 1%;
}
</style>
</head>
<body>

	<div class="container" id="findId">
		<form name="frm_findId" id="frm_findId">
			<div class="row">
				<div class="col-md-4 "></div>
				<div class="col-md-4 ">
					<h3>아이디 찾기</h3>
				</div>
				<div class="col-md-4 "></div>
			</div>

			<div class="row">
				<div class="col-md-4 "></div>
				<div class="col-md-4 ">이름</div>
				<div class="col-md-4 "></div>
			</div>

			<div class="row">
				<div class="col-md-4 "></div>
				<div class="col-md-4 ">
					<input type="text" class="col-form-label-lg" placeholder="NAME"
						name="sbName" id="sbName">
				</div>
				<div class="col-md-4 "></div>
			</div>

			<div class="row">
				<div class="col-md-4 "></div>
				<div class="col-md-4 ">이메일</div>
				<div class="col-md-4 "></div>
			</div>

			<div class="row">
				<div class="col-md-4 "></div>
				<div class="col-md-4 ">
					<input type="text" class="col-form-label-lg" placeholder="EMAIL"
						name="sbEmail" id="sbEmail">
				</div>
				<div class="col-md-4 "></div>
			</div>

			<div class="row">
				<div class="col-md-4 "></div>
				<div class="col-md-4 " id="findId_btn">
					<button type="button" class="btn btn-success btn-lg">아이디
						찾기</button>
				</div>
				<div class="col-md-4 "></div>
			</div>

			
		</form>
	</div>


	<script src="https://code.jquery.com/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script>
		var frm = document.frm_findId;
		//배너 삭제
		$("div").remove("#sub_menu");

		//아이디 찾기 클릭시
		$('#findId_btn').click(function() {
			//이름, email이 공백이 아닐때
			if ($('#sbName') != null) {
				if ($('#sbEmail') != null) {

					frm.action = "findId.member";
					frm.submit();

				} else {
					alert("이메일을 입력해주세요.")
				}
			} else {
				alert("아이디를 입력해주세요.");
			}
		});
	</script>
</body>
</html>