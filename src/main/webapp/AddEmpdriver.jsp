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
int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
int age=Integer.parseInt(request.getParameter("age"));
int sal=Integer.parseInt(request.getParameter("sal"));
String role=request.getParameter("role");
int yoe=Integer.parseInt(request.getParameter("yoe"));


Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeemanagementsystem","root","Chethan@1711");
PreparedStatement st=con.prepareStatement("insert into employee values(?,?,?,?,?,?)");

st.setInt(1,id);
st.setString(2,name);
st.setInt(3,age);
st.setInt(4,sal);
st.setString(5,role);
st.setInt(6,yoe);

st.executeUpdate();

%>

<h1>Employee data added successfully</h1>

</body>
</html>