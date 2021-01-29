/**
 * mypage + inquery 관련 자바 스크립트
 * 옥경수
 * 2019년 10월 24일 목요일
 */
 
getId("btnInquery").onclick = function(){
	var frm = document.frm_mypage;
	frm.action = "inquery.jsp";
	frm.submit();
}

function getId(id){
	return document.getElementById(id);
}