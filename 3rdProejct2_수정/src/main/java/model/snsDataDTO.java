package model;

public class snsDataDTO { // SNS������ ���̽�
	
	private String jongmokName; //�����ڵ�
	private String emotion; //����,����,������
	private String platForm;//sns����
	private String content; //�۳���
	
	//������ �޼ҵ�
	public snsDataDTO(String jongmokName, String emotion, String platForm, String content) {
		this.jongmokName = jongmokName;
		this.emotion = emotion;
		this.platForm = platForm;
		this.content = content;
	}

	public String getJongmokName() {//�����ڵ�
		return jongmokName;
	}

	public void setJongmokName(String jongmokName) {
		this.jongmokName = jongmokName;
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
