package model;

public class StockBestDTO {//국내종목 실시간 BEST 
	private String JongMokName; //종목명
	private int NowPrice; //현재가
	private int UpDown; //등락
	private double UpDownRate; //등락률
	
	//생성자매소드
	public StockBestDTO(String jongMokName, int nowPrice, int upDown, double upDownRate) {
		this.JongMokName = jongMokName;
		this.NowPrice = nowPrice;
		this.UpDown = upDown;
		this.UpDownRate = upDownRate;
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
	
	

	

	

}
