<!-- page directive tag에 현재 JSP 페이지를 오류 페이지로 설정 -->
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page isErrorPage="true" %>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<h4>에러가 발생했습니다.</h4>
	<h5>exception 내장 객체 변수</h5>
	<%
		exception.printStackTrace(new java.io.PrintWriter(out));
	%>
</body>
</html>