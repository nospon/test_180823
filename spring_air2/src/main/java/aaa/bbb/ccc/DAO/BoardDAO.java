package aaa.bbb.ccc.DAO;

import aaa.bbb.ccc.VO.BoardVO;

public interface BoardDAO {
	
	//상세보기
	public BoardVO read(int board_num) throws Exception;
}
