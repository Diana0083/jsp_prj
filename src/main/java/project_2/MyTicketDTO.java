package project_2;

import java.sql.Date;

public class MyTicketDTO {
	
	private int ticketNum;
	private String ticketName, personCnt, payMethod, qrCode;
	private Date useDate, tResDate;

	public MyTicketDTO() {
		
	}

	public MyTicketDTO(int ticketNum, String ticketName, String personCnt, String payMethod, String qrCode,
			Date useDate, Date tResDate) {
		super();
		this.ticketNum = ticketNum;
		this.ticketName = ticketName;
		this.personCnt = personCnt;
		this.payMethod = payMethod;
		this.qrCode = qrCode;
		this.useDate = useDate;
		this.tResDate = tResDate;
	}

	public int getTicketNum() {
		return ticketNum;
	}

	public void setTicketNum(int ticketNum) {
		this.ticketNum = ticketNum;
	}

	public String getTicketName() {
		return ticketName;
	}

	public void setTicketName(String ticketName) {
		this.ticketName = ticketName;
	}

	public String getPersonCnt() {
		return personCnt;
	}

	public void setPersonCnt(String personCnt) {
		this.personCnt = personCnt;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public String getQrCode() {
		return qrCode;
	}

	public void setQrCode(String qrCode) {
		this.qrCode = qrCode;
	}

	public Date getUseDate() {
		return useDate;
	}

	public void setUseDate(Date useDate) {
		this.useDate = useDate;
	}

	public Date gettResDate() {
		return tResDate;
	}

	public void settResDate(Date tResDate) {
		this.tResDate = tResDate;
	}

	@Override
	public String toString() {
		return "MyTicketDTO [ticketNum=" + ticketNum + ", ticketName=" + ticketName + ", personCnt=" + personCnt
				+ ", payMethod=" + payMethod + ", qrCode=" + qrCode + ", useDate=" + useDate + ", tResDate=" + tResDate
				+ "]";
	}
	
	
	
}//class
