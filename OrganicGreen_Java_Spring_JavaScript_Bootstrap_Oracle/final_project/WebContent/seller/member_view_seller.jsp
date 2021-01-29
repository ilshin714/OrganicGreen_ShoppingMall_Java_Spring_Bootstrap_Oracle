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
<style>
#member_view {
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
#member_view #card_header {
	height: 80px;
	line-height: 60px;
}

#member_view .row {
	margin: 0px;
}

#member_view  #card_body div {
	height: 65px;
	line-height: 65px;
}

#member_view  #btns {
	height: 100px;
}
</style>
</head>
<body>
	<div id='member_view' class='container'>
		<div class='row'>
			<div class='col-12'>
				<div class='card shadow'>
					<div id='card_header'
						class='card-header h3 my-auto font-weight-bold text-primary'>
						사용자 정보</div>
					<div id='card_body' class='card-body'>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>아이디</div>
							<div class='col-6 text-lg'>${vo.sId }</div>
							<div class='col-1'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>성명</div>
							<div class='col-6 text-lg'>${vo.sbName }</div>
							<div class='col-1'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>이메일</div>
							<div class='col-6 text-lg'>${vo.sbEmail }</div>
							<div class='col-1'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>연락처</div>
							<div class='col-6 text-lg'>${vo.sPhone }</div>
							<div class='col-1'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>주소</div>
							<div class='col-6 text-lg'>${vo.sAddress }</div>
							<div class='col-1'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>상세주소</div>
							<div class='col-6 text-lg'>${vo.sAddress2 }</div>
							<div class='col-1'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>사업자
								번호</div>
							<div class='col-6 text-lg'>${vo.sbNumber }</div>
							<div class='col-1'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>상호명</div>
							<div class='col-6 text-lg'>${vo.sfName }</div>
							<div class='col-1'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>등록
								계좌번호</div>
							<div class='col-6 text-lg'>${vo.sAccount }</div>
							<div class='col-1'></div>
						</div>
						<div class='row'>
							<div class='col-2'></div>
							<div class='col-3 text-primary text-lg font-weight-bold'>은행명</div>
							<div class='col-6 text-lg'>${vo.sBank }</div>
							<div class='col-1'></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>