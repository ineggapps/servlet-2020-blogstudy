<%@page import="com.javalec.ex.MemberDTO"%>
<%@page import="com.javalec.ex.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<%
	String id = (String) session.getAttribute("id");
	MemberDAO dao = MemberDAO.getInstance();
	MemberDTO dto = dao.getMember(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ ����</title>
<script type="text/javascript">
	function updateInfoConfirm() {
		if (document.reg_frm.pw.value == "") {
			alert("�н����带 �Է��ϼ���");
			document.reg_frm.pw.focus();
			return;
		}

		if (document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
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
	<form action="modifyOk.jsp" method="post" name="reg_frm">
		���̵�:
		<%=id%><input type="hidden" name="id" value="<%=id%>" /><br /> ��й�ȣ:
		<input type="password" name="pw" size="20" /><br /> ��й�ȣ Ȯ��: <input
			type="password" name="pw_check" size="20" /><br /> �̸�:
		<%=dto.getName()%><br /> ����: <input type="text" name="email"
			size="20" value="<%=dto.getEmail()%>" /><br /> �ּ�: <input
			type="text" name="address" size="20" value="<%=dto.getAddress()%>"><br />
		<input type="button" value="��������"
			onClick="javascript:updateInfoConfirm()">&nbsp;&nbsp;&nbsp; <input
			type="reset" value="���"
			onClick="javascript:window.location='main.jsp'" />
	</form>
</body>
</html>