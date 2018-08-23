package aaa.bbb.ccc;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import aaa.bbb.ccc.DAO.TicketDAO;
import aaa.bbb.ccc.Info.TicketInfo;
import aaa.bbb.ccc.VO.MemberVO;
import aaa.bbb.ccc.VO.TicketVO;

@Controller
public class TicketController {
	
	@Inject
	TicketDAO ticketdao;
	@Inject
	TicketInfo ticketinfo;
	
	private static final Logger logger = LoggerFactory.getLogger(TicketController.class);
	
	
	@RequestMapping(value = "seatlist.do", method = RequestMethod.GET)
	public String seatlist(String engname,TicketVO ticketvo,HttpSession sesstion,Locale locale, Model model) throws Exception {
		logger.info("예약페이지", locale);
		
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println(SeVO);
		
		TicketVO tcvo = new TicketVO();
		tcvo = ticketdao.read();
		System.out.println(tcvo +"확인");		
		ticketvo=ticketdao.tkread(tcvo.getEngname());
		
		System.out.println(ticketvo);
		
		if(SeVO != null) {
			model.addAttribute("login", SeVO);
			System.out.println(SeVO);
			model.addAttribute("tikread", tcvo);
			return "seatloglist/logseatlist";
		}else{
			
			return "seatloglist/seatlist";
		}
	}
}
