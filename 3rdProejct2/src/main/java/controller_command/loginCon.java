package controller_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

public class loginCon implements Command{//�α��� ��Ʈ�ѷ�

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;//���� �̵��� ���� �����ϴ� ���� ����
		
		//���̵�, ��й�ȣ�� ������ ����
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO(); //DAO����
		MemberDTO member = dao.login(id, pw);//�α��θ޼ҵ� �ҷ����� 
		
		//member��ü�� �� �Ǵ�
		if(member != null) {//member������ DB�� �ִٸ�
			//���ǿ� �����ϱ�!
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			
			System.out.println("�ְ������� ���ۼ���");
			
			moveURL= "main.jsp";
			
			
		}else {
			System.out.println("�ְ������� ���۽���");
			moveURL = "main.jsp";
		}
		
		return moveURL;
	}
	
	

}