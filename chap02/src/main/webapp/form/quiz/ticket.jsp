<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ticket</title>
</head>
<body>
	
	<img src="/chap02/assets/img/ticket.png" alt="에버랜드 티켓 가격표" style="width:700px;"/>

	<form action="">
		대인 : <input type="text" name="big" /> <br />
		청소년 : <input type="number" name="youth" /> <br />
		소인/경로 : 	
		<%for(int i = 1; i <= 4; ++i) {%>
			<br />
			<input id="small<%=i %>" type="radio" name="small" value="<%=i%>"/>   <!-- 여기 꺽쇄퍼센트이퀄 은 꺽쇄퍼센트 아웃.프린트() 랑 같은 거 근데 아웃점프린트 안에도 html은 "html 코드" 이렇게 써주는 거고. print("," + sum) 이렇게  -->
			<label for="small<%=i %>"><%=i %>명</label>
		<%}%>
		<br />
		<button type="submit">보내기</button>
	</form>

</body>
</html>