package controller_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.customDAO;
import model.customDTO;

public class customCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null; //���� �̵��� ���� �����ϴ� ���� ����
		
		//���̵�,���� ������, ���� ������ ������ ����
		String id = request.getParameter("id");
		String changeVar = request.getParameter("changeVar");
		String changeContent = request.getParameter("changeContent");
		
		customDAO dao = new customDAO();
		customDTO custom = new customDTO(id,changeVar,changeContent);
		int cnt = dao.update(custom);
		
		if(cnt>0) {
			
			//request������ id������ ����
			request.setAttribute("id", id);
			
			moveURL = "custom.jsp";//�ӽ� ���
			
		}else {
			moveURL = "custom.jsp";//�ӽ� ���
		}
		
		
		return moveURL;
	}
	
	

}
