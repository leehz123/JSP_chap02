<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% 

	//���� ������ �ϴ�jsp�� ���� ���� �ִ�~~ �ٵ� ���⼭ �ϸ� ������� �� �ڵ��ϼ� �� ��. ���� ���⼭ �� �ʿ� ����. �� Ŭ���� �ļ� ���� ��� �ް� �ϼ�
	
	String key = request.getParameter("key");
	String value = request.getParameter("value");
	//String age = request.getParameter("age");
	
	
	
	if(key == null || value== null) {
		response.sendRedirect("./index.jsp");
	} else {
		session.setAttribute(key, value);
		response.sendRedirect("./index.jsp"); //���⼭�� �� ����Ʈ �Ŵ°� ���ڴ�. 
		//request.getRequestDispatcher("").forward(request, response); ����� �� �Ʊ��ϱ� ����		
	} //else�� �־��� �� ���� response.sendRedirect ~ �� �� �ϸ� �� �ɸ��ϱ� ? 
	

%>    
    
