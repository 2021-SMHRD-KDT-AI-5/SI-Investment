package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	
	//추상메소드(abstract)
		public String execute(HttpServletRequest request,HttpServletResponse response);//클래스 안에 request와response객체를 사용하기 위해 매개인자를 넣어줌
		

}
