package model;

public class MemberDTO {//ȸ��
	
	private String email; //�̸���
	private String pw; //��й�ȣ
	private String tel; //��ȭ��ȣ

	
	//�޼ҵ� ����
	public MemberDTO(String email, String pw, String tel) {
		this.email = email;
		this.pw = pw;

	}


	public String getEmail() {//�̸���
		return email;
	}

	public void setEmail(String emali) {
		this.email = email;
	}

	public String getPw() {//��й�ȣ
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}

	
	
	
	
	

}
