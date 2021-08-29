package controller_command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.BouJongmokDAO;
import model.BouJongmokDTO;
import model.statDataDAO;
import model.statDataDTO;

public class StockPlusCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null; //어디로 이동할 건지 저장하는 변수 선언
		
		HttpSession session = request.getSession();
		// 종목명, 체결시각, 보유수, 매입금액
		String email = (String)session.getAttribute("email");
		String jonkmokname = request.getParameter("jongmokName");
		String stocktime = request.getParameter("stocktime");
		int bouju = Integer.parseInt(request.getParameter("bou"));
		int price = Integer.parseInt(request.getParameter("price"));
		
		//DAO,DTO생성
		BouJongmokDAO dao = new BouJongmokDAO();
		int cnt =  dao.stockPlus(email, jonkmokname, stocktime, bouju, price);
		
		if(cnt > 0) {
			System.out.println("검색 성공");
			moveURL= "Main2.jsp";
		}else {
			System.out.println("검색 성공");
			moveURL= "Stockplus.jsp";
		}
		
		return moveURL;
	} // 보유종목 추가

}
