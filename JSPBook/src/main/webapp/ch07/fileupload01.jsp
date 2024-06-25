<!-- MultipartRequest 클래스를 이용하여 파일 업로드 및 정보 출력 -->
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data" action="fileupload01_process.jsp">
		<p> 이 름 : <input type="text" name="name">
		<p> 제 목 : <input type="text" name="subject">
		<p> 파 일 : <input type="file" name="filename">
		<p> <input type="submit" value="파일 올리기">	<!-- 데이터를 서버에 전송 -->
	</form>
</body>
</html>