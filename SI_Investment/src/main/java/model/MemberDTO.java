package model;

public class MemberDTO {//회원
	
	private String id; //아이디
	private String pw; //비밀번호

	
	//메소드 생성
	public MemberDTO(String id, String pw, String bankName, String accountNumber, int yesugeum) {
		this.id = id;
		this.pw = pw;

	}


	public String getId() {//아이디
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {//비밀번호
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	
	
	
	
	

}
