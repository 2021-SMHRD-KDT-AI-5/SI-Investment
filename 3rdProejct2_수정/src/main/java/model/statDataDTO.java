package model;

public class statDataDTO {//���� ��� ������ 
	
	private String jongmokCode; // �����ڵ�
	private String jongmokName; // �����
	private String typecode; // �����ڵ�
	private String predict; // ��������
	
	
	
	public statDataDTO(String jongmokCode, String jongmokName, String typecode, String predict) {
		super();
		this.jongmokCode = jongmokCode;
		this.jongmokName = jongmokName;
		this.typecode = typecode;
		this.predict = predict;
	}
	
	// �ֱ� ��������,�˻� ������
	public statDataDTO(String jongmokCode, String jongmokName) {
		super();
		this.jongmokCode = jongmokCode;
		this.jongmokName = jongmokName;
	}

  //���ں� �ŷ��� ������ �޼ҵ�
	public statDataDTO(String StockTime,int personalVolume,int foreignerVolume, int agencyVolume) {
		
	}

   //�����޵�� ������ �޼ҵ�
	public statDataDTO(String jongmokCode, String jongmokName, double soaringRate) {
		
		this.jongmokCode = jongmokCode;
		this.jongmokName = jongmokName;
	}


	public String getJongmokCode() {
		return jongmokCode;
	}


	public void setJongmokCode(String jongmokCode) {
		this.jongmokCode = jongmokCode;
	}


	public String getJongmokName() {
		return jongmokName;
	}


	public void setJongmokName(String jongmokName) {
		this.jongmokName = jongmokName;
	}


	public String getTypecode() {
		return typecode;
	}


	public void setTypecode(String typecode) {
		this.typecode = typecode;
	}


	public String getPredict() {
		return predict;
	}


	public void setPredict(String predict) {
		this.predict = predict;
	}
	
	
	
	
   
	
	

}
