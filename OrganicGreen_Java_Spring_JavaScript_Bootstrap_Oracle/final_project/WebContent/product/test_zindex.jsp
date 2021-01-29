<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.one{
	position:absolute;
	z-index: 15;
	width:200px;
	height:100px;
	background-color:red;
}
.one:hover{
	z-index:5;
	opacity:0.1;
}

.two{
	position:relative;
	z-index: 10;
	width:200px;
	height:50px;
	background-color:blue;
}
.two:hover{
	z-index: 30;
	
}
</style>
</head>
<body>
<div class="one">
	나는 무엇인가?
</div>

<div class="two">
	너는 멍청이!
</div>
</body>
</html>