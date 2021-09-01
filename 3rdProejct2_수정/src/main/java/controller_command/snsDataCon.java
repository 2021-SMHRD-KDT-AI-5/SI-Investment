package controller_command;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.snsDataDAO;
import model.snsDataDTO;

public class snsDataCon implements Command{//sns데이터 콘트롤러

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null; //어리로 이동할 건지 저장하는 변수 선언
		
		//종목코드 변수에 저장 
		String jongmokCode = request.getParameter("jongmokCode");
		
		snsDataDAO dao = new snsDataDAO();//DAO생성
		ArrayList<snsDataDTO> snslist = dao.select();//select메소드 불러오기
		
		if(snslist != null) {//sns정보가 DB에 있다면 
			
			//어플리케이션 저장하기
			ServletContext application = request.getServletContext();
			application.setAttribute("snslist", snslist);
			
			System.err.println("sns데이터 성공");
			moveURL = "Sns.jsp";//임시로 쓴 경로
			
		}else {
			System.out.println("sns데이터 실패");
			moveURL = "Sns.jsp";//임시로 쓴 경로
		}
		
		return moveURL;
	}

	
}
