<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int age = Integer.parseInt(request.getParameter("age"));
		if (age <= 19) {
			response.sendRedirect("0330_impossible.jsp");
		} else {
			response.sendRedirect("0330_possible.jsp");
		}
	%>
</body>
</html>