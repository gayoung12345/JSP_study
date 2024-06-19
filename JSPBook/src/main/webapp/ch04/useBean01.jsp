<!-- useBean 액션 태그에 Date 클래스를 사용하여 현재 날짜와 시각 출력하기 -->
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date" /> <!-- useBean 액션태그 -->
	<!-- 스크립틀릿 태그 -->
	<p> <%
			out.print("오늘의 날짜 및 시각");
		%>
	<!-- 표현문 태그 -->
	<p> <%=date %>
</body>
</html>