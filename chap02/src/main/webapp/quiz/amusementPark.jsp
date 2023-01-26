<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>놀이공원</title>
<style>
	/* Chrome, Safari, Edge, Opera */
	input::-webkit-outer-spin-button,
	input::-webkit-inner-spin-button {
	  -webkit-appearance: none;
	  margin: 0;
	}
	
	/* Firefox */
	input[type=number] {
	  -moz-appearance: textfield;
	}
</style>
</head>
<body style="margin:0;">
	
	<div>
		<h3>놀이공원 입장권</h3>
		<form action="http://localhost:8888/chap02/form/amusementpark" method="POST">
			<h5>날짜 선택</h5>
			<input type="date" name="date"/> 
			<h5>시간 선택</h5>
			<input type="radio" name="time" value="day" id="day"/> <label for="day">주간권</label>
			<input type="radio" name="time" value="night" id="nignt" /> <label for="nignt">야간권</label>
			<input type="radio" name="time" value="twodays" id="twodays"/> <label for="twodays">2일권</label> 
			<h5>연령대 선택</h5>
			<input type="radio" name="age" value="adult" id="adult" /> <label for="adult">대인</label>
			<input type="radio" name="age" value="teenager" id="teenager" /> <label for="teenager">청소년</label>
			<input type="radio" name="age" value="week" id="week" /> <label for="week">소인/경로</label>
			<br /> 
			<h5>인원</h5>
			<button id="plus">+</button>
			<input type="number" id="num" name="num" value="0" style="width: 50px; "/> <!-- border: 0px none; -->
			<button id="minus">-</button>
			<br /><br /><input type="submit" value="구매"/>
		</form>	
	</div>
		

	<script  type="text/javascript">
		const pBtn = document.getElementById("plus");
		const mBtn = document.getElementById("minus");
		const num = document.getElementById("num");
		
		pBtn.addEventListener('click', (e) => {
			e.preventDefault(); //기본 동작을 막는 메서드
			++num.value;
		});
		
		mBtn.addEventListener('click', (e)=> {
			e.preventDefault(); //기본 동작을 막는 메서드
			if(num.value != 0) {
				--num.value;
			}		
		});
	</script> 
	


</body>
</html>