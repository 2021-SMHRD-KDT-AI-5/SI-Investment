package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class snsDataDAO {//sns������
	
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
	
	public ArrayList<snsDataDTO> select(){//sns�����Ͱ˻�
		
		//ArrayLIst����
		ArrayList<snsDataDTO>list = new ArrayList<snsDataDTO>();
		
		snsDataDTO snsData = null;
		 try {
				connection();
				 
				
				String sql = "select * from snsdata";
				System.out.println(sql);
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				
				
					while(rs.next()) {
						String getJongmokCode = rs.getString(1);
						String getEmotion = rs.getString(2);
						String getPlatform = rs.getString(3);
						String getContent = rs.getString(4);

						snsData = new snsDataDTO(getJongmokCode,getEmotion,getPlatform,getContent);
						list.add(snsData);
					
					}
					
				
				
			} catch (SQLException e) {
				System.out.println("Ŀ�ؿ���");
				e.printStackTrace();
			} finally {
				close();
			} // ����Ʈĳġ��end
			
			return list;
			}//����˻�end

}
