package model;

public class customDTO {//����� Ŀ����
	
	private String id;//���̵�
	private String changeVar;//���� ������
	private String changeContent;//���� ����
	
	//������ �޼ҵ�
	public customDTO(String id, String changeVar, String changeContent) {
		this.id = id;
		this.changeVar = changeVar;
		this.changeContent = changeContent;
	}

	public String getId() {//���̵�
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getChangeVar() {//���� ������
		return changeVar;
	}

	public void setChangeVar(String changeVar) {
		this.changeVar = changeVar;
	}

	public String getChangeContent() { //���� ����
		return changeContent;
	}

	public void setChangeContent(String changeContent) {
		this.changeContent = changeContent;
	}
	
	
	

}
