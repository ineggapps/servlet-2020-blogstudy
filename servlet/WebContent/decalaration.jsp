<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- %!�� jsp ������ ������ �޼��峪 ������ ������ �� ��� -->
	<%!int i = 10;
	String str = "ABCDE";%>
	<%!public int sum(int a, int b) {
		return a + b;
	}%>
	<%
		out.println("i = " + i + " <br/>");
		out.println("str = " + str + " <br/>");
		out.println("sum = " + sum(1, 5) + " <br/>");
	%>

	<!-- %=�� ������ �޼��� ȣ�� ����� ������ ����� �� ���-->
	<%=i%><br />
	<%=str%><br />
	<%=sum(10, 20)%><br />

	<!-- �Ʒ��� ���� Arrays�� �ҷ��� ����� �� ���� ���� %@page import �κ� �ָ� -->
	<%
		int[] iArr = { 10, 20, 30 };
		out.println(Arrays.toString(iArr));
	%>
	
	<!-- include page -->
	<%@ include file="include.jsp" %>
</body>
</html>