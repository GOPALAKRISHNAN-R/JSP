<!--/**
 * Simple Java program for JSP
 * @author R.GOPALAKRISHNAN
 * @author www.rgopalakrishnanmca.simplesite.com
 **/-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to JSP</title>
</head>
<body>
<b>
<% out.print("Scriplet tag.."); %>  
<% int a=10; %>
<%= "Value of A="+a %>
<%! int add(int b,int c)
	{
		int d=b+c;
		return d;
	}
%>

<%@ page import="java.io.*;" %>

<% out.print("Addition of 2 numbers="+add(13,14)); %></b>
</body>
</html>