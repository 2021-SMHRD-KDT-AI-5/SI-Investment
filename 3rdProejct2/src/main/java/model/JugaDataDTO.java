package model;

public class JugaDataDTO {//���� �ְ� ������ 
	private int jongmokCode; //�����ڵ�
	private String date; //��¥
	private int firstPrice; //�ð�
	private int closePrice; //����
	private int highPrice; //��
	private int lowPrice; //����
	private String kos; // �ڽ���,�ڽ��� 
	
	//������ �޼ҵ�
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

	public int getJongmokCode() {//�����ڵ�
		return jongmokCode;
	}

	public void setJongmokCode(int jongmokCode) {
		this.jongmokCode = jongmokCode;
	}

	public String getDate() {//��¥
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getFirstPrice() {//�ð�
		return firstPrice;
	}

	public void setFirstPrice(int firstPrice) {
		this.firstPrice = firstPrice;
	}

	public int getClosePrice() {//����
		return closePrice;
	}

	public void setClosePrice(int closePrice) {
		this.closePrice = closePrice;
	}

	public int getHighPrice() {//��
		return highPrice;
	}

	public void setHighPrice(int highPrice) {
		this.highPrice = highPrice;
	}

	public int getLowPrice() {//����
		return lowPrice;
	}

	public void setLowPrice(int lowPrice) {
		this.lowPrice = lowPrice;
	}

	public String getKos() {// �ڽ���,�ڽ���
		return kos;
	}

	public void setKos(String kos) {
		this.kos = kos;
	}
	
	
	
	

}
