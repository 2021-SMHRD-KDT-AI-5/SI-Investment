package model;

public class MemberDAO {//회원
	
	public void connection() {//데이터베이스 연결
		
	}
	
	public void close() {//종료
		
	}
	
	public MemberDTO login(String email , String pw) {//로그인
		
		MemberDTO member = null;
		return member;
		
	}

	public int join(MemberDTO member) {//회원가입
		int cnt = 0;
		return cnt;
		
		
	}


    public int update(MemberDTO member) {//회원정보수정
    	int cnt = 0;
    	
    	return cnt;
    	
    }
    
    public int delete(String email) {//회원탈퇴
    	int cnt=0;
    	
    	return cnt;
    }
}
