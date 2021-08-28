package model;

public class statDataDTO {//종목별 통계 데이터 
	
	private String jongmokCode; // 종목코드
	private String jongmokName; // 종목명
	private String typecode; // 업종코드
	private String predict; // 예측여부
	
	
	
	public statDataDTO(String jongmokCode, String jongmokName, String typecode, String predict) {
		super();
		this.jongmokCode = jongmokCode;
		this.jongmokName = jongmokName;
		this.typecode = typecode;
		this.predict = predict;
	}
	
	// 최근 예측종목,검색 생성자
	public statDataDTO(String jongmokCode, String jongmokName) {
		super();
		this.jongmokCode = jongmokCode;
		this.jongmokName = jongmokName;
	}

  //투자별 거래량 생성자 메소드
	public statDataDTO(String StockTime,int personalVolume,int foreignerVolume, int agencyVolume) {
		
	}

   //예측급등률 생성자 메소드
	public statDataDTO(String jongmokCode, String jongmokName, double soaringRate) {
		
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


	public String getTypecode() {
		return typecode;
	}


	public void setTypecode(String typecode) {
		this.typecode = typecode;
	}


	public String getPredict() {
		return predict;
	}


	public void setPredict(String predict) {
		this.predict = predict;
	}
	
	
	
	
   
	
	

}
