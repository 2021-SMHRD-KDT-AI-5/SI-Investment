package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {//ȸ��
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	public void connection() {//�����ͺ��̽� ����
		
		
	}
	
	public void close() {//����
		
	}
	
	public MemberDTO login(String email , String pw) {//�α���
		
		MemberDTO member = null;
		return member;
		
	}

	public int join(MemberDTO member) {//ȸ������
		int cnt = 0;
		return cnt;
		
		
	}


    public int update(MemberDTO member) {//ȸ����������
int cnt = 0;
	
	
		return cnt;
		
    	
    }
    
    public int delete(String email) {//ȸ��Ż��
    	int cnt=0;
    	
    	return cnt;
    }
}
