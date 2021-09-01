package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class statDataDAO {//���� ��� ������ DAO
	
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
	
	
public ArrayList<statDataDTO> predictJongMok_select(){//���ں� �ŷ���
		
		//ArrayList����
		ArrayList<statDataDTO> list = new ArrayList<statDataDTO>();
		
		statDataDTO volume = null;
		
		try {
			//DB���� ����
		    connection();
			//���� ����
			String sql = "select * from statdata WHERE predict=1";//�ӽ� SQL��
			
			//�ڹ� �� DB�� sql���� ��������ִ� ����
			psmt = conn.prepareStatement(sql);
			
	        
			//�ڡڡڡڡ�
			//insert,update,delete: executeUpdate() --> DB�� ������ ������ ��
			//select: executeQuery() --> DB�� ������ �˻��� ��
			rs = psmt.executeQuery();
			System.out.println(sql);
			//������ Ȯ���ؾ� �ϱ� ������ while
			while(rs.next()) {
				//�÷��ε����� 1���� ����
				String getjongmokCode = rs.getString(1);
				String getjongmokName = rs.getString(2);
				
				volume = new statDataDTO(getjongmokCode,getjongmokName);
				//list�ȿ� ������ ��������ǽð�BEST ������ ����ִ� juga �߰�
				list.add(volume);
				
			}
		
		}  catch( SQLException e) {
		
			System.out.println("sql�� ������.");
			e.printStackTrace();
		} finally {
		    close();
		}//end
		
		
		return list;
		
	}
	

public ArrayList<statDataDTO> select(){//���ں� �ŷ���
		
		//ArrayList����
		ArrayList<statDataDTO> list = new ArrayList<statDataDTO>();
		
		statDataDTO volume = null;
		
		try {
			//DB���� ����
		    connection();
			//���� ����
			String sql = "select * from jugadata ";//�ӽ� SQL��
			
			//�ڹ� �� DB�� sql���� ��������ִ� ����
			psmt = conn.prepareStatement(sql);
			
	        
			//�ڡڡڡڡ�
			//insert,update,delete: executeUpdate() --> DB�� ������ ������ ��
			//select: executeQuery() --> DB�� ������ �˻��� ��
			rs = psmt.executeQuery();
			System.out.println(sql);
			//������ Ȯ���ؾ� �ϱ� ������ while
			while(rs.next()) {
				//�÷��ε����� 1���� ����
				String getStockTime = rs.getString(1);
				int getPersonalVolume = rs.getInt(2);
				int getforeignerVolum = rs.getInt(3);
				int getAgencyVolum = rs.getInt(4);
				
				
				volume = new statDataDTO(getStockTime,getPersonalVolume,getforeignerVolum,getAgencyVolum);
				//list�ȿ� ������ ��������ǽð�BEST ������ ����ִ� juga �߰�
				list.add(volume);
				
			}
		
		}  catch( SQLException e) {
		
			System.out.println("sql�� ������.");
			e.printStackTrace();
		} finally {
		    close();
		}//end
		
		
		return list;
		
	}

public ArrayList<statDataDTO> soaringRate_select(){//�����޵��
	
	//ArrayList����
	ArrayList<statDataDTO> list = new ArrayList<statDataDTO>();
	
	statDataDTO soaring = null;
	
	try {
		//DB���� ����
	    connection();
		//���� ����
		String sql = "select * soaring_table order by soaringRate desc limit 4";
		// ������������ ������ 0��°����4��°���� ��� sql��
		
		//�ڹ� �� DB�� sql���� ��������ִ� ����
		psmt = conn.prepareStatement(sql);
		
        
		//�ڡڡڡڡ�
		//insert,update,delete: executeUpdate() --> DB�� ������ ������ ��
		//select: executeQuery() --> DB�� ������ �˻��� ��
		rs = psmt.executeQuery();
		System.out.println(sql);
		//������ Ȯ���ؾ� �ϱ� ������ while
		while(rs.next()) {
			//�÷��ε����� 1���� ����
			String getJongmokCode = rs.getString(1);
			String getJongmokName = rs.getString(2);
			double getSoaringRate = rs.getDouble(3);
			
			
		    soaring = new statDataDTO(getJongmokCode,getJongmokName,getSoaringRate);
			//list�ȿ� ������  ���� �޵�� ������ ����ִ� soaring �߰�
			list.add(soaring);
			
		}
	
	}  catch( SQLException e) {
	
		System.out.println("sql�� ������.");
		e.printStackTrace();
	} finally {
	    close();
	}//end
	
	
	return list;
	
}

public ArrayList<statDataDTO> select(String searchtext){//����˻�
	
	//ArrayList����
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
		System.out.println("Ŀ�ؿ���");
		e.printStackTrace();
	} finally {
		close();
	} // ����Ʈĳġ��end
	
	return list;
	}//����˻�end

public ArrayList<statDataDTO> selectAll(){//������ü�˻�
	
	//ArrayList����
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
		System.out.println("Ŀ�ؿ���");
		e.printStackTrace();
	} finally {
		close();
	} // ����Ʈĳġ��end
	
	return list;
	}//��ü�˻�end



}



