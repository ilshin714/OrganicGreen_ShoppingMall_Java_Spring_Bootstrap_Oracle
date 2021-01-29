<!-- 191102 농부이야기 main  -->

<%@page import="bean.MproductVo"%>
<%@page import="java.util.List"%>
<%@page import="bean.RproductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang='ko'>

<head>

<link href="../css/sb-admin-2.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- 191102 농부이야기 main 사진 사이즈 변경 -->

<body>
<form name="frm_nproduct_view" method="post">

		<!-- 상품의 story -->
		<div class="container">

			<div class="row">
				<div class="col-md-12">
							<img  src="./images/fw/fw_kiwi.png" id="img" name="img" />
				</div>
			</div>
		</div>

	</form>
</body>
<script>
function goView(url){
	location.href='index.jsp?content=' + url + '&rSubject=<번쩍이는>황금바나나';
}
</script>
</html>


