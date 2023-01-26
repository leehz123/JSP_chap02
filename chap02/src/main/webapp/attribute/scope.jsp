<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Attribute scope</title>
</head>
<body>

	<h3># Attribute Scope</h3>
	<p>
		어트리뷰트에는 수명을 설정할 수 있다.
	</p>

	<dl>
	
		<dt>page scope</dt>
		<dd>해당 서블릿에서만 사용할 수 있는 어트리뷰트. 해당 서블릿을 벗어나면 사라진다.</dd>
	
		<dt>request scope</dt>
		<dd>
			해당 요청에 응답하여 요청 객체가 사라질 때까지 유지되는 애트리뮤트.
			그니까 응답을 하기 전까지 유지됨. 하나의 req 에 하나의 resp 니까  
			(forward, include까지는 유지된다)
		</dd>
		
		<dt>session scope</dt>
		<dd>
			세션이 만료될 때까지 수명이 유지되는 어트리뷰트. 
			클라이언트가 웹서버에 처음 요청을 보내면 서버로부터 세션ID를 발급 받는다.
			클라이언트는 해당 세션 ID를 요청해 항상 포함시켜 보내며 자신의 세션ID를 통해 개인 락커룸처럼 세션 객체에 접근할 수 있다.
			(리퀘스트는 이페이지 갔다가 저페이지 가면 사라짐 근데 세션에 저장한 어트리뷰트는 이페이지 저페이지 막 돌아다녀도 세션 ID를 내가 갖고 있는 한 계속 유지됨)
			해당 클라이언트가 세션 ID를 보유하고 있는 동안 해당 세션 ID로 접근 가능한 세션 객체에 저장된 어트리뷰트에 계속해서 접근할 수 있다. 
		</dd>
		
		<dt>application scope</dt>
		<dd>
			웹 어플리케이션 서버(apache-tomcat)에 저장해 놓는 어트리뷰트
			서버가 꺼지기 전까지 유지된다.
			(어트리뷰트계의 스태틱이래 천 명이 서버를 이용하면 한 가지 변수 갖고 계속 바꾼대 (?)
			세션은 그나마 유지되는 자기만의 영역이 있는 거고 리퀘는 요청이 끝나면 끝나버리고 페이지는 해당 포워드만 끝나면 사라짐)
		</dd>
		
	</dl>
	
	
	<div>
		<a href="/chap02/attribute/scope">어트리뷰트 수명 테스트 1 (서블릿 거쳐가기) </a>
	</div>
	
	<div>
		<a href="/chap02/attribute/view/car.jsp">어트리뷰트 수명 테스트 2 (바로 확인 페이지로 가기) </a> <!-- 요청 객체는 null -->
		<!-- 세션을 안 뜨게 하려면 옆에 창 까지 모두 닫은 후에 다시 켜면 되고, 서버를 null로 뜨게 하려면 서버를 껐다 켜면 됨. 근데 서버를 재시작 해도 세션은 살아 있음! -->
		<!-- 세션은 주로 로그인 ~~ 만드는 거 . 페이지나 요청은 거의 한 트랜잭션(한 요청)에 필요한 작업들을 ... 어플리케이션은 거의 잘 안 쓰임 회사 이름? 같은 정보나 넣어놓겠지 -->
	</div>
	
	
	
	
	
	
	<p>
		세션ID를 키값으로 넣으면 자기 세션을 가져갈 수 있다. 
	</p>

</body>
</html>