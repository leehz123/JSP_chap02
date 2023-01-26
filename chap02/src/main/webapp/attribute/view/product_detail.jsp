<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상품 상세 페이지</title>
</head>
<body>


	<h3># attribute이름으로 해당 어트리뷰트를 출력할 수 있다.</h3>
	<p>애트리뷰트는 저장된 객체의 toString()을 호출해 웹페이지에 출력한다.</p>

	<!-- 출력방법 1. 간단버전 -->
	<!-- 실려 있는 attribute를 보여준다. -->	
	${product }

	<!-- 출력방법 2.(걍 출력방법 1이랑 똑같음) -->
	<%= request.getAttribute("product") %>

</body>
</html>