<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ������</title>
</head>
<body>



	<form action="/chap02/attribute/login" method="POST">
		���̵� : <input type="text" name="user_id" /> <br />
		��й�ȣ : <input type="password" name="user_password"/> <br />
		<input type="submit" value="�α���"/>
		<input type="reset" value="���"/>
	</form>
	
	<!-- �ƴ� ��ü admin 1234 �̰� ��� �����Ѱ� �� ã���� 
		ã�Ҵ� ���� LoginServet�� @WebServlet("/attribute/login") �̷��� ���� �� ����
		�Ƴ� ���ø� ��ü�� �����ϴ� �͵� ��Ծ��� 
		���� �� �����̶� �̸��� ���Ƽ� ���� ��ü �� ���� ��� admin 1234�� �ִ� ���� ���� ã��
		
	-->	

	<a href="./view/login_result_page.jsp">�α��� ���� Ȯ�� ������</a>


	<% if((session.getAttribute("login")!= null && (boolean)session.getAttribute("login"))) { %>
		<div>���� �α��� ���Դϴ�.</div>
		
		<!-- <form action="login" method="Post"><button id="logoutBtn">�α׾ƿ�</button></form> --> 
		<!-- �̷��� �ϸ� �α����� �������� �� ����ġ ���� ������ �� �� �ֱ� ������ �̷��� ���� ���� �α׾ƿ� ������ ���� �ļ� �ϱ�! -->
		<button id="btn-logout">�α׾ƿ�</button>
	
	<%} else {%>
		<div>�α����� �ʿ��մϴ�.</div>
	<%} %>
	

	<!--  ���������� �ؼ��� �ϴٰ� �� �ڵ带 ������ ������ �õ��ؼ� ��ũ��Ʈ ������ ������ ������. �������� ������ �׳� ���ڿ��� ���̴�. �� �ڵ嵵 ������ ��û. Ŭ���̾�Ʈ�� ������ js������ ��û�ؼ� �ٿ�޾ư��� ��. �װ��� ����ġ�� ����. ����ġ�� �ڿ��� �������ִ� �� -->
	<script src="/chap02/assets/js/login.js"></script>

	
	
	
	
	
</body>
</html>