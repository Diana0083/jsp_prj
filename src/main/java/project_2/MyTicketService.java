package project_2;

import java.sql.SQLException;
import java.util.List;

public class MyTicketService {
	private static MyTicketService mts;
	
	private MyTicketService() {
		
	}//MyTicketService
	
	/*
	 * + MyTicketService()  완
	 * + searchTicket(int) :List<MyTicketDTO> 완
	 * + refundTicket(int) : int 모르겠음
	 */
	public static MyTicketService getInstance() {
		if( mts == null ) {
			mts=new MyTicketService();
		}//end if
		
		return mts;
	}//getInstance
	
	
	public List<MyTicketDTO> searchTicket( int member_num ) {
		List<MyTicketDTO> list=null;
		
		MyTicketDAO mtDAO = MyTicketDAO.getInstance();
		
		try {
			list=mtDAO.selectTicket(member_num);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}//searchTicket
	
	
	
	
}//class
