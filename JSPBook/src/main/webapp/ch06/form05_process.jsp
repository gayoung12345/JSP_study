<!-- 회원 가입 양식에서 폼 데이터 전송받기2 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<!-- 스크립틀릿 태그 -->
	<%
		request.setCharacterEncoding("utf-8");
	
		String id=request.getParameter("id");
		String passwd=request.getParameter("passw");
		String name=request.getParameter("name");
		String phone1=request.getParameter("phone1");
		String phone2=request.getParameter("phone2");
		String phone3=request.getParameter("phone3");
		String gender=request.getParameter("gender");
		String[] hobby=request.getParameterValues("hobby");
		String comment=request.getParameter("comment");
	%>
	<!-- 표현문 태그 -->
		<p> 아이디	: <%=id %>
		<p> 비밀번호	: <%=passwd %>
		<p> 이름		: <%=name %>
		<p> 연락처	: <%=phone1 %> - <%=phone2 %> - <%=phone3 %>
		<p> 성별		: <%=gender %>
		<p> 취미		: <%
			if (hobby != null) {
				for (int i = 0; i < hobby.length; i++) {
					out.println(" " + hobby[i]);
				}
			}
		%>
		<p> 가입 인사 : <%=comment %>
</body>
</html>