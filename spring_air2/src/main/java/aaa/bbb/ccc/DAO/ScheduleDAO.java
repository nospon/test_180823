package aaa.bbb.ccc.DAO;

import java.util.List;

import javax.swing.Spring;

import aaa.bbb.ccc.VO.ScheduleVO;
import aaa.bbb.ccc.VO.Schedule_InfoVO;



public interface ScheduleDAO {

	public List<ScheduleVO> listAll()throws Exception;
	public List<ScheduleVO> list()throws Exception;
	public List<ScheduleVO> listAll(String de_place,String ar_place ,String de_date)throws Exception;
	public void insert(Schedule_InfoVO vo) throws Exception;

}
