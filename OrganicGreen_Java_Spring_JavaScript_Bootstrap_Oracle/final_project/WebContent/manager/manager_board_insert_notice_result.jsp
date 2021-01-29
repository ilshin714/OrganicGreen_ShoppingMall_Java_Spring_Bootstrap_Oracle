<%@page import="bean.RproductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert_result</title>
</head>
<body>
<div id = 'insert_result'>
	<h1>공지사항 등록 결과</h1>
	${msg }
	
<p/>
	<form name = 'product' method = 'post'>
		<input type = 'button' class = "btn btn-warning" value = '목록으로' name = 'btnList'/>
	</form>
	
	<script>
		var frm = document.product; 
		frm.btnList.onclick = function(){
			url = 'manager_index.jsp?contents=notice.manager';
			frm.action = url;
			frm.submit();
		}
	</script>
</div>

</body>
</html>