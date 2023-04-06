<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <p style="text-align: center;">로그인 화면 입력</p>

    <form method=post action="Join_result.jsp" name="Login">
        <table border="1px" style="margin: 0 auto;" name="login">
            <tr>
                <td>아이디</td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="pw"></td>
            </tr>
            <tr >
                <td colspan="2" style="text-align: center;">
                    <input type="submit" class="asd" value="로그인" OnClick="Check()"></input>
                    <input type="reset" value="취소"></input>
                </td>
             </tr>
        </table>
    </form>
</body>
</html>