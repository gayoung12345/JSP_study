<html>
<head>
	<title>Scripting Tag</title>
</head>
<body>
 <!-- 스크립틀릿 태그: 자바코드로 이뤄진 로직 부분을 표현. out객체 없이 HTML응답을 만들어냄 -->
 <!-- 스크립틀릿 태그에 0 부터 10 사이의 짝수 출력 -->
 <%
	for (int i = 0; i <= 10; i++) {
		if (i % 2 == 0) { // 짝수이면 
			out.println(i + "<br>"); // 출력하고 개행
		}
	}
 %>
</body>
</html>