<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="student" class="com.javalec.ex.Student" scope="page" />
<jsp:useBean id="student2" class="com.javalec.ex.Student" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:setProperty name="student" property="name" value="ȫ�浿"/>
	<jsp:setProperty name="student" property="age" value="13"/>
	<jsp:setProperty name="student" property="grade" value="6"/>
	<jsp:setProperty name="student" property="studentNum" value="7"/>

	<jsp:setProperty name="student2" property="name" value="�ڱ���"/>
	<jsp:setProperty name="student2" property="age" value="11"/>
	<jsp:setProperty name="student2" property="grade" value="4"/>
	<jsp:setProperty name="student2" property="studentNum" value="2"/>
	
	<div>
	ȫ�浿 Bean<br/><br/>
	�̸�: <jsp:getProperty name="student" property="name"/><br/>
	����: <jsp:getProperty name="student" property="age"/><br/>
	�г�: <jsp:getProperty name="student" property="grade"/><br/>
	��ȣ: <jsp:getProperty name="student" property="studentNum"/><br/>
	</div>
	
	<div>
	�ڱ��� Bean<br/><br/>
	�̸�: <jsp:getProperty name="student2" property="name"/><br/>
	����: <jsp:getProperty name="student2" property="age"/><br/>
	�г�: <jsp:getProperty name="student2" property="grade"/><br/>
	��ȣ: <jsp:getProperty name="student2" property="studentNum"/><br/>
	</div>

</body>
</html>
