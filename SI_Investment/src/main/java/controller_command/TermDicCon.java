package controller_command;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.TermDicDAO;
import model.TermDicDTO;

public class TermDicCon implements Command{//�ֽĿ�� ���� ��Ʈ�ѷ�

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String moveURL = null;
		
		//��� ������ ���� 
		String term = request.getParameter("term");
		
		TermDicDAO dao = new TermDicDAO();
		ArrayList<TermDicDTO> termdic = dao.select();
		
		if(termdic != null) {//DB�� �ֽĿ������� �ִٸ�
			
			//���ø����̼� �����ϱ� 
			ServletContext application = request.getServletContext();
			application.setAttribute("termdic", termdic);
			
			moveURL="TermDictionary.jsp";
		}else {
			moveURL="TermDictionary.jsp";
		}
		
		return null;
	}
	
	

}
