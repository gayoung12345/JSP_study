<!-- taglib tag에 JSTL의 Core태그를 설정하여 1부터 10까지 출력 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<c:forEach var = "k" begin="1" end="10" step="1"> <!-- c:forEach : JSTL의 Core 태그 반복문 -->
		<c:out value="${k}" /> <!-- c:out : 변수 k를 출력 -->
	</c:forEach>
</body>
</html>