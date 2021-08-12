package controller_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

public class loginCon implements Command{//로그인 콘트롤러

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;//어디로 이동할 건지 저장하는 변수 선언
		
		//아이디, 비밀번호를 변수에 저장
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO(); //DAO생성
		MemberDTO member = dao.login(email, pw);//로그인메소드 불러오기 
		
		//member객체에 값 판단
		if(member != null) {//member정보가 DB에 있다면
			//세션에 저장하기!
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			
			System.out.println("로그인 성공");
			
			moveURL= "Main.jsp";
			
			
		}else {
			System.out.println("로그인 전송실패");
			moveURL = "Main.jsp";
		}
		
		return moveURL;
	}
	
	

}
