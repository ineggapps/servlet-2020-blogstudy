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
	A�������� �ҷ��ɴϴ�.
	<br />
	<%@ include file="./a.jsp"%>

	<h1>Page B</h1>
	B�������� �ҷ��ɴϴ�.
	<br />
	<%@ include file="./b.jsp"%>
</body>
</html>