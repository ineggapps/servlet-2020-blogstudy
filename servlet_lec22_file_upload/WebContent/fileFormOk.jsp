<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String path = request.getSession().getServletContext().getRealPath("fileFolder");
	//��ó: https://cofs.tistory.com/40 [CofS]
	System.out.println(path);

	int size = 1024 * 1024 * 10;//10M
	String file = "";
	String oriFile = "";
	try {
		MultipartRequest multi = new MultipartRequest(request, path, size, "EUC-KR",
				new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames();
		String str = (String) files.nextElement();
		file = multi.getFilesystemName(str);
		oriFile = multi.getOriginalFileName(str);
		System.out.println(oriFile + "\n" + file);

	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>file upload success!


</body>
</html>