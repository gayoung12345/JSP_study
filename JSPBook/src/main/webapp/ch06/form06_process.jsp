<!-- 회원 가입 양식에서 폼 데이터 한 번에 전송받기 -->
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*, java.util.*" %>
<html>
<head>
<title>Form Processing</title>
</head>
<body>

	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>		
		</tr>
		<!-- 스크립틀릿 태그 -->
		<%
			request.setCharacterEncoding("utf-8");
			
			Enumeration paramNames = request.getParameterNames(); // 전송 요청된 파라미터를 받아오는 내장 객체 메소드
			while (paramNames.hasMoreElements()) { // 전송된 요청 파라미터가 없을 때 까지 반복
				String name=(String) paramNames.nextElement(); // 파라미터 이름 가져오기
				out.print("<tr><td>" + name + "</td>\n"); // 출력 
				String paramValue = request.getParameter(name); // 파라미터 값 가져오기
				out.println("<td>" + paramValue + "</td></tr>\n"); // 출력
			}
		%>
	</table>
</body>
</html>