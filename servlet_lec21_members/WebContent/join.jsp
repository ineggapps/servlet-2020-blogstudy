<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<script type="text/javascript">
	function infoConfirm() {
		if (document.reg_frm.id.value.length == 0) {
			alert("���̵�� �ʼ� �����Դϴ�.");
			reg_frm.id.focus();
			return;
		}

		if (document.reg_frm.id.value.length < 4) {
			alert("���̵�� 4���� �̻��̾�� �մϴ�.");
			reg_frm.id.focus();
			return;
		}

		if (document.reg_frm.pw.value.length == 0) {
			alert("��й�ȣ�� �ʼ������Դϴ�.")
			reg_frm.pw.focus();
			return;
		}

		if (document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.")
			reg_frm.pw.focus();
			return;
		}

		if (document.reg_frm.name.value.length == 0) {
			alert("�̸��� �ʼ������Դϴ�.");
			reg_frm.name.focus();
			return;
		}

		if (document.reg_frm.email.value.length == 0) {
			alert("�̸����� �ʼ������Դϴ�.");
			reg_frm.email.focus();
			return;
		}

		document.reg_frm.submit();
	}

	function updateInfoConfirm() {
		if (document.reg_frm.pw.value == "") {
			alert("�н����带 �Է��ϼ���");
			document.reg_frm.pw.focus();
			return;
		}

		if (document.reg_frm.pw.value != document.reg_frm.pw.check.value) {
			alert("�н����尡 ��ġ���� �ʽ��ϴ�.");
			reg_frm.pw.focus();
			return;
		}

		if (document.reg_frm.email.value.length == 0) {
			alert('�̸����� �ʼ� �����Դϴ�.');
			reg_frm.email.focus();
			return;
		}

		document.reg_frm.submit();
	}
</script>
</head>
<body>
	<form action="joinOk.jsp" method="post" name="reg_frm">
		���̵�: <input type="text" name="id" size="20" value="hong"/><br /> ��й�ȣ: <input
			type="password" name="pw" size="20" value="1234"/><br /> ��й�ȣ Ȯ��: <input
			type="password" name="pw_check" size="20" value="1234"/><br /> �̸�: <input
			type="text" name="name" size="20" value="ȫ�浿"/><br /> ����: <input type="text"
			name="email" size="20" value="hong@gmail.com"/><br /> �ּ�: <input type="text" name="address"
			size="20" value="ȫ�浿�� ȫ�浿"><br /> <input type="button" value="ȸ������"
			onClick="javascript:infoConfirm()">&nbsp;&nbsp;&nbsp; <input
			type="reset" value="���"
			onClick="javascript:window.location='login.jsp'" />
	</form>
</body>
</html>