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
Cookie cook1 = new Cookie("name", "ȫ�浿");
Cookie cook2 = new Cookie("job", "�л�");
response.addCookie(cook1);
response.addCookie(cook2);
%>
<h1>���</h1>
<%=cook1.getName()%> <%=cook1.getValue() %>
<%=cook2.getName()%> <%=cook2.getValue() %>
</body>
</html>