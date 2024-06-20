<!-- request 내장 객체로 모든 웹 브라우저 및 서버 정보 값 출력하기 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Implicit Object</title>
</head>
<body>
	<!-- 표현문 태그 -->
	<p> 클라이언트 IP : <%=request.getRemoteAddr() %> </p> <!-- 0:0:0:0:0:0:0:1 -->
	<p> 요청 정보 길이 : <%=request.getContentLength() %> </p> <!-- -1 -->
	<p> 요청 정보 인코딩 : <%=request.getCharacterEncoding() %> </p> <!-- UTF-8 -->
	<p> 요청 정보 콘텐츠 유형 : <%=request.getContentType() %> </p> <!-- null -->
	<p> 요청 정보 프로토콜 : <%=request.getProtocol() %> </p> <!-- HTTP/1.1 -->
	<p> 요청 정보 전송방식 : <%=request.getMethod() %> </p> <!-- GET -->
	<p> 요청 URI : <%=request.getRequestURI() %> </p> <!-- /JSPBook/ch05/request03.jsp -->
	<p> 콘텍스트 경로 : <%=request.getContextPath() %> </p> <!-- /JSPBook -->
	<p> 서버이름 : <%=request.getServerName() %> </p> <!-- localhost -->
	<p> 서버포트 : <%=request.getServerPort() %> </p> <!-- 8080 -->
	<p> 쿼리문 : <%=request.getQueryString() %> </p> <!-- null -->
</body>
</html>