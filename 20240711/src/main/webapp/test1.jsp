<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
Cookie cook1 = new Cookie("name", "홍길동");
Cookie cook2 = new Cookie("job", "학생");
response.addCookie(cook1);
response.addCookie(cook2);
%>
<h1>결과</h1>
<%=cook1.getName()%> <%=cook1.getValue() %>
<%=cook2.getName()%> <%=cook2.getValue() %>
</body>
</html>