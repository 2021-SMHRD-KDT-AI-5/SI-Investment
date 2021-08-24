package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class StockTermsDAO {//주식용어 사전
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	public void connection() {//데이터베이스
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//localhost: Oracle DB가 설치된 PC의 ip주소 설정
			String url="jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";//localhost
			String user = "cgi_7_2";
			String pass="smhrd2";
			//DB연결
			conn = DriverManager.getConnection(url,user,pass);
			
		} catch (ClassNotFoundException e) {
			System.out.println("ojdbc6.jar파일 또는 driver경로 확인!");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB연결실패..");
			e.printStackTrace();
		}

		
	}
	
	public void close() {//종료
	try {
			
			if(rs != null) {rs.close();}
			if(psmt != null) {psmt.close();}
			if(conn != null) {conn.close();}
			
		} catch(SQLException e) { e.printStackTrace(); } 
		
	}

	public ArrayList<StockTermsDTO> select(){//주식용어사전
		
		//ArrayList생성
		ArrayList<StockTermsDTO>list = new ArrayList<StockTermsDTO>();

		StockTermsDTO termDic = null;
		try {
			//DB연결 가능
		    connection();
			//쿼리 실행
			String sql = "select * from StockTerms ";//임시 SQL문
			
			//자바 와 DB에 sql문을 실행시켜주는 역할
			psmt = conn.prepareStatement(sql);
			
            
			//★★★★★
			//insert,update,delete: executeUpdate() --> DB에 내용을 변경할 때
			//select: executeQuery() --> DB에 내용을 검색할 때
			rs = psmt.executeQuery();
			System.out.println(sql);
			//여러번 확인해야 하기 때문에 while
			while(rs.next()) {
				//컬럼인덱스는 1부터 시작
				String getTerm = rs.getString(1);
				String getCommentary = rs.getString(2);
				
				termDic = new StockTermsDTO(getTerm,getCommentary);
				//list안에 각각의 회원들의 정보가 담겨있는 member를 추가
				list.add(termDic);

				//세션에 저장하고 이동하는 건 controller에 하는 것
			//이 메소드를 서블릿에 전달해야됨
				//DAO클래스는 데이터베이스에 접근해서 결과값을 가져오는 것까지가 할 일
		
				
			}
		
		}  catch( SQLException e) {
		
			System.out.println("sql문 오류다.");
			e.printStackTrace();
		} finally {
		    close();
		}//end
		
		return list;
	}
}
