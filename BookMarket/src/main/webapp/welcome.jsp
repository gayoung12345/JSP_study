<%@ page contentType="text/html; charset=utf-8" %> <!-- encoding -->
<%@ page import = "java.util.Date" %> <!-- Date함수를 쓸 수 있도록 import -->
<html>
<head>
<title>Welcome</title>
<!-- bootstrap 5.3 version setting -->
<link 04 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container py-4">
	
		<!-- header: menu -->
		<%@ include file="menu.jsp" %> <!-- include directive tag -->
		
		<!-- 선언문태그 -->
		<%!String greeting = "도서 쇼핑몰에 오신 것을 환영합니다.";
		String tagline = "Welcome to Web Market!";%>
		
		<!-- middle title -->
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold"><%=greeting%></h1> <!-- 표현문태그 -->
				<h3 class="col-md-8 fs-4">BookMarket</h3>
			</div>
		</div>
		
		<!-- content -->
		<div class="row align-items-md-stretch text-center">
			<div class="col-md-12">
				<div class="h-100 p-5">
					<h3><%=tagline%></h3> <!-- 표현문태그 -->
					<!-- 시간 출력 스크립틀릿 태그 -->
					<%
						Date day = new java.util.Date(); // Date 타입 객체 day 생성
						String am_pm; // 오전,오후를 구분하는 String변수 am_pm선언
						
						int hour = day.getHours();		// 시
						int minute = day.getMinutes();	// 분
						int second = day.getSeconds();	// 초
						
						// AM, PM 비교
						if(hour/12 == 0) { // 현재 시각 / 12 = 값이 1보다 작으면 true
							am_pm = "AM"; // 오전
						} else {
							am_pm = "PM"; // 오후
							hour=hour-12;
						}
						
						// 시간 출력
						String CT = hour + ":" + minute + ":" + second + " " + am_pm;
						out.println("현재 접속 시각: " + CT + "\n");
					%>
				</div>
			</div>
		</div>
		
		<!-- bottom: copyright -->
		<%@ include file="footer.jsp" %> <!-- include directive tag -->

	</div>

</body>
</html>