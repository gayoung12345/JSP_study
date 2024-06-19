<%@ page contentType="text/html; charset=utf-8"%> <!-- encoding -->
<%@ page import="java.util.ArrayList"%> <!-- import -->
<%@ page import="dto.Book"%> <!-- import -->
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" /> <!-- action -->
<html>
<head>
<!-- bootstrap 5.3 version setting -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"	rel="stylesheet">
<title>도서 목록</title>
</head>
<body>
	<div class="container py-4">

		<!-- header: menu -->
		<%@ include file="menu.jsp"%> <!-- include directive tag -->

		<!-- middle title -->
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">도서목록</h1>
				<p class="col-md-8 fs-4">BookList</p>
			</div>
		</div>
		
		<!-- useBean 액션태그의 id속성값을 통해 BookRepository클래스의 getAllBooks()호출 -->
		<!-- 호출한 메소드의 return 결과값을 ArrayList<Book>객체 타입 변수 listOfBooks에 저장 -->
		<!-- 스크립틀릿 태그 -->
		<%
			ArrayList<Book> listOfBooks = bookDAO.getAllBooks();
		%>

		<!-- Book객체타입 변수 book에 저장된 도서명, 도서 상세정보, 도서 가격을 반복(for문)출력 -->
		<div class="row align-items-md-stretch	text-center">
			<!-- 스크립틀릿 태그 -->
			<%
				for(int i = 0; i < listOfBooks.size(); i++) {
					Book book = listOfBooks.get(i);
			%>
			<div class="col-md-4">
				<div class="h-100 p-2">
					<!-- 표현문 태그 -->
					<h5><b><%=book.getName() %></b></h5>
					<p><%=book.getAuthor() %></p>
					<p><%=book.getPublisher() %> | 35<%=book.getUnitPrice() %>원
					<p> <%=book.getDescription().substring(0,60) %>...
					<p> <%=book.getUnitPrice() %>원
				</div>
			</div>
			<!-- 스크립틀릿 태그 -->
			<%
				}
			 %>
		</div>

		<!-- bottom: copyright -->
		<%@ include file="footer.jsp"%>
		<!-- include directive tag -->
	</div>

</body>
</html>