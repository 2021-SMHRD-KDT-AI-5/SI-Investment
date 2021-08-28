package model;

public class JugadataDTO {//국내종목 실시간 BEST,사용자예측종목, 
	
	private String jongmokCode; //종목코드
	private String stockTime; //날짜
	private int firstPrice; //시가
	private int highPrice; //고가
	private int lowPrice; //저가
	private String kos; //코스피/코스닥
	private String JongMokName; //종목명
	private int NowPrice; //현재가

	
	

	public JugadataDTO(String jongmokCode, String stockTime, int firstPrice, int highPrice, int lowPrice, String kos,
			String jongMokName, int nowPrice) {
		super();
		this.jongmokCode = jongmokCode;
		this.stockTime = stockTime;
		this.firstPrice = firstPrice;
		this.highPrice = highPrice;
		this.lowPrice = lowPrice;
		this.kos = kos;
		JongMokName = jongMokName;
		NowPrice = nowPrice;
	}

	//국내 종목 실시간 BEST 생성자매소드
	public JugadataDTO(String jongMokName, int nowPrice) {
		this.JongMokName = jongMokName;
		this.NowPrice = nowPrice;

	}
    
	//사용자 최근 예측 종목 생성자 메소드 
	public JugadataDTO(String jongmokCode, String kos, String jongMokName) {
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


	public String getJongmokCode() {//종목코드
		return jongmokCode;
	}

	public void setJongmokCode(String jongmokCode) {
		this.jongmokCode = jongmokCode;	}

	public String getStockTime() {//날짜
		return stockTime;
	}

	public void setStockTime(String StockTime) {
		this.stockTime = StockTime;
	}

	public int getFirstPrice() {//시가
		return firstPrice;
	}

	public void setFirstPrice(int firstPrice) {
		this.firstPrice = firstPrice;
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

	public String getKos() {//코스피,코스닥
		return kos;
	}

	public void setKos(String kos) {
		this.kos = kos;
	}
	
	

	

	

}
