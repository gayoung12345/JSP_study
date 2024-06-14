<html>
<head>
	<title>Scripting Tag</title>
</head>
<body>
 <!-- 선언문 태그: 변수나 메소드를 선언하는 태그. 스크립틀릿 태그보다 나중에 선언 되어도 스크립틀릿 태그에서 사용 가능 -->
 <!-- 선언문 태그에 전역 메소드 사용하기 -->
 <%! String makeItLower(String data) { // 전역 메소드 선언
 		return data.toLowerCase();
 } %>
 <%
 	out.println(makeItLower("Hello World")); // 메소드에 파라미터 값을 넣어 호출하고 return값 출력
 %>
</body>
</html>