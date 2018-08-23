package aaa.bbb.ccc.DAO;

import java.util.List;

import aaa.bbb.ccc.VO.BoardVO;

public interface BoardDAO {
	
	//전체보기
	public List<BoardVO> listAll() throws Exception;
	//상세보기
	public BoardVO read(int board_num) throws Exception;
}
