<!-- forward 액션 태그와 param 액션 태그에 아이디와 이름 전달하기 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<p> 아이디: <%= request.getParameter("id") %>
		<%
			String name = request.getParameter("name");
		%>
	<p> 이 름: <%= java.net.URLDecoder.decode(name) %>
</body>
</html>