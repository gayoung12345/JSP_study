<!-- 폼 페이지에 입력한 데이터(아이디와 비밀번호) 값의 길이 검사 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin() {
		var form = document.loginForm;
		
		if(form.id.value.length < 4 || form.id.value.length > 12) { // 아이디의 길이가 4보다 적거나 12보다 크면
			alert("아이디는 4~12자 이내로 입력 가능합니다!");
			form.id.select(); // 아이디 자리에 입력 커서 이동
			return false; // 폼 제출 X
		}
		if(form.passwd.value.length < 4) { // 비밀번호의 길이가 4보다 작으면
			alert("비밀번호는 4자 이상으로 입력해야 합니다!");
			form.passwd.select(); // 비밀번호 자리에 입력 커서 이동
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