<%@page import="java.util.ArrayList"%>
<%@page import="com.javalec.ex.MemberDTO"%>
<%@page import="com.javalec.ex.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		MemberDAO memberDAO = new MemberDAO();
		ArrayList<MemberDTO> dtos = memberDAO.memberSelect();

		for (int i = 0; i < dtos.size(); i++) {
			MemberDTO dto = dtos.get(i);
			String name = dto.getName();
			String id = dto.getId();
			String pw = dto.getPw();
			String phone = String.format("%s-%s-%s", dto.getPhone1(), dto.getPhone2(), dto.getPhone3());
			String gender = dto.getGender();

			out.println(String.format("�̸�:%s, ���̵�: %s, ��й�ȣ: %s, ����ó: %s, ����: %s", name, id, pw, phone, gender));
		}
	%>

</body>
</html>