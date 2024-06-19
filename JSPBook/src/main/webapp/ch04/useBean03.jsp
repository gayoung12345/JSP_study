<!-- 자바빈즈 Person을 생성하고 useBean 액션 태그에 Person 클래스를 사용하여 아이디와 이름 출력 -->
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" /> <!-- useBean 액션태그 -->
	<!-- 표현문 태그 -->
	<p> 아이디 : <%=person.getId() %> <!-- Getter()를 사용해 멤버 정보를 가지고 옴 -->
	<p> 이 름 : <%=person.getName() %>
</body>
</html>