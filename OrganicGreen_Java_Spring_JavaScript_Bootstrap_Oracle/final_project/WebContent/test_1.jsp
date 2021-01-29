<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<style>
.wrap div{width:100%; text-align:center; font-size:20px; font-weight:700; color:#fff;}
.top_bar_fix{position:fixed; top:0; left:0; width:100%;}
.pd_top_80{padding-top:80px;}
.wrap .top_fix_zone{height:80px; background:#d63232; line-height:80px;}
.wrap .top_con_zone{height:1500px; background:#ededed; color:#888; text-align:center; font-size:70px;}

</style>
<body>
<div class="wrap">
	<!-- 상단 고정 영역 -->
    <div class="top_fix_zone" id="topBar">
    </div>
 
	<!-- 하단 contents 영역 -->
    <div class="top_con_zone" id="fixNextTag">
    </div>
 
</div>
</body>
<script>
$(document).ready(function(){
	 
    var topBar = $("#topBar").offset();
 
    $(window).scroll(function(){
        
        var docScrollY = $(document).scrollTop()
        var barThis = $("#topBar")
        var fixNext = $("#fixNextTag")
 
        if( docScrollY > topBar.top ) {
            barThis.addClass("top_bar_fix");
            fixNext.addClass("pd_top_80");
        }else{
            barThis.removeClass("top_bar_fix");
            fixNext.removeClass("pd_top_80");
        }
 
    });
 
})

</script>
</html>