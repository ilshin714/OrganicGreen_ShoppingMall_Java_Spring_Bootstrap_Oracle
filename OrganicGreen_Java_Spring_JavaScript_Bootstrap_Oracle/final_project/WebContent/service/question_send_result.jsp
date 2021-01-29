<%@page import="bean.RproductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Question_send_result</title>
</head>
<body>
	<div id='insert_result' class='container'>
		<form name='product' method='post'>
			<div class='row' style="padding-top: 200px;">
				<div class='col-12 h3 text-primary text-weight-bold tc'>상품정보
					입력 결과</div>
				<div class='col-12 h4 tc'>${msg }</div>
			</div>

			<p />
			<div class='row'>
				<div class='col-12 tc'>
					<input type='button' class="btn btn-primary" value='돌아가기'
						name='btnList' />
				</div>
			</div>
		</form>
	</div>
	<script>
		$(document).ready(function() {
			sub_menu.style.display = "none";
		});

		var frm = document.product;
		frm.btnList.onclick = function() {
			url = 'index.jsp?content=servicePage.service';
			frm.action = url;
			frm.submit();
		}
	</script>

</body>
</html>