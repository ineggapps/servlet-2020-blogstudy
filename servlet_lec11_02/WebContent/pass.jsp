<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%!
int age; %>

<%
	age = Integer.parseInt(request.getParameter("age"));
%>

당신의 나이는 <%=age %>입니다.
pass.jsp
</body>
</html>