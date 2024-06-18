<!-- forward 액션 태그와 param 액션 태그에 아이디와 이름 전달하기 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h3>param 액션 태그</h3>
	<jsp:forward page="param01_date.jsp" >
		<jsp:param name="id" value="admin" />
		<jsp:param name="name" value='<%=java.net.URLEncoder.encode("관리자") %>' />
	</jsp:forward>
	<p> Jakarta Server Page
</body>
</html>