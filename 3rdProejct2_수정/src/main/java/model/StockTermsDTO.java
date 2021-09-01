package model;

public class StockTermsDTO {//용어사전
	
	private String term; //용어
	private String commentary; //해설
	
	
	//생성자 메소드
	public StockTermsDTO(String term, String commentary) {
		this.term = term;
		this.commentary = commentary;
	
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
	
	
	
	

}
