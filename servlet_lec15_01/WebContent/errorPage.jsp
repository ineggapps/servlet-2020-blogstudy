<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true"%>
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	오류가 발생하였습니다.
	<br />
	<%=exception.getMessage() %>

</body>
</html>