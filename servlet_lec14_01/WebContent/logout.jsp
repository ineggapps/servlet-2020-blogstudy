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
			String sValue = (String) session.getAttribute(sName);

			if (sValue.equals("abcde")) {
				session.removeAttribute(sName);
			}
		}
	%>
	
	<a href="sessiontest.jsp">session test</a>
</body>
</html>