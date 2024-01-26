<%@page import="com.vgt.controller.StudentController"%>
<%@ page language="java" 
	contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
    
<jsp:useBean id="obj" class="com.vgt.pojo.Student"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Student Registration</h1>

	<%
		StudentController controller=new StudentController();
		int a=controller.saveData(obj);
		String msg="Data not saved";
		if(a==1)
		{
			msg="Data Saved";
		}
	%>

<h3><%= msg %></h3>
</body>
</html>