package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/attribute/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//아이디랑 비번 받아서 getSession() 저장한 곳에 setAttribute("키", 밸류); 하면 됨
		
		
		String userID = req.getParameter("user_id");
 		String userPassword = req.getParameter("user_password");		
	
		HttpSession session = req.getSession(); //이 떄 꺼내주는 건 거기 들어 있는 세션 ID활용 해서 꺼내주는 것 
		
		//로그인 여부
		if("admin".equals(userID) && "1234".equals(userPassword)) {
			session.setAttribute("login", true);
			
		} else {
			//resp.sendRedirect("/chap02/attribute/login.jsp");
			session.setAttribute("login", false);
			
		}
		req.getRequestDispatcher("/attribute/view/login_result_page.jsp").forward(req, resp);
	}
	
}
