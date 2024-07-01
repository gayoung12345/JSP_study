<!-- 사용자의 로케일에 따라 국가, 날짜, 통화 형식 출력 -->
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.*" %> <!-- Date 클래스 사용 -->
<html>
<head>
<title>Internationalization</title>
</head>
<body>
	<h3>현재 로케일의 국가, 날짜, 통화</h3>
	<%
		Locale locale = request.getLocale(); // 웹 브라우저에 이미 정이된 로케일을 가지고 옴
		Date currentDate = new Date(); // 현재 시스템 날짜를 가지고 옴
		DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.FULL, locale); // 현재 로케일로 DateFormat 생성
		NumberFormat numberFormat = NumberFormat.getNumberInstance(locale); // 현재 로케일로 NumberFomat 생성
	%>
	<p> 국가 : <%=locale.getDisplayCountry() %> 		<!-- 대한민국 -->
	<p> 날짜 : <%=dateFormat.format(currentDate) %>	<!-- 년, 월, 일, 요일 -->
	<p> 숫자 : <%=numberFormat.format(12345.67) %>	<!-- 12,345.67 -->
</body>
</html>