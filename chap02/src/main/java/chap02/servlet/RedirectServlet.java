package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/redirect/controller")
public class RedirectServlet extends HttpServlet {

	//forward폴더의 index.jsp파일에서 리디렉트로 요청 보내기 실행 시 오는 곳 어잉 근데 얘도 서블릿이긴 하네 머지
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		System.out.println("Redirect 서블릿에 왔다 감");
		System.out.println("name : " + req.getParameter("name") + ", age : " + req.getParameter("age"));
		
		//redirect : 클라이언트에게 새로운 요청을 보낼 것을 응답한다. 
		resp.sendRedirect("../forward/page/page1.jsp"); //이 객체에는 kim과 22가 없다. null null로 뜰 것
		
	}


}
