package model;

public class BouJongmokDTO {//회원별 보유 종목
	
	private String email ;//아이디
	private String jongmokName; // 종목코드
	private String bouJu; //보유 주 
	private int stockC_Price; //체결가격
	private int purchasePrice; //매입 금액 
	private String stockC_Date; //체결날짜 시각

	
	//생성자메소드
	public BouJongmokDTO(String email, String jongmokName, String bouJu, int stockC_Price, int purchasePrice,
			String stockC_Date) {
		this.email = email;
		this.jongmokName = jongmokName;
		this.bouJu = bouJu;
		this.stockC_Price = stockC_Price;
		this.purchasePrice = purchasePrice;
		this.stockC_Date = stockC_Date;
	}
	public String getId() {//아이디
		return email;
	}
	public void setId(String id) {
		this.email = id;
	}
	public String getJongmokCode() {//종목코드
		return jongmokName;
	}
	public void setJongmokCode(String jongmokCode) {
		this.jongmokName = jongmokCode;
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

	
	
	

}
