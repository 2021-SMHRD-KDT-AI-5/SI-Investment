package model;

public class MemberDTO {//회원
	
	private String name; //이름
	private String email; //이메일
	private String pw; //비밀번호
	private String tel; //전화번호


	
	//메소드 생성
	public MemberDTO(String name, String email, String pw, String tel) {
		
		this.name = name;
		this.email = email;
		this.pw = pw;
		this.tel = tel;

	}

	

	public String getName() {//이름 
		return name;
	}



	public void setName(String name) {
		this.name = name;
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


	public String getTel() {//전화번호
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}

	
	
	
	
	

}
