<%@page import="com.javalec.ex.MemberDTO"%>
<%@page import="com.javalec.ex.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	MemberDAO dao = MemberDAO.getInstance();
	int checkNum = dao.usercheck(id, pw);
	if (checkNum == -1) {
%>
<script type="text/javascript">
	alert("아이디가 존재하지 않습니다");
	history.go(-1);
	</script>
<%
	} else if (checkNum == 0) {
%>
<script type="text/javascript">
		alert("비밀번호가 틀립니다.");
		history.go(-1);'
	</script>
<%
	} else if (checkNum == 1) {
		System.out.println(id+"호출");
		MemberDTO dto = dao.getMember(id);

		if (dto == null) {
%>
<script type="text/javascript">
		alert("존재하지 않는 회원입니다.");
		history.go(-1);
	</script>
<%
	} else {
			//회원인증 절차를 최종적으로 통과하면
			String name = dto.getName();
			session.setAttribute("id", dto.getId());
			session.setAttribute("name", name);
			session.setAttribute("ValidMem", "yes");
			response.sendRedirect("main.jsp");
		}
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