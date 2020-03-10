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
<title>회원정보 수정</title>
<script type="text/javascript">
	function updateInfoConfirm() {
		if (document.reg_frm.pw.value == "") {
			alert("패스워드를 입력하세요");
			document.reg_frm.pw.focus();
			return;
		}

		if (document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
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
	<form action="modifyOk.jsp" method="post" name="reg_frm">
		아이디:
		<%=id%><input type="hidden" name="id" value="<%=id%>" /><br /> 비밀번호:
		<input type="password" name="pw" size="20" /><br /> 비밀번호 확인: <input
			type="password" name="pw_check" size="20" /><br /> 이름:
		<%=dto.getName()%><br /> 메일: <input type="text" name="email"
			size="20" value="<%=dto.getEmail()%>" /><br /> 주소: <input
			type="text" name="address" size="20" value="<%=dto.getAddress()%>"><br />
		<input type="button" value="정보수정"
			onClick="javascript:updateInfoConfirm()">&nbsp;&nbsp;&nbsp; <input
			type="reset" value="취소"
			onClick="javascript:window.location='main.jsp'" />
	</form>
</body>
</html>