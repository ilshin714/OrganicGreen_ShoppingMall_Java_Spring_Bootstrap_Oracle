package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bean.CproductDao;
import bean.BproductParam;
import bean.CproductVo;

@Controller // control 임을 나타냄  
public class CproductController {// bean이 등록되거나 생성자를 통해 전달
	
	CproductDao dao;
	
	public CproductController(CproductDao dao) {
		this.dao = dao;
	}
		
	@RequestMapping(value="logout")
	public String logout(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = req.getSession();
		session.removeAttribute("session_id");
		return "../index";
		
	}

}
