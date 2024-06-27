<!-- 폼 페이지에 입력한 데이터(아이디와 비밀번호) 값의 유무 검사하기 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkForm() {
		var form = document.loginForm;
		if(form.id.value == "") { // 만약 아이디 값이 없으면
			alert("아이디를 입력해주세요.");
			form.id.focus(); // 아이디 자리에 입력 커서 이동
			return false; // 폼 제출 X
		} else if (form.passwd.value=="") { // 만약 비밀번호 값이 없으면
			alert("비밀번호를 입력해주세요.");
			form.passwd.focus(); // 비밀번호 자리에 입력 커서 이동
			return false; // 폼 제출 X
		}
		return true; // 유효성 검사 통과 시 폼 제출
	}
</script>
<body>
	<form name="loginForm" action="validation02_process.jsp" method="post"  onsubmit="return checkForm()"> <!-- submit을 할 경우 함수 호출 -->
		<p>아 이 디	: <input type="text" name="id">
		<p>비밀번호	: <input type="password" name="passwd">
		<p> <input type="submit" value="전송" >
	</form>
</body>
</html>