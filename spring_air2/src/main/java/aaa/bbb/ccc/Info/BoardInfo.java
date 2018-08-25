package aaa.bbb.ccc.Info;

import java.util.List;

import aaa.bbb.ccc.VO.BoardVO;
import aaa.bbb.ccc.VO.Criteria;

public interface BoardInfo {
	
	//페이지 싹다 보기
	public List<BoardVO> listAll() throws Exception;
	
	//상세보기
	public BoardVO read(int board_num)throws Exception;
	
	//페이징 Criteria 사용
	public List<BoardVO> listCriteria(Criteria cri) throws Exception; 
	
}
