<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Redirect</title>
</head>
<body>
	<h3># forward</h3>

	<ul>
		<li>
			사용자가 보낸 요청을 하나의 서블렛(또는 jsp)에서 처리하다가 
			다른 서블렛(또는 jsp)로 전달하여 처리를 이어나가는 것
		</li>
		<li>
			포워드는 요청을 그대로 다른 서블렛 또는 JSP로 전달하는 것이기 때문에 
			요청에 실려 있는 모든 정보도 함께 그대로 전달된다.
		</li>
		<li>
			주로 서블렛으로 도착한 요청에 자바를 사용한 처리를 모두 끝마친 후 
			JSP로 포워드 하기 위한 용도로 사용한다.
			서블렛이 자바 다루기 편하고 JSP가 HTML다루기 편하니까! 백(=컨트롤이라고 불림)과 프론트(=뷰)를 분리하는 것
			그래서 JSP에서 쓰는 건 데이터 다루는 것들 빼곤 거의 사장됨. (엥 데이터 다루눈 것 빼고? 반대 아닌가)거의 꺽쇄퍼센트이퀄 이것만 사용됨
		</li>
		<li>
			주로 도착한 요청에 대해
			서블렛에서 자바를 사용한 처리(Control)를 모두 끝마친 후 
			JSP로 포워드 하는 식으로 사용한다(View)
		</li>
	</ul>
	
	
	
	<h3># redirect</h3>
	
	<ul>
		<li>리디렉트는 접속한 클라이언트에게 해당 주소로 다시 요청을 보내게 만드는 것</li>
		<li>
			실제로 사용자가 웹브라우저에서 새로운 요청을 만들어 보내(주소창에 새 주소를 입력)기 때문에 
			이전 요청객체에 실려 있던 정보(Kim, 22)는 남아 있을 수 없다.
		</li>
	</ul>
	
	<hr />
	
	
	
	<!-- 우리가 여태 form으로만 포워드 했는데 a태그를 통해서도 가능 -->
	<div>
		<a href="/chap02/forward/controller?name=hong&age=33">포워드로 요청 보내기</a>
	</div>
	
	
	<div>
		<a href="/chap02/redirect/controller?name=Kim&age=22">리다이렉트로 보내기</a>
	</div>
	
	
	
	
	
</body>
</html>