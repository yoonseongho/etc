<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>구구단 결과</title>
  </head>
  <body>
    <table border="1">
      <tbody>
              <% 
          int gugu = Integer.parseInt(request.getParameter("gugu"));
          for (int i=1; i<=9; i++) {
            int result = gugu * i;
            %>
            <tr>
              <td><% out.print(gugu+"*" + i + " = " + result + "<br>"); %></td>
            </tr>
            <%
          }
        %>
        <h3><%= gugu %>단 결과</h3>
      </tbody>
    </table>
  </body>
</html>
