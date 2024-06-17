<!-- page directive tag에 출력 버퍼 크기 설정 -->
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%@ page buffer="16kb" %> <!-- 출력버퍼 크기 설정 -->
	Today is <%=new java.util.Date() %>
</body>
</html>