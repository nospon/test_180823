package aaa.bbb.ccc.DAO;

import java.util.List;

import aaa.bbb.ccc.VO.BoardVO;
import aaa.bbb.ccc.VO.Criteria;

public interface BoardDAO {
	
	//전체보기
	public List<BoardVO> listAll() throws Exception;
	
	//상세보기
	public BoardVO read(int board_num) throws Exception;
	
	//페이지 리스트
	public List<BoardVO> listPage(int page) throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri)throws Exception;
	
	
}
