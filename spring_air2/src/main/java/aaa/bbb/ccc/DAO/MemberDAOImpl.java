package aaa.bbb.ccc.DAO;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import aaa.bbb.ccc.VO.LogicVO;
import aaa.bbb.ccc.VO.MemberVO;


@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject
	private SqlSession session;
	private static String namespace = "org.zerock.domain.mapper.MemberVO";
	
//	ȸ������
	@Override
	public void create(MemberVO joinyee) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".create", joinyee);
	}

//	ȸ������ �б�
	@Override
	public MemberVO read(Integer mem_num) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read", mem_num);
	}

	
//	ȸ������ ����
	@Override
	public void update(MemberVO updateyee) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".update", updateyee);
	}

//	ȸ�� ���� ����
	@Override
	public void delete(Integer mem_num) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace+".delete", mem_num);
	}

//	ȸ�� ���� �� �������� (�̱���)
	@Override
	public List<MemberVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listAll");
	}
	
	
	//�α� ��������
	@Override
	public MemberVO logremove(String id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".remove",id);
	}
	
	//�α��� �� �۾� ������
	@Override
	public MemberVO logreadPw(LogicVO lvo) throws Exception {
		// TODO Auto-generated method stub
//		HashMap<String,String> paramMap=new HashMap<>();
//		paramMap.put("id", id);
//		paramMap.put("pass", pass);
//		String koname = null;
//		paramMap.put("koname", koname);
		
		return session.selectOne(namespace+".select2",lvo);
	}
	
	
	//��й�ȣ�� �´ٸ� ���� �� ���� üũ 
	@Override
	public boolean cheakPw(String id, String pass) throws Exception {
		// TODO Auto-generated method stub
		boolean result = false;
		HashMap<String, String> map = new HashMap<>();
		map.put("id", id);
		System.out.println("dao:"+id);
		map.put("pass", pass);
		System.out.println("dao:"+pass);
		int count = session.selectOne(namespace+".checkPw",map);
		System.out.println("ī��Ʈ��:"+count);
		if(count == 1) {
			result=true;
		}
		
		return result;
	}

	
	

}