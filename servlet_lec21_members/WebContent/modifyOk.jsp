<%@page import="java.sql.Timestamp"%>
<%@page import="com.javalec.ex.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	System.out.println("정보수정 (OK) 페이지 진입");
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="dto" class="com.javalec.ex.MemberDTO" />
<jsp:setProperty name="dto" property="*" />
<%
	MemberDAO dao = MemberDAO.getInstance();
	System.out.println(dto);
	MemberDTO modifyDTO = dao.getMember(dto.getId());
	modifyDTO.setPw(dto.getPw());
	modifyDTO.setEmail(dto.getEmail());
	modifyDTO.setAddress(dto.getAddress());
	int result = dao.updateMember(modifyDTO);
	if (result == 1) {
		response.sendRedirect("main.jsp");
	} else {
		response.sendRedirect("modify.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>