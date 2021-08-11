package controller_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.customDAO;
import model.customDTO;

public class customCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null; //어디로 이동할 건지 저장하는 변수 선언
		
		//아이디,변경 변수명, 변경 내용을 변수에 저장
		String id = request.getParameter("id");
		String changeVar = request.getParameter("changeVar");
		String changeContent = request.getParameter("changeContent");
		
		customDAO dao = new customDAO();
		customDTO custom = new customDTO(id,changeVar,changeContent);
		int cnt = dao.update(custom);
		
		if(cnt>0) {
			
			//request영역에 id정보를 저장
			request.setAttribute("id", id);
			
			moveURL = "custom.jsp";//임시 경로
			
		}else {
			moveURL = "custom.jsp";//임시 경로
		}
		
		
		return moveURL;
	}
	
	

}
