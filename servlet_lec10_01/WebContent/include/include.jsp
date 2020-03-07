<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>Page A</h1>
	A페이지를 불러옵니다.
	<br />
	<%@ include file="./a.jsp"%>

	<h1>Page B</h1>
	B페이지를 불러옵니다.
	<br />
	<%@ include file="./b.jsp"%>
</body>
</html>