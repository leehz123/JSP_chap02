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
		<li>사용자가 원하는 값을 입력할 수 있는 태그</li>
		<li>type 속성에 따라 다양한 방식으로 값을 입력할 수 있다.</li>
	</ul>


	<hr>
	
	<table border="1">
		<tr>
			<th>type</th>
			<th>모양</th>
			<th>용도</th>
		</tr>
		<tr>
			<td>type="text"</td>
			<td><input type="text" /></td>
			<td>아이디, 글 제목 등</td>
		</tr>
		<tr>
			<td>type="password"</td>
			<td><input type="password" /></td>
			<td>비밀번호</td>
		</tr>
		<tr>
			<td>type="email"</td>
			<td>
				<form action="">
					<input type="email" />
					<input type="submit" /> <!-- / 이건 걍 옛날에 쓰던 잔재 -->
				</form>
			</td>
			<td>이메일, 요청시 이메일 형식 검사</td>
		</tr>
		
		<tr>
			<td>type="submit"</td>
			<td><input type="submit" /></td>
			<td>요청버튼</td>
		</tr>
		
		<tr>
			<td>type="reset"</td>
			<td><input type="reset" /></td>
			<td>(입력내용)초기화 버튼</td>
		</tr>

		<tr>
			<td>type="button"</td>
			<td><input type="button" /></td>
			<td>기능 없는 버튼</td>
		</tr>

		<tr>
			<td>type="file"</td>
			<td><input type="file" /></td>
			<td>저용량 파일 업로드</td> <!-- 선택만 가능하지 원하는 동작 하려면 자스 추가해야것지 주로 파일 업로드(플필 사진 선택) . 대용량은 안 받는 이유가 서버의 자원을 아끼기 위해-->
		</tr>
		
		<tr>
			<td>type="date"</td>
			<td><input type="date" /></td>
			<td>날짜</td>
		</tr>		


		<tr>
			<td>type="radiobox"</td>
			<td>
				<!-- 같은 name속성으로 설정해놓아야 하나만 선택 가능 -->
				<input type="radio" name="gender" id="man"/> <label for="man">남자</label> <br />
				<input type="radio" name="gender" id="woman"/> <label for="woman">여자</label> <br />
				<input type="radio" name="gender" id="etc"/> <label for="etc">그 외</label> <br />
			</td>
			<td>단일선택</td>
		</tr>		

		<tr>
			<td>type="checkbox"</td>
			<td>
				<input type="checkbox" name="bap" id="boggeum"/> <label for="boggeum">볶음밥</label> <br />
				<input type="checkbox" name="bap" id="bibim"/> <label for="bibim">비빔밥</label> <br />
				<input type="checkbox" name="bap" id="soy"/> <label for="soy">간계밥</label> <br />
			</td>
			<td>복수선택</td>
		</tr>		


	</table>

</body>
</html>