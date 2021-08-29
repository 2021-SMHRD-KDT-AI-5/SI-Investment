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
		
		String moveURL = null; //���� �̵��� ���� �����ϴ� ���� ����
		
		HttpSession session = request.getSession();
		// �����, ü��ð�, ������, ���Աݾ�
		String email = (String)session.getAttribute("email");
		String jonkmokname = request.getParameter("jongmokName");
		String stocktime = request.getParameter("stocktime");
		int bouju = Integer.parseInt(request.getParameter("bou"));
		int price = Integer.parseInt(request.getParameter("price"));
		
		//DAO,DTO����
		BouJongmokDAO dao = new BouJongmokDAO();
		int cnt =  dao.stockPlus(email, jonkmokname, stocktime, bouju, price);
		
		if(cnt > 0) {
			System.out.println("�˻� ����");
			moveURL= "Main2.jsp";
		}else {
			System.out.println("�˻� ����");
			moveURL= "Stockplus.jsp";
		}
		
		return moveURL;
	} // �������� �߰�

}
