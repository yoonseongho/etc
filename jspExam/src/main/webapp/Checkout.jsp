<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = (String) session.getAttribute("idKeya");

%>
<h2>장바구니</h2>
선택한 상품 목록 <br>
<b><%=id %>의 장바구니</b> <br>
<hr>
<%
	ArrayList<String> li = (ArrayList) session.getAttribute("menu");	
	ArrayList<Integer> li2 = (ArrayList) session.getAttribute("amount");
	
	%>
	
	<%for(int i=0; i<li.size(); i++){
		if(li.get(i)){
			
		}
	%>
	<%
	
	if(li == null){
		out.print("<script>alert('장바구니가 비어있습니다 음식을 선택해주세요'); history.back(); </script>");
	}
	else{
	%><table border=1>
	<tr>
		<td>번호</td>
		<td>음식 종류</td>
		<td>수량</td>
	</tr>
		<% for(int i=0; i<li.size(); i++){ %>
		<tr>
			<td><%=i+1%></td>
	 
			<td><% out.print(li.get(i)); %></td>
			<td><% out.print(li2.get(i)); %></td>
		</tr>
		<% 
		}
		%>
		<tr>

		<td>총 금액 : <%=li. %></td>
		</tr>
	</table><% 
		
	}
	int sum=0;
	
	

%>

	<input type="button" onclick ="history.back()" value="뒤로가기">
	<form method="post" action="Login.jsp">
		<input type="submit" value="로그아웃">
	</form>
	
</body>
</html>