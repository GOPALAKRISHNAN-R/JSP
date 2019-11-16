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
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%

String user_id=request.getParameter("usr");
String pwd=request.getParameter("pd");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/testDb","root","password");
Statement st=con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into user values('"+user_id+"','"+pwd+"')");
out.println("Registered..");
%>



</body>
</html>