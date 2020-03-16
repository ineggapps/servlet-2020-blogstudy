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
		request.setAttribute("id", "abcde");
		request.setAttribute("pw", "12345");
		
		response.sendRedirect("RequestObj");//redirect를 하면 동일한 request객체가 아니므로 온전히 request객체가 전달되지 않는다.
	%>

</body>
</html>