<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.RproductDao"%>
<%@page import="bean.MproductVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang='ko'>

<head>
<link rel="stylesheet" type="text/css" href='./css/inline1.css'>
<link rel="stylesheet" type="text/css" href='./css/inline4.css'>
<link rel="stylesheet" type="text/css" href='./css/inline5.css'>
<link rel="stylesheet" type="text/css" href='./css/inline6.css'>
<link rel="stylesheet" type="text/css" href='./css/inline7.css'>
<link rel="stylesheet" type="text/css" href='./css/inline8.css'>
<link rel="stylesheet" type="text/css" href='./css/inline9.css'>
<link rel="stylesheet" type="text/css" href='./css/common.css'>
<link rel="stylesheet" type="text/css" href='./css/section1.css'>
<link rel="stylesheet" type="text/css" href='./css/normalize.css'>
<head>
<meta charset="UTF-8">
<title>event banner</title>
<script src='./lib/jquery-3.4.1.js'></script>
<style>
</style>
</head>

<body>
	<%-- <% RproductDao dao = new RproductDao(); --%>
	<!-- // //전체 이벤트 찾기 -->
	<!-- // List<MproductVo> list = dao.searchEvent1(); -->

	<%-- %> --%>

	<div id='header'><jsp:include page="index_header.jsp" /></div>
	<div class="container">

		<div class="row">
			<div class="col-md-12" style="text-align: center; margin-top: 200px;">
				<h3>EVENT</h3>
			</div>

			<div class="col-md-2"></div>
			<div class="col-md-8"">
				<a href="#" onclick="goEvent('ugly')"><img
					src="./images/event_ugly_sinano.png"></a>
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-12" style="text-align: center;"></div>
			<br />
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<a href="#" onclick="goEvent('ugly')"><img
					src="./images/event_YunJee.png"></a>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	<div id='footer' style="margin-top: 100px;"><%@include
			file="../index_footer.jsp"%></div>
</body>
<script>
	//배너 클릭시 이벤트 페이지로 진입 (so)& 이벤트 페이지 안에서 해당 카테고리(ex:못난이)의 물건들만 진열 
	function goEvent(url) {
		var url = 'index.jsp?so=event&ct=' + url;
		location.href = url;
	}
</script>
</html>

