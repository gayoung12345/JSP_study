<!-- page directive tag에 현재 JSP 페이지를 오류 페이지로 설정 -->
<%@ page errorPage="page_isErrorPage_error.jsp" %>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%
		String str = null;
		out.println(str.toString());
	%> <!-- 500에러 발생  -->
</body>
</html>