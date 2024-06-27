<!-- 폼 페이지에 입력한 아이디와 비밀번호 출력 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	// 알림창으로 아이디와 비밀번호 값을 알려줌
	function checkForm() {
		alert("아이디 : " + document.loginForm.id.value + "\n" + "비밀번호 : " + document.loginForm.passwd.value);
	}
</script>
<body>
	<form name="loginForm">
		<p>아 이 디	: <input type="text" name="id">
		<p>비밀번호	: <input type="password" name="passwd">
		<p> <input type="submit" value="전송" onclick="checkForm()"> <!-- 전송버튼을 누르면 함수 호출 -->
	</form>
</body>
</html>