package aaa.bbb.ccc.Info;

import aaa.bbb.ccc.VO.BoardVO;

public interface BoardInfo {
	
	public BoardVO read(int board_num)throws Exception;
	
}
