package project_2;

import java.sql.SQLException;
import java.util.List;

public class MyPaidService {

	/*	
	+ totalCnt(int, String, String) : int 
	+ totalPage( int ) : int
	+ pageScale() : int
	+ startNum( int ) : int
	+ endNum( int ) : int
	+ pagenation( String, int ) : String
	 
	+ selectPaidDetail(MyPaidDTO) : MyPaidDetailDTO
	+ modifyPaid(myPaidDTO) : int
*/
	
	   private static MyPaidService mps;

	    private MyPaidService() {
	    }//MyPaidService

	    public static MyPaidService getInstance() {
	        if (mps == null) {
	            mps = new MyPaidService();
	        }
	        return mps;
	    }//getInstance
	
	    public int totalCnt(int memberNum, String startDate, String endDate) {

	        int totalCnt = 0;
	        MyPaidDAO mpDAO = MyPaidDAO.getInstance();

	        try {
	            totalCnt = mpDAO.totalCnt(memberNum, startDate, endDate);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return totalCnt;
	    }//totalCnt

	    public int pageScale() {
	        return 10;
	    }//pageScale
	    
	    public int totalPage(int totalCnt) {
	        return (int)Math.ceil((double)totalCnt / pageScale());
	    }//totalPage

	    public int startNum(int currentPage) {
	        return currentPage * pageScale() - pageScale() + 1;
	    }//startNum

	    public int endNum(int startNum) {
	        return startNum + pageScale() - 1;
	    }//endNum

	    public String pagenation(String url, int currentPage, int totalPage) {
	    	
	    	StringBuilder sb = new StringBuilder();
	    	int pageNumber = 3;
	    	
	    	int startPage = ((currentPage - 1) / pageNumber) * pageNumber + 1;
	    	int endPage = startPage + pageNumber - 1;
	    	
	    	if (totalPage < endPage) {
	    		endPage = totalPage;
	    	}
	    	
	    	// 이전
	    	if (currentPage > pageNumber) {
	    		sb.append("[ <a href='")
	    		.append(url).append("?currentPage=").append(startPage - 1)
	    		.append("'>&lt;&lt;</a> ] ");
	    	} else {
	    		sb.append("[&lt;&lt;] ");
	    	}
	    	
	    	// 페이지 번호
	    	for (int i = startPage; i <= endPage; i++) {
	    		if (i == currentPage) {
	    			sb.append("[ <span>").append(i).append("</span> ] ");
	    		} else {
	    			sb.append("[ <a href='")
	    			.append(url).append("?currentPage=").append(i)
	    			.append("'>").append(i).append("</a> ] ");
	    		}
	    	}
	    	
	    	// 다음
	    	if (totalPage > endPage) {
	    		sb.append("[ <a href='")
	    		.append(url).append("?currentPage=").append(endPage + 1)
	    		.append("'>&gt;&gt;</a> ]");
	    	} else {
	    		sb.append("[ &gt;&gt; ]");
	    	}
	    	
	    	return sb.toString();
	    }//pagenation
	    
	    public List<MyPaidDTO> searchPaid(int memberNum, int startNum, int endNum) {

	        List<MyPaidDTO> list = null;
	        MyPaidDAO mpDAO = MyPaidDAO.getInstance();

	        try {
	            list = mpDAO.searchPaid(memberNum, startNum, endNum);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return list;
	    }


	    public MyPaidDetailDTO selectPaidDetail(MyPaidDTO mpDto) {

	        MyPaidDetailDTO detailDTO = null;
	        MyPaidDAO mpDAO = MyPaidDAO.getInstance();

	        try {
	            detailDTO = mpDAO.selectPaidDetail(mpDto);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return detailDTO;
	    }//selectPaidDetail

	    public int modifyPaid(MyPaidDTO mpDto) {

	        int cnt = 0;
	        MyPaidDAO mpDAO = MyPaidDAO.getInstance();

	        try {
	            cnt = mpDAO.updatePaid(mpDto);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return cnt;
	    }//modifyPaid


	 

	
}

