<!-- out 내장 객체로 오늘의 날짜 및 시각 출력하기 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Implicit Object</title>
</head>
<body>
	<!-- 스크립틀릿 태그 -->
	<%
		// 문자열을 출력하도록 out 내장객체 메소드 사용
		out.println("오늘의 날짜 및 시각" + "<br>"); 
		out.println(java.util.Calendar.getInstance().getTime());
	%>
</body>
</html>