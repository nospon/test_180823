package aaa.bbb.ccc.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import aaa.bbb.ccc.VO.BoardVO;
import aaa.bbb.ccc.VO.Criteria;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace="aaa.bbb.ccc.mapper.BoardMapper";
	
	
	//전체보기
	@Override
	public List<BoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listAll");
	}
	//상세보기
	@Override
	public BoardVO read(int board_num) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read",board_num);
	}
	
	//페이지 리스트
	@Override
	public List<BoardVO> listPage(int page) throws Exception {
		// TODO Auto-generated method stub
		if(page <= 0) {
			page = 1;
		}
		page =(page - 1)*10;
		
		return session.selectList(namespace+ ".listPage", page);
	}
	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listCriteria", cri);
	}



}
