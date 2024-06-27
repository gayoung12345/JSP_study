<!-- 폼 페이지에 입력한 비밀번호 값이 숫자인지 검사하기 -->
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin() {
		var form = document.loginForm;
		
		for (i = 0; i < form.id.value.length; i++) { // 아이디의 길이 만큼 반복
			var ch = form.id.value.charAt(i); // 아이디 문자열의 문자 하나씩 검사 
			if((ch<'a'||ch>'z')&&(ch>'A'||ch<'Z')&&(ch>'0'||ch<'9')) { // 문자가 만약 소문자가 아니면
				alert("아이디는 영문 소문자만 입력 가능합니다!");
				form.id.select(); // 아이디 자리에 입력 커서 이동
				return false; // 폼 제출 X
			}
		}
		if(isNaN(form.passwd.value)) { // isNaN(): Not-a-Number인지 여부를 확인하는 함수
			alert("비밀번호는 숫자만 입력 가능합니다!")
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