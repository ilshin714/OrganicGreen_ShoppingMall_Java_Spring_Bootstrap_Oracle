<%@page import="bean.RproductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify result</title>
</head>
<body>
<div id = 'modyfy_result'>
	<h1>공지사항 수정 결과</h1>
	${msg }
	
<p/>
	<form name = 'question' method = 'post'>
		<input type = 'button' class = "btn btn-warning" value = '목록으로' name = 'btnList'/>
	</form>
	
	<script>
		var frm = document.question; 
		frm.btnList.onclick = function(){
			url = 'manager_index.jsp?contents=notice.manager';
			frm.action = url;
			frm.submit();
		}
	</script>
</div>

</body>
</html>