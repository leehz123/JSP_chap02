<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% 
    //JSP의 request 내장 객체 : 매개변수로 받는 HttpServletRequest req를 의미
    String name = request.getParameter("name");
    //파라미터는 숫자도 문자열로 받는다.
    // ** 데이터를 받을 때 항상 비어 있는 값에 대한 처리가 돼 있어야 함
    String strAge = request.getParameter("age");
    Integer age = null;
    if(strAge != null && !strAge.equals("")) { //null또는 빈 값에 대한 대비가 필요하다 
    	age = Integer.parseInt(strAge);	
    }
    String[] hobbies = request.getParameterValues("hobby");
 	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<% for(int i = 0; i < hobbies.length; ++i) {%>
	<!-- 이렇게 속성에 자바 코드를 집어넣는 것도 가능 -->
	<div id="<%=hobbies[i]%>" class="hobby"><%=hobbies[i]%></div>
	<% } %>

<!-- 그래서 jsp에서도 이렇게 데이터를 받아서 사용 가능하다~~~~ -->


</body>
</html>