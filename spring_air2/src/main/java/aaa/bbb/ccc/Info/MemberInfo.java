package aaa.bbb.ccc.Info;


import java.util.List;

import aaa.bbb.ccc.VO.LogicVO;
import aaa.bbb.ccc.VO.MemberVO;





public interface MemberInfo {
		//�߰�
		public void regist(MemberVO joinyee)throws Exception;
		//�б�
		public MemberVO read(Integer mem_num)throws Exception;
		//����
		public void modify(MemberVO updateyee)throws Exception;
		//����
		public void remove(Integer mem_num)throws Exception;
		//����Ʈ
		public List<MemberVO> listAll()throws Exception;
		
		public MemberVO logremove(String id)throws Exception;
		
		//�α��� ���� ��������
		public MemberVO logreadPw(LogicVO lvo)throws Exception;
		
		//ȸ������ ���� �� ����
		public boolean checkPw(String id, String pass) throws Exception;
		
	
}