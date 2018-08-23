package aaa.bbb.ccc.Info;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import aaa.bbb.ccc.DAO.TicketDAO;
import aaa.bbb.ccc.VO.TicketVO;
@Service
public class TicketInfoImpl implements TicketInfo{
	
	@Inject
	TicketDAO dao;
	
	@Override
	public TicketVO tkread(String engname) throws Exception {
		// TODO Auto-generated method stub
		return dao.tkread(engname);
	}
	
}
