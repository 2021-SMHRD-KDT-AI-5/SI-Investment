package model;

public class BouJongmokDTO {//ȸ���� ���� ����
	
	private String email ;//���̵�
	private String jongmokName; // �����ڵ�
	private String bouJu; //���� �� 
	private int stockC_Price; //ü�ᰡ��
	private int purchasePrice; //���� �ݾ� 
	private String stockC_Date; //ü�ᳯ¥ �ð�

	
	//�����ڸ޼ҵ�
	public BouJongmokDTO(String email, String jongmokName, String bouJu, int stockC_Price, int purchasePrice,
			String stockC_Date) {
		this.email = email;
		this.jongmokName = jongmokName;
		this.bouJu = bouJu;
		this.stockC_Price = stockC_Price;
		this.purchasePrice = purchasePrice;
		this.stockC_Date = stockC_Date;
	}
	public String getId() {//���̵�
		return email;
	}
	public void setId(String id) {
		this.email = id;
	}
	public String getJongmokCode() {//�����ڵ�
		return jongmokName;
	}
	public void setJongmokCode(String jongmokCode) {
		this.jongmokName = jongmokCode;
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

	
	
	

}
