<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
</head>
<body>
	<h2>주문계산 결과</h2>
	<%
		String coffee = request.getParameter("coffee");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int price = 0;
		switch(coffee) {
			case "아메리카노":
				price = 3000;
				break;
			case "카페라떼":
				price = 3300;
				break;
			case "에소프레소":
				price = 2500;
				break;
			case "얼그레이":
				price = 3500;
				break;
		}
		
		// 수량 * 기본 가격
		int total = price * quantity;
		
		int deposit = Integer.parseInt(request.getParameter("deposit"));
		int change = deposit - total;
	%>
	<p><strong>커피: </strong><%= coffee %></p>
	<p><strong>1개 가격: </strong><%= price %>원</p>
	<p><strong>수량: </strong><%= quantity %></p>
	<p><strong>총 금액: </strong><%= total %>원</p>
	<p><strong>입금액: </strong><%= deposit %>원</p>
	<p><strong>거스름돈: </strong><%= change %>원</p>
</body>
</html>
