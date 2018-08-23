package aaa.bbb.ccc.Info;

import java.util.List;

import aaa.bbb.ccc.VO.BoardVO;

public interface BoardInfo {
	
	public List<BoardVO> listAll() throws Exception;
	
	public BoardVO read(int board_num)throws Exception;
	
}
