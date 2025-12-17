package project_2;

public class MyPaidDetailDTO extends MyPaidDTO {
	
	private int adultCnt, youthCnt, kidsCnt, installment;
	private String payAgency;
	
	
	public MyPaidDetailDTO() {

	}

	public int getAdultCnt() {
		return adultCnt;
	}
	public int getYouthCnt() {
		return youthCnt;
	}
	public int getKidsCnt() {
		return kidsCnt;
	}
	public int getInstallment() {
		return installment;
	}
	public String getPayAgency() {
		return payAgency;
	}

	public MyPaidDetailDTO(int adultCnt, int youthCnt, int kidsCnt, int installment, String payAgency) {
		super();
		this.adultCnt = adultCnt;
		this.youthCnt = youthCnt;
		this.kidsCnt = kidsCnt;
		this.installment = installment;
		this.payAgency = payAgency;
	}

	@Override
	public String toString() {
		return "MyPaidDetailDTO [adultCnt=" + adultCnt + ", youthCnt=" + youthCnt + ", kidsCnt=" + kidsCnt
				+ ", installment=" + installment + ", payAgency=" + payAgency + "]";
	}
	
	
	
	
	
}//class
