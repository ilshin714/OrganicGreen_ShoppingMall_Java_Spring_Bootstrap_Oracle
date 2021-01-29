package servlet;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bean.DeliveryVo;
import bean.NoticeVo;
import bean.QuestionVo;
import bean.SbMemberVo;
import bean.SellerParam;
import bean.SellerDao;
import bean.SellerVo;
import bean.ServiceDao;
import bean.ServiceParam;

@Controller
public class ServiceController {

	ServiceDao dao;

	public ServiceController(ServiceDao dao) {
		this.dao = dao;
	}

	// 고객센터 페이지 이동
	@RequestMapping(value = "servicePage.service")
	public ModelAndView mainSeller(ServiceParam param) {
		ModelAndView mv = new ModelAndView();
		// 공지사항 리스트
		List<NoticeVo> list = dao.noticeSearch(param);
		mv.addObject("list", list);

		// 페이지 처리 및 탭 처리
		mv.addObject("page", param);

		mv.setViewName("service_main");

		return mv;
	}

	// 1대1 문의 전송
	@RequestMapping(value = "questionSend.service")
	public ModelAndView questionSend(QuestionVo vo) {
		ModelAndView mv = new ModelAndView();

		String msg = "";
		msg = dao.questionSend(vo);

		mv.addObject("msg", msg);

		mv.setViewName("question_send_result");

		return mv;
	}

	// 공지사항 상세보기
	@RequestMapping(value = "notice_view.service")
	public ModelAndView notice_view(int serial) {
		NoticeVo nVo = new NoticeVo();
		ModelAndView mv = new ModelAndView();
		nVo = dao.notice_view(serial);
		mv.addObject("nVo", nVo);
		mv.setViewName("notice_view");
		return mv;
	}
	
	// 구매자 1:1문의 상세보기
	@RequestMapping(value = "qView.service")
	public ModelAndView question_view(int qSerial) {
		QuestionVo qVo = new QuestionVo();
		ModelAndView mv = new ModelAndView();
		qVo = dao.question_view(qSerial);
		mv.addObject("qVo", qVo);
		mv.setViewName("question_view");
		return mv;
	}

}
