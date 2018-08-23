package aaa.bbb.ccc.DAO;


import aaa.bbb.ccc.VO.TicketVO;

public interface TicketDAO {
	
	public TicketVO tkread (String engname) throws Exception;

	public TicketVO read()throws Exception;
	
	
}
