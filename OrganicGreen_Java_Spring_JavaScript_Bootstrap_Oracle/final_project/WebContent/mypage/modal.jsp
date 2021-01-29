<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 익스플로러 호환성 보기 방지 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 모바일 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이페이지</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/mypage_common.css">
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">-->
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
</head>
<body>
<!-- Modal -->
<form name="frm_modal" method="post">
	<div class="modal fade" id="myModal" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true">
	  	<div class="modal-dialog">
	    	<div class="modal-content">
	      		<div class="modal-header">
	        		<h4 class="modal-title" id="gridSystemModalLabel" style="font-size:14px;">구매확정</h4>
	        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	      		</div><!-- end of modal-header -->
	     		<div class="modal-body" style="font-size: 23px;line-height: 35px;text-align: center;">
		          	<div class="container-fluid" >
		          		<strong>구매 확정되었습니다.</strong><br>
		        		<span>예상 적립금</span>
		        		<span>100원</span>
		        	</div><!-- end of container-fluid -->
		       	</div><!-- end of modal-body-->
			    <div class="modal-footer">
		      		<button type="button" class="btn btn-primary"  data-dismiss="modal" >확인</button>
		    	</div>
	   		</div><!-- end of modal-content -->
	 	</div><!-- modal-dialog -->
	</div><!-- end of modal fade -->
</form>

<!-- 부트 스트랩 관련 ------------------------------------------------------->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="./js/bootstrap.min.js"></script>


</body>
</html>