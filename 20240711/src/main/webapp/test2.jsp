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
session.setAttribute("name", "홍길동");
session.setAttribute("id", "hong");
%>
<h2>결과 1</h2>
<%= session.getAttribute("name") %><br>
<%= session.getAttribute("id") %><br>

<%
session.removeAttribute("name");
%>
<h2>결과 2</h2>
<%= session.getAttribute("name") %><br>
<%= session.getAttribute("id") %><br>

<%
// session.invalidate(); java.lang.IllegalStateException 세션이 이미 무효화되었습니다.
// 세션이 이미 소멸되었으므로 호출 불가능
session.removeAttribute("id");
%>
<h2>결과 3</h2>
<%= session.getAttribute("name") %><br>
<%= session.getAttribute("id") %><br>