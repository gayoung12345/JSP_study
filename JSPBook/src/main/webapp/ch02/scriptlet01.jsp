<html>
<head>
	<title>Scripting Tag</title>
</head>
<body>
 <!-- 스크립틀릿 태그: 자바코드로 이뤄진 로직 부분을 표현. out객체 없이 HTML응답을 만들어냄 -->
 <!-- 스크립틀릿 태그에 지역 변수 사용 -->
 <%
    // 지역변수 a, b
	int a = 2;
 	int b = 3;
 	int sum = a + b;
 	out.println("2 + 3 = " + sum);
 %>
</body>
</html>