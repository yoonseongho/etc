<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>구구단 선택</title>
  </head>
  <body>
    <h2>구구단 선택</h2>
    <form action="0328_result.jsp" method="post">
      <select name="gugu">
        <% for (int i=2; i<=9; i++) { %>
          <option value="<%=i%>"><%=i%>단</option>
        <% } %>
      </select>
      <br><br>
      <input type="submit" value="전송">
      <input type="reset" value="초기화">
    </form>
  </body>
</html>
