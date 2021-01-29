<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice view</title>
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link href="../css/sb-admin-2.css" rel="stylesheet">
<script src='./lib/jquery-3.4.1.js'></script>
<style>
#notice_view {
	padding-top: 30px;
}

#notice_header div {
	height: 80px;
	line-height: 80px;
	font-weight: bold;
	text-align: center;
}
/* 
#notice_data {
	height: 500px;
}
 */
#notice_view .row {
	margin: 0px;
}

#notice_data {
	padding: 10px;
	font-weight: bold;
}

#btns {
	height: 100px;
}
</style>
</head>
<body>
	<div id='notice_view' class='container'>
		<form name='frm_view' method="post">
			<div id='notice_card' class='card shadow'>
				<div id='notice_header'>
					<div class='row border-bottom'>
						<div class='col-2 bg-primary text-white border-bottom'>제목</div>
						<div class='col-10 text-left'>${vo.mnSubject }</div>
					</div>
					<div class='row border-bottom'>
						<div class='col-2 bg-primary text-white'>작성자</div>
						<div class='col-2'>관리자</div>
						<div class='col-2 bg-primary text-white'>작성일자</div>
						<div class='col-2'>${vo.mnDate }</div>
						<div class='col-2 bg-primary text-white'>조회수</div>
						<div class='col-2'>${vo.mnView }</div>
					</div>
				</div>
				<div id='notice_data'>
					<div class='row'>
						<textarea readonly="readonly"
							style='width: 100%; height: 100%; min-height: 500px; border: none; resize: none;'>${vo.mnContent }</textarea>
					</div>
				</div>
			</div>
			<div id='btns' class='row'>
				<div class='col-12 text-center my-auto'>
					<input type='button' id='btnBack' value='돌아가기'
						class='btn btn-primary btn-lg' />
				</div>
			</div>
			<input type='hidden' name='findStr' value='${page.findStr }' />
		</form>
	</div>
	<script>
		var frm = document.frm_view

		$('#btnBack').click(function() {
			frm.action = 'seller_index.jsp?contents=notice.seller';
			frm.submit();
		});
	</script>
</body>
</html>