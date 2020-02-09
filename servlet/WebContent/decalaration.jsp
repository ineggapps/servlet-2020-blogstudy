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
	<!-- %!는 jsp 페이지 내에서 메서드나 변수를 선언할 때 사용 -->
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

	<!-- %=는 변수나 메서드 호출 결과의 값만을 출력할 때 사용-->
	<%=i%><br />
	<%=str%><br />
	<%=sum(10, 20)%><br />

	<!-- 아래와 같이 Arrays를 불러와 사용할 수 있음 위의 %@page import 부분 주목 -->
	<%
		int[] iArr = { 10, 20, 30 };
		out.println(Arrays.toString(iArr));
	%>
	
	<!-- include page -->
	<%@ include file="include.jsp" %>
</body>
</html>