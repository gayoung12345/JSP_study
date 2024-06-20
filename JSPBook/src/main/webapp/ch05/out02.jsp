<!-- out 내장 객체로 폼 페이지에서 아이디와 비밀번호를 전송받아 출력	 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Implicit Object</title>
</head>
<body>
	<form action="out02_process.jsp" method="post"> <!-- action에 설정한 페이지에 data를 post 방식으로 넘겨줌 -->
		<p> 아 이 디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="password">
		<p> <input type="submit" name="btn" value="전송" /> <!-- 작성한 data를 전송(submit)함 -->
	</form>
</body>
</html>