<!-- MultipartRequest 클래스를 이용하여 파일 업로드 및 정보 출력 -->
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %> <!-- MultipartRequest -->
<%@ page import="com.oreilly.servlet.multipart.*" %> <!-- DefaultFileRenamePolicy -->
<%@ page import="java.util.*" %> 
<%@ page import="java.io.*" %>
<% 
	// DefaultFileRenamePolicy class 작성 (MultipartRequest 생성 가능)
	MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());

	// 폼 페이지에서 전송된 요청 파라미터를 받음
	Enumeration params = multi.getParameterNames(); // MultipartRequest 객체 타입 메소드 사용
	
	while(params.hasMoreElements()) { // 요청 파라미터가 없을 때 까지 반복
		String name = (String) params.nextElement(); // 이름을 가져옴
		String value = multi.getParameter(name); // 가져온 이름으로 값을 찾아서 가져옴
		out.println(name + " = " + value + "<br>"); // 값 출력
	}
	out. println("---------------------------------<br>");
	
	// 폼 페이지에서 전송된 요청 파라미터 중에서 파일을 받음
	Enumeration files = multi.getFileNames(); // MultipartRequest 객체 타입 메소드 사용(file)
	
	while(files.hasMoreElements()) { // 요청 파라미터가 없을 때 까지 반복
		String name = (String) files.nextElement(); // 요청 파라미터 이름
		String filename = multi.getFilesystemName(name); // 업로드 된 파일 이름 가져옴
		String original = multi.getOriginalFileName(name); // 파일이 서버에 저장되기 전의 파일 이름을 가져옴
		String type = multi.getContentType(name); // 파일 콘텐츠 유형
		File file = multi.getFile(name); // 폼 페이지에서 전송된 파일을 가지고 옴
		
		
		// 출력
		out.println("요청 파라미터 이름 : " + name + "<br>");
		out.println("실제 파일 이름 : " + original + "<br>");
		out.println("저장 파일 이름 :"+ filename + "<br>");
		out.println("파일 콘텐츠 유형 : "+ type + "<br>");
		
		if(file != null) {
			out.println("파일 크기 : " + file.length());
			out.println("<br>");
		}
	}

%>