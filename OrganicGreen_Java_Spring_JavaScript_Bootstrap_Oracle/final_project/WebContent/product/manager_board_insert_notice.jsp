<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="../SE2/js/HuskyEZCreator.js" charset="utf-8"></script>
<title>에디터</title>
<style>
.edge{
	border:1px solid black;
	box-sizing:border-box;
	margin-top:10px;
}
</style> 
 
</head>
<script type="text/javascript">
    $(function(){
        //전역변수
        var obj = [];              
        //스마트에디터 프레임생성
        nhn.husky.EZCreator.createInIFrame({
            oAppRef: obj,
            elPlaceHolder: "editor",
            sSkinURI: "../SE2/SmartEditor2Skin.html",
            htParams : {
                // 툴바 사용 여부
                bUseToolbar : true,            
                // 입력창 크기 조절바 사용 여부
                bUseVerticalResizer : true,    
                // 모드 탭(Editor | HTML | TEXT) 사용 여부
                bUseModeChanger : true,
            }
        });
        //전송버튼
        $("#insertBoard").click(function(){
            //id가 smarteditor인 textarea에 에디터에서 대입
            obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
            //폼 submit
            $("#insertBoardFrm").submit();
        });
    });
</script>
<body>
<form action="./insertBoard.do" method="post" id="insertBoardFrm" enctype="multipart/form-data">
	<div class="container">
		<div class="row">
			<div class="col-md-12 edge" style="text-align:center;">
				<h1>게시물 등록</h1>
			</div>
			<div class="col-md-2 edge">
				<select>
					<option>공지사항</option>
					<option>농부이야기</option>
				</select>
			</div>
			<div class="col-md-10 edge">빈칸
			</div>
			<div class="col-md-2 edge">
				<label>제목</label>
			</div>
			<div class="col-md-10 edge">
				<input type="text" name="subject" />
			</div>
			<div class="col-md-2 edge">
				<label>날짜</label>
			</div>
			<div class="col-md-10 edge">
				<input type="date" name="date" />
			</div>
			<div class="col-md-12 edge">
				<label>내용</label>
			</div>
			<div class="col-md-12 edge">
		        <textarea name="editor" id="editor" style="width: 100%; height: 400px; min-width:260px;"></textarea>
			</div>
			<div class="col-md-12 edge" style="text-align:center;">
		        <input type="button" id="insertBoard" value="등록" />
				<input type="button" value="취소" name="btn_cancel" />
			</div>
		</div>
	</div>        
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>