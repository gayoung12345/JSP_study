<%@page contentType="text/html; charset=utf-8"%>
<%@page import="org.apache.commons.fileupload.*"%><!-- Commons-FileUpload -->
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
<%
	//전송된 파일을 저장할 서버 경로 지정
	String path = "C:\\upload";
	
	//파일 업로드를 위한 객체 생성
	DiskFileUpload upload = new DiskFileUpload();
 
	upload.setSizeMax(1000000); // 업로드할 파일의 최대 크기
	upload.setSizeThreshold(4096); // 메모리 상에 저장할 최대 크기
	upload.setRepositoryPath(path); // 업로드 파일을 임시 저장할 경로 지정

	// 폼 페이지에서 전송 요청한 파라미터를 전달 받을 수 있는 객체 생성
	List items = upload.parseRequest(request);
	
	// 폼 페이지에서 전송된 파라미터를 Iterator클래스로 변환
	Iterator params = items.iterator();

	while (params.hasNext()) { // 전송된 요청 파라미터가 없을 때 까지 반복
		FileItem item = (FileItem) params.next(); // 전송된 요청 파라미터의 이름을 가지고 옴

		if (item.isFormField()) { // 파라미터가 일반 데이터이면 요청 파라미터의 이름과 값을 출력
			String name = item.getFieldName();
			String value = item.getString("utf-8");
			out.println(name + "=" + value + "<br>");
		} else { // 파라미터가 파일이면 요청파라미터 이름, 파일 이름, 파일 콘텐츠 유형, 파일크기 정보 출력
			String fileFieldName  = item.getFieldName();				
			String fileName = item.getName();
			String contentType = item.getContentType();

			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			long fileSize = item.getSize();

			File file = new File(path + "/" + fileName);
			item.write(file);

			out.println("-----------------------------------<br>");
			out.println("요청 파라미터 이름 : " + fileFieldName  + "<br>");
			out.println("저장 파일 이름 : " + fileName + "<br>");
			out.println("파일 콘텐츠 유형 : " + contentType + "<br>");
			out.println("파일 크기 : " + fileSize);
		}
	}
%>
</body>
</html>