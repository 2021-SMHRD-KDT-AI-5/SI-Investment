package frontcontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

@WebServlet("*.do")//*가 붙으면 어떤이름이든 .do로끝나면 오게된다.
public class frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//한글 인코딩
		request.setCharacterEncoding("euc-kr");
		
		//어디로 요청이 들어왔는지 경로를 알 수 있음
		String reqURI = request.getRequestURI();
		System.out.println("요청URI : "+ reqURI);
		
		//프로젝트이름만 나옴 
		String path = request.getContextPath();
		System.out.println("프로젝트 이름 : "+path);
		
		//substring()
		//값을 두개를 줘서 중간에 값을 짜르는 것 
		//하나의 값을 줘서 짜른ㄴ것(시작하는 인덱스만지정하고 끝까지)
		String resultURI = reqURI.substring(path.length()+1);
		System.out.println("요청 : "+ resultURI);
		
		Command command = null; //Command타입의 변수 선언 
		
		if(resultURI.equals("joinCon.do")) {//회원가입
			
		}else if(resultURI.equals("loginCon.do")){//로그인 
			
		}else if(resultURI.equals("JugaData.do")) {//주가데이터
			
		}else if(resultURI.equals("TermDicCon.do")) {//주식용어사전
			
		}else if(resultURI.equals("snsDataCon.do")) {//sns데이터
			
		}else if(resultURI.equals("statDataCon.do")) {//종목별 통계데이터
			
		}else if(resultURI.equals("coustomCon.do")) {//사용자 커스텀
			
		}
		
		//어떠한 조건이든 moveURL로 이동하겠끔 
		String moveURL = command.execute(request, response);//execute가 처리해 줄 것
		response.sendRedirect(moveURL);
	}

}
