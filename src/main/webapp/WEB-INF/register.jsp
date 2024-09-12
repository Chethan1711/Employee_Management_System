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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        #nav1::first-letter {
            color: rgb(235, 37, 37);
        }
        #ch {
            color: aliceblue;
        }
        #sbtn
        {
            padding-bottom: 5px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" id="nav1" href="#">JSpiders</a>
        </div>
    </nav>
    <div class="container m-5">
        <div class="row">
            <div class="container-fluid col-4">
                <div class="card">
                    <div id="ch" class="card-header text-center bg-dark">Register</div>
                    <div class="card-body" id="sbtn">
                        <form class="text-center" method="post">
                            <table class="text-center m-auto">
                                <tr>
                                    <th></th>
                                    <th></th>
                                </tr>
                                <tr class="mt-3">
                                    <td>Enter id</td>
                                    <td><input type="number" name="id" placeholder="id"></td>
                                </tr>
                                <tr class="mt-3">
                                    <td>Enter Name</td>
                                    <td><input type="text" name="name" placeholder="Name"></td>
                                </tr>
                                <tr class="mt-3">
                                    <td>Enter Email</td>
                                    <td><input type="text" name="email" placeholder="Ex:XYZ@gmail.com"></td>
                                </tr>
                                <tr class="mt-3">
                                    <td>Password</td>
                                    <td><input type="password" name="pass" placeholder="password"></td>
                                </tr>
                                <tr class="mt-3">
                                    <td>ReEnter-Password</td>
                                    <td><input type="password" name="repass" placeholder="Re-password"></td>
                                </tr>
                            </table>
                            <input type="submit"   class="btn-dark btn btn-sm container-fluid mt-3">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%
int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String repass=request.getParameter("repass");
if(pass.equals(repass))
{
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeemanagementsystem","root","Chethan@1711");
		PreparedStatement ps=con.prepareStatement("insert into admin values(?,?,?,?)");
		ps.setInt(1,id);
		ps.setString(2,name);
		ps.setString(3,email);
		ps.setString(4,pass);
		
		ps.executeUpdate();
	}else
	{
		System.out.println("Passwords doesn't match");
	}
%>

</body>
</html>