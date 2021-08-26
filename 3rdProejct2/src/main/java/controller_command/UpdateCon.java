package controller_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

public class UpdateCon implements Command{//회원정보수정 컨트롤러

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
        String moveURL = null; //어디로 이동할 건지 저장하는 변수 선언
        HttpSession session = request.getSession();
    	MemberDTO member = (MemberDTO)session.getAttribute("member");//기준이 되는 값이 있어야 DB에 넘겨서 수정하는 작업을 할 수 있다.
		//이메일, 비밀번호, 전화번호
	
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		
		MemberDAO dao = new MemberDAO(); //DAO생성 
		MemberDTO member2 = new MemberDTO(member.getName(),email,pw,tel);
		int cnt = dao.update(member2);
		
		System.out.println(member);
		if(cnt>0) {
	      //세션에도 수정된 정보를 저장
		 //DB에 변경된다고 해도 서버에 세션이 변경되는 건 아니다 서로다른 기술이기 때문이다.
			System.out.println("회원정보수정 성공");
			session.setAttribute("member", member2);
			moveURL = "Main.jsp";
		}else {
			System.out.println("회원정보수정 실패");
			moveURL = "Update.jsp";
		}
		return moveURL;
	}
	
	

}
