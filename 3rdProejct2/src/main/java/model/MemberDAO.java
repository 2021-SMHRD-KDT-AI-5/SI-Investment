package model;

public class MemberDAO {//ȸ��
	
	public void connection() {//�����ͺ��̽� ����
		
	}
	
	public void close() {//����
		
	}
	
	public MemberDTO login(String id , String pw) {//�α���
		
		MemberDTO member = null;
		return member;
		
	}

	public int join(MemberDTO member) {//ȸ������
		int cnt = 0;
		return cnt;
		
		
	}

    public boolean idCheck(String id) {//�ߺ����̵� üũ
    	boolean check = false;
    	return check;
    }

    public int update(MemberDTO member) {//ȸ����������
    	int cnt = 0;
    	
    	return cnt;
    	
    }
}
