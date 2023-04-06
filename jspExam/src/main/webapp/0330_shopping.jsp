
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
String n = request.getParameter("n");
String n2 = request.getParameter("n2");
String selec = request.getParameter("selec");
%>
	<form action="0330_s_result.jsp">
		주류를 선택하세요 
		<select name="selec">
			<option value="소주">소주</option>
			<option value="맥주">맥주</option>
			<option value="와인">와인</option>
			<option value="양주">양주</option>
			<option value="막걸리">막걸리</option>
		</select>
		<br>
		수량을 적어주세요.  <input type="text" name="n"> 
		<input type="submit">
	</form>
	<hr>
</body>
</html>
