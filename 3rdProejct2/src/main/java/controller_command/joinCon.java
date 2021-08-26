package controller_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

public class joinCon implements Command{//ȸ������ ��Ʈ�ѷ�

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null; //���� �̵��� ���� �����ϴ� ���� ����
		
		//�̸�,���̵�, ��й�ȣ, ��ȭ��ȣ
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		
		MemberDAO dao = new MemberDAO(); //DAO���� 
		MemberDTO member = new MemberDTO(name,email,pw,tel);
		int cnt = dao.join(member);
		
		if(cnt>0) {
			System.out.println("ȸ������ ����");
			moveURL = "Main_2.jsp";
		}else {
			System.out.println("ȸ������ ����");
			moveURL = "Join.jsp";
		}
		return moveURL;
	}

}
