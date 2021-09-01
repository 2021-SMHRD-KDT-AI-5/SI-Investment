package controller_command;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.BouJongmokDAO;
import model.BouJongmokDTO;
import model.MemberDTO;


public class bouJonmokCon implements Command{//�������� �ǽð�BEST ��Ʈ�ѷ�

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		
		//����� ������ ����
		//String jongMokName = request.getParameter("jongmokName");
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		String id = member.getEmail();
		
		BouJongmokDAO dao = new BouJongmokDAO();
		ArrayList<BouJongmokDTO> boujongmok = dao.select(id);//�ְ������� ����
		
		if(boujongmok !=null) {//DB�� �ְ������Ͱ� �ִٸ�
	
			
			//���ø����̼� �����ϱ�
			ServletContext application = request.getServletContext();
			application.setAttribute("boujongmok", boujongmok);
			
			System.out.println("�������������� ����");
			moveURL="Main_2.jsp";
		}else {
			System.out.println("�������������� BEST");
			moveURL="Main_2.jsp";
			
		}
		
		return moveURL;
	}
	

}
