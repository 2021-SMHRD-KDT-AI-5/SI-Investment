package controller_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

public class UpdateCon implements Command{//회원정보수정 컨트롤러

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
        String moveURL = null; //어디로 이동할 건지 저장하는 변수 선언
		
		//이름,아이디, 비밀번호, 전화번호
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		
		MemberDAO dao = new MemberDAO(); //DAO생성 
		MemberDTO member = new MemberDTO(name,email,pw,tel);
		int cnt = dao.update(member);
		
		if(cnt>0) {
			System.out.println("회원정보수정 성공");
			moveURL = "Main.jsp";
		}else {
			System.out.println("회원정보수정 실패");
			moveURL = "Update.jsp";
		}
		return moveURL;
	}
	
	

}
