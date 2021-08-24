package model;

public class StockBestDTO {//국내종목 실시간 BEST 
	
	private int jongmokCode; //종목코드
//	private String date; //날짜
//	private String firstPrice; //시가
//	private String highPrice; //고가
//	private String lowPrice; //저가
	private String kos; //코스피/코스닥
	
	
	private String JongMokName; //종목명
	private int NowPrice; //현재가
	private int UpDown; //등락
	private double UpDownRate; //등락률
	
	
	
//	public StockBestDTO(int jongmokCode, String date, String firstPrice, String highPrice, String lowPrice,
//			String kos) {
//		this.jongmokCode = jongmokCode;
//		this.date = date;
//		this.firstPrice = firstPrice;
//		this.highPrice = highPrice;
//		this.lowPrice = lowPrice;
//		this.kos = kos;
//	}
	
	

	//국내 종목 실시간 BEST 생성자매소드
	public StockBestDTO(String jongMokName, int nowPrice, int upDown, double upDownRate) {
		this.JongMokName = jongMokName;
		this.NowPrice = nowPrice;
		this.UpDown = upDown;
		this.UpDownRate = upDownRate;
	}
    
	//사용자 최근 예측 종목 생성자 메소드 
	public StockBestDTO(int jongmokCode, String kos, String jongMokName) {
	this.jongmokCode = jongmokCode; //종목코드
	this.kos = kos; //코스피,코스닥
	this.JongMokName = jongMokName; //종목명
}

	public String getJongMokName() {//종목명
		return JongMokName;
	}

	public void setJongMokName(String jongMokName) {
		JongMokName = jongMokName;
	}

	public int getNowPrice() {//현재가
		return NowPrice;
	}

	public void setNowPrice(int nowPrice) {
		NowPrice = nowPrice;
	}

	public int getUpDown() {//등락
		return UpDown;
	}

	public void setUpDown(int upDown) {
		UpDown = upDown;
	}

	public double getUpDownRate() {//등락률
		return UpDownRate;
	}

	public void setUpDownRate(double upDownRate) {
		UpDownRate = upDownRate;
	}

	public int getJongmokCode() {//종목코드
		return jongmokCode;
	}

	public void setJongmokCode(int jongmokCode) {
		this.jongmokCode = jongmokCode;	}

//	public String getDate() {
//		return date;
//	}
//
//	public void setDate(String date) {
//		this.date = date;
//	}
//
//	public String getFirstPrice() {
//		return firstPrice;
//	}
//
//	public void setFirstPrice(String firstPrice) {
//		this.firstPrice = firstPrice;
//	}
//
//	public String getHighPrice() {
//		return highPrice;
//	}
//
//	public void setHighPrice(String highPrice) {
//		this.highPrice = highPrice;
//	}
//
//	public String getLowPrice() {
//		return lowPrice;
//	}
//
//	public void setLowPrice(String lowPrice) {
//		this.lowPrice = lowPrice;
//	}
//
	public String getKos() {//코스피,코스닥
		return kos;
	}

	public void setKos(String kos) {
		this.kos = kos;
	}
//	
//	

	

	

}
