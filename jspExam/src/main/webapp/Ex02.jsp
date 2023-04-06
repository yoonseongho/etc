<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! int total = 0; %>
<%!
	public int sum() {
	int result = 0;
	for(int i=1; i<=10; i++) {
		result += i;
	}
	return result;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= total %>
<%= "1부터 10까지 합은 " + sum() + "입니다." %>
</body>
</html>