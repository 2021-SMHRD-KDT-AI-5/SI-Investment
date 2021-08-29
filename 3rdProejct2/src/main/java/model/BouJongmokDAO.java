package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BouJongmokDAO {//ȸ���� ���� ����DAO
	
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	public void connection() {//�����ͺ��̽� ����
		
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
			System.out.println("jarȮ�� driver���Ȯ��");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB���� ����");
			e.printStackTrace();
		}
		
		
	}
	
	public void close() {//����
		
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
	
	public ArrayList<BouJongmokDTO> select(String email){//ȸ������������޼ҵ�
		
		//ArrayList����
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
			System.out.println("Ŀ�ؿ���");
			e.printStackTrace();
		} finally {
			close();
		} // ����Ʈĳġ��end
		
		return list;
		}//����˻�end
	
	public int stockPlus(String email, String jonkmokname, String stocktime, int bou, int price){// �������� �Է�
		
		//ArrayList����
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
			System.out.println("Ŀ�ؿ���");
			e.printStackTrace();
		} finally {
			close();
		} // ����Ʈĳġ��end
		
		return cnt;
		}//����˻�end

}
