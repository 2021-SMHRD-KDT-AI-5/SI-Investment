package model;

public class MemberDTO {
	
	private String id; //���̵�
	private String pw; //��й�ȣ
	private String bankName; //�����
	private String accountNumber;// ���¹�ȣ
	private int yesugeum;//������
	
	//�޼ҵ� ����
	public MemberDTO(String id, String pw, String bankName, String accountNumber, int yesugeum) {
		this.id = id;
		this.pw = pw;
		this.bankName = bankName;
		this.accountNumber = accountNumber;
		this.yesugeum = yesugeum;
	}


	public String getId() {//���̵�
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {//��й�ȣ
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getBankName() {//�����
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getAccountNumber() {//���¹�ȣ
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public int getYesugeum() {//������
		return yesugeum;
	}

	public void setYesugeum(int yesugeum) {
		this.yesugeum = yesugeum;
	}
	
	
	
	
	

}
