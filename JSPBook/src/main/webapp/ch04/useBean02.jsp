<!-- 자바빈즈 Calculator를 생성하고 useBean 액션 태그에 Calculator 클래스를 사용하여 숫자 출력 -->
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="bean" class="ch04.com.dao.Calculator" /> <!-- useBean 액션태그 -->
	<!-- 스크립틀릿 태그 -->
	<p> <%
			int m = bean.process(5);		// 함수 호출
			out.print("5의 3제곱: " + m); 	// 출력
		%>
</body>
</html>