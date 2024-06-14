<html>
<head>
	<title>Scripting Tag</title>
</head>
<body>
 <!-- 선언문 태그: 변수나 메소드를 선언하는 태그. 스크립틀릿 태그보다 나중에 선언 되어도 스크립틀릿 태그에서 사용 가능 -->
 <!-- 선언문 태그에 전역 메소드 사용하기 -->
 <%! int sum(int a, int b) { // 전역 메소드 선언
	 return a + b;
 	} %>
 <%
 	out.println("2 + 3 = " + sum(2, 3)); // 호출한 메소드의 return 값 출력
 %>
</body>
</html>