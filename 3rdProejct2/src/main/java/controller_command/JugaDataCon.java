package controller_command;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.JugaDataDAO;
import model.JugaDataDTO;

public class JugaDataCon implements Command{//�ְ������� ��Ʈ�ѷ�

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		
		//�����ڵ� ������ ����
		int jongmokCode = Integer.parseInt(request.getParameter("jongmokCode"));
		
		
		JugaDataDAO dao = new JugaDataDAO();
		ArrayList<JugaDataDTO> juga = dao.select();//�ְ������� ����
		
		if(juga !=null) {//DB�� �ְ������Ͱ� �ִٸ�
	
			
			//���ø����̼� �����ϱ�
			ServletContext application = request.getServletContext();
			application.setAttribute("juga", juga);
			
			System.out.println("�α��� ����");
			moveURL="jugaPrediction.jsp";//�ӽ÷� �� ���
		}else {
			System.out.println("�α��� ����");
			moveURL="jugaPrediction.jsp";//�ӽ÷� �� ���
			
		}
		
		return moveURL;
	}
	

}
