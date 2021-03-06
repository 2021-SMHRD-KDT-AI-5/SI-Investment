package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MemberDAO {//회원
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	


	public void connection() {//데이터베이스 연결

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String user = "cgi_7_2";
			String pass = "smhrd2";
			conn = DriverManager.getConnection(url, user, pass);
			if (conn != null) {
				System.out.println("conn success");
			} else {
				System.out.println("conn fail");
			}
		} catch (ClassNotFoundException e) {
			System.out.println("jar확인 driver경로확인");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB연결 실패");
			e.printStackTrace();
		}


	}
	
	public void close() {//종료
		try {

			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();

		}
		
	}
	
	public MemberDTO login(String email , String pw) {//로그인
		
		MemberDTO member = null;
		// 로그인 캐치문
		try {
			connection();
			String sql1 = "select * from member_table where email = ? and pw = ?";
			psmt = conn.prepareStatement(sql1);//테이블 이름 확인
			psmt.setString(1, email);
			psmt.setString(2, pw);
			rs = psmt.executeQuery();
			System.out.println(sql1);

			if (rs.next()) {
				
				String getName = rs.getString(1);
				String getEmail = rs.getString(2);
				String getPw = rs.getString(3);
				String getTel = rs.getString(4);
				
				member = new MemberDTO(getName, getEmail, getPw, getTel);
				System.out.println("/rs.if문도달");
			}
		} catch (SQLException e) {
			System.out.println("커넥오류");
			e.printStackTrace();
		} finally {
			close();
		} // 로그인캐치문end
		return member;
	}// 로그인메소드ed

	public int join(MemberDTO member) {
		int cnt = 0;

		// 조인캐치문
		try {
			connection();
			System.out.println("커넥성공");
			String sql1 = "insert into member_table values (?,?,?,?)";
			psmt = conn.prepareStatement(sql1);
			psmt.setString(1, member.getName());
			psmt.setString(2, member.getEmail());
			psmt.setString(3, member.getPw());
			psmt.setString(4, member.getTel());
			
			cnt = psmt.executeUpdate();
			System.out.println("조인성공여부 : "+cnt);
		} catch (SQLException e) {
			// 커넥오류else
			System.out.println("커넥오류");
			e.printStackTrace();

		} finally {
			close();
		} // 조인캐치문ed
		return cnt;
	}// 조인메소드ed


    public int update(MemberDTO member2) {//회원정보수정
    	
       int cnt = 0;
       
		try {
			//DB연결
			connection();
			String sql = "update member_table set  pw=?, tel=? where email=?";
			
			//자바 와 DB에 sql문을 실행시켜주는 역할
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member2.getPw());
            psmt.setString(2, member2.getTel());
            psmt.setString(3, member2.getEmail());
            
			cnt = psmt.executeUpdate();
			
			
		} catch( SQLException e) {
		
			System.out.println("sql문 오류다.");
			e.printStackTrace();
		} finally {
			//무조건 실행하는 구문
			//데이터베이스 종료기능 구현
			
			close();
				
	
		}
	
	
		return cnt;
		
    	
    }
    
    public int delete(String email) {//회원탈퇴
    	int cnt=0;
    	
    	return cnt;
    }
}
