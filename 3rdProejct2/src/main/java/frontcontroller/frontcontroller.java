package frontcontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import controller_command.StockBestCon;
import controller_command.StockSearchListCon;
import controller_command.StockTermsCon;
import controller_command.UpdateCon;
import controller_command.joinCon;
import controller_command.loginCon;
import controller_command.statDataCon;

@WebServlet("*.do")//*가 붙으면 어떤이름이든 .do로끝나면 오게된다.
public class frontcontroller extends HttpServlet {

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
		//프로젝트이름이 빠짐
		String middleURI = reqURI.substring(path.length()+1);
		System.out.println("요청 : "+ middleURI);
		
		//split함수로 요청주소값을 나눔 
		String[] tmpStringarray = middleURI.split("/");
		//pages폴더이름이 빠짐
		String resultURI = tmpStringarray[tmpStringarray.length-1];
		System.out.println("test: " + resultURI);
		
		Command command = null; //Command타입의 변수 선언 
		
		if(resultURI.equals("joinCon.do")) {//회원가입
			command = new joinCon();
			
		}else if(resultURI.equals("loginCon.do")){//로그인 
			command = new loginCon();
			
		}else if(resultURI.equals("StockBestCon.do")) {//국내종목 실시간BEST
			command = new StockBestCon();
		}else if(resultURI.equals("StockTermsCon.do")) {//주식용어사전
			command = new StockTermsCon();
		}else if(resultURI.equals("snsDataCon.do")) {//sns데이터
			
		}else if(resultURI.equals("statDataCon.do")) {//투자별 거래량
			command = new statDataCon();
		}else if(resultURI.equals("coustomCon.do")) {//사용자 커스텀
			
		}else if(resultURI.equals("UpdateCon.do")) {//회원정보수정
			command = new UpdateCon();
		}else if(resultURI.equals("StockSearchListCon.do")) {//검색
			command = new StockSearchListCon();
		}
		
		//어떠한 조건이든 moveURL로 이동하겠끔 
		String moveURL = command.execute(request, response);//execute가 처리해 줄 것
		response.sendRedirect(moveURL);
	}

}
