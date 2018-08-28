package aaa.bbb.ccc.Info;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import aaa.bbb.ccc.DAO.BoardDAO;
import aaa.bbb.ccc.VO.BoardVO;
import aaa.bbb.ccc.VO.Criteria;

@Service
public class BoardInfoImpl implements BoardInfo {
	
	@Inject
	BoardDAO dao;
	
	
	@Override
	public List<BoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}
	
	
	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public BoardVO read(int board_num) throws Exception {
		// TODO Auto-generated method stub
		dao.updateViewCnt(board_num);
		return dao.read(board_num);
	}


	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listCriteria(cri);
	}

	
	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.countPaging(cri);
	}

	
	
	
}
