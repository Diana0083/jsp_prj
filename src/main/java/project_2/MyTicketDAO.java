package project_2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.co.sist.dao.DbConn;

/*
 * MyTicketDAO 넣을 METHOD
- MyTicketDAO() 완료
+ selectTicket(int) :  List<MyTicketDTO>
+ updateTicket(int) : int
+ getInstance() : MyTicketDAO 완료
*/
public class MyTicketDAO {
	private static MyTicketDAO mtDAO;
	
	private MyTicketDAO() {
		
	}//MyTicketDAO
	
	public static MyTicketDAO getInstance() {
		if( mtDAO == null ) {
			mtDAO=new MyTicketDAO();
		}//end if
		return mtDAO;
	}//getInstance
	
	public List<MyTicketDTO> selectTicket(int memberNum) throws SQLException {
	    List<MyTicketDTO> mtList = new ArrayList<MyTicketDTO>();

	    DbConn dbCon = DbConn.getInstance("jdbc/dbcp");

	    Connection con = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;

	    try {
			//1. JNDI 사용객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
				con=dbCon.getConn();
			//4. 쿼리문 생성 객체 얻기
				StringBuilder selectTicket=new StringBuilder();
	    	//MyTicketDAO 쿼리문 --
				selectTicket
				.append("	select	 t.ticket_num, tt.ticket_name, n.use_date, "
						+ "p.personal_cnt, pi.pay_method, t.t_res_date,t.ticket_qr	")
				.append("	from ticket_reserve t									")
				.append("	join ticket tt on t.ticket_num = tt.ticket_num			")
				.append("	left join normal_ticket n on t.t_res_num = n.t_res_num	")
				.append("	left join personal p on t.t_res_num = p.t_res_num		")
				.append("	left join pay pay on t.t_res_num = pay.t_res_num		")
				.append("	left join pay_info pi on pay.pay_num = pi.pay_num		")
				.append("	where t.member_num = ?									")
				.append("	order by t.t_res_date desc;								");
	    	   
	        pstmt = con.prepareStatement(selectTicket.toString());
	        pstmt.setInt(1, memberNum);

	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            MyTicketDTO dto = new MyTicketDTO(
	                rs.getInt("ticket_num"),
	                rs.getString("ticket_name"),
	                rs.getString("person_cnt"),
	                rs.getString("pay_method"),
	                rs.getString("qr_code"),
	                rs.getDate("use_date"),
	                rs.getDate("t_res_date")
	            );
	            mtList.add(dto);
	        }
	    } finally {
	        dbCon.dbClose(rs, pstmt, con);
	    }

	    return mtList;
	}


	
	
	public void updateTicket( int num )throws SQLException{
		
		DbConn dbCon=DbConn.getInstance("jdbc/dbcp");
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		try {
			//1.JNDI사용객체 생성
			//2.DataSource 얻기
			//3.DataSource에서 Connection 얻기
			con=dbCon.getConn();
			//4.쿼리문 생성객체 얻기
			StringBuilder updateCnt=new StringBuilder();
			
			updateCnt
			.append("	update board	")
			.append("	set cnt=cnt+1	")
			.append("	where num = ?	");
			
			pstmt = con.prepareStatement(updateCnt.toString());
			
			//5.바인드변수 값 설정
			pstmt.setInt(1 , num);
			
			//6.쿼리문 수행 후 결과 얻기
			pstmt.executeUpdate();
			
		}finally {
			//7.연결끊기
			dbCon.dbClose(null, pstmt, con);
		}//end finally
		
	}//updateBoardCnt
}//class
