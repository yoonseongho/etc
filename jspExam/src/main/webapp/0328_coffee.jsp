<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
</head>
<body>
	<h2>커피 메뉴</h2>
	<form action="0328_c_result.jsp" method="post">
		<label><input type="radio" name="coffee" value="아메리카노">아메리카노 (3000원)</label><br>
		<label><input type="radio" name="coffee" value="카페라떼">카페라떼 (3300원)</label><br>
		<label><input type="radio" name="coffee" value="에스프레소">에스프레소 (2500원)</label><br>
		<label><input type="radio" name="coffee" value="얼그레이">얼그레이 (3500원)</label><br>
		<label>주문: <input type="number" name="quantity" min="1" max="10"></label><br>
		<label>입금액: <input type="number" name="deposit"></label><br>
		<button type="submit">주문처리</button>
	</form>
</body>
</html>