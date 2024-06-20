<!-- response 내장 객체로 페이지 이동 -->
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
		
		if (userid.equals("관리자") && password.equals("1234")) {
			response.sendRedirect("response01_success.jsp");
		} else {
			response.sendRedirect("response01_failed.jsp");
		}
	%>
</body>
</html>