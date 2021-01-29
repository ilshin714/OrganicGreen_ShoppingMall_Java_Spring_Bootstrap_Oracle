<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purchase Result</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.css">
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" 
	integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" 
	crossorigin="anonymous">
</script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" 
	integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" 
	crossorigin="anonymous">
</script>
</head>
<style>
.edge_top{
	border-top:1px solid green;
}
</style>
<body>
<form name="frm_purchase_result">
		<div class="container" style="padding-top:250px;">
		<div style="border:20px groove green; width:400px; height:480px; margin:0 auto; border-radius:25px;">
			<div class="row" style="margin-top:30px;">
				<div class="col-md-12" style="text-align:center; ">
					<i class="fas fa-check-circle" style="width:100px; height:100px;"></i>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-12 edge_top" style="text-align:center; margin-top:30px;"><br/>
						<p>${sessionScope.session_name}님의 주문이 완료 되었습니다.</p>
						<p>결제금액</p>
						<p>10000원(500원 적립)</p>
					</div>
				</div>
				<div class="col-md-12" style="margin-top:30px;">
					<div class="col-md-12" style="text-align:center;">
						<input type="button" style="width:98px;" value="홈으로 이동" name="btn_home" />
					</div>
				</div>
				<div class="col-md-12">
					<div class="col-md-12" style="text-align:center;">
						<input type="button" value="주문내역 상세보기" name="btn_pDetail" />
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
<script>
$(document).ready(function() {
	sub_menu.style.display ="none";
});
</script>
</body>
</html>