<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ticket</title>
</head>
<body>
	
	<img src="/chap02/assets/img/ticket.png" alt="�������� Ƽ�� ����ǥ" style="width:700px;"/>

	<form action="">
		���� : <input type="text" name="big" /> <br />
		û�ҳ� : <input type="number" name="youth" /> <br />
		����/��� : 	
		<%for(int i = 1; i <= 4; ++i) {%>
			<br />
			<input id="small<%=i %>" type="radio" name="small" value="<%=i%>"/>   <!-- ���� �����ۼ�Ʈ���� �� �����ۼ�Ʈ �ƿ�.����Ʈ() �� ���� �� �ٵ� �ƿ�������Ʈ �ȿ��� html�� "html �ڵ�" �̷��� ���ִ� �Ű�. print("," + sum) �̷���  -->
			<label for="small<%=i %>"><%=i %>��</label>
		<%}%>
		<br />
		<button type="submit">������</button>
	</form>

</body>
</html>