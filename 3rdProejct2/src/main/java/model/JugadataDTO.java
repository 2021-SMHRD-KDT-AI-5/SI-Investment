package model;

public class JugadataDTO {//�������� �ǽð� BEST,����ڿ�������, 
	
	private String jongmokCode; //�����ڵ�
	private String stockTime; //��¥
	private int firstPrice; //�ð�
	private int highPrice; //��
	private int lowPrice; //����
	private String kos; //�ڽ���/�ڽ���
	private String JongMokName; //�����
	private int NowPrice; //���簡

	
	

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

	//���� ���� �ǽð� BEST �����ڸżҵ�
	public JugadataDTO(String jongMokName, int nowPrice) {
		this.JongMokName = jongMokName;
		this.NowPrice = nowPrice;

	}
    
	//����� �ֱ� ���� ���� ������ �޼ҵ� 
	public JugadataDTO(String jongmokCode, String kos, String jongMokName) {
	this.jongmokCode = jongmokCode; //�����ڵ�
	this.kos = kos; //�ڽ���,�ڽ���
	this.JongMokName = jongMokName; //�����
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


	public String getJongmokCode() {//�����ڵ�
		return jongmokCode;
	}

	public void setJongmokCode(String jongmokCode) {
		this.jongmokCode = jongmokCode;	}

	public String getStockTime() {//��¥
		return stockTime;
	}

	public void setStockTime(String StockTime) {
		this.stockTime = StockTime;
	}

	public int getFirstPrice() {//�ð�
		return firstPrice;
	}

	public void setFirstPrice(int firstPrice) {
		this.firstPrice = firstPrice;
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

	public String getKos() {//�ڽ���,�ڽ���
		return kos;
	}

	public void setKos(String kos) {
		this.kos = kos;
	}
	
	

	

	

}
