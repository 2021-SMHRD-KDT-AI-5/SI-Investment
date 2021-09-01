package model;

public class JugadataDTO {//국내종목 실시간 BEST,사용자예측종목, 
	
	private String jongmokCode; //종목코드
	private String stockTime; //날짜
	private int firstPrice; //시가
	private int highPrice; //고가
	private int lowPrice; //저가
	private int closePrice; //종가
	private int totalVolume; // 총 거래량
	private int personalVolume; // 개인 순매수
	private int agencyVolume; // 기관 순매수
	private int foreignerVolume; // 외국인 순매수
	private double predictRate; // 예측 적중률

	public JugadataDTO(String jongmokCode, String stockTime, int firstPrice, int highPrice, int lowPrice,
			int closePrice, int totalVolume, int personalVolume, int agencyVolume, int foreignerVolume,
			double predictRate) {
		this.jongmokCode = jongmokCode;
		this.stockTime = stockTime;
		this.firstPrice = firstPrice;
		this.highPrice = highPrice;
		this.lowPrice = lowPrice;
		this.closePrice = closePrice;
		this.totalVolume = totalVolume;
		this.personalVolume = personalVolume;
		this.agencyVolume = agencyVolume;
		this.foreignerVolume = foreignerVolume;
		this.predictRate = predictRate;
	}

	
	
	public JugadataDTO(String stockTime, int personalVolume, int agencyVolume, int foreignerVolume) {
		this.stockTime = stockTime;
		this.personalVolume = personalVolume;
		this.agencyVolume = agencyVolume;
		this.foreignerVolume = foreignerVolume;
	}



	public JugadataDTO(int closePrice) {
		this.closePrice = closePrice;
	}



	//국내 종목 실시간 BEST 생성자매소드
	public JugadataDTO(String jongMokName, int nowPrice) {
		
	}
    
	//사용자 최근 예측 종목 생성자 메소드 
	public JugadataDTO(String jongmokCode, String kos, String jongMokName) {
	this.jongmokCode = jongmokCode; //종목코드
}

	public String getJongmokCode() {
		return jongmokCode;
	}

	public void setJongmokCode(String jongmokCode) {
		this.jongmokCode = jongmokCode;
	}

	public String getStockTime() {
		return stockTime;
	}

	public void setStockTime(String stockTime) {
		this.stockTime = stockTime;
	}

	public int getFirstPrice() {
		return firstPrice;
	}

	public void setFirstPrice(int firstPrice) {
		this.firstPrice = firstPrice;
	}

	public int getHighPrice() {
		return highPrice;
	}

	public void setHighPrice(int highPrice) {
		this.highPrice = highPrice;
	}

	public int getLowPrice() {
		return lowPrice;
	}

	public void setLowPrice(int lowPrice) {
		this.lowPrice = lowPrice;
	}

	public int getClosePrice() {
		return closePrice;
	}

	public void setClosePrice(int closePrice) {
		this.closePrice = closePrice;
	}

	public int getTotalVolume() {
		return totalVolume;
	}

	public void setTotalVolume(int totalVolume) {
		this.totalVolume = totalVolume;
	}

	public int getPersonalVolume() {
		return personalVolume;
	}

	public void setPersonalVolume(int personalVolume) {
		this.personalVolume = personalVolume;
	}

	public int getAgencyVolume() {
		return agencyVolume;
	}

	public void setAgencyVolume(int agencyVolume) {
		this.agencyVolume = agencyVolume;
	}

	public int getForeignerVolume() {
		return foreignerVolume;
	}

	public void setForeignerVolume(int foreignerVolume) {
		this.foreignerVolume = foreignerVolume;
	}

	public double getPredictRate() {
		return predictRate;
	}

	public void setPredictRate(double predictRate) {
		this.predictRate = predictRate;
	}

}
