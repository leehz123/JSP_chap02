<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%

	//�� ������������ ����� �� �ִ� JSP ���� ��ü
	pageContext.setAttribute("car", "Kia");


	//Attribute���� ��� Ÿ���� ������ ���� �� �ֱ� ������ Object Ÿ������ ��������.
	//application : �� ���ø����̼� ����(WAS)�� ������ ��� �ִ� ��ü
	String applicationCar = (String)application.getAttribute("car");
	//session : ���� ������ ��� �ִ� JSP ���� ��ü
	String sessionCar = (String)session.getAttribute("car");
	//request : ��û ������ ������ �ִ� JSP ���� ��ü
	String requestCar = (String)request.getAttribute("car");
	
	String pageCar = (String)pageContext.getAttribute("car");
%>  

  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


	����: <%= applicationCar %> <br />
	����: <%= sessionCar %> <br />
	��û: <%= requestCar %> <br />
	������: <%= pageCar %> <br />
	<hr />	
	�׳� ���� : ${car} (���� ����� ����(page)�� car�� ����)<br />
	���࿡ ������ ī�� ������ ������Ʈ ī ã�� �Ű� �װ� ������ ����ī �� �������� ���ø����̼� ī
	������Ʈ�� ���� : ${requestScope.car} <br />
	���ǿ� ���� : ${sessionScope.car} <br />
	WAS�� ���� : ${applicationScope.car} <br />	
	<hr />
	
	
	
	
</body>
</html>