package controller_command;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.statDataDAO;
import model.statDataDTO;

public class statDataCon implements Command {//종목별 통계데이터

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null; //어디로 이동할 건지 저장하는 변수 선언
		 
		//종목코드, 종목명 변수에 저장
//		int jongmokCode = Integer.parseInt(request.getParameter("jongmokCode"));
		String jongmokName = request.getParameter("jongmokName");
		
		//DAO,DTO생성
		statDataDAO dao = new statDataDAO();
		ArrayList<statDataDTO> stat =  dao.select();
		
		if(stat != null) {
			//어플리케이션 저장하기
			ServletContext application = request.getServletContext();
			application.setAttribute("stat", stat);
			
			System.out.println("통계 데이터 성공 ");
			moveURL = "Stockinfo.jsp";//임시로 쓴 경로
		}else {
			System.out.println("통계 데이터 실패");
			moveURL = "Stockinfo.jsp";//임시로 쓴 경로
		}
		
		
		return moveURL;
	}

}
