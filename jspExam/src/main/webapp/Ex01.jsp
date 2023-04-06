<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"% import="java.util.*, java.text.*"%>
<%
	Date d = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy/mm/dd a hh:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Today is : <%= d %><br>
	오늘은 : <%= sf.format(d) %>
</body>
</html>