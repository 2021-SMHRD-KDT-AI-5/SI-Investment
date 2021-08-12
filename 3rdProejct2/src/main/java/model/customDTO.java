package model;

public class customDTO {//사용자 커스텀
	
	private String id;//아이디
	private String changeVar;//변경 변수명
	private String changeContent;//변경 내용
	
	//생성자 메소드
	public customDTO(String id, String changeVar, String changeContent) {
		this.id = id;
		this.changeVar = changeVar;
		this.changeContent = changeContent;
	}

	public String getId() {//아이디
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getChangeVar() {//변경 변수명
		return changeVar;
	}

	public void setChangeVar(String changeVar) {
		this.changeVar = changeVar;
	}

	public String getChangeContent() { //변경 내용
		return changeContent;
	}

	public void setChangeContent(String changeContent) {
		this.changeContent = changeContent;
	}
	
	
	

}
