<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Input</title>
</head>
<body>


	<h3># Input tags</h3>
	<ul>
		<li>����ڰ� ���ϴ� ���� �Է��� �� �ִ� �±�</li>
		<li>type �Ӽ��� ���� �پ��� ������� ���� �Է��� �� �ִ�.</li>
	</ul>


	<hr>
	
	<table border="1">
		<tr>
			<th>type</th>
			<th>���</th>
			<th>�뵵</th>
		</tr>
		<tr>
			<td>type="text"</td>
			<td><input type="text" /></td>
			<td>���̵�, �� ���� ��</td>
		</tr>
		<tr>
			<td>type="password"</td>
			<td><input type="password" /></td>
			<td>��й�ȣ</td>
		</tr>
		<tr>
			<td>type="email"</td>
			<td>
				<form action="">
					<input type="email" />
					<input type="submit" /> <!-- / �̰� �� ������ ���� ���� -->
				</form>
			</td>
			<td>�̸���, ��û�� �̸��� ���� �˻�</td>
		</tr>
		
		<tr>
			<td>type="submit"</td>
			<td><input type="submit" /></td>
			<td>��û��ư</td>
		</tr>
		
		<tr>
			<td>type="reset"</td>
			<td><input type="reset" /></td>
			<td>(�Է³���)�ʱ�ȭ ��ư</td>
		</tr>

		<tr>
			<td>type="button"</td>
			<td><input type="button" /></td>
			<td>��� ���� ��ư</td>
		</tr>

		<tr>
			<td>type="file"</td>
			<td><input type="file" /></td>
			<td>���뷮 ���� ���ε�</td> <!-- ���ø� �������� ���ϴ� ���� �Ϸ��� �ڽ� �߰��ؾ߰��� �ַ� ���� ���ε�(���� ���� ����) . ��뷮�� �� �޴� ������ ������ �ڿ��� �Ƴ��� ����-->
		</tr>
		
		<tr>
			<td>type="date"</td>
			<td><input type="date" /></td>
			<td>��¥</td>
		</tr>		


		<tr>
			<td>type="radiobox"</td>
			<td>
				<!-- ���� name�Ӽ����� �����س��ƾ� �ϳ��� ���� ���� -->
				<input type="radio" name="gender" id="man"/> <label for="man">����</label> <br />
				<input type="radio" name="gender" id="woman"/> <label for="woman">����</label> <br />
				<input type="radio" name="gender" id="etc"/> <label for="etc">�� ��</label> <br />
			</td>
			<td>���ϼ���</td>
		</tr>		

		<tr>
			<td>type="checkbox"</td>
			<td>
				<input type="checkbox" name="bap" id="boggeum"/> <label for="boggeum">������</label> <br />
				<input type="checkbox" name="bap" id="bibim"/> <label for="bibim">�����</label> <br />
				<input type="checkbox" name="bap" id="soy"/> <label for="soy">�����</label> <br />
			</td>
			<td>��������</td>
		</tr>		


	</table>

</body>
</html>