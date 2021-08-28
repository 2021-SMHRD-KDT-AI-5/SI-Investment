package controller_command;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.BouJongmokDAO;
import model.BouJongmokDTO;
import model.MemberDTO;


public class bouJonmokCon implements Command{//국내종목 실시간BEST 컨트롤러

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		
		//종목명 변수에 저장
		//String jongMokName = request.getParameter("jongmokName");
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		String id = member.getEmail();
		
		BouJongmokDAO dao = new BouJongmokDAO();
		ArrayList<BouJongmokDTO> boujongmok = dao.select(id);//주가데이터 띄우기
		
		if(boujongmok !=null) {//DB에 주가데이터가 있다면
	
			
			//어플리케이션 저장하기
			ServletContext application = request.getServletContext();
			application.setAttribute("boujongmok", boujongmok);
			
			System.out.println("보유종목가져오기 성공");
			moveURL="Main_2.jsp";
		}else {
			System.out.println("보유종목가져오기 BEST");
			moveURL="Main_2.jsp";
			
		}
		
		return moveURL;
	}
	

}
