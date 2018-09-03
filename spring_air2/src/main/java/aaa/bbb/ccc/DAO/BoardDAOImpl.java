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
	
	private static String namespace="org.zerock.domain.mapper.BoardMapper";
	
	
	//��ü����(������)
	@Override
	public List<BoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listAll");
	}
	//�󼼺���
	@Override
	public BoardVO read(int board_num) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read",board_num);
	}
	
	//������ ����Ʈ
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
	
	
	@Override
	public int countPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".countPaging",cri);
	}
	
	//��ȸ�� ī����
	@Override
	public void updateViewCnt(int board_num) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".updateViewCnt", board_num);
	}



}