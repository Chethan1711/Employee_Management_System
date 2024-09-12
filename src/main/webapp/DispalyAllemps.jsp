
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

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeemanagementsystem","root","Chethan@1711");
PreparedStatement st=con.prepareStatement("select * from employee");

ResultSet rs=st.executeQuery();


%>
<table cellpadding="20px" border="1">
<th>id</th>
<th>name</th>
<th>age</th>
<th>salory</th>
<th>role</th>
<th>EOE</th>

<%while(rs.next()) {%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%= rs.getString(2)%></td>
<td><%= rs.getInt(3)%></td>
<td><%=rs.getInt(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getInt(6)%></td>

</tr>

<% }%>
</table>





</body>
</html>