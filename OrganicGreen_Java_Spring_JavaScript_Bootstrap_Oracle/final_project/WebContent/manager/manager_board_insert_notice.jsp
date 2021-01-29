<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="../SE2/js/HuskyEZCreator.js" charset="utf-8"></script>
<title>공지사항 등록 </title>

</head>

<body>
<form name="frm_insert_notice" method="post" >
	<div class="container">
			<div class="row">
					<div class="col-md-12 edge">
						<!-------------- 중단 그래프 바탕화면 배경 설정------------------------>		
						<div class="card shadow mb-4"> 
							<!-- 그래프 상단 타이틀과 부분 -->
							<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<!-- 타이틀 제목  -->
						<h4 class="m-1 font-weight-bold text-warning">공지사항 등록</h4>
						</div>
						<!-- 그래프 상단 타이틀 부분 끝 -->
						<!-- 인서트 바디 부분  -->
						<div class="card-body">
							<div class="row">					
								<div class="col-md-1 edge">	
								</div>
								<div class="col-md-2 edge">		
									<label class="m-1 text-warning text-lg">공지 타이틀 </label>
								</div>
								<div class="col-md-8 edge">
									<input type="text" id ="mnSubject"  name="mnSubject" class="col-md-10" />
								</div>
								<div class="col-md-1 edge">	
								</div>
								
								<div class="col-md-1 edge">	
								</div>
								<div class="col-md-2 edge">
									<label class="m-1 text-warning text-lg">내용 </label>
								</div>
								<div class="col-md-8 edge">
									<textarea class="col-md-10 form-control" rows="10" cols="50" style="resize: none" id ="mnContent" name ="mnContent"></textarea>
								</div>
								<div class="col-md-1 edge">	
								</div>
								
								
								
						</div>
					</div>
					<!-- 인서트  바디 부분 끝  -->
					
					<!-- 등록버튼 부분 시작   -->
					<div class="col-md-12 edge" style="text-align:center; margin-top:30px;">
						<input style="width:150px;" type="button" value="등록" id = "btn_insert" name="btn_insert" class= "btn-warning btn-lg"/>
						<input style="width:150px;" type="button" value="취소" id = "btn_back" name="btn_back" class= "btn-secondary btn-lg"/>
					</div>
					<!-- 등록버튼 부분 끝  -->
					<br/>
				</div>
				<!-------------- 중단 그래프 바탕화면 배경 설정 끝 ------------------------>	
			</div>
		</div>
					
					
				</div>
		

	
</form>

<script>
	var frm = document.frm_insert_notice;

	$("#btn_insert").click(function(){
		url = "manager_index.jsp?contents=ninsertR.manager" ; 
		frm.action = url;
		frm.submit();
	});
	
	$("#btn_back").click(function(){
		history.back();
	});
	
	
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>