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
<title>구매자 정보 수정</title>
<style>
 #buyer_modify div { 
/*  	border: 1px solid black;  */
/*  	box-sizing: border-box;  */
margin-bottom:0.5%;
 	text-align: center;
 } 
</style>
</head>
<body>
	<div class="container" id="buyer_modify">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-2">
				<h3>개인정보 수정</h3>
			</div>
			<div class="col-md-8"></div>
		</div>

	<hr/>

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-2">아이디</div>
			<div class="col-md-4"><input type="text" size="43" readonly></div>
			<div class="col-md-4"></div>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-2">비밀번호</div>
			<div class="col-md-4">
				<input type="password" placeholder="password" size="43">
			</div>
			<div class="col-md-4"></div>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-2">비밀번호확인</div>
			<div class="col-md-4">
				<input type="password" placeholder="password" size="43">
			</div>
			<div class="col-md-4"></div>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-2">이름</div>
			<div class="col-md-4"><input type="text" size="43" readonly></div>
			<div class="col-md-4"></div>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-2">이메일</div>
			<div class="col-md-4"><input type="text" placeholder="이메일" size="43"></div>
			<div class="col-md-4"></div>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-2">연락처</div>
			<div class="col-md-4"><input type="text" placeholder="연락처" size="43"></div>
			<div class="col-md-4"></div>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-2">배송주소</div>
			<div class="col-md-4">
				<input type="text" placeholder="우편번호" size="43">
			</div>
			
			<div class="col-md-2">
			<button type="submit" class="btn btn-success btn-sm"
					id="btnBuyerModify_postal">우편번호 찾기</button></div>
				<div class="col-md-2"></div>	
		</div>

		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<input type="text" placeholder="기본주소" size="43">
			</div>
			<div class="col-md-4"></div>

		</div>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<input type="text" placeholder="상세주소" size="43">
			</div>
			<div class="col-md-4"></div>
		</div>

			<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<button type="submit" class="btn btn-success btn-sm" id="btnBuyerModify_modify">정보수정</button>
				<button type="submit" class="btn btn-secondary btn-sm" id="btnList">뒤로가기</button>
				<button type="submit" class="btn btn-danger btn-sm" id="btnBuyerModify_delete">회원탈퇴</button>
			</div>
			<div class="col-md-4"></div>
		</div>


		<div class="row">
			<div class="col-md-1">1</div>
			<div class="col-md-1">2</div>
			<div class="col-md-1">3</div>
			<div class="col-md-1">4</div>
			<div class="col-md-1">5</div>
			<div class="col-md-1">6</div>
			<div class="col-md-1">7</div>
			<div class="col-md-1">8</div>
			<div class="col-md-1">9</div>
			<div class="col-md-1">10</div>
			<div class="col-md-1">11</div>
			<div class="col-md-1">12</div>
		</div>


	</div>
</body>
</html>