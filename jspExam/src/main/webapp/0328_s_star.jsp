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
    	String txt = request.getParameter("count");
    	String ch = request.getParameter("character");
    	
        // count 파라미터 값을 받아옴
        int count = Integer.parseInt(request.getParameter("count"));

        // 계단식으로 내가 원하는 문자 출력
        for (int i = 1; i <= count; i++) {
            for (int j = 1; j <= i; j++) {
                out.print(ch);
            }
            out.print("<br>");
        }
    %>
</body>
</html>