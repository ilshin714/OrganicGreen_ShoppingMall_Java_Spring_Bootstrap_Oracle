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
#status_sell_view {
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
#status_sell_view #card_header {
	height: 80px;
	line-height: 60px;
}

#status_sell_view .row {
	margin: 0px;
}

#status_sell_view  #card_body div {
	height: 65px;
	line-height: 65px;
}

#status_sell_view  #btns {
	height: 100px;
}
</style>
</head>
<body>
	<div id='status_sell_view' class='container'>
		<div class='row'>
			<div class='col-12'>
				<div class='card shadow'>
					<div id='card_header'
						class='card-header h3 my-auto font-weight-bold text-primary'>
						거래 내역 상세 정보</div>
					<div id='card_body' class='card-body'>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>주문번호</div>
							<div class='col-5 text-lg'>${vo.bCode }</div>
							<div class='col-2'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>상품명</div>
							<div class='col-5 text-lg'>${vo.bpName }</div>
							<div class='col-2'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>구매갯수</div>
							<div class='col-5 text-lg'>${vo.bpEa }</div>
							<div class='col-2'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>구매총액</div>
							<div class='col-5 text-lg'>${vo.bpPrice }</div>
							<div class='col-2'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>배송주소</div>
							<div class='col-5 text-lg'>${vo.bpAddress }</div>
							<div class='col-2'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>상세주소</div>
							<div class='col-5 text-lg'>임시값</div>
							<div class='col-2'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>배송시
								요청사항 번호</div>
							<div class='col-5 text-lg'>${vo.bpRequest }</div>
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
	</div>
	<script>
		$('#btnBack').click(function() {
			location.href = 'manager_index.jsp?contents=history.manager';
		});
	</script>
</body>
</html>

