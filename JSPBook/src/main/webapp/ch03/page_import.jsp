<!-- page directive tag에 Date 클래스를 이용하여 현재 날짜 출력 -->
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%@ page import="java.util.Date" %>
	Today is <%=new Date() %>
</body>
</html>