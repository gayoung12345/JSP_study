<!-- response 내장 객체로 오류 응답 코드와 오류 메세지 보내기 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Implicit Object</title>
</head>
<body>
	<!-- 스크립틀릿 태그 -->
	<%
		response.sendError(404,"요청한 페이지를 찾을 수 없습니다."); // response 내장 객체 메소드를 사용해서 오류 404코드와 메세지 출력
	%>
</body>
</html>