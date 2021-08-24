package controller_command;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.StockTermsDAO;
import model.StockTermsDTO;

public class StockTermsCon implements Command{//�ֽĿ�� ���� ��Ʈ�ѷ�

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String moveURL = null;
		
		//��� ������ ���� 
		String term = request.getParameter("term");
		
		StockTermsDAO dao = new StockTermsDAO();
		ArrayList<StockTermsDTO> termdic = dao.select();
		
		if(termdic != null) {//DB�� �ֽĿ������� �ִٸ�
			
			//���ø����̼� �����ϱ� 
			ServletContext application = request.getServletContext();
			application.setAttribute("termdic", termdic);
			
			moveURL="StockTerms.jsp";
		}else {
			moveURL="StockTerms.jsp";
		}
		
		return moveURL;
	}
	
	

}
