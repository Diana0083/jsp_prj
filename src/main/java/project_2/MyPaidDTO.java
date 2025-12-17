package project_2;

import java.sql.Date;

public class MyPaidDTO {

	private String ticketName;
	private int personalCnt, payPrice, tResNum, ticketNum, proNum;
	private Date payDate, tResDate;
	
	public MyPaidDTO() {

	}

	public MyPaidDTO(String ticketName, int personalCnt, int payPrice, int tResNum, int ticketNum, int proNum,
			Date payDate, Date tResDate) {
		super();
		this.ticketName = ticketName;
		this.personalCnt = personalCnt;
		this.payPrice = payPrice;
		this.tResNum = tResNum;
		this.ticketNum = ticketNum;
		this.proNum = proNum;
		this.payDate = payDate;
		this.tResDate = tResDate;
	}

	public String getTicketName() {
		return ticketName;
	}

	public int getPersonalCnt() {
		return personalCnt;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public int gettResNum() {
		return tResNum;
	}

	public int getTicketNum() {
		return ticketNum;
	}

	public int getProNum() {
		return proNum;
	}

	public Date getPayDate() {
		return payDate;
	}

	public Date gettResDate() {
		return tResDate;
	}

	@Override
	public String toString() {
		return "MyPaidDTO [ticketName=" + ticketName + ", personalCnt=" + personalCnt + ", payPrice=" + payPrice
				+ ", tResNum=" + tResNum + ", ticketNum=" + ticketNum + ", proNum=" + proNum + ", payDate=" + payDate
				+ ", tResDate=" + tResDate + "]";
	}
	
	
	
}//class
