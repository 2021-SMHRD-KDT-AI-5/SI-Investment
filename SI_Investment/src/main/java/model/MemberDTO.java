package model;

public class MemberDTO {//ȸ��
	
	private String id; //���̵�
	private String pw; //��й�ȣ

	
	//�޼ҵ� ����
	public MemberDTO(String id, String pw, String bankName, String accountNumber, int yesugeum) {
		this.id = id;
		this.pw = pw;

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

	
	
	
	
	

}
