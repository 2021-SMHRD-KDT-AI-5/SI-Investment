package model;

public class statDataDTO {//���� ��� ������ 
	
	private int jongmokCode; // �����ڵ�
	private String jongmokName; //�����
	private int totalVolume; //�� �ŷ���
	private double profitRate; //������
	private double soaringRate; //�޵��
	private int personalVolume; // ���� �ŷ���
	private int agencyVolume; //��� �ŷ���
	private int foreignerVolume; //�ܱ��� �ŷ���
	
	//������ �޼ҵ� 
	public statDataDTO(int jongmokCode, String jongmokName, int totalVolume, double profitRate, double soaringRate,
			int personalVolume, int agencyVolume, int foreignerVolume) {
		this.jongmokCode = jongmokCode;
		this.jongmokName = jongmokName;
		this.totalVolume = totalVolume;
		this.profitRate = profitRate;
		this.soaringRate = soaringRate;
		this.personalVolume = personalVolume;
		this.agencyVolume = agencyVolume;
		this.foreignerVolume = foreignerVolume;
	}

	public int getJongmokCode() {//�����ڵ�
		return jongmokCode;
	}

	public void setJongmokCode(int jongmokCode) {
		this.jongmokCode = jongmokCode;
	}

	public String getJongmokName() {//�����
		return jongmokName;
	}

	public void setJongmokName(String jongmokName) {
		this.jongmokName = jongmokName;
	}

	public int getTotalVolume() {//�� �ŷ���
		return totalVolume;
	}

	public void setTotalVolume(int totalVolume) {
		this.totalVolume = totalVolume;
	}

	public double getProfitRate() {//������
		return profitRate;
	}

	public void setProfitRate(double profitRate) {
		this.profitRate = profitRate;
	}

	public double getSoaringRate() {//�޵��
		return soaringRate;
	}

	public void setSoaringRate(double soaringRate) {
		this.soaringRate = soaringRate;
	}

	public int getPersonalVolume() {//���ΰŷ���
		return personalVolume;
	}

	public void setPersonalVolume(int personalVolume) {
		this.personalVolume = personalVolume;
	}

	public int getAgencyVolume() {//����ŷ���
		return agencyVolume;
	}

	public void setAgencyVolume(int agencyVolume) {
		this.agencyVolume = agencyVolume;
	}

	public int getForeignerVolume() {//�ܱ��ΰŷ���
		return foreignerVolume;
	}

	public void setForeignerVolume(int foreignerVolume) {
		this.foreignerVolume = foreignerVolume;
	}
	
   
	
	

}
