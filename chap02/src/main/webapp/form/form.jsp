<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>form</title>
</head>
<body>

	<h3># form �±�</h3>
	<ul>
		<li>form�±� ���ο��� submit�� �߻��ϸ� ������ ��� �����Ϳ� �Բ� ������ ��û�� ������ �±�</li>
		<li>�����͸� ������ �� input�±��� name �Ӽ��� key������ �Ѵ�.</li>
		<li>����ڰ� �Է��� ������ value ������ �Ѵ�.</li>
		<li>action �Ӽ� : ��� URL�� ��û�� ������ ���´�.</li>
		<li>method �Ӽ� : � ������� ��û�� �� ���´�. (GET, POST, PUT, DELETE ... )</li>
	</ul>
	
	
	
	<h3># GET ��� ��û (Servlet����)</h3>
	<ul>
		<li>�����Ͱ� URL �ڿ� �پ ��û�� �Բ� ������ ���޵ȴ�. ?key=value&key=value&...</li>
		<li>GET ����� ����Ǿ ��� ���� ���鸸 �����ؾ� �Ѵ�.</li>
		<li>?name=john&age=133&pwd=123456 �̷��� ������ ��..</li>
		<li>����ڰ� �ּҸ� ���� �����Ͽ� �����͸� ������ ���� �����Ƿ� �����ؾ� �Ѵ�. ���̹� �˻�ó�� �ƹ� ������ ���� �ʴ� �κп� ��� ��</li>
		<li>?name=Mike&age=253&pwd=123456 �̷� ������ ���ļ� �����ϴ� �͵� GET��� ������ �ȴٴ� ��</li>
	</ul>
	
	<!-- method="GET" �� GET������� �����ڴٴ� �� -->
	<!-- action="http://localhost:8888/chap02/form/register"�� submit��ư�� ������ �� �����Ϳ� �Բ� ��û�� ���� ��  -->
	<!-- submit��ư�� ������ ������ ���� http://localhost:8888/chap02/form/register?name=honggildong&age=1111 â���� �ٲ�µ� �����Ϳ� ��û�� �ش� â���� �������ٴ� �� -->
	<form action="http://localhost:8888/chap02/form/register" method="GET">  <!-- ���⼭ http:// �� http:/ ��� ��Ÿ���� ã�� �� ���� �̶�� ������ -->
		�̸� : <input type="text" name="name" /> <br> <!-- �׸��� name:"name"�̶�� �Ἥ RegisterServlet.java�� ���� �� null�� �޾�������. name�� �Ӽ��̴ϱ� : ���� = ���� �ؾ� ��! -->
		���� : <input type="number" name="age" /> <br>
		��й�ȣ : <input type="password" name="pwd" /><br>
		<input type="submit" value="�����ϱ�" /> <br>
	</form>
	
	
	
	
	<h3># Post ��� ��û (Servlet����)</h3>
	<ul>
		<li>��й�ȣ ���� ����� �����͸� ���� �� �ּҿ� ������ ���� �������� �ʰ� ���� ����</li>
	</ul>
	
	<form action="http://localhost:8888/chap02/form/register" method="Post"> 
		�̸� : <input type="text" name="name" /> <br> 
		���� : <input type="number" name="age" /> <br>
		��й�ȣ : <input type="password" name="pwd" /> <br />
		
		<!--  �̹����� üũ�ڽ��� ���� �� �������� �� �� ������ ��� ������ �ٷﺸ�� -->
		��� : 
			<input type="checkbox" name="hobby" value="football"/> �౸ <br>
			<input type="checkbox" name="hobby" value="swim"/> ���� <br>
			<input type="checkbox" name="hobby" value="surfing"/> ���� <br>
			<input type="checkbox" name="hobby" value="baduk"/> �ٵ� <br>
		<input type="submit" value="�����ϱ�" /> <br>
	</form>
	
	
	<h3>GET������� �޾ƺ���</h3> <!-- �׷� �ּ� �ڿ� hobby=football&hobby=swim&hobby=surfing&hobby=baduk�̷��� ���� key������ values �������� ǥ�õ� -->
	<form action="http://localhost:8888/chap02/form/register" method="GET"> 
		�̸� : <input type="text" name="name" /> <br> 
		���� : <input type="number" name="age" /> <br>
		��й�ȣ : <input type="password" name="pwd" /> <br />
		��� : 
			<input type="checkbox" name="hobby" value="football"/> �౸ <br>
			<input type="checkbox" name="hobby" value="swim"/> ���� <br>
			<input type="checkbox" name="hobby" value="surfing"/> ���� <br>
			<input type="checkbox" name="hobby" value="baduk"/> �ٵ� <br>
		<input type="submit" value="�����ϱ�" /> <br>
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<h3># GET ��� ��û (JSP��)</h3>
	<!-- 
	���±��� URL�� ������Ʈ ���� �������� �߾���? 
	
	URL�� ��� ��δ� ������Ʈ ���� ������ �ƴ϶� ������� �������� �ּ�â�� URL �����̴�. 
	
		ex. URL�� http://localhost:8888/chap02/form/form.jsp �� ��
		../ => http://localhost:8888/chap02/
		./ =>  http://localhost:8888/chap02/form/
		/ => http://localhost:8888/ (���� �������� �ֻ��� ����)
		// => http://
		
	 -->


	<!-- //register.jsp ��� ������ http://register.jsp ��� �̻��� ������ �̵��ϰ���  -->
	<form action="./register.jsp" method="GET"> <!-- http://localhost:8888/chap02/form/register.jsp�� �̵��Ѵ�. -->
		�̸� : <input type="text" name="name" /> <br> 
		���� : <input type="number" name="age" /> <br>
		��й�ȣ : <input type="password" name="pwd" /> <br />
		
		<!--  �̹����� üũ�ڽ��� ���� �� �������� �� �� ������ ��� ������ �ٷﺸ�� -->
		��� : 
			<input type="checkbox" name="hobby" value="football"/> �౸ <br>
			<input type="checkbox" name="hobby" value="swim"/> ���� <br>
			<input type="checkbox" name="hobby" value="surfing"/> ���� <br>
			<input type="checkbox" name="hobby" value="baduk"/> �ٵ� <br>
		<input type="submit" value="�����ϱ�" /> <br>
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>