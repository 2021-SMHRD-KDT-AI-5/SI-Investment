package controller_command;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.snsDataDAO;
import model.snsDataDTO;

public class snsDataCon implements Command{//sns������ ��Ʈ�ѷ�

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null; //��� �̵��� ���� �����ϴ� ���� ����
		
		//�����ڵ� ������ ���� 
		String jongmokCode = request.getParameter("jongmokCode");
		
		snsDataDAO dao = new snsDataDAO();//DAO����
		ArrayList<snsDataDTO> snslist = dao.select();//select�޼ҵ� �ҷ�����
		
		if(snslist != null) {//sns������ DB�� �ִٸ� 
			
			//���ø����̼� �����ϱ�
			ServletContext application = request.getServletContext();
			application.setAttribute("snslist", snslist);
			
			System.err.println("sns������ ����");
			moveURL = "Sns.jsp";//�ӽ÷� �� ���
			
		}else {
			System.out.println("sns������ ����");
			moveURL = "Sns.jsp";//�ӽ÷� �� ���
		}
		
		return moveURL;
	}

	
}
