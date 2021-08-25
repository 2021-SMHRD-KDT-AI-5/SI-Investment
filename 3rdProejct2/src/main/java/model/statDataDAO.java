package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class statDataDAO {//종목별 통계 데이터 DAO
	
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
	
	

public ArrayList<statDataDTO> select(){//투자별 거래량
		
		//ArrayList생성
		ArrayList<statDataDTO> list = new ArrayList<statDataDTO>();
		
		statDataDTO volume = null;
		
		try {
			//DB연결 가능
		    connection();
			//쿼리 실행
			String sql = "select * from volume_table ";//임시 SQL문
			
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
				String getDate = rs.getString(1);
				String getPersonalVolume = rs.getString(2);
				String getforeignerVolum = rs.getString(3);
				String getAgencyVolum = rs.getString(4);
				
				
				volume = new statDataDTO(getDate,getPersonalVolume,getforeignerVolum,getAgencyVolum);
				//list안에 각각의 국내종목실시간BEST 정보가 담겨있는 juga 추가
				list.add(volume);
				
			}
		
		}  catch( SQLException e) {
		
			System.out.println("sql문 오류다.");
			e.printStackTrace();
		} finally {
		    close();
		}//end
		
		
		return list;
		
	}

public ArrayList<statDataDTO> soaringRate_select(){//예측급등률
	
	//ArrayList생성
	ArrayList<statDataDTO> list = new ArrayList<statDataDTO>();
	
	statDataDTO soaring = null;
	
	try {
		//DB연결 가능
	    connection();
		//쿼리 실행
		String sql = "select * soaring_table order by soaringRate desc limit 4";
		// 내림차순으로 정렬후 0번째부터4번째까지 출력 sql문
		
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
			int getJongmokCode = rs.getInt(1);
			String getJongmokName = rs.getString(2);
			int getSoaringRate = rs.getInt(3);
			
			
		    soaring = new statDataDTO(getJongmokCode,getJongmokName,getSoaringRate);
			//list안에 각각의  예측 급등률 정보가 담겨있는 soaring 추가
			list.add(soaring);
			
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
