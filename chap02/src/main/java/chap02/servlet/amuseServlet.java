package chap02.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form/amusementpark")
public class amuseServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
	
		
//		System.out.println("date : " + req.getParameter("date"));
//		System.out.println("time : " + req.getParameter("time"));
//		System.out.println("age : " + req.getParameter("age"));
//		System.out.println("num : " + req.getParameter("num"));

		String date = req.getParameter("date");
		String time = req.getParameter("time");
		String age = req.getParameter("age");
		String num = req.getParameter("num");
		
		int numInt = Integer.parseInt(num); 
		
		
		out.print("<html>");
		out.print("<head>");
		out.print("<meta charset=\"utf-8\">");
		out.print("<title>결제완료</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<div>");
		out.print("<p>"+date+"</p>");
		out.print("<p>"+time+"</p>");
		out.print("<p>"+age+"</p>");
		out.print("<p>"+num+"매</p>");
		out.print("총 결제 금액 : " + charge(time, age, numInt) + "원");
		out.print("</div>");
		out.print("<script>for(i=0; i<100;++i){console.log(i*i);}</script>"); 
		out.print("</body>");
		out.print("</html>");
		
	}
	
	
	static String charge(String time, String age, Integer numInt) {
		
		DecimalFormat formatter = new DecimalFormat("###,###");
		
		if(time.equals("day")) {
			if(age.equals("adult")) {
				return formatter.format(54000*numInt);
			} else if(age.equals("teenager")) {
				return formatter.format(46000*numInt);
			} else if(age.equals("week")) {
				return formatter.format(43000*numInt);
			}
		} else if (time.equals("night")) {
			if(age.equals("adult")) {
				return formatter.format(45000*numInt);
			} else if(age.equals("teenager")) {
				return formatter.format(39000*numInt);
			} else if(age.equals("week")) {
				return formatter.format(36000*numInt);
			}
		} else if (time.equals("twodays")) {
			if(age.equals("adult")) {
				return formatter.format(84000*numInt);
			} else if(age.equals("teenager")) {
				return formatter.format(71000*numInt);
			} else if(age.equals("week")) {
				return formatter.format(67000*numInt);
			}
		}
		return null;
	}
	
	
}



