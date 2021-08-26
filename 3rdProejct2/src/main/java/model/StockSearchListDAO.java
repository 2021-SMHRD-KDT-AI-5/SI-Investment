package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class StockSearchListDAO {//
	
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
	
	public ArrayList<StockSearchListDTO> select(String searchtext){//종목전체검색
	
	//ArrayList생성
    ArrayList<StockSearchListDTO> list = new ArrayList<StockSearchListDTO>();
	
    StockSearchListDTO jongmok = null;
    try {
		connection();
		 
		
		String sql = "select * from jongmok_list_table where jongmokName like '%"+searchtext+"%'";
		System.out.println(sql);
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		
			while(rs.next()) {
				String getJongmokCode = rs.getString(1);
				String getJongmokName = rs.getString(2);

				jongmok = new StockSearchListDTO(getJongmokCode,getJongmokName);
				list.add(jongmok);
			
			}
			
		
		
	} catch (SQLException e) {
		System.out.println("커넥오류");
		e.printStackTrace();
	} finally {
		close();
	} // 셀렉트캐치문end
	
	return list;
	}//셀렉트end


}
