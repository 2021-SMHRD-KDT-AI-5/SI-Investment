package model;

public class JugaDataDTO {//종목별 주가 데이터 
	private int jongmokCode; //종목코드
	private String date; //날짜
	private int firstPrice; //시가
	private int closePrice; //종가
	private int highPrice; //고가
	private int lowPrice; //저가
	private String kos; // 코스피,코스닥 
	
	//생성자 메소드
	public JugaDataDTO(int jongmokCode, String date, int firstPrice, int closePrice, int highPrice, int lowPrice,
			String kos) {
		this.jongmokCode = jongmokCode;
		this.date = date;
		this.firstPrice = firstPrice;
		this.closePrice = closePrice;
		this.highPrice = highPrice;
		this.lowPrice = lowPrice;
		this.kos = kos;
	}

	public int getJongmokCode() {//종목코드
		return jongmokCode;
	}

	public void setJongmokCode(int jongmokCode) {
		this.jongmokCode = jongmokCode;
	}

	public String getDate() {//날짜
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getFirstPrice() {//시가
		return firstPrice;
	}

	public void setFirstPrice(int firstPrice) {
		this.firstPrice = firstPrice;
	}

	public int getClosePrice() {//종가
		return closePrice;
	}

	public void setClosePrice(int closePrice) {
		this.closePrice = closePrice;
	}

	public int getHighPrice() {//고가
		return highPrice;
	}

	public void setHighPrice(int highPrice) {
		this.highPrice = highPrice;
	}

	public int getLowPrice() {//저가
		return lowPrice;
	}

	public void setLowPrice(int lowPrice) {
		this.lowPrice = lowPrice;
	}

	public String getKos() {// 코스피,코스닥
		return kos;
	}

	public void setKos(String kos) {
		this.kos = kos;
	}
	
	
	
	

}
