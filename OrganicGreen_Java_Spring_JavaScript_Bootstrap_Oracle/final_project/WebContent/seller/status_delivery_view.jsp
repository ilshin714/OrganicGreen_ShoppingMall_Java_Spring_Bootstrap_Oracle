<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>status sell view</title>
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link href="../css/sb-admin-2.css" rel="stylesheet">
<style>
#status_delivery_view {
	padding-top: 30px;
}

#view_header div {
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
#status_delivery_view #card_header {
	height: 80px;
	line-height: 60px;
}

#status_delivery_view .row {
	margin: 0px;
}

#status_delivery_view  #card_body div {
	height: 65px;
	line-height: 65px;
}

#status_delivery_view  #btns {
	height: 100px;
}
</style>
</head>
<body>
	<div id='status_delivery_view' class='container'>
		<form name='frm_view' method="post">
			<div class='row'>
				<div class='col-12'>
					<div class='card shadow'>
						<div id='card_header'
							class='card-header h3 my-auto font-weight-bold text-primary'>
							거래 내역 상세 정보</div>
						<div id='card_body' class='card-body'>
							<div class='row'>
								<div class='col-2'></div>
								<div class='col-3 text-primary text-lg font-weight-bold'>송장번호</div>
								<div class='col-5 text-lg'>${vo.dNumber }</div>
								<div class='col-2'></div>
							</div>
							<div class='row'>
								<div class='col-2'></div>
								<div class='col-3 text-primary text-lg font-weight-bold'>택배사</div>
								<div class='col-5 text-lg'>${vo.dCompany }</div>
								<div class='col-2'></div>
							</div>
							<div class='row'>
								<div class='col-2'></div>
								<div class='col-3 text-primary text-lg font-weight-bold'>구매상품</div>
								<div class='col-5 text-lg'>${vo.dpName }</div>
								<div class='col-2'></div>
							</div>
							<div class='row'>
								<div class='col-2'></div>
								<div class='col-3 text-primary text-lg font-weight-bold'>등록일자</div>
								<div class='col-5 text-lg'>${vo.dDate }</div>
								<div class='col-2'></div>
							</div>
							<div class='row'>
								<div class='col-2'></div>
								<div class='col-3 text-primary text-lg font-weight-bold'>판매자명</div>
								<div class='col-5 text-lg'>${vo.dsId }</div>
								<div class='col-2'></div>
							</div>
							<div class='row'>
								<div class='col-2'></div>
								<div class='col-3 text-primary text-lg font-weight-bold'>배송상황</div>
								<div class='col-5 text-lg'>${vo.dStatus }</div>
								<div class='col-2'></div>
							</div>
						</div>
					</div>
					<div class='text-center' style='margin-top: 30px;'>
						<input style="width: 150px;" type="button" value="돌아가기"
							name="btnBack" id="btnBack" class="btn-danger btn-lg">
					</div>
				</div>
			</div>
			<input type='hidden' name='sId' value='${sId }' />
		</form>
	</div>
	<script>
		var frm = document.frm_view;

		$('#btnBack').click(function() {
			frm.action = 'seller_index.jsp?contents=delivery.seller';
			frm.submit();
		});
	</script>
</body>
</html>