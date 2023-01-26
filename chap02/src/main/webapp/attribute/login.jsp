<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 페이지</title>
</head>
<body>



	<form action="/chap02/attribute/login" method="POST">
		아이디 : <input type="text" name="user_id" /> <br />
		비밀번호 : <input type="password" name="user_password"/> <br />
		<input type="submit" value="로그인"/>
		<input type="reset" value="취소"/>
	</form>
	
	<!-- 아니 대체 admin 1234 이거 어디서 저장한겨 못 찾겠음 
		찾았다 ㅅㅂ LoginServet이 @WebServlet("/attribute/login") 이렇게 매핑 돼 있음
		아놔 서플릿 자체에 매핑하는 것도 까먹었고 
		하필 이 파일이랑 이름이 같아서 나는 대체 이 파일 어디에 admin 1234가 있는 건지 한참 찾음
		
	-->	

	<a href="./view/login_result_page.jsp">로그인 여부 확인 페이지</a>


	<% if((session.getAttribute("login")!= null && (boolean)session.getAttribute("login"))) { %>
		<div>현재 로그인 중입니다.</div>
		
		<!-- <form action="login" method="Post"><button id="logoutBtn">로그아웃</button></form> --> 
		<!-- 이렇게 하면 로그인이 실패했을 때 예상치 못한 동작을 할 수 있기 때문에 이렇게 하지 말고 로그아웃 서블릿을 따로 파서 하기! -->
		<button id="btn-logout">로그아웃</button>
	
	<%} else {%>
		<div>로그인이 필요합니다.</div>
	<%} %>
	

	<!--  웹브라우저가 해석을 하다가 이 코드를 만나면 접속을 시도해서 스크립트 파일의 내용을 가져옴. 컴파일할 시점엔 그냥 문자열일 뿐이다. 이 코드도 일종의 요청. 클라이언트가 서버로 js파일을 요청해서 다운받아가는 것. 그것이 아파치의 역할. 아파치가 자원을 리턴해주는 것 -->
	<script src="/chap02/assets/js/login.js"></script>

	
	
	
	
	
</body>
</html>