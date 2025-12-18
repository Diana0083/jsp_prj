package project_2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.co.sist.dao.DbConn;

public class MyPaidDAO {

/*	
	- MyTicketDAO()
	+ selectPaid(int, String, String) :  List<MyPaidDTO>
	+ selectPaidDetail(MyPaidDTO) :  
	+ updatePaid(myPaidDTO) : int
	+ getInstance() : MyPaidDAO
	*/
    private static MyPaidDAO mpDAO;

    private MyPaidDAO() {
    }

    public static MyPaidDAO getInstance() {
        if (mpDAO == null) {
            mpDAO = new MyPaidDAO();
        }
        return mpDAO;
    }//getInstance
	   
    public List<MyPaidDTO> selectPaid(int memberNum, String startDate, String endDate) throws SQLException {

        List<MyPaidDTO> list = new ArrayList<MyPaidDTO>();

        DbConn dbCon = DbConn.getInstance("jdbc/dbcp");

        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
	      //1. JNDI사용객체 생성
	      //2. DataSource 얻기
	      //3. Connection 얻기
	         con=dbCon.getConn();
	      //4. 쿼리문생성객체 얻기
	         StringBuilder selectPaid=new StringBuilder();
	         selectPaid
	         .append("    select ticket_name, personal_cnt, pay_price, t_res_num, ticket_num, pro_num, pay_date, t_res_date    ")
	         .append("    from my_paid      ")
	         .append("    where member_num = ?   ")
	         .append("     and pay_date between ? and ?  ")
	         .append("     order by pay_date desc   ");
	         
	         pstmt=con.prepareStatement(selectPaid.toString());
	      //5. 바인드변수 값 설정
	         pstmt.setInt(1,memberNum);
	         pstmt.setString(2,startDate);
	         pstmt.setString(3,endDate);
	      //6. 조회결과 얻기
	         rs = pstmt.executeQuery();
	         
	         MyPaidDTO pDTO = null;

	         while (rs.next()) {
	             pDTO = new MyPaidDTO(
	                 rs.getString("ticket_name"),
	                 rs.getInt("personal_cnt"),
	                 rs.getInt("pay_price"),
	                 rs.getInt("t_res_num"),
	                 rs.getInt("ticket_num"),
	                 rs.getInt("pro_num"),
	                 rs.getDate("pay_date"),
	                 rs.getDate("t_res_date")
	             );

	             list.add(pDTO);
	         }

	     } finally {
	         dbCon.dbClose(rs, pstmt, con);
	     }

