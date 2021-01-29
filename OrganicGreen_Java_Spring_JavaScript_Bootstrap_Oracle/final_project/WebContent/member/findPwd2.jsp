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
<title>findPwd2</title>
<Style>
#div_findPwd2 {text-align: center; }
#div_findPwd2 div {	
/* border: 1px solid black;  box-sizing: border-box;  */

margin-bottom: 1%; }
#div_findPwd2 #btnPwdReceive{width: 350px; margin-top: 1%;}
</Style>
</head>
<body>
<div class = "container" id = "div_findPwd2">
	<div class = "row">
		<div class ="col-md-4"></div>
		<div class ="col-md-4"><h2>비밀번호 찾기</h2></div>
		<div class ="col-md-4"></div>
	</div>
	
		<div class = "row">
		<div class ="col-md-4"></div>
		<div class ="col-md-4"><img src="http://images.clipartpanda.com/envelope-clipart-png-envelope.png" width="150px" height="75px"></div>
		<div class ="col-md-4"></div>
	</div>
	
		<div class = "row">
		<div class ="col-md-3"></div>
		<div class ="col-md-6"><h2><strong>이메일로 인증 완료 후<br/> 비밀번호를 재발급 받으세요!</strong></h2></div>
		<div class ="col-md-3"></div>
	</div>

		<div class = "row">
		<div class ="col-md-2"></div>
		<div class ="col-md-8">입력하신 []aa@naver.com[] 으로 인증번호가 발송되며, 인증 후 비밀번호가 재발급됩니다. <br/>전송량이 많은 경우 이메일 전송이 지연될 수 있습니다.</div>
		<div class ="col-md-2"></div>
	</div>
	
	
			<div class = "row">
		<div class ="col-md-3"></div>
		<div class ="col-md-6"><button type="submit" class="btn btn-success btn-lg" id = "btnPwdReceive" >인증번호 받기</button></div>
		<div class ="col-md-3"></div>
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
	<script src="https://code.jquery.com/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>


</body>
</html>