package model;

public class TermDicDTO {//용어사전
	
	private String term; //용어
	private String commentary; //해설
	private String altrnTerm; //대체용어
	
	//생성자 메소드
	public TermDicDTO(String term, String commentary, String altrnTerm) {
		this.term = term;
		this.commentary = commentary;
		this.altrnTerm = altrnTerm;
	}

	public String getTerm() {//용어
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public String getCommentary() {//해설
		return commentary;
	}

	public void setCommentary(String commentary) {
		this.commentary = commentary;
	}

	public String getAltrnTerm() {//대체용어
		return altrnTerm;
	}

	public void setAltrnTerm(String altrnTerm) {
		this.altrnTerm = altrnTerm;
	}
	
	
	
	
	

}
