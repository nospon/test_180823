package aaa.bbb.ccc.Info;


import java.util.List;


import aaa.bbb.ccc.VO.MemberVO;

public interface MemberInfo {
		//추가
		public void regist(MemberVO joinyee)throws Exception;
		//읽기
		public MemberVO read(Integer mem_num)throws Exception;
		//수정
		public void modify(MemberVO updateyee)throws Exception;
		//삭제
		public void remove(Integer mem_num)throws Exception;
		//리스트
		public List<MemberVO> listAll()throws Exception;
		
		public MemberVO logremove(String id)throws Exception;
		
		//회원정보 수정 및 삭제
		public boolean checkPw(String id, String pass) throws Exception;
		
	
}
