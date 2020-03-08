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
		int i = 0;
		while (e.hasMoreElements()) {
			//이미 세션이 삭제되었다면 여기를 거치지 않았을 것임.
			i++;
			String sName = e.nextElement().toString();
			String sValue = (String) session.getAttribute(sName);

			out.println("sName: " + sName + "<br />");
			out.println("sValue: " + sValue + "<br />");

		}

		if (i == 0) {
			out.println("해당 세션이 삭제되었습니다.");
		}
	%>

</body>
</html>