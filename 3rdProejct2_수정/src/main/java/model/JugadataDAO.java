package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class JugadataDAO {//국내 종목 실시간 BEST,사용자 최근 예측종목
	
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
	
	public ArrayList<JugadataDTO> select(){//국내 종목 실시간 BEST
	
	//ArrayList생성
    ArrayList<JugadataDTO> list = new ArrayList<JugadataDTO>();
	
    JugadataDTO juga = null;
	
	try {
		//DB연결 가능
	    connection();
		//쿼리 실행
		String sql = "select * from jugadata ";//임시 SQL문
		
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
			String getStockTime = rs.getString(2);
			int getPersonalVolume = rs.getInt(8);
			int getForeignerVolume = rs.getInt(9);
			int getAgencyVolume = rs.getInt(10);

		    juga = new JugadataDTO(getStockTime, getPersonalVolume, getForeignerVolume, getAgencyVolume);
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
	
	public JugadataDTO find(String jongmokcode){//국내 종목 실시간 BEST
		
		//ArrayList생성
	    JugadataDTO juga = null;
		
		try {
			//DB연결 가능
		    connection();
			//쿼리 실행
			String sql = "select * from jugadata WHERE jongmokCode=?";//임시 SQL문
			
			//자바 와 DB에 sql문을 실행시켜주는 역할
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, jongmokcode);
			
	        
			//★★★★★
			//insert,update,delete: executeUpdate() --> DB에 내용을 변경할 때
			//select: executeQuery() --> DB에 내용을 검색할 때
			rs = psmt.executeQuery();
			System.out.println(sql);
			//여러번 확인해야 하기 때문에 while
			while(rs.next()) {
				//컬럼인덱스는 1부터 시작
				int getclosePrice = rs.getInt(4);
			
				
			    juga = new JugadataDTO(getclosePrice);
				//list안에 각각의 국내종목실시간BEST 정보가 담겨있는 juga 추가
				
			}
		
		}  catch( SQLException e) {
		
			System.out.println("sql문 오류다.");
			e.printStackTrace();
		} finally {
		    close();
		}//end
		
		return juga;
		}
	
public JugadataDTO price(String jongmokname){//국내 종목 실시간 BEST
		
		//ArrayList생성
	    JugadataDTO juga = null;
		
		try {
			//DB연결 가능
		    connection();
			//쿼리 실행
			String sql = "select * from jugadata WHERE jongmokName=?";//임시 SQL문
			
			//자바 와 DB에 sql문을 실행시켜주는 역할
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, jongmokname);
			
	        
			//★★★★★
			//insert,update,delete: executeUpdate() --> DB에 내용을 변경할 때
			//select: executeQuery() --> DB에 내용을 검색할 때
			rs = psmt.executeQuery();
			System.out.println(sql);
			//여러번 확인해야 하기 때문에 while
			while(rs.next()) {
				//컬럼인덱스는 1부터 시작
				int getclosePrice = rs.getInt(4);
			
				
			    juga = new JugadataDTO(getclosePrice);
				//list안에 각각의 국내종목실시간BEST 정보가 담겨있는 juga 추가
				
			}
		
		}  catch( SQLException e) {
		
			System.out.println("sql문 오류다.");
			e.printStackTrace();
		} finally {
		    close();
		}//end
		
		return juga;
		}

    public ArrayList<JugadataDTO> predictJongMok_select(){//사용자 최근 예측 종목 
    
    	//ArrayList생성
        ArrayList<JugadataDTO> list = new ArrayList<JugadataDTO>();
        
        JugadataDTO predictJongMok = null;
    	
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
    			String getJongmokCode = rs.getString(1);
    			String getKos = rs.getString(2);
    			String getJongMokName= rs.getString(3);
    			
    			
    			predictJongMok = new JugadataDTO(getJongmokCode,getKos,getJongMokName);
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
