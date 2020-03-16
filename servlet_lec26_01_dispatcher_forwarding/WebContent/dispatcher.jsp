<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	dispatcherJsp.jsp
	<hr />
	id:
	<%=request.getAttribute("id")%><br /> pw:
	<%=request.getAttribute("pw")%>


	<%
		//JSP에서도 RequestDispatcher를 이용하여 포워딩을 할 수 있음.
	%>

</body>
</html>