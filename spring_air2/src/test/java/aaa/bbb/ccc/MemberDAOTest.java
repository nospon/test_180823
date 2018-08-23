//package aaa.bbb.ccc;
//
//
//import javax.inject.Inject;
//
//
//import org.apache.ibatis.session.SqlSession;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import aaa.bbb.ccc.DAO.MemberDAO;
//import aaa.bbb.ccc.Info.MemberInfo;
//
//import aaa.bbb.ccc.VO.MemberVO;
//
//
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(
//	locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
//public class MemberDAOTest {
//	@Inject
//	private MemberInfo memberInfo;
//	
//	@Inject
//	private SqlSession session;
//	
//	
//	@Inject
//	private MemberDAO dao;
//	
//	
//
//	
//	private static Logger logger = LoggerFactory.getLogger(MemberDAOTest.class);
//	
////	@Test
////	public void testCreate() throws Exception{
////		
////		MemberVO usermem = new MemberVO();
////		usermem.setMem_num(0);
////		usermem.setId("cdcd");
////		usermem.setPass("1231");
////		usermem.setKoname("홍길");
////		usermem.setEngname("HOD");
////		usermem.setGender("여");
////		usermem.setBirth("1234344");
////		usermem.setTel(01011112222);
////		usermem.setEmail("bbb@bbb.com");
////		usermem.setPassport("dffdfddf");
////		usermem.setNation("북한");
////		
////		memberInfo.regist(usermem);
////	}
//	
////	@Test
////	public void testRead() throws Exception{
////		
////		MemberVO memse= memberInfo.read(1);
////		System.out.println(memse);
////	
////	}
//	
//	/*@Test	
//	public void testListAll()throws Exception{
//		List<MemberVO> boardList=memberInfo.listAll();		
//		System.out.println(boardList);
//	}*/
//	
//	@Test
//	public void testrLogread() throws Exception{
//		MemberVO vo = dao.logremove("id");
//		System.out.println(vo);
//	}
//	@Test
//	public void testrLogreadPw() throws Exception{
//		MemberVO vo2 = dao.logreadPw("id", "pass");
//		System.out.println(vo2);
//	}
//}
