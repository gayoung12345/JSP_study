<!-- include 액션 태그와 param 액션 태그에 제목과 현재 날짜 전달하기 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<%
		String title = request.getParameter("title");
	%>
	<h3><%=java.net.URLDecoder.decode(title) %></h3>
	Today is :<%=request.getParameter("date") %>
</body>
</html>