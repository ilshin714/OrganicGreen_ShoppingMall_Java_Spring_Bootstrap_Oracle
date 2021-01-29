<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>Insert Product</title>
<style>
.edge{
	border: 1px solid black;
	box-sizing:border-box;
	margin-top:10px;
}
</style>
</head>
<body>
<form name="frm_insert_product" method="post">
	<div class="container">
		<div class="row">
			<div class="col-md-12 edge">
				<h1>상품 등록</h1>
			</div>
			<div class="col-md-2 edge">
				<label>상품명</label>
			</div>
			<div class="col-md-10 edge">
				<input type="text" name="rPname" />
			</div>
			<div class="col-md-2 edge">
				<label>가격(각각)</label>
			</div>
			<div class="col-md-10 edge">
				<input type="text" name="rPprice" />
			</div>
			<div class="col-md-2 edge">
				<label>수량</label>
			</div>
			<div class="col-md-10 edge">
				<input type="text" name="rEa" />
			</div>
			<div class="col-md-2 edge">
				<label>판매자</label>
			</div>
			<div class="col-md-10 edge">
				<input type="text" name="rPid" />
			</div>
			<div class="col-md-2 edge">
				<label>할인율</label>
			</div>
			<div class="col-md-10 edge">
				<select>
					<option>10%</option>
					<option>15%</option>
					<option>20%</option>
				</select>
			</div>
			<div class="col-md-2 edge">
				<label>썸네일</label>
			</div>
			<div class="col-md-10 edge">
				<img src="http://placehold.it/300x300" id='s_img' name='s_img'>
				<input type='file' value='썸네일 사진' name='rPhoto' />
			</div>
			<div class="col-md-2 edge">
				<label>내용</label>
			</div>
			<div class="col-md-10 edge">
				<img src="http://placehold.it/300x300" id='c_img' name='c_img'>
				<input type='file' value='내용 사진' name='rCphoto' />
			</div>
			<div class="col-md-12 edge" style="text-align:center; margin-top:30px;">
				<input style="width:150px;" type="button" value="등록" name="btn_insert"/>
				<input style="width:150px;" type="button" value="취소" name="btn_cancel"/>
			</div>
		</div>
	</div>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>