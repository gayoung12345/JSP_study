<!-- request 내장 객체로 HTTP 헤더 정보 값 출력하기 -->
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Enumeration" %> <!-- 컬렉션 요소들을 순회(iterate)하는 데 사용 -->
<html>
<head>
<title>Implicit Object</title>
</head>
<body>
	<!-- 스크립틀릿 태그 -->
	<%
		Enumeration<?> en = request.getHeaderNames(); // 모든 header name을 가져와서 en객체에 저장
		while (en.hasMoreElements()) { // en객체에 저장된 header name 이름이 있을 때 까지 반복
			String headerName = (String) en.nextElement();	// 헤더 이름을 가져와서 String 타입으로 변환하고 headerName변수에 저장
			String headerValue = request.getHeader(headerName); // 헤더 이름으로 헤더의 값을 가져와서 headerValue변수에 저장
	%>
	<!-- 표현문 태그 -->
	<%=headerName %> : <%=headerValue %> <br> <!-- "헤더 이름 : 헤더 값" 출력 -->
	<%
		} 
	%>
</body>
</html>