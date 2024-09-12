package com.EmploymentmanagementSystem;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/Register")
public class Register extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		String repass=req.getParameter("repass");
		
		
		
		if(pass.equals(repass))
		{
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeemanagementsystem","root","Chethan@1711");
				PreparedStatement ps=con.prepareStatement("insert into admin values(?,?,?,?)");
				ps.setInt(1,id);
				ps.setString(2,name);
				ps.setString(3,email);
				ps.setString(4,pass);
				
				ps.executeUpdate();
				RequestDispatcher d=req.getRequestDispatcher("Login.html");
				d.forward(req,res);
			}catch(Exception e)
			{
				System.out.println(e);
				
			}}else
			{
				RequestDispatcher d=req.getRequestDispatcher("Register.html");
				d.forward(req,res);
			}
		}
		
	}


