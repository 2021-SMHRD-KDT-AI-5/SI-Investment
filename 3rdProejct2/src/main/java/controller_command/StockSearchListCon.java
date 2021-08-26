package controller_command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.StockSearchListDAO;
import model.StockSearchListDTO;

public class StockSearchListCon implements Command{//

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;//어디로 이동할 건지 저장하는 변수 선언
		
		
		String searchtext = request.getParameter("searchtext");
		System.out.println("searchtext : "+searchtext);
		
		StockSearchListDAO dao = new StockSearchListDAO(); //DAO생성
		ArrayList<StockSearchListDTO> selectList = dao.select(searchtext);//검색메소드 불러오기 
		
		
		if(selectList != null) {
			//세션에 저장하기!
			for (int i = 0; i < selectList.size(); i++) {
				System.out.println("listNO : "+i+1);
			}
			HttpSession session = request.getSession();
			session.setAttribute("selectList", selectList);
			session.setAttribute("searchtext", searchtext);
			
			System.out.println("검색 성공");
			
			moveURL= "Search.jsp";
			
			
		}else {
			System.out.println("검색 전송실패");
			moveURL = "Main_2.jsp";
		}
		
		return moveURL;
	}
	
	

}
