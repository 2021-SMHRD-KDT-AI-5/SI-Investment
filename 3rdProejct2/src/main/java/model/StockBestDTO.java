package model;

public class StockBestDTO {//�������� �ǽð� BEST 
	private String JongMokName; //�����
	private int NowPrice; //���簡
	private int UpDown; //���
	private double UpDownRate; //�����
	
	//�����ڸżҵ�
	public StockBestDTO(String jongMokName, int nowPrice, int upDown, double upDownRate) {
		this.JongMokName = jongMokName;
		this.NowPrice = nowPrice;
		this.UpDown = upDown;
		this.UpDownRate = upDownRate;
	}

	public String getJongMokName() {//�����
		return JongMokName;
	}

	public void setJongMokName(String jongMokName) {
		JongMokName = jongMokName;
	}

	public int getNowPrice() {//���簡
		return NowPrice;
	}

	public void setNowPrice(int nowPrice) {
		NowPrice = nowPrice;
	}

	public int getUpDown() {//���
		return UpDown;
	}

	public void setUpDown(int upDown) {
		UpDown = upDown;
	}

	public double getUpDownRate() {//�����
		return UpDownRate;
	}

	public void setUpDownRate(double upDownRate) {
		UpDownRate = upDownRate;
	}
	
	

	

	

}