package model;

public class snsDataDTO { // SNS������ ���̽�
	
	private int jongmokCode; //�����ڵ�
	private String emotion; //����,����,������
	private String platForm;//sns����
	private String content; //�۳���
	
	//������ �޼ҵ�
	public snsDataDTO(int jongmokCode, String emotion, String platForm, String content) {
		this.jongmokCode = jongmokCode;
		this.emotion = emotion;
		this.platForm = platForm;
		this.content = content;
	}

	public int getJongmokCode() {//�����ڵ�
		return jongmokCode;
	}

	public void setJongmokCode(int jongmokCode) {
		this.jongmokCode = jongmokCode;
	}

	public String getEmotion() {//����,����,������
		return emotion;
	}

	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}

	public String getPlatForm() {//SNS����
		return platForm;
	}

	public void setPlatForm(String platForm) {
		this.platForm = platForm;
	}

	public String getContent() {//�� ����
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
	
	

}