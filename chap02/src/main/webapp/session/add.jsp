<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% 

	//서블릿 역할을 하는jsp를 만들 수도 있다~~ 근데 여기서 하면 어레리같은 거 자동완성 안 됨. 굳이 여기서 할 필요 없쥐. 걍 클래스 파서 서블릿 상속 받고 하셈
	
	String key = request.getParameter("key");
	String value = request.getParameter("value");
	//String age = request.getParameter("age");
	
	
	
	if(key == null || value== null) {
		response.sendRedirect("./index.jsp");
	} else {
		session.setAttribute(key, value);
		response.sendRedirect("./index.jsp"); //여기서도 걍 리디렉트 거는게 낫겠대. 
		//request.getRequestDispatcher("").forward(request, response); 써놓은 거 아까우니까 남김		
	} //else에 넣었떤 것 같음 response.sendRedirect ~ 두 번 하면 렉 걸리니까 ? 
	

%>    
    
