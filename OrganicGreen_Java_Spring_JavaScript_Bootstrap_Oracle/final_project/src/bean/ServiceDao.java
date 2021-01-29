package bean;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mybatis.MybatisFactory;

public class ServiceDao {
	SqlSession sqlSession;

	ServiceParam param;
	
	// 페이징 처리용 변수
	int totListSize;
	int totPage;
	int listSize = 5;
	int nowPage = 1;
	int startNo;
	int endNo;
	String findStr = "";

	public ServiceDao() {
		try {
			sqlSession = MybatisFactory.getFactory().openSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	// 고객센터 - 공지사항 리스트
	public ArrayList<NoticeVo> noticeSearch(ServiceParam p) {
		ArrayList<NoticeVo> list = new ArrayList<NoticeVo>();
		this.param = p;
		this.nowPage = p.getNowPage();
		
		try {
			// 페이징
			totListSize = sqlSession.selectOne("service.totPageNotice", param);
			totPage = (int) Math.ceil(totListSize / (double) listSize);
			
			if (nowPage < 1) {
				nowPage = 1;
			}
			
			if (nowPage > totPage) {
				nowPage = totPage;
			}
			endNo = nowPage * listSize;
			startNo = endNo - (listSize - 1);
			
			param.setStartNo(startNo);
			param.setEndNo(endNo);
			param.setNowPage(nowPage);
			param.setTotPage(totPage);
			
			list = (ArrayList) sqlSession.selectList("service.searchNotice", param);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public String questionSend(QuestionVo vo) {
		String msg;
		
		int cnt = sqlSession.insert("service.questionSend", vo);
		
		if(cnt > 0) {
			msg = "문의내용을 전송하였습니다. <br/><br/>마이페이지-문의목록에서 답변을 확인하실 수 있습니다!";
			sqlSession.commit();
		} else {
			msg = "문의내용 전송중 오류가 발생하였습니다. 다시 시도해 주세요.";
			sqlSession.rollback();
		}
		
		return msg;
	}
	
	// 공지사항 상세보기 (급해서 매니저 xml 씀. 차이는 없음)
	public NoticeVo notice_view(int serial) {
		NoticeVo nVo = new NoticeVo();
		nVo = sqlSession.selectOne("manager.notice_view", serial);
		return nVo;
	}
	
	//구매자 1:1문의 상세보기 
	public QuestionVo question_view(int serial) {
		QuestionVo qVo = new QuestionVo();
		qVo = sqlSession.selectOne("service.question_view", serial);
		return qVo;
	}



}
