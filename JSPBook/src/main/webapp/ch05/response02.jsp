<!-- response 내장 객체로 5초마다 JSP페이지 갱신 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Implicit Object</title>
</head>
<body>
	<p> 이 페이지는 5초마다 새로고침 됩니다.
	<!-- 스크립틀릿 태그 -->
	<%
		response.setIntHeader("Refresh", 5); // response 내장 객체 메소드를 사용해서 5초마다 새로고침(refresh되도록 설정)
	%>
	<!-- 표현문 태그 -->
	<p> <%=(new java.util.Date()) %> <!-- 페이지가 나타난 시간 출력 -->
</body>
</html>