<!-- page directive tag에 이동할 특정 오류 페이지 작성 -->
<%@ page errorPage="page_errorPage_error.jsp" %>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%
		String str = null;
		out.println(str.toString());
	%> <!-- 500에러 발생  -->
</body>
</html>