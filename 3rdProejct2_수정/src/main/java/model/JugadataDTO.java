package model;

public class JugadataDTO {//�������� �ǽð� BEST,����ڿ�������, 
	
	private String jongmokCode; //�����ڵ�
	private String stockTime; //��¥
	private int firstPrice; //�ð�
	private int highPrice; //��
	private int lowPrice; //����
	private int closePrice; //����
	private int totalVolume; // �� �ŷ���
	private int personalVolume; // ���� ���ż�
	private int agencyVolume; // ��� ���ż�
	private int foreignerVolume; // �ܱ��� ���ż�
	private double predictRate; // ���� ���߷�

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



	//���� ���� �ǽð� BEST �����ڸżҵ�
	public JugadataDTO(String jongMokName, int nowPrice) {
		
	}
    
	//����� �ֱ� ���� ���� ������ �޼ҵ� 
	public JugadataDTO(String jongmokCode, String kos, String jongMokName) {
	this.jongmokCode = jongmokCode; //�����ڵ�
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
