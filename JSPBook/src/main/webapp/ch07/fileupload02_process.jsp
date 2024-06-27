<!-- MultipartRequest 클래스를 이용하여 여러 파일 업로드 및 정보 출력 -->
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%><!-- MultipartRequest -->
<%@ page import="com.oreilly.servlet.multipart.*"%><!-- DefaultFileRenamePolicy -->
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
	// DefaultFileRenamePolicy class 작성 (MultipartRequest 생성 가능)
	MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5 * 1024 * 1024, "utf-8",
			new DefaultFileRenamePolicy());

	String name1 = multi.getParameter("name1"); // 이름, 제목 값을 가지고 오도록 요청 파라미터 이름 설정
	String subject1 = multi.getParameter("subject1"); // MultipartRequest 객체 타입의 getParameter()

	String name2 = multi.getParameter("name2");
	String subject2 = multi.getParameter("subject2");

	String name3 = multi.getParameter("name3");
	String subject3 = multi.getParameter("subject3");

	// 폼 페이지에서 전송된 요청 파라미터 중 파일을 받음
	Enumeration files = multi.getFileNames(); // MultipartRequest 객체 타입 메소드 사용

	String file3 = (String) files.nextElement();	// 저장된 파일을 하나 가지고 옴
	String filename3 = multi.getFilesystemName(file3); // 파일 명을 가지고 옴

	String file2 = (String) files.nextElement();
	String filename2 = multi.getFilesystemName(file2);

	String file1 = (String) files.nextElement();
	String filename1 = multi.getFilesystemName(file1);
	%>
	<table border="1">
		<tr>
			<th width="100">이름</th>
			<th width="100">제목</th>
			<th width="100">파일</th>
		</tr>
		<%
		// 출력 
		out.print("<tr><td>" + name1 + "</td>");
		out.print("<td>" + subject1 + "</td>");
		out.println("<td>" + filename1 + "</td></tr>");

		out.print("<tr><td>" + name2 + "</td>");
		out.print("<td>" + subject2 + "</td>");
		out.println("<td>" + filename2 + "</td></tr>");

		out.print("<tr><td>" + name3 + "</td>");
		out.print("<td>" + subject3 + "</td>");
		out.println("<td>" + filename3 + "</td></tr>");
		%>
	</table>
</body>
</html>
