
package model;

public class StockSearchListDTO {//용어사전
	
	private String jongmokCode; //용어
	private String jongmokName; //해설
	
	
	//생성자 메소드
	public StockSearchListDTO(String jongmokCode, String jongmokName) {
		this.jongmokCode = jongmokCode;
		this.jongmokName = jongmokName;
	
	}


	public String getJongmokCode() {
		return jongmokCode;
	}


	public void setJongmokCode(String jongmokCode) {
		this.jongmokCode = jongmokCode;
	}


	public String getJongmokName() {
		return jongmokName;
	}


	public void setJongmokName(String jongmokName) {
		this.jongmokName = jongmokName;
	}

	
	
	

}
