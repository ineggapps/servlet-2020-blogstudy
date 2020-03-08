<%@ page import="java.util.Enumeration"%>
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
		Enumeration e = session.getAttributeNames();
		while (e.hasMoreElements()) {
			String sName = e.nextElement().toString();
			String sValue = session.getAttribute(sName).toString();

			if (sValue.equals("abcde")) {
				out.println(sValue + "님 안녕하세요?" + "<brs />");
			}
		}
	%>
	<a href="logout.jsp">로그아웃</a>

</body>
</html>