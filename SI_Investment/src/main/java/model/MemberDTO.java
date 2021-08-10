package model;

public class MemberDTO {
	
	private String id; //아이디
	private String pw; //비밀번호
	private String bankName; //은행명
	private String accountNumber;// 계좌번호
	private int yesugeum;//예수금
	
	//메소드 생성
	public MemberDTO(String id, String pw, String bankName, String accountNumber, int yesugeum) {
		this.id = id;
		this.pw = pw;
		this.bankName = bankName;
		this.accountNumber = accountNumber;
		this.yesugeum = yesugeum;
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

	public String getBankName() {//은행명
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getAccountNumber() {//계좌번호
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public int getYesugeum() {//예수금
		return yesugeum;
	}

	public void setYesugeum(int yesugeum) {
		this.yesugeum = yesugeum;
	}
	
	
	
	
	

}
