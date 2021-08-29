package controller_command;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.JugadataDAO;
import model.JugadataDTO;


public class JugadataCon implements Command{//�������� �ǽð�BEST ��Ʈ�ѷ�

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		
		//����� ������ ����
		String jongMokName = request.getParameter("jongmokName");
		
		
		JugadataDAO dao = new JugadataDAO();
		ArrayList<JugadataDTO> juga = dao.select();//�ְ������� ����
		
		if(juga !=null) {//DB�� �ְ������Ͱ� �ִٸ�
	
			
			//���ø����̼� �����ϱ�
			ServletContext application = request.getServletContext();
			application.setAttribute("juga", juga);
			
			System.out.println("�������� �ǽð� BEST ����");
			moveURL="StockBest.jsp";
		}else {
			System.out.println("�������� �ǽð� BEST");
			moveURL="StockBest.jsp";
			
		}
		
		return moveURL;
	}
	

}