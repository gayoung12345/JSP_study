<!-- include directive tag로 머리글과 바닥글에 외부 파일 내용 포함 -->
<%@ page contentType="text/html; charset=utf-8" %>
<!-- 선언문 태그 -->
<%! 
	int pageCount = 0;
	void addCount() {
		pageCount++;
	}
%>
<%
	addCount();
%>
<p>이 사이트 방문은 <%=pageCount %>번째 입니다.</p> <!-- 표현문 태그 -->