<!-- page directive tag에 표현 언어를 사용할 수 없도록 설정 -->
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page isELIgnored="true" %> <!-- 표현 언어 무시 = true -->
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%
		request.setAttribute("RequestAttribute", "request 내장 객체");
	%>
	${requestScope.RequestAttribute}
</body>
</html>