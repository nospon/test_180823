package aaa.bbb.ccc;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import aaa.bbb.ccc.DAO.BoardDAO;
import aaa.bbb.ccc.Info.BoardInfo;
import aaa.bbb.ccc.VO.BoardVO;
import aaa.bbb.ccc.VO.Criteria;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
	locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BoardDAOTest {
	@Inject
	BoardInfo service;
	@Inject
	BoardDAO dao;
	
//	@Test
//	public void testListCriteria()throws Exception{
//		SearchCriteria cri=new SearchCriteria();
//		cri.setPage(1);
//		cri.setPerPageNum(10);		
//		cri.setSearchType("t");
//		cri.setKeyword("����");		
//		
//		List<BoardVO> list=dao.listSearch(cri);
//		
//		for(BoardVO boardVO:list) {
//			System.out.println(boardVO.getBno()+":"+boardVO.getTitle());
//		}
//	}
	
//	@Test
//	public void testURI()throws Exception{		
//		UriComponents uriComponents=
//				UriComponentsBuilder.newInstance()
//				.path("/board/read")
//				.queryParam("bno", 12)
//				.queryParam("perPageNum",20)
//				.build();
//		
//		System.out.println("/board/read?bno=12&perPageNum=20");
//		System.out.println(uriComponents.toString());		
//	}
	
//	페이징 Criteria 사용
//	@Test
//	public void testListCriteria()throws Exception{
//		Criteria cri=new Criteria();
//		cri.setPage(2);
//		cri.setPerPageNum(20);
//		
//		List<BoardVO> list=dao.listCriteria(cri);
//		
//		for(BoardVO boardVO:list) {
//			System.out.println(boardVO.getBoard_num()+":"+boardVO.getTitle());
//		}
//	}
	
//	페이징 처리하는것
//	@Test
//	public void testListPage()throws Exception{
//		int page=1;
//		List<BoardVO> list=dao.listPage(page);
//		
//		for(BoardVO boardVO:list) {
//			System.out.println(boardVO.getBoard_num()+":"+boardVO.getTitle());
//		}
//	}
	
//	@Test	//�߰�
//	public void testRegist()throws Exception{
//		BoardVO board=new BoardVO();
//		board.setTitle("���ο� ���� �ֽ��ϴ�.");
//		board.setContent("���ο� ���� �ֽ��ϴ�.");
//		board.setWriter("user00");
//		service.regist(board);
//		System.out.println("�߰� �Ϸ�");
//	}
	
//	@Test	//�б�
//	public void testRead()throws Exception{
//		BoardVO board=service.read(2);
//		System.out.println(board);
//	}
	
//	@Test	//����
//	public void testModify()throws Exception{
//		BoardVO board=new BoardVO();
//		board.setBno(2);
//		board.setTitle("������ ���� �ֽ��ϴ�.");
//		board.setContent("������ ���� �ֽ��ϴ�.");
//		board.setWriter("user00");
//		service.modify(board);
//		System.out.println("���� �Ϸ�");
//	}
		
//	@Test	//����
//	public void testRemove()throws Exception{
//		service.remove(3);
//		System.out.println("�����Ǿ����ϴ�.");
//	}
	
//	@Test	//��ü �б�
//	public void testListAll()throws Exception{
//		List<BoardVO> boardList=service.listAll();		
//		System.out.println(boardList);
//	}
	
}



