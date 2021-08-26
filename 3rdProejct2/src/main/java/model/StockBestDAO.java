package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class StockBestDAO {//국내 종목 실시간 BEST,사용자 최근 예측종목
	
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	public void connection() {//데이터베이스연결
		
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
	
	public ArrayList<StockBestDTO> select(){//국내 종목 실시간 BEST
	
	//ArrayList생성
    ArrayList<StockBestDTO> list = new ArrayList<StockBestDTO>();
	
	StockBestDTO juga = null;
	
	try {
		//DB연결 가능
	    connection();
		//쿼리 실행
		String sql = "select * from StockBest_table ";//임시 SQL문
		
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
			String getJongMokName = rs.getString(1);
			String getNowPrice = rs.getString(2);
			String getUpDown = rs.getString(3);
			String getUpDownRate = rs.getString(4);
			
			
		    juga = new StockBestDTO(getJongMokName,getNowPrice,getUpDown,getUpDownRate);
			//list안에 각각의 국내종목실시간BEST 정보가 담겨있는 juga 추가
			list.add(juga);
			
		}
	
	}  catch( SQLException e) {
	
		System.out.println("sql문 오류다.");
		e.printStackTrace();
	} finally {
	    close();
	}//end
	
	return list;
	}

    public ArrayList<StockBestDTO> predictJongMok_select(){//사용자 최근 예측 종목 
    
    	//ArrayList생성
        ArrayList<StockBestDTO> list = new ArrayList<StockBestDTO>();
        
        StockBestDTO predictJongMok = null;
    	
    	try {
    		//DB연결 가능
    	    connection();
    		//쿼리 실행
    		String sql = "select * from UserPredict";//임시로 만든 sql문
    		
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
    			String getKos = rs.getString(2);
    			String getJongMokName= rs.getString(3);
    			
    			
    			predictJongMok = new StockBestDTO(getJongmokCode,getKos,getJongMokName);
    			//list안에 각각의 사용자 최근 예측 정보가 담겨있는 juga 추가
    			list.add(predictJongMok);
    			
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
