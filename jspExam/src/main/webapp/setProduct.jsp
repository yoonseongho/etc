<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
    <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	session.setAttribute("idKeya", id); // 세션 설정
	session.setMaxInactiveInterval(60); // 세션 유지시간 설정(초)
	
	
	if(id == ""){
	%>
    <script>
        alert('아이디가 입력되지 않았습니다. 다시 입력해주세요');
       history.back();
    </script>
    <%
	}
	else{ id = (String) session.getAttribute("idKeya");%>
	
		<h2>상품선택</h2>
		<hr>
		<%=id%>님이 로그인 한 상태입니다.
		<hr>
		<form method="post" action="addProduct.jsp">
		<table border=1>
		<tr>
			<td>음식 종류</td>
			<td>수량</td>
		</tr>
		<tr>
			<td>
			<select name="menu">
				<option value="햄버거">햄버거</option>
				<option value="떡볶이">떡볶이</option>
				<option value="감자탕">감자탕</option>
				<option value="자장면">자장면</option>
				<option value="김치볶음밥">김치볶음밥</option>
				<option value="샐러드">샐러드</option>
			</select>
			</td>
			<td>
				<input type="number" name="amount">
			</td>
		<tr>
		</table>
			<input type="submit" value="추가">
		</form>
		<a href="Checkout.jsp">장바구니</a>
	<%}%>
</body>
</html>