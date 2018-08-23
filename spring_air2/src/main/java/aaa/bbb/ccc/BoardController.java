package aaa.bbb.ccc;


import java.io.PrintWriter;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import aaa.bbb.ccc.DAO.MemberDAO;
import aaa.bbb.ccc.Info.MemberInfo;
import aaa.bbb.ccc.VO.BoardVO;
import aaa.bbb.ccc.VO.MemberVO;



/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	@Inject
	MemberInfo memberInfo;
	@Inject
	MemberDAO memberDAO;

	
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String main(Model model) {
		logger.info("메인 컨트롤러");
		
		
		return "main/main";
	}
	
	@RequestMapping(value = "/boardmain.do", method = RequestMethod.GET)
	public String boardlist(Model model, BoardVO boardvo) {
		logger.info("계시판 컨트롤러");
		
		model.addAttribute("boardvo", boardvo);
		System.out.println(model);
		
		return "board/boardmain";
	}

	
}
