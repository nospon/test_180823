package aaa.bbb.ccc.Info;

import java.util.List;

import aaa.bbb.ccc.VO.PaymentVO;
import aaa.bbb.ccc.VO.SeatVO;



public interface SeatOptionService {
		
	public List<SeatVO> listAll() throws Exception;
		
	public SeatVO seatCheck(String seat_num) throws Exception;
	
	public SeatVO payment(String seat_num) throws Exception;

	public SeatVO ticket(String seat_num) throws Exception;

	public PaymentVO lastpage(int pay_num) throws Exception;

	
	
}
