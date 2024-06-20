<!-- out 내장 객체로 폼 페이지에서 아이디와 비밀번호를 전송받아 출력	 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Implicit Object</title>
</head>
<body>
	<!-- 스크립틀릿 태그 -->
	<%
		// request내장객체 메소드 사용해서 인코딩
		request.setCharacterEncoding("utf-8"); 
		// 입력된 data를 전송 받도록 request 내장객체 메소드 사용
		String userid=request.getParameter("id"); 
		String password=request.getParameter("password");
	%>
	<!-- out 내장객체 메소드를 사용해 출력 -->
	<p> 아이디: <% out.println(userid); %>	
	<p> 비밀번호: <% out.println(password); %>
</body>
</html>