<!-- getProperty 액션 태그에 자바빈즈 Person을 이용하여 아이디와 이름을 가져와 출력 -->
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" /> <!-- useBean 액션태그 -->
	<p> 아이디 : <jsp:getProperty name="person" property="id" /> <!-- getProperty 액션태그 -->
	<p> 이 름 : <jsp:getProperty name="person" property="name" /> <!-- getProperty 액션태그 -->
</body>
</html>