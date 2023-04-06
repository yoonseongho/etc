<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String sport = request.getParameter("sports");
		String season = request.getParameter("season");
		
		String id = (String) session.getAttribute("idKey");
		
		//세션 고유 id 반환
		String sessionId = session.getId();
		
		int interval = session.getMaxInactiveInterval();
		
		if(id != null){
		%>
		<b><%=id %></b> 님이 좋아하는 스포츠와 계절은 ? <br> 
		<%=sport %> 와  <%=season %> 입니다.<br> 
		세션 id : <%=sessionId %><br>
		세션 유지시간 : <%=interval %>
		<%
		session.invalidate();
		}
		else{ 	// 세션이 연결되지 않았을 경우 (id)
			out.print("세션 연결 초과. 재로그인 해주세요");
		}
	%>
</body>
</html>