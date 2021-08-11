package controller_command;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.TermDicDAO;
import model.TermDicDTO;

public class TermDicCon implements Command{//주식용어 사전 컨트롤러

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String moveURL = null;
		
		//용어 변수에 저장 
		String term = request.getParameter("term");
		
		TermDicDAO dao = new TermDicDAO();
		ArrayList<TermDicDTO> termdic = dao.select();
		
		if(termdic != null) {//DB에 주식용어사전이 있다면
			
			//어플리케이션 저장하기 
			ServletContext application = request.getServletContext();
			application.setAttribute("termdic", termdic);
			
			moveURL="TermDictionary.jsp";
		}else {
			moveURL="TermDictionary.jsp";
		}
		
		return null;
	}
	
	

}
