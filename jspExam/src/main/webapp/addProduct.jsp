<%@page import="java.util.ArrayList"%>
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
	
	ArrayList<String> li = (ArrayList) session.getAttribute("menu");
	String menu = request.getParameter("menu");
	if(li==null){
		li = new ArrayList<>();
	}
	session.setAttribute("menu", li);
	li.add(menu);
	
	
	// --------
	
	ArrayList<Integer> li2 = (ArrayList) session.getAttribute("amount");
	int amount = Integer.parseInt(request.getParameter("amount"));
	
	if(li2==null){
		li2 = new ArrayList<>();
	}
	session.setAttribute("amount", li2);
	li2.add(amount);
	%>
	<script>
        alert("<%=menu%> 추가되었습니다.");
    	history.back();    
    </script>
	
</body>
</html>