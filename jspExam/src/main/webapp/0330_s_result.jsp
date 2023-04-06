<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

</head>
<body>
<%
String n = request.getParameter("n");
String selec = request.getParameter("selec");
int price = 0;
int num = Integer.parseInt(n);
	if(selec.equals("소주")){
		price = 4000;
	} else if (selec.equals("맥주")){
		price = 5000;
	} else if (selec.equals("와인")){
		price = 15000;
	} else if (selec.equals("양주")){
		price = 55000;
	} else if (selec.equals("막걸리")){
		price = 3000;
	}
	int full = price * num;
%>

	<h1>주문계산 결과</h1>
	구입하신 주류는 <%=selec %>이고, <%=n %>병 입니다.<br>
	지불하실 총 금액은 <%=full %>입니다.


	
</body>
</html>