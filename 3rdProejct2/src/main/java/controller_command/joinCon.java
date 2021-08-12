package controller_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

public class joinCon implements Command{//회원가입 컨트롤러

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null; //어디로 이동할 건지 저장하는 변수 선언
		
		//아이디, 비밀번호, 은행명, 계좌번호, 예수금 
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		
		MemberDAO dao = new MemberDAO(); //DAO생성 
		MemberDTO member = new MemberDTO(id,pw,tel);
		int cnt = dao.join(member);
		
		if(cnt>0) {
			System.out.println("회원가입 성공");
			moveURL = "main.jsp";
		}else {
			System.out.println("회원가입 실패");
			moveURL = "main.jsp";
		}
		return moveURL;
	}

}
