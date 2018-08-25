package aaa.bbb.ccc;


import javax.inject.Inject;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import aaa.bbb.ccc.Info.BoardInfo;


@Controller
@RequestMapping("/board/*")
public class BoardController {
	@Inject
	BoardInfo boardInfo;

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	
	@RequestMapping(value = "/boardmain.do", method = RequestMethod.GET)
	public String boardlist(Model model) throws Exception {
		logger.info("계시판 컨트롤러");
		
		model.addAttribute("boardVO", boardInfo.listAll());
		System.out.println(model);
		
		return "board/boardmain";
	}

	@RequestMapping(value="/read",method=RequestMethod.GET)
	public void readPage(@RequestParam("board_num") int board_num,
			Model model) throws Exception{
		System.out.println("게시판 상세보기");
		
		model.addAttribute("boardVO",boardInfo.read(board_num));
		
		System.out.println(boardInfo.read(board_num)+ "aa");
	}
}
