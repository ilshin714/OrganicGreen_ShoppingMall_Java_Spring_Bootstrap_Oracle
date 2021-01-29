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
<style>
#findPwd #margin_top {
	margin-top: 10px;
}

#findPwd #margin {
	margin-top: 10px;
	margin-bottom: 10px;
}

#findPwd h3 {
	margin-top: 250px;
}

div {
	/*  border: 1px solid black;   */
	/*  	box-sizing: border-box;  */
	text-align: center;
}

#findPwd #btnPwdCheck {
	margin-top: 10px;
	width: 230px;
}
</style>

<title>findPwd</title>
</head>
<body>

	<div class="container" id="findPwd">
		<form name="frm_findPwd" method="post">
			<div class="row">
				<div class="col-md-4 "></div>
				<div class="col-md-4 ">
					<h3>비밀번호 찾기</h3>
				</div>
				<div class="col-md-4 "></div>
			</div>
			<div class="row">
				<div class="col-md-4 "></div>
				<div class="col-md-4 " id="margin">이름</div>
				<div class="col-md-4 "></div>
			</div>

			<div class="row">
				<div class="col-md-4 "></div>
				<div class="col-md-4 ">
					<input type="text" placeholder="NAME" name="sbName" id="sbName"
						class="col-form-label-lg">
				</div>
				<div class="col-md-4 "></div>
			</div>


			<div class="row">
				<div class="col-md-4 "></div>
				<div class="col-md-4 " id="margin">아이디</div>
				<div class="col-md-4 "></div>
			</div>

			<div class="row">
				<div class="col-md-4 "></div>
				<div class="col-md-4 ">
					<input type="text" placeholder="ID" name="sbId" id="sbId"
						class="col-form-label-lg">
				</div>
				<div class="col-md-4 "></div>
			</div>

			<div class="row">
				<div class="col-md-4 "></div>
				<div class="col-md-4 " id="margin">이메일</div>
				<div class="col-md-4 "></div>
			</div>

			<div class="row">
				<div class="col-md-4 "></div>
				<div class="col-md-4 ">
					<input type="text" placeholder="EMAIL" name="sbEmail" id="sbEmail"
						class="col-form-label-lg">
				</div>
				<div class="col-md-4 "></div>
			</div>

			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4" id="margin_top">
					<button type="button" class="btn btn-success btn-lg"
						name="btnPwdCheck" id="btnPwdCheck">찾기</button>
				</div>
				<div class="col-md-4"></div>

			</div>

		</form>
	</div>

	<!-- 부트 스트랩 관련 ------------------------------------------------------->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script>
	<!-- 	//배너 삭제 -->
		$("div").remove("#sub_menu");
		var frm = document.frm_findPwd;

		//찾기 버튼 클릭시
		$('#btnPwdCheck').click(function() {
			var sbName = $('#sbName').val();
			var sbId = $('#sbId').val();
			var sbEmail = $('#sbEmail').val();

			if (sbName == "" || sbId == "" || sbEmail == "") {
				alert("빈칸을 채워주세요.");
				return;
			} else {
				frm.action = "findPwd.member";
				frm.submit();

			}
		});
	</script>
</body>
</html>