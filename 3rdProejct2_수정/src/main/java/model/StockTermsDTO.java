package model;

public class StockTermsDTO {//������
	
	private String term; //���
	private String commentary; //�ؼ�
	
	
	//������ �޼ҵ�
	public StockTermsDTO(String term, String commentary) {
		this.term = term;
		this.commentary = commentary;
	
	}

	public String getTerm() {//���
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public String getCommentary() {//�ؼ�
		return commentary;
	}

	public void setCommentary(String commentary) {
		this.commentary = commentary;
	}
	
	
	
	

}
