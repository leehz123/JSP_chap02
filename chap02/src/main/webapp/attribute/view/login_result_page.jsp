<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ��� Ȯ��</title>
</head>
<body>

	<% if((session.getAttribute("login")!= null 
			&& (boolean)session.getAttribute("login"))) { %>  <!-- boolean�� 0 �ƴϸ� �� true�ϱ�? -->
		<div style="color:blue;">
	<% } else { %>
		<div style="color:red;">
	<%} %>
		�α��� ���̸� �Ķ� �۾��� ���̴� ������.</div>
	
	
	<a href="/chap02/attribute/login.jsp">���� ������</a>
	
</body>
</html>