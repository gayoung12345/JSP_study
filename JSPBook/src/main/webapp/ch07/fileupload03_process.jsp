<!-- Commons-FileUpload를 이용하여 파일 업로드하기 -->
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="org.apache.commons.fileupload.*" %><!-- Commons-FileUpload -->
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
		// 전송된 파일을 저장할 서버 경로 지정
		String fileUploadPath = "C:\\upload"; 
	
		// 파일 업로드를 위한 객체 생성
		DiskFileUpload upload = new DiskFileUpload();

		// 폼 페이지에서 전송 요청한 파라미터를 전달 받을 수 있는 객체 생성
		List items = upload.parseRequest(request);
		
		// 폼 페이지에서 전송된 파라미터를 Iterator클래스로 변환
		Iterator params = items.iterator();
		
		
		while(params.hasNext()) { // 전송된 요청 파라미터가 없을 때 까지 반복
			FileItem fileItem = (FileItem) params.next(); // 전송된 요청 파라미터의 이름을 가지고 옴
			if(!fileItem.isFormField()) { // 파라미터가 파일이면 저장 경로에 업로드 파일 저장
				String fileName = fileItem.getName();
				fileName=fileName.substring(fileName.lastIndexOf("\\") +1);
				File file = new File(fileUploadPath + "/" + fileName);
				fileItem.write(file);
			}
		}
	%>
</body>
</html>
