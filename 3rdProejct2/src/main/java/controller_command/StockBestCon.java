package controller_command;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.StockBestDAO;
import model.StockBestDTO;

public class StockBestCon implements Command{//국내종목 실시간BEST 컨트롤러

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		
		//종목명 변수에 저장
		String jongMokName = request.getParameter("jongmokCode");
		
		
		StockBestDAO dao = new StockBestDAO();
		ArrayList<StockBestDTO> juga = dao.select();//주가데이터 띄우기
		
		if(juga !=null) {//DB에 주가데이터가 있다면
	
			
			//어플리케이션 저장하기
			ServletContext application = request.getServletContext();
			application.setAttribute("juga", juga);
			
			System.out.println("국내종목 실시간 BEST 성공");
			moveURL="jugaPrediction.jsp";//임시로 쓴 경로
		}else {
			System.out.println("국내종목 실시간 BEST");
			moveURL="jugaPrediction.jsp";//임시로 쓴 경로
			
		}
		
		return moveURL;
	}
	

}
