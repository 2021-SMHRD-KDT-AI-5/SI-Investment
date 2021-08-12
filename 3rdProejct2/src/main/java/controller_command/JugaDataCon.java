package controller_command;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.JugaDataDAO;
import model.JugaDataDTO;

public class JugaDataCon implements Command{//주가데이터 컨트롤러

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		
		//종목코드 변수에 저장
		int jongmokCode = Integer.parseInt(request.getParameter("jongmokCode"));
		
		
		JugaDataDAO dao = new JugaDataDAO();
		ArrayList<JugaDataDTO> juga = dao.select();//주가데이터 띄우기
		
		if(juga !=null) {//DB에 주가데이터가 있다면
	
			
			//어플리케이션 저장하기
			ServletContext application = request.getServletContext();
			application.setAttribute("juga", juga);
			
			System.out.println("로그인 성공");
			moveURL="jugaPrediction.jsp";//임시로 쓴 경로
		}else {
			System.out.println("로그인 실패");
			moveURL="jugaPrediction.jsp";//임시로 쓴 경로
			
		}
		
		return moveURL;
	}
	

}
