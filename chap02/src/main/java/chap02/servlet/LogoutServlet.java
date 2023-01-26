package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/attribute/logout")
public class LogoutServlet extends HttpServlet{
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		session.setAttribute("login", false); // 이렇게 setAttribute로 login 을 false 로 설정을 해주고 
		
		resp.sendRedirect("/chap02/attribute/login.jsp"); // /chap02/attribute/login.jsp에 다시 연결을 시키면 됨

	}

}
