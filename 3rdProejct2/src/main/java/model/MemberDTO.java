package model;

public class MemberDTO {//회원
	
	private String email; //이메일
	private String pw; //비밀번호
	private String tel; //전화번호

	
	//메소드 생성
	public MemberDTO(String email, String pw, String tel) {
		this.email = email;
		this.pw = pw;

	}


	public String getEmail() {//이메일
		return email;
	}

	public void setEmail(String emali) {
		this.email = email;
	}

	public String getPw() {//비밀번호
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
