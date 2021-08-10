package model;

public class BouJongmokDTO {//회원별 보유 종목
	
	private String id ;//아이디
	private int jongmokCode; // 종목코드
	private String bouJu; //보유 주 
	private int stockC_Price; //체결가격
	private int purchasePrice; //매입 금액 
	private String stockC_Date; //체결날짜 시각
	private double profitLossRate; //손익율
	
	//생성자메소드
	public BouJongmokDTO(String id, int jongmokCode, String bouJu, int stockC_Price, int purchasePrice,
			String stockC_Date, double profitLossRate) {
		this.id = id;
		this.jongmokCode = jongmokCode;
		this.bouJu = bouJu;
		this.stockC_Price = stockC_Price;
		this.purchasePrice = purchasePrice;
		this.stockC_Date = stockC_Date;
		this.profitLossRate = profitLossRate;
	}
	public String getId() {//아이디
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getJongmokCode() {//종목코드
		return jongmokCode;
	}
	public void setJongmokCode(int jongmokCode) {
		this.jongmokCode = jongmokCode;
	}
	public String getBouJu() {//보유주
		return bouJu;
	}
	public void setBouJu(String bouJu) {
		this.bouJu = bouJu;
	}
	public int getStockC_Price() {//체결가격
		return stockC_Price;
	}
	public void setStockC_Price(int stockC_Price) {
		this.stockC_Price = stockC_Price;
	}
	public int getPurchasePrice() {//매입금액
		return purchasePrice;
	}
	public void setPurchasePrice(int purchasePrice) {
		this.purchasePrice = purchasePrice;
	}
	public String getStockC_Date() {//체결 날짜 시각
		return stockC_Date;
	}
	public void setStockC_Date(String stockC_Date) {
		this.stockC_Date = stockC_Date;
	}
	public double getProfitLossRate() {//손익율
		return profitLossRate;
	}
	public void setProfitLossRate(double profitLossRate) {
		this.profitLossRate = profitLossRate;
	}
	
	
	
	

}
