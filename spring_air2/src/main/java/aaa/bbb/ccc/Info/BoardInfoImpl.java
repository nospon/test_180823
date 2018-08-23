package aaa.bbb.ccc.Info;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import aaa.bbb.ccc.DAO.BoardDAO;
import aaa.bbb.ccc.VO.BoardVO;

@Service
public class BoardInfoImpl implements BoardInfo {
	
	@Inject
	BoardDAO dao;
	
	@Override
	public BoardVO read(int board_num) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(board_num);
	}
	
	
}