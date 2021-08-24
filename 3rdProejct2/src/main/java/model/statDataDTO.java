package model;

public class statDataDTO {//종목별 통계 데이터 
	
	private int jongmokCode; // 종목코드
	private String jongmokName; //종목명
	private int totalVolume; //종 거래량
	private double profitRate; //수익율
	private double soaringRate; //급등률
	private int personalVolume; // 개인 거래량
	private int agencyVolume; //기관 거래량
	private int foreignerVolume; //외국인 거래량
	private String date;//날짜
	
	//생성자 메소드 
	public statDataDTO(int jongmokCode, String jongmokName, int totalVolume, double profitRate, double soaringRate,
			int personalVolume, int agencyVolume, int foreignerVolume) {
		this.jongmokCode = jongmokCode;
		this.jongmokName = jongmokName;
		this.totalVolume = totalVolume;
		this.profitRate = profitRate;
		this.soaringRate = soaringRate;
		this.personalVolume = personalVolume;
		this.agencyVolume = agencyVolume;
		this.foreignerVolume = foreignerVolume;
	}
	
	
  //투자별 거래량 생성자 메소드
	public statDataDTO(int personalVolume, int agencyVolume, int foreignerVolume, String date) {
		super();
		this.personalVolume = personalVolume;//개인 거래량
		this.agencyVolume = agencyVolume; //기관 거래량
		this.foreignerVolume = foreignerVolume;//외국인 거래량
		this.date = date;//날짜
	}

    

	public String getDate() {//날짜
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public int getJongmokCode() {//종목코드
		return jongmokCode;
	}

	public void setJongmokCode(int jongmokCode) {
		this.jongmokCode = jongmokCode;
	}

	public String getJongmokName() {//종목명
		return jongmokName;
	}

	public void setJongmokName(String jongmokName) {
		this.jongmokName = jongmokName;
	}

	public int getTotalVolume() {//총 거래량
		return totalVolume;
	}

	public void setTotalVolume(int totalVolume) {
		this.totalVolume = totalVolume;
	}

	public double getProfitRate() {//수익율
		return profitRate;
	}

	public void setProfitRate(double profitRate) {
		this.profitRate = profitRate;
	}

	public double getSoaringRate() {//급등률
		return soaringRate;
	}

	public void setSoaringRate(double soaringRate) {
		this.soaringRate = soaringRate;
	}

	public int getPersonalVolume() {//개인거래량
		return personalVolume;
	}

	public void setPersonalVolume(int personalVolume) {
		this.personalVolume = personalVolume;
	}

	public int getAgencyVolume() {//기관거래량
		return agencyVolume;
	}

	public void setAgencyVolume(int agencyVolume) {
		this.agencyVolume = agencyVolume;
	}

	public int getForeignerVolume() {//외국인거래량
		return foreignerVolume;
	}

	public void setForeignerVolume(int foreignerVolume) {
		this.foreignerVolume = foreignerVolume;
	}
	
   
	
	

}
