package aaa.bbb.ccc.DAO;

import java.util.List;

import aaa.bbb.ccc.VO.Criteria;
import aaa.bbb.ccc.VO.PaymentVO;
import aaa.bbb.ccc.VO.ResInfoVO;
import aaa.bbb.ccc.VO.Schedule_InfoVO;
import aaa.bbb.ccc.VO.SeatInfoVO;
import aaa.bbb.ccc.VO.SeatVO;



public interface SeatDAO {	
	
	public List<SeatInfoVO> listSeat(String air_name) throws Exception;	
	
	public List<SeatInfoVO> listSC(String air_name, int sc_num) throws Exception;

	public void update(SeatVO vo) throws Exception;
	
	public void update(SeatInfoVO vo) throws Exception;

	public void update(String seat_num, String air_name) throws Exception;
	
	public void create(PaymentVO payment) throws Exception;
		
	public List<SeatInfoVO> listSeatPage(String air_name, int sc_num, Criteria cri) throws Exception;
	public int count(String air_name) throws Exception;

	public List<ResInfoVO> ticPrice() throws Exception;

	public List<PaymentVO> resList() throws Exception;

	public void resinfoin(ResInfoVO resInfo) throws Exception;
	
	public void resinfoud(SeatInfoVO vo) throws Exception;

	public List<ResInfoVO> ticketinfoLi(String name, String res_rnum) throws Exception;

	public void paymentRM(int pay_num) throws Exception;

	public void resinfoRM(int resInfo_num) throws Exception;

	public void seatUpdate(ResInfoVO vo) throws Exception;

	public List<Schedule_InfoVO> snumList() throws Exception;

	
} 
