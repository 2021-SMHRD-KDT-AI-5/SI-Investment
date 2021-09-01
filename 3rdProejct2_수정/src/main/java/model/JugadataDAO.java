package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class JugadataDAO {//���� ���� �ǽð� BEST,����� �ֱ� ��������
	
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	public void connection() {//�����ͺ��̽�����
		
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
	
	public ArrayList<JugadataDTO> select(){//���� ���� �ǽð� BEST
	
	//ArrayList����
    ArrayList<JugadataDTO> list = new ArrayList<JugadataDTO>();
	
    JugadataDTO juga = null;
	
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
			String getStockTime = rs.getString(2);
			int getPersonalVolume = rs.getInt(8);
			int getForeignerVolume = rs.getInt(9);
			int getAgencyVolume = rs.getInt(10);

		    juga = new JugadataDTO(getStockTime, getPersonalVolume, getForeignerVolume, getAgencyVolume);
			//list�ȿ� ������ ��������ǽð�BEST ������ ����ִ� juga �߰�
			list.add(juga);
			
		}
	
	}  catch( SQLException e) {
	
		System.out.println("sql�� ������.");
		e.printStackTrace();
	} finally {
	    close();
	}//end
	
	return list;
	}
	
	public JugadataDTO find(String jongmokcode){//���� ���� �ǽð� BEST
		
		//ArrayList����
	    JugadataDTO juga = null;
		
		try {
			//DB���� ����
		    connection();
			//���� ����
			String sql = "select * from jugadata WHERE jongmokCode=?";//�ӽ� SQL��
			
			//�ڹ� �� DB�� sql���� ��������ִ� ����
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, jongmokcode);
			
	        
			//�ڡڡڡڡ�
			//insert,update,delete: executeUpdate() --> DB�� ������ ������ ��
			//select: executeQuery() --> DB�� ������ �˻��� ��
			rs = psmt.executeQuery();
			System.out.println(sql);
			//������ Ȯ���ؾ� �ϱ� ������ while
			while(rs.next()) {
				//�÷��ε����� 1���� ����
				int getclosePrice = rs.getInt(4);
			
				
			    juga = new JugadataDTO(getclosePrice);
				//list�ȿ� ������ ��������ǽð�BEST ������ ����ִ� juga �߰�
				
			}
		
		}  catch( SQLException e) {
		
			System.out.println("sql�� ������.");
			e.printStackTrace();
		} finally {
		    close();
		}//end
		
		return juga;
		}
	
public JugadataDTO price(String jongmokname){//���� ���� �ǽð� BEST
		
		//ArrayList����
	    JugadataDTO juga = null;
		
		try {
			//DB���� ����
		    connection();
			//���� ����
			String sql = "select * from jugadata WHERE jongmokName=?";//�ӽ� SQL��
			
			//�ڹ� �� DB�� sql���� ��������ִ� ����
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, jongmokname);
			
	        
			//�ڡڡڡڡ�
			//insert,update,delete: executeUpdate() --> DB�� ������ ������ ��
			//select: executeQuery() --> DB�� ������ �˻��� ��
			rs = psmt.executeQuery();
			System.out.println(sql);
			//������ Ȯ���ؾ� �ϱ� ������ while
			while(rs.next()) {
				//�÷��ε����� 1���� ����
				int getclosePrice = rs.getInt(4);
			
				
			    juga = new JugadataDTO(getclosePrice);
				//list�ȿ� ������ ��������ǽð�BEST ������ ����ִ� juga �߰�
				
			}
		
		}  catch( SQLException e) {
		
			System.out.println("sql�� ������.");
			e.printStackTrace();
		} finally {
		    close();
		}//end
		
		return juga;
		}

    public ArrayList<JugadataDTO> predictJongMok_select(){//����� �ֱ� ���� ���� 
    
    	//ArrayList����
        ArrayList<JugadataDTO> list = new ArrayList<JugadataDTO>();
        
        JugadataDTO predictJongMok = null;
    	
    	try {
    		//DB���� ����
    	    connection();
    		//���� ����
    		String sql = "select * from UserPredict";//�ӽ÷� ���� sql��
    		
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
    			String getKos = rs.getString(2);
    			String getJongMokName= rs.getString(3);
    			
    			
    			predictJongMok = new JugadataDTO(getJongmokCode,getKos,getJongMokName);
    			//list�ȿ� ������ ����� �ֱ� ���� ������ ����ִ� juga �߰�
    			list.add(predictJongMok);
    			
    		}
    	
    	}  catch( SQLException e) {
    	
    		System.out.println("sql�� ������.");
    		e.printStackTrace();
    	} finally {
    	    close();
    	}//end
    	
    	
    	return list;
    	
    }

}
