<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name  = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String[] cnlal = request.getParameterValues("cnlal");
		String wjsrhd = request.getParameter("wjsrhd");
		String option = request.getParameter("option");
	%>
	
	이름 : <% out.println(name); %>
	<br>
	아이디 : <% out.println(id); %>
	<br>
	비밀번호 : <% out.println(password); %>
	<br>
	이메일 : <% out.println(email); %>
	<br>
	취미 : <% for(int i=0; i<cnlal.length; i++) {
			out.print(cnlal[i] + " ");
	}
		%>
	<br>
	전공 : <% out.println(wjsrhd); %>
	<br>
	통신사 : <% out.println(option); %>
</body>
</html>