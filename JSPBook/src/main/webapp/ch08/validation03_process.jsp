<!-- 폼 페이지에 입력한 데이터(아이디와 비밀번호) 값의 길이 검사 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Validation</title>
</head>
<body>
	<h3>입력에 성공했습니다.</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	%>
	<p> 아이디 : <%= id %>
	<p> 비밀번호 : <%= passwd %>
</body>
</html>