<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
session.setAttribute("name", "ȫ�浿");
session.setAttribute("id", "hong");
%>
<h2>��� 1</h2>
<%= session.getAttribute("name") %><br>
<%= session.getAttribute("id") %><br>

<%
session.removeAttribute("name");
%>
<h2>��� 2</h2>
<%= session.getAttribute("name") %><br>
<%= session.getAttribute("id") %><br>

<%
// session.invalidate(); java.lang.IllegalStateException ������ �̹� ��ȿȭ�Ǿ����ϴ�.
// ������ �̹� �Ҹ�Ǿ����Ƿ� ȣ�� �Ұ���
session.removeAttribute("id");
%>
<h2>��� 3</h2>
<%= session.getAttribute("name") %><br>
<%= session.getAttribute("id") %><br>