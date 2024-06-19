<!-- useBean 액션 태그에 자바빈즈 Person으로 아이디와 이름을 설정하여 출력하기 -->
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
	<!-- 스크립틀릿 태그 -->
	<%
		person.setId(20230824);
		person.setName("홍길동");
	%> <!-- Setter()를 사용해 멤버 정보를 수정 -->
	<jsp:include page="useBean03.jsp" /> <!-- useBean03.jsp를 가지고와서 출력-->
</body>
</html>