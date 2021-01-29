<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Organic Green</title>
<link rel="stylesheet" type="text/css" href='./css/inline4.css'>
<link rel="stylesheet" type="text/css" href='./css/inline5.css'>
<link rel="stylesheet" type="text/css" href='./css/inline6.css'>
<link rel="stylesheet" type="text/css" href='./css/inline7.css'>
<link rel="stylesheet" type="text/css" href='./css/inline8.css'>
<link rel="stylesheet" type="text/css" href='./css/inline9.css'>
<link rel="stylesheet" type="text/css" href='./css/common.css'>
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link rel="stylesheet" href="./css/mypage_common.css">
<link href="css/sb-admin-2.css" rel="stylesheet">
</head>
<BODY>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");

/* 메인 배너 */
String inc="index_banner.jsp";

/* 메인 상품 */
String content = "index_main.jsp";

if(request.getParameter("inc") != null){
	inc = request.getParameter("inc");
}
if(request.getParameter("content") != null){
	content = request.getParameter("content");
}
%>
<div id='main'>
	 <div id='header'>
		<jsp:include page="./index_header.jsp"/>
	</div>
 	<div id='body'>
		 <div id='sub_menu'><jsp:include page="<%=inc %>"/></div> 
		<div id='content'><jsp:include page="<%=content %>"/></div> 
	</div>
	 <div id='footer'> <%@include file="./index_footer.jsp" %></div>
</div>

<script>
//로그인이 되면 로그인에 성공했다는 alert를 띄우기
window.onload = function() {
	if ("${msg}" != "") {
		alert("${msg}");
	}
}

window.onbeforeunload = function(event) {
	if ((event.clientY < 0) ||(event.altKey) ||(event.ctrlKey)||((event.clientY < 129) && (event.clientY>107))) {//
	$.ajax({
		url : "logout.member"
	});
	}
};
</script>

</body>
</html>