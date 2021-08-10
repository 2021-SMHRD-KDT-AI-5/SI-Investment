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
		
		//���̵�, ��й�ȣ, �����, ���¹�ȣ, ������ 
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String bankName = request.getParameter("bankName");
		String accountNumber = request.getParameter("accountNumber");
		int yesugeum = Integer.parseInt(request.getParameter("yesugeum"));
		
		MemberDAO dao = new MemberDAO(); //DAO���� 
		MemberDTO member = new MemberDTO(id,pw,bankName,accountNumber,yesugeum);
		int cnt = dao.join(member);
		
		if(cnt>0) {
			System.out.println("�޽��� ���� ����");
			moveURL = "main.jsp";
		}else {
			System.out.println("�޽��� ���� ����");
			moveURL = "main.jsp";
		}
		return moveURL;
	}

}
