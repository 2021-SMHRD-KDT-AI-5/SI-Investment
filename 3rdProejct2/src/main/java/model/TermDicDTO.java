package model;

public class TermDicDTO {//������
	
	private String term; //���
	private String commentary; //�ؼ�
	private String altrnTerm; //��ü���
	
	//������ �޼ҵ�
	public TermDicDTO(String term, String commentary, String altrnTerm) {
		this.term = term;
		this.commentary = commentary;
		this.altrnTerm = altrnTerm;
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

	public String getAltrnTerm() {//��ü���
		return altrnTerm;
	}

	public void setAltrnTerm(String altrnTerm) {
		this.altrnTerm = altrnTerm;
	}
	
	
	
	
	

}
