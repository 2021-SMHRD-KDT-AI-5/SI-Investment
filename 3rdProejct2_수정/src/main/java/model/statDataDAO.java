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
	
	
public ArrayList<statDataDTO> predictJongMok_select(){//투자별 거래량
		
		//ArrayList생성
		ArrayList<statDataDTO> list = new ArrayList<statDataDTO>();
		
		statDataDTO volume = null;
		
		try {
			//DB연결 가능
		    connection();
			//쿼리 실행
			String sql = "select * from statdata WHERE predict=1";//임시 SQL문
			
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
				String getjongmokCode = rs.getString(1);
				String getjongmokName = rs.getString(2);
				
				volume = new statDataDTO(getjongmokCode,getjongmokName);
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
	

public ArrayList<statDataDTO> select(){//투자별 거래량
		
		//ArrayList생성
		ArrayList<statDataDTO> list = new ArrayList<statDataDTO>();
		
		statDataDTO volume = null;
		
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
				String getStockTime = rs.getString(1);
				int getPersonalVolume = rs.getInt(2);
				int getforeignerVolum = rs.getInt(3);
				int getAgencyVolum = rs.getInt(4);
				
				
				volume = new statDataDTO(getStockTime,getPersonalVolume,getforeignerVolum,getAgencyVolum);
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
			String getJongmokCode = rs.getString(1);
			String getJongmokName = rs.getString(2);
			double getSoaringRate = rs.getDouble(3);
			
			
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

public ArrayList<statDataDTO> select(String searchtext){//종목검색
	
	//ArrayList생성
    ArrayList<statDataDTO> list = new ArrayList<statDataDTO>();
	
    statDataDTO jongmok = null;
    try {
		connection();
		 
		
		String sql = "select * from statdata where jongmokName like '%"+searchtext+"%'";
		System.out.println(sql);
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		
			while(rs.next()) {
				String getJongmokCode = rs.getString(1);
				String getJongmokName = rs.getString(2);

				jongmok = new statDataDTO(getJongmokCode,getJongmokName);
				list.add(jongmok);
			
			}
			
		
		
	} catch (SQLException e) {
		System.out.println("커넥오류");
		e.printStackTrace();
	} finally {
		close();
	} // 셀렉트캐치문end
	
	return list;
	}//종목검색end

public ArrayList<statDataDTO> selectAll(){//종목전체검색
	
	//ArrayList생성
    ArrayList<statDataDTO> list = new ArrayList<statDataDTO>();
	
    statDataDTO jongmok = null;
    try {
		connection();
		 
		
		String sql = "select * from statdata";
		System.out.println(sql);
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		
			while(rs.next()) {
				String getJongmokCode = rs.getString(1);
				String getJongmokName = rs.getString(2);

				jongmok = new statDataDTO(getJongmokCode,getJongmokName);
				list.add(jongmok);
			
			}
			
		
		
	} catch (SQLException e) {
		System.out.println("커넥오류");
		e.printStackTrace();
	} finally {
		close();
	} // 셀렉트캐치문end
	
	return list;
	}//전체검색end



}



