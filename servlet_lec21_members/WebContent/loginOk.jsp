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
	alert("���̵� �������� �ʽ��ϴ�");
	history.go(-1);
	</script>
<%
	} else if (checkNum == 0) {
%>
<script type="text/javascript">
		alert("��й�ȣ�� Ʋ���ϴ�.");
		history.go(-1);'
	</script>
<%
	} else if (checkNum == 1) {
		System.out.println(id+"ȣ��");
		MemberDTO dto = dao.getMember(id);

		if (dto == null) {
%>
<script type="text/javascript">
		alert("�������� �ʴ� ȸ���Դϴ�.");
		history.go(-1);
	</script>
<%
	} else {
			//ȸ������ ������ ���������� ����ϸ�
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