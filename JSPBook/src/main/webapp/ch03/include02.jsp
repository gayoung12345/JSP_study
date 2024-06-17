<!-- include directive tag로 머리글과 바닥글에 외부 파일 내용 포함 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%@ include file="include02_header.jsp" %> <!-- header -->
	<p>방문해 주셔서 감사합니다.</p> <!-- content -->
	<%@ include file="include02_footer.jsp" %> <!-- footer -->
</body>
</html>