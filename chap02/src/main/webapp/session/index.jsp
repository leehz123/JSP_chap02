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
		<li>웹 서버는 처음 접속하는 사용자의 쿠키에 세션ID를 추가한다.</li>
		<li>이 때, 세션 ID는 함부로 위변조 하기 힘든 어려운 값이어야 한다.</li>
		<li>(쿠키: 웹브라우저에 로컬스토리지 세션스토리지 저장 .. 하기 전에 쿠키에 값을 키 밸류 형태로 저장 가능.)</li>
		<li>사용자의 쿠키에 저장된 세션 ID는 해당 사용자가 요청을 보낼 때마다 함께 실려오게 된다.</li>
		<li>쿠키에 저장된 세션ID는 기본적으로 웹브라우저가 종료될 때까지 유지된다.</li>
		<li>(물론, 설정 변경 가능)</li>
		<li>세션에 데이터를 저장하는 것은 서버에 데이터를 저장하는 것이므로, 세션에 너무 많은 데이터를 저장하는 것은 자제해야 한다.</li>
		<li></li>
	</ol>
	
	
	
	<h3>세션 어트리뷰트 추가하기</h3>
											
	<form action="./add.jsp" method="GET" id="attrAddForm"> <!-- session 폴더에 add 이런 느낌 -->
	<!-- 너무 서블렛으로만 보내면 식상하니까 jsp로도 보내보자 -->
	
		<input type="text" name="key" placeholder="Input Key" autocomplete="off"/>
		<input type="text" name="value" placeholder="Input Value" autocomplete="off"/>
		
	
	</form>


	<!-- form 바깥에 해당 폼 소속의 인풋 태그를 추가할 수도 있다. -->
	<input type="number" name="age" form="attrAddForm" />
	<input type="submit" form="attrAddForm" /> 
	<hr />
	
	<%
	
		//현재 세션에 있는 모든 세션 어트리뷰트들을 출력
		//추가하고 여기 리다이렉트로 왔대 

		//이뉴머레이션 클래스 : 반복을 돌릴 수 있는 클래스
		//세션에 있는 모든 어트리뷰트의 이름들을 꺼냄
		java.util.Enumeration<String> attrNames = session.getAttributeNames();
	
	
		//다음 요소(어트리뷰트 이름)가 있으면 반복
		
		
		out.print("<table border=\"1\"><tr><th>Key</th><th>Value</th>" 
			+ "<th>값 수정</th><th>삭제</th></tr>"); //삭제는 session.removeAttribute("이름") 
		
		while(attrNames.hasMoreElements()) {
			String attrName = attrNames.nextElement(); //어트리뷰트 이름을 하나 꺼냄
			
			if(attrName != null) { //안전장치
				out.print(String.format("<tr><td>%s</td><td>%s</td>"
										+"<td><form action=\"/chap02/session/attribute/modify\" method=\"POST\">"
										+"<input type=\"text\" name=\"value\">" 
										+"<input type=\"hidden\" name=\"key\" value=\"%s\">" //숨겨진 값으로 가는 거!!!!!!!! 그리고 attrName을 key로 꺼내야 하니까 name은 key, value는 %s해서 attrName 받기
										+"<button>수정</button></td></form></td>"
							
										+"<td><form action=\"/chap02/session/attribute/delete\" method=\"POST\">"
										+"<input type=\"hidden\" name=\"key\" value=\"%s\">"
										+"<input type=\"submit\" value=\"삭제\"></form></td></tr>"
										, attrName, session.getAttribute(attrName), attrName, attrName));
			}
		}		
		out.print("</table>");

	%>

	




</body>
</html>