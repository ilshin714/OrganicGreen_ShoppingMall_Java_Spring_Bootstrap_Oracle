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
<title>정보수정시 비밀번호 입력 페이지</title>
<style>
#passwordCheck div{text-align: center;}
/*        div{box-sizing: border-box; border: 1px solid black; }     */
#passwordCheck #passwordCheck_content{box-sizing: border-box; border: 2px solid gray; padding: 3%; margin-bottom:10px; } 
#passwordCheck #p_margin-botton{margin-bottom: 1%;}
#passwordCheck button{width:205px; margin-top:1%; }
#passwordCheck hr{margin: 0 auto;}
#passwordCheck #top {margin-top: 10px;}
</style>
</head>
<body>
<div class = "container" id = "passwordCheck">
	<div class = "row">
		<div class = "col-md-4"></div>
		<div class = "col-md-4"><h3>개인정보 수정</h3> </div>
		<div class = "col-md-4"></div>
	</div>

	<div class = "row">
		<div class = "col-md-2"></div>
		<div class = "col-md-8"><hr/> </div>
		<div class = "col-md-2"></div>
	</div>
	
	
		<div class = "row">
		<div class = "col-md-4"></div>
		<div class = "col-md-4" id = "top"><h3><strong>비밀번호 재확인</strong></h3></div>
		<div class = "col-md-4"></div>
	</div>
	
	<div class ="row" id ="p_margin-botton">
	<div class= "col-md-2"></div>
	<div class ="col-md-8"><label><strong>회원님의 정보를 안전하게 보호</strong>하기위해 <strong>비밀번호를 다시 한번</strong> 확인해주세요.</label></div>
	<div class= "col-md-2"></div>
	</div>
	

	
<!-- 	내용 박스 -->
	<div class = "row">
	<div class = "col-md-3"></div>
	<div class = "col-md-6" id = "passwordCheck_content">
	
			<div><strong>아이디</strong></div>
			<div>limyoonji</div>
			<br/>
			<div><strong>비밀번호</strong></div>
			<div><input type= "password" size="24" ></div>
	</div>
	<div class = "col-md-3"></div>
	</div>
	
	<div class ="row">
	<div class= "col-md-4"></div>
	<div class ="col-md-4"><button type="submit" class="btn btn-success " id="btnPasswordCheck">확인</button></div>
	<div class= "col-md-4"></div>
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