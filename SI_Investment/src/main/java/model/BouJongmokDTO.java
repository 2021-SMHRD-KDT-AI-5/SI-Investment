package model;

public class BouJongmokDTO {//ȸ���� ���� ����
	
	private String id ;//���̵�
	private int jongmokCode; // �����ڵ�
	private String bouJu; //���� �� 
	private int stockC_Price; //ü�ᰡ��
	private int purchasePrice; //���� �ݾ� 
	private String stockC_Date; //ü�ᳯ¥ �ð�
	private double profitLossRate; //������
	
	//�����ڸ޼ҵ�
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
	public String getId() {//���̵�
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getJongmokCode() {//�����ڵ�
		return jongmokCode;
	}
	public void setJongmokCode(int jongmokCode) {
		this.jongmokCode = jongmokCode;
	}
	public String getBouJu() {//������
		return bouJu;
	}
	public void setBouJu(String bouJu) {
		this.bouJu = bouJu;
	}
	public int getStockC_Price() {//ü�ᰡ��
		return stockC_Price;
	}
	public void setStockC_Price(int stockC_Price) {
		this.stockC_Price = stockC_Price;
	}
	public int getPurchasePrice() {//���Աݾ�
		return purchasePrice;
	}
	public void setPurchasePrice(int purchasePrice) {
		this.purchasePrice = purchasePrice;
	}
	public String getStockC_Date() {//ü�� ��¥ �ð�
		return stockC_Date;
	}
	public void setStockC_Date(String stockC_Date) {
		this.stockC_Date = stockC_Date;
	}
	public double getProfitLossRate() {//������
		return profitLossRate;
	}
	public void setProfitLossRate(double profitLossRate) {
		this.profitLossRate = profitLossRate;
	}
	
	
	
	

}
