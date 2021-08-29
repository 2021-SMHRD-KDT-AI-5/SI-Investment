package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BouJongmokDAO {//회원별 보유 종목DAO
	
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
	
	public ArrayList<BouJongmokDTO> select(String email){//회원별보유종목메소드
		
		//ArrayList생성
		ArrayList<BouJongmokDTO> list = new ArrayList<BouJongmokDTO>();
		
		BouJongmokDTO boujongmok = null;
	    try {
			connection();
			 
			
			String sql = "select * from boujongmok where email = ?";
			System.out.println(sql);
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			rs = psmt.executeQuery();
			
			
				while(rs.next()) {
					String id = rs.getString(1);
					String jongmokCode = rs.getString(2);
					String bouJu = rs.getString(3);
					int stockC_Price = Integer.parseInt(rs.getString(4));
					int purchasePrice = Integer.parseInt(rs.getString(5));
					String stockC_Date = rs.getString(6);
					double profitLossRate = Double.parseDouble(rs.getString(7));
					boujongmok = new BouJongmokDTO(id, jongmokCode, bouJu, stockC_Price, purchasePrice,
							 stockC_Date, profitLossRate);
					list.add(boujongmok);
				
				}
				
			
			
		} catch (SQLException e) {
			System.out.println("커넥오류");
			e.printStackTrace();
		} finally {
			close();
		} // 셀렉트캐치문end
		
		return list;
		}//종목검색end
	
	public int stockPlus(String email, String jonkmokname, String stocktime, int bou, int price){// 보유종목 입력
		
		//ArrayList생성
		int cnt = 0;
		
		BouJongmokDTO boujongmok = null;
	    try {
			connection();
			 
			String sql = "INSERT INTO boujongmok VALUES(?,?,?, NULL,?,?)";
			System.out.println(sql);
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, jonkmokname);
			psmt.setInt(3, bou);
			psmt.setInt(4, price);
			psmt.setString(5, stocktime);
			
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			System.out.println("커넥오류");
			e.printStackTrace();
		} finally {
			close();
		} // 셀렉트캐치문end
		
		return cnt;
		}//종목검색end

}
