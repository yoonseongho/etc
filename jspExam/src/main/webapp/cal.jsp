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
    <h1>계산기</h1>
    <form action="">
        <input type="text" name="n"> 
        <select name="selec">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="">*</option>
            <option value="/">/</option>
        </select>

        <input type="text" name="n2"> 
        <input type="submit"> <input type="reset">
    </form>
    <hr>

    <%
    int result = 0;
    if (n != null && n2 != null) {
        int num1 = Integer.parseInt(n);
        int num2 = Integer.parseInt(n2);
        if (selec.equals("+")) {
            result = num1 + num2;
        } else if (selec.equals("-")) {
            result = num1 - num2;
        } else if (selec.equals("*")) {
            result = num1 * num2;
        } else if (selec.equals("/")) {
            result = num1 / num2;
        }
    }
    %>
    결과 : <%= result %>
</body>
</html>