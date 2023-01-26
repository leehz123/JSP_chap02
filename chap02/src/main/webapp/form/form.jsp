<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>form</title>
</head>
<body>

	<h3># form 태그</h3>
	<ul>
		<li>form태그 내부에서 submit이 발생하면 내부의 모든 데이터와 함께 서버로 요청을 보내는 태그</li>
		<li>데이터를 전송할 때 input태그의 name 속성이 key역할을 한다.</li>
		<li>사용자가 입력한 내용은 value 역할을 한다.</li>
		<li>action 속성 : 어느 URL로 요청을 보낼지 적는다.</li>
		<li>method 속성 : 어떤 방식으로 요청할 지 적는다. (GET, POST, PUT, DELETE ... )</li>
	</ul>
	
	
	
	<h3># GET 방식 요청 (Servlet으로)</h3>
	<ul>
		<li>데이터가 URL 뒤에 붙어서 요청과 함께 서버로 전달된다. ?key=value&key=value&...</li>
		<li>GET 방식은 노출되어도 상관 없는 값들만 전송해야 한다.</li>
		<li>?name=john&age=133&pwd=123456 이렇게 노출이 됨..</li>
		<li>사용자가 주소를 직접 수정하여 데이터를 전달할 수도 있으므로 주의해야 한다. 네이버 검색처럼 아무 문제가 되지 않는 부분에 써야 됨</li>
		<li>?name=Mike&age=253&pwd=123456 이런 식으로 고쳐서 전송하는 것도 GET방식 전송이 된다는 것</li>
	</ul>
	
	<!-- method="GET" 은 GET방식으로 보내겠다는 뜻 -->
	<!-- action="http://localhost:8888/chap02/form/register"은 submit버튼을 눌렀을 때 데이터와 함께 요청을 보낼 곳  -->
	<!-- submit버튼을 눌러서 보내고 나면 http://localhost:8888/chap02/form/register?name=honggildong&age=1111 창으로 바뀌는데 데이터와 요청이 해당 창으로 보내졌다는 뜻 -->
	<form action="http://localhost:8888/chap02/form/register" method="GET">  <!-- 여기서 http:// 를 http:/ 라고 오타내서 찾을 수 없음 이라고 떴었음 -->
		이름 : <input type="text" name="name" /> <br> <!-- 그리고 name:"name"이라고 써서 RegisterServlet.java로 받을 때 null이 받아졌었음. name은 속성이니까 : 말고 = 으로 해야 됨! -->
		나이 : <input type="number" name="age" /> <br>
		비밀번호 : <input type="password" name="pwd" /><br>
		<input type="submit" value="가입하기" /> <br>
	</form>
	
	
	
	
	<h3># Post 방식 요청 (Servlet으로)</h3>
	<ul>
		<li>비밀번호 같은 긴밀한 데이터를 보낼 때 주소에 데이터 값을 노출하지 않고 전송 가능</li>
	</ul>
	
	<form action="http://localhost:8888/chap02/form/register" method="Post"> 
		이름 : <input type="text" name="name" /> <br> 
		나이 : <input type="number" name="age" /> <br>
		비밀번호 : <input type="password" name="pwd" /> <br />
		
		<!--  이번에는 체크박스를 여러 개 선택했을 때 그 값들을 어떻게 받을지 다뤄보자 -->
		취미 : 
			<input type="checkbox" name="hobby" value="football"/> 축구 <br>
			<input type="checkbox" name="hobby" value="swim"/> 수영 <br>
			<input type="checkbox" name="hobby" value="surfing"/> 서핑 <br>
			<input type="checkbox" name="hobby" value="baduk"/> 바둑 <br>
		<input type="submit" value="가입하기" /> <br>
	</form>
	
	
	<h3>GET방식으로 받아볼까</h3> <!-- 그럼 주소 뒤에 hobby=football&hobby=swim&hobby=surfing&hobby=baduk이렇게 같은 key값으로 values 여러개가 표시됨 -->
	<form action="http://localhost:8888/chap02/form/register" method="GET"> 
		이름 : <input type="text" name="name" /> <br> 
		나이 : <input type="number" name="age" /> <br>
		비밀번호 : <input type="password" name="pwd" /> <br />
		취미 : 
			<input type="checkbox" name="hobby" value="football"/> 축구 <br>
			<input type="checkbox" name="hobby" value="swim"/> 수영 <br>
			<input type="checkbox" name="hobby" value="surfing"/> 서핑 <br>
			<input type="checkbox" name="hobby" value="baduk"/> 바둑 <br>
		<input type="submit" value="가입하기" /> <br>
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<h3># GET 방식 요청 (JSP로)</h3>
	<!-- 
	여태까지 URL을 프로젝트 폴더 기준으로 했었지? 
	
	URL의 상대 경로는 프로젝트 폴더 기준이 아니라 사용자의 웹브라우저 주소창의 URL 기준이다. 
	
		ex. URL이 http://localhost:8888/chap02/form/form.jsp 일 때
		../ => http://localhost:8888/chap02/
		./ =>  http://localhost:8888/chap02/form/
		/ => http://localhost:8888/ (현재 도메인의 최상위 폴더)
		// => http://
		
	 -->


	<!-- //register.jsp 라고 했으면 http://register.jsp 라는 이상한 곳으로 이동하겠지  -->
	<form action="./register.jsp" method="GET"> <!-- http://localhost:8888/chap02/form/register.jsp로 이동한다. -->
		이름 : <input type="text" name="name" /> <br> 
		나이 : <input type="number" name="age" /> <br>
		비밀번호 : <input type="password" name="pwd" /> <br />
		
		<!--  이번에는 체크박스를 여러 개 선택했을 때 그 값들을 어떻게 받을지 다뤄보자 -->
		취미 : 
			<input type="checkbox" name="hobby" value="football"/> 축구 <br>
			<input type="checkbox" name="hobby" value="swim"/> 수영 <br>
			<input type="checkbox" name="hobby" value="surfing"/> 서핑 <br>
			<input type="checkbox" name="hobby" value="baduk"/> 바둑 <br>
		<input type="submit" value="가입하기" /> <br>
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>