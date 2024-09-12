<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 
</head>
<body>
<%

String email=request.getParameter("email");
String pass=request.getParameter("pass");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeemanagementsystem","root","Chethan@1711");
PreparedStatement ps=con.prepareStatement("select * from admin where email=? and password=?");
ps.setString(1,email);
ps.setString(2,pass);
ResultSet rs=ps.executeQuery();

if(rs.next()==true)
{
	RequestDispatcher d=request.getRequestDispatcher("AdminActivities.jsp");
	d.forward(request, response);
	
	
}


%>
</body>
</html>