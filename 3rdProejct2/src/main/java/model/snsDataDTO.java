package model;

public class snsDataDTO { // SNS데이터 베이스
	
	private String jongmokCode; //종목코드
	private String emotion; //긍정,부정,무관심
	private String platForm;//sns종류
	private String content; //글내용
	
	//생성자 메소드
	public snsDataDTO(String jongmokCode, String emotion, String platForm, String content) {
		this.jongmokCode = jongmokCode;
		this.emotion = emotion;
		this.platForm = platForm;
		this.content = content;
	}

	public String getJongmokCode() {//종목코드
		return jongmokCode;
	}

	public void setJongmokCode(String jongmokCode) {
		this.jongmokCode = jongmokCode;
	}

	public String getEmotion() {//긍정,부정,무관심
		return emotion;
	}

	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}

	public String getPlatForm() {//SNS종류
		return platForm;
	}

	public void setPlatForm(String platForm) {
		this.platForm = platForm;
	}

	public String getContent() {//글 내용
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
	
	

}
