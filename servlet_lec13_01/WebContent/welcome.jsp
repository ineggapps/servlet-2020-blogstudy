<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	Welcome page


	<%
	Cookie[] cookies = request.getCookies();
	for (int i = 0; i < cookies.length; i++) {
			String id = cookies[i].getValue();
			if(id.equals("abcde")){
				out.println(id+"�� �ȳ��ϼ���? <br/>");
			}
	}
%>

</body>
</html>