<html>
<head>
	<title>Scripting Tag</title>
</head>
<body>
 <!-- 표현문 태그: 태그에서 선언된 변수나 메소드의 반환 값을 외부로 출력(단, 스크립틀릿 태그에서는 사용 불가) -->
 <!-- 표현문 태그로 연산 결과 출력 -->
 <%
 	int a = 10;
 	int b = 20;
 	int c = 30;
 %>
 <%=a + b + c %> <!-- 60 출력 -->
</body>
</html>