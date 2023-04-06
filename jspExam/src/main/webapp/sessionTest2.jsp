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
	String sp = request.getParameter("sports");
	String se = request.getParameter("season");
	
	// 세션 속성 값 반환
	String id = (String) session.getAttribute("idKey");
	
	// 세션 고유 id반환
	String sessionId = session.getId();
	
	// 세션 유지시간 값 반환
	int interval = session.getMaxInactiveInterval();

	if(id != null) {
		
%>
<%= id%>님이 좋아하는 스포츠와 계절은?<br/>
	<%= sp%>와 <%= se %>입니다.<br/>
	세션 id: <%= sessionId %>
	세션 유지시간: <%= interval %>
<%
	session.invalidate();
	} else { // 세션이 연결되지 않았을 경우(id)
		out.println("세션 연결 시간 초과. 재로그인 해주세요!");
	}
	%>
</body>
</html>