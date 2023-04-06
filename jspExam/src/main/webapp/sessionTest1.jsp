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
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		 session.setAttribute("idKey", id);
		 session.setMaxInactiveInterval(60);
	%>
<form method="post" action="sessionTest2.jsp">
	<h2>가장 좋아하는 스포츠를 선택하세요</h2><br/>
	<input type="radio" name="sports" value="농구"/>농구
	<input type="radio" name="sports" value="야구"/>야구
	<input type="radio" name="sports" value="축구"/>축구
	<input type="radio" name="sports" value="배구"/>배구
	<br/>
	<h2>가장 좋아하는 계정을 선택하세요</h2>
	<select name="season">
	<option value="봄">봄</option>
	<option value="여름">여름</option>
	<option value="가을">가을</option>
	<option value="겨울">겨울</option>
	</select>
	<input type="submit" value="전송"/>
</form>
</body>
</html>