<%@page import="java.util.Arrays"%>
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
		String name, id, pw, major, protocol;
		String[] hobbys;
	%>

	<%
		request.setCharacterEncoding("EUC-KR");

		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		major = request.getParameter("major");
		protocol = request.getParameter("protocol");

		hobbys = request.getParameterValues("hobby");
	%>

	<%=name%><br />
	<%=id%><br />
	<%=pw%><br />
	<%=major%><br />
	<%=protocol%><br />
	<%
		out.println(Arrays.toString(hobbys));
	%><br />

</body>
</html>