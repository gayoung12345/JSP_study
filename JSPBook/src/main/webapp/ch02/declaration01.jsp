<html>
<head>
	<title>Scripting Tag</title>
</head>
<body>
 <!-- 선언문 태그: 변수나 메소드를 선언하는 태그. 스크립틀릿 태그보다 나중에 선언 되어도 스크립틀릿 태그에서 사용 가능 -->
 <!-- 선언문 태그에 전역변수 사용하기 -->
 <%! int data = 50; // 전역 변수 선언 %>
 <%
 	out.println("Value of the variable is: " + data); // 변수 출력
 %>
</body>
</html>