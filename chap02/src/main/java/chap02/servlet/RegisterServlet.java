package chap02.servlet;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form/register")
public class RegisterServlet extends HttpServlet {
	
	// doGet : 해당 서블릿으로 GET 방식 요청이 도착했을 때 처리되는 곳
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		System.out.println("Get 방식 요청이 도착했습니다!!");
		System.out.println("사용자가 보낸 데이터1(Get) : "+ req.getParameter("name"));
		System.out.println("사용자가 보낸 데이터2(Get) : "+ req.getParameter("age"));
		System.out.println("사용자가 보낸 데이터3(Get) : "+ req.getParameter("pwd"));
		
		System.out.println("getParameterValues() : " + Arrays.toString(req.getParameterValues("hobby"))); //GET방식으로 값 여러 개 받는 것도 가능
	}
	
	// doPost : 해당 서블릿으로 POST방식 요청이 도착했을 때 처리되는 곳
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Post방식 요청이 도착했습니다!!");
		
		//checkbox 등으로 하나의 파라미터에 여러 값이 오는 경우 getParameterValues()로 받아야 한다. ★★★★★
		System.out.println("취미를 getParameter로 받기 : "+ req.getParameterValues("hobby"));
		System.out.println("getParameterValues() : " + Arrays.toString(req.getParameterValues("hobby")));
	}
	
	// service : 요청 방식과 관계 없이 요청이 먼저 처리되는 곳
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Service가 처리되었습니다!!");
		System.out.println("사용자가 보낸 데이터1(Sevice) : " + req.getParameter("name"));
		System.out.println("사용자가 보낸 데이터2(Sevice) : " + req.getParameter("age"));
		System.out.println("사용자가 보낸 데이터3(Sevice) : " + req.getParameter("pwd"));
		
		//부모 클래스의 service()가 원래 하던 일 : service 처리 후 알맞은 처리 메서드로 보내는 일
		super.service(req, resp); // 이 코드를 써줘야 여기서 처리된 다음에 GET으로 감
	}
}
