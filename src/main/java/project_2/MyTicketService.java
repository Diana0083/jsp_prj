package project_2;

import java.sql.SQLException;
import java.util.ArrayList;
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
	
	
	public List<MyTicketDTO> searchTicket(int memberNum) {
	    List<MyTicketDTO> list = new ArrayList<>();

	    MyTicketDAO mtDAO = MyTicketDAO.getInstance();

	    try {
	        list = mtDAO.selectTicket(memberNum);
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return list;
	}//searchTicket
	
	
	public int refundTicket(int tResNum) {
	    int cnt = 0;
	    MyTicketDAO mtDAO = MyTicketDAO.getInstance();

	    try {
	        cnt = mtDAO.refundTicket(tResNum);
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return cnt;
	}

	
	
}//class