	     return list;
	 }//selectPaid
	
    /**
     * 페이징 전용
     * @param memberNum
     * @param startNum
     * @param endNum
     * @return
     * @throws SQLException
     */
    public List<MyPaidDTO> searchPaid(int memberNum, int startNum, int endNum) throws SQLException {

        List<MyPaidDTO> list = new ArrayList<>();

        DbConn dbCon = DbConn.getInstance("jdbc/dbcp");
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            con = dbCon.getConn();

            StringBuilder sql = new StringBuilder();
            sql
            .append(" select ticket_name, personal_cnt, pay_price, t_res_num, ")
            .append("        ticket_num, pro_num, pay_date, t_res_date ")
            .append(" from ( ")
            .append("   select row_number() over(order by pay_date desc) rnum, ")
            .append("          ticket_name, personal_cnt, pay_price, t_res_num, ")
            .append("          ticket_num, pro_num, pay_date, t_res_date ")
            .append("   from my_paid ")
            .append("   where member_num = ? ")
            .append(" ) ")
            .append(" where rnum between ? and ? ");

            pstmt = con.prepareStatement(sql.toString());
            pstmt.setInt(1, memberNum);
            pstmt.setInt(2, startNum);
            pstmt.setInt(3, endNum);

            rs = pstmt.executeQuery();

            while (rs.next()) {
                list.add(new MyPaidDTO(
                    rs.getString("ticket_name"),
                    rs.getInt("personal_cnt"),
                    rs.getInt("pay_price"),
                    rs.getInt("t_res_num"),
                    rs.getInt("ticket_num"),
                    rs.getInt("pro_num"),
                    rs.getDate("pay_date"),
                    rs.getDate("t_res_date")
                ));
            }

        } finally {
            dbCon.dbClose(rs, pstmt, con);
        }

        return list;
    }

    
    public MyPaidDetailDTO selectPaidDetail(MyPaidDTO dto) throws SQLException {

        MyPaidDetailDTO detailDTO = null;

        DbConn dbCon = DbConn.getInstance("jdbc/dbcp");

        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            con = dbCon.getConn();

            StringBuilder selectDetail = new StringBuilder();
            selectDetail
            .append(" select p.ticket_name, p.personal_cnt, p.pay_price, p.t_res_num, ")
            .append("        p.ticket_num, p.pro_num, p.pay_date, p.t_res_date, ")
            .append("        d.adult_cnt, d.youth_cnt, d.kids_cnt, d.installment, d.pay_agency ")
            .append(" from my_paid p ")
            .append(" join my_paid_detail d ")
            .append("   on p.t_res_num = d.t_res_num ")
            .append(" where p.t_res_num = ? ");


            pstmt = con.prepareStatement(selectDetail.toString());
            pstmt.setInt(1, dto.gettResNum());

            rs = pstmt.executeQuery();

            if (rs.next()) {
                detailDTO = new MyPaidDetailDTO(
                    rs.getInt("adult_cnt"),
                    rs.getInt("youth_cnt"),
                    rs.getInt("kids_cnt"),
                    rs.getInt("installment"),
                    rs.getString("pay_agency")
                );

                // 부모 DTO 값 세팅 (상속된 setter 사용)
                detailDTO.setTicketName(rs.getString("ticket_name"));
                detailDTO.setPersonalCnt(rs.getInt("personal_cnt"));
                detailDTO.setPayPrice(rs.getInt("pay_price"));
                detailDTO.settResNum(rs.getInt("t_res_num"));
                detailDTO.setTicketNum(rs.getInt("ticket_num"));
                detailDTO.setProNum(rs.getInt("pro_num"));
                detailDTO.setPayDate(rs.getDate("pay_date"));
                detailDTO.settResDate(rs.getDate("t_res_date"));
            }


        } finally {
            dbCon.dbClose(rs, pstmt, con);
        }

        return detailDTO;
    }//selectPaidDetail

    
    public int updatePaid(MyPaidDTO dto) throws SQLException {

        int cnt = 0;

        DbConn dbCon = DbConn.getInstance("jdbc/dbcp");

        Connection con = null;
        PreparedStatement pstmt = null;

        try {
            con = dbCon.getConn();

            StringBuilder updatePaid=new StringBuilder();
            updatePaid
                .append("update my_paid")
                .append("set pay_price = ?")
                .append("where t_res_num = ?");

            pstmt = con.prepareStatement(updatePaid.toString());
            pstmt.setInt(1, dto.getPayPrice());
            pstmt.setInt(2, dto.gettResNum());

            cnt = pstmt.executeUpdate();

        } finally {
            dbCon.dbClose(null, pstmt, con);
        }

        return cnt;
    }//updatePaid

    public int totalCnt(int memberNum, String startDate, String endDate) throws SQLException {

        int cnt = 0;

        DbConn dbCon = DbConn.getInstance("jdbc/dbcp");
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            con = dbCon.getConn();

            StringBuilder sql = new StringBuilder();
            sql
            .append(" select count(*) ")
            .append(" from my_paid ")
            .append(" where member_num = ? ")
            .append("   and pay_date between ? and ? ");

            pstmt = con.prepareStatement(sql.toString());
            pstmt.setInt(1, memberNum);
            pstmt.setString(2, startDate);
            pstmt.setString(3, endDate);

            rs = pstmt.executeQuery();

            if (rs.next()) {
                cnt = rs.getInt(1);
            }

        } finally {
            dbCon.dbClose(rs, pstmt, con);
        }

        return cnt;
    }//totalCnt

    
}//class
