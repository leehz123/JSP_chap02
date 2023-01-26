<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>HTTP Session</title>
</head>
<body>

	<h3># HTTP Session</h3>

	
	<ol>
		<li>�� ������ ó�� �����ϴ� ������� ��Ű�� ����ID�� �߰��Ѵ�.</li>
		<li>�� ��, ���� ID�� �Ժη� ������ �ϱ� ���� ����� ���̾�� �Ѵ�.</li>
		<li>(��Ű: ���������� ���ý��丮�� ���ǽ��丮�� ���� .. �ϱ� ���� ��Ű�� ���� Ű ��� ���·� ���� ����.)</li>
		<li>������� ��Ű�� ����� ���� ID�� �ش� ����ڰ� ��û�� ���� ������ �Բ� �Ƿ����� �ȴ�.</li>
		<li>��Ű�� ����� ����ID�� �⺻������ ���������� ����� ������ �����ȴ�.</li>
		<li>(����, ���� ���� ����)</li>
		<li>���ǿ� �����͸� �����ϴ� ���� ������ �����͸� �����ϴ� ���̹Ƿ�, ���ǿ� �ʹ� ���� �����͸� �����ϴ� ���� �����ؾ� �Ѵ�.</li>
		<li></li>
	</ol>
	
	
	
	<h3>���� ��Ʈ����Ʈ �߰��ϱ�</h3>
											
	<form action="./add.jsp" method="GET" id="attrAddForm"> <!-- session ������ add �̷� ���� -->
	<!-- �ʹ� �������θ� ������ �Ļ��ϴϱ� jsp�ε� �������� -->
	
		<input type="text" name="key" placeholder="Input Key" autocomplete="off"/>
		<input type="text" name="value" placeholder="Input Value" autocomplete="off"/>
		
	
	</form>


	<!-- form �ٱ��� �ش� �� �Ҽ��� ��ǲ �±׸� �߰��� ���� �ִ�. -->
	<input type="number" name="age" form="attrAddForm" />
	<input type="submit" form="attrAddForm" /> 
	<hr />
	
	<%
	
		//���� ���ǿ� �ִ� ��� ���� ��Ʈ����Ʈ���� ���
		//�߰��ϰ� ���� �����̷�Ʈ�� �Դ� 

		//�̴��ӷ��̼� Ŭ���� : �ݺ��� ���� �� �ִ� Ŭ����
		//���ǿ� �ִ� ��� ��Ʈ����Ʈ�� �̸����� ����
		java.util.Enumeration<String> attrNames = session.getAttributeNames();
	
	
		//���� ���(��Ʈ����Ʈ �̸�)�� ������ �ݺ�
		
		
		out.print("<table border=\"1\"><tr><th>Key</th><th>Value</th>" 
			+ "<th>�� ����</th><th>����</th></tr>"); //������ session.removeAttribute("�̸�") 
		
		while(attrNames.hasMoreElements()) {
			String attrName = attrNames.nextElement(); //��Ʈ����Ʈ �̸��� �ϳ� ����
			
			if(attrName != null) { //������ġ
				out.print(String.format("<tr><td>%s</td><td>%s</td>"
										+"<td><form action=\"/chap02/session/attribute/modify\" method=\"POST\">"
										+"<input type=\"text\" name=\"value\">" 
										+"<input type=\"hidden\" name=\"key\" value=\"%s\">" //������ ������ ���� ��!!!!!!!! �׸��� attrName�� key�� ������ �ϴϱ� name�� key, value�� %s�ؼ� attrName �ޱ�
										+"<button>����</button></td></form></td>"
							
										+"<td><form action=\"/chap02/session/attribute/delete\" method=\"POST\">"
										+"<input type=\"hidden\" name=\"key\" value=\"%s\">"
										+"<input type=\"submit\" value=\"����\"></form></td></tr>"
										, attrName, session.getAttribute(attrName), attrName, attrName));
			}
		}		
		out.print("</table>");

	%>

	




</body>
</html>