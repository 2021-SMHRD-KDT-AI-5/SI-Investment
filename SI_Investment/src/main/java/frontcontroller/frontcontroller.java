package frontcontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

@WebServlet("*.do")//*�� ������ ��̸��̵� .do�γ����� ���Եȴ�.
public class frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//�ѱ� ���ڵ�
		request.setCharacterEncoding("euc-kr");
		
		//���� ��û�� ���Դ��� ��θ� �� �� ����
		String reqURI = request.getRequestURI();
		System.out.println("��ûURI : "+ reqURI);
		
		//������Ʈ�̸��� ���� 
		String path = request.getContextPath();
		System.out.println("������Ʈ �̸� : "+path);
		
		//substring()
		//���� �ΰ��� �༭ �߰��� ���� ¥���� �� 
		//�ϳ��� ���� �༭ ¥������(�����ϴ� �ε����������ϰ� ������)
		String resultURI = reqURI.substring(path.length()+1);
		System.out.println("��û : "+ resultURI);
		
		Command command = null; //CommandŸ���� ���� ���� 
		
		if(resultURI.equals("joinCon.do")) {//ȸ������
			
		}else if(resultURI.equals("loginCon.do")){//�α��� 
			
		}else if(resultURI.equals("JugaData.do")) {//�ְ�������
			
		}else if(resultURI.equals("TermDicCon.do")) {//�ֽĿ�����
			
		}else if(resultURI.equals("snsDataCon.do")) {//sns������
			
		}else if(resultURI.equals("statDataCon.do")) {//���� ��赥����
			
		}else if(resultURI.equals("coustomCon.do")) {//����� Ŀ����
			
		}
		
		//��� �����̵� moveURL�� �̵��ϰڲ� 
		String moveURL = command.execute(request, response);//execute�� ó���� �� ��
		response.sendRedirect(moveURL);
	}

}
