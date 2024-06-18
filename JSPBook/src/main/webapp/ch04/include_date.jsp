<!-- include 액션 태그에 현재 날짜와 시각을 출력하는 페이지 포함 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<p> 오늘의 날짜 및 시간
	<p> <%= (new java.util.Date()).toLocaleString() %>
</body>
</html>