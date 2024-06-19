<!-- setProperty 액션 태그에 자바빈즈 Person으로 아이디와 이름 설정하여 출력 -->
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" /> <!-- useBean 액션태그 -->
	<jsp:setProperty name="person" property="id" value="230824" /> <!-- setProperty 액션태그 -->
	<jsp:setProperty name="person" property="name" value="홍길동" /> <!-- setProperty 액션태그 -->
	
	<!-- 스크립틀릿 태그 -->
	<!-- Getter()를 사용해 멤버 정보를 가지고 와서 print() -->
	<p> 아이디 : <% out.println(person.getId()); %> 
	<p> 이 름 : <% out.println(person.getName()); %>
	
</body>
</html>