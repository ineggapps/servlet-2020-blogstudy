<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
<script type="text/javascript">
	function infoConfirm() {
		if (document.reg_frm.id.value.length == 0) {
			alert("아이디는 필수 사항입니다.");
			reg_frm.id.focus();
			return;
		}

		if (document.reg_frm.id.value.length < 4) {
			alert("아이디는 4글자 이상이어야 합니다.");
			reg_frm.id.focus();
			return;
		}

		if (document.reg_frm.pw.value.length == 0) {
			alert("비밀번호는 필수사항입니다.")
			reg_frm.pw.focus();
			return;
		}

		if (document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
			alert("비밀번호가 일치하지 않습니다.")
			reg_frm.pw.focus();
			return;
		}

		if (document.reg_frm.name.value.length == 0) {
			alert("이름은 필수사항입니다.");
			reg_frm.name.focus();
			return;
		}

		if (document.reg_frm.email.value.length == 0) {
			alert("이메일은 필수사항입니다.");
			reg_frm.email.focus();
			return;
		}

		document.reg_frm.submit();
	}

	function updateInfoConfirm() {
		if (document.reg_frm.pw.value == "") {
			alert("패스워드를 입력하세요");
			document.reg_frm.pw.focus();
			return;
		}

		if (document.reg_frm.pw.value != document.reg_frm.pw.check.value) {
			alert("패스워드가 일치하지 않습니다.");
			reg_frm.pw.focus();
			return;
		}

		if (document.reg_frm.email.value.length == 0) {
			alert('이메일은 필수 사항입니다.');
			reg_frm.email.focus();
			return;
		}

		document.reg_frm.submit();
	}
</script>
</head>
<body>
	<form action="joinOk.jsp" method="post" name="reg_frm">
		아이디: <input type="text" name="id" size="20" value="hong"/><br /> 비밀번호: <input
			type="password" name="pw" size="20" value="1234"/><br /> 비밀번호 확인: <input
			type="password" name="pw_check" size="20" value="1234"/><br /> 이름: <input
			type="text" name="name" size="20" value="홍길동"/><br /> 메일: <input type="text"
			name="email" size="20" value="hong@gmail.com"/><br /> 주소: <input type="text" name="address"
			size="20" value="홍길동시 홍길동"><br /> <input type="button" value="회원가입"
			onClick="javascript:infoConfirm()">&nbsp;&nbsp;&nbsp; <input
			type="reset" value="취소"
			onClick="javascript:window.location='login.jsp'" />
	</form>
</body>
</html>