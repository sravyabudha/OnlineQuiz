package com.quiz.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class sig
 */
@WebServlet("/sig")
public class sig extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sig() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		response.setContentType("text/jsp");
		PrintWriter out=response.getWriter();
		String un=request.getParameter("name");
		String pwd=request.getParameter("pass");
		String email=request.getParameter("email");
		String phone=request.getParameter("pno");
		String t=request.getParameter("user");

		out.println("User name is:"+un);
		out.println("Password is:"+pwd);
		if(t.equals("student"));
		{
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","root");
			
			PreparedStatement pst=con.prepareStatement("insert into student values(?,?,?,?)");
			pst.setString(1, un);
			pst.setString(2, pwd);
			pst.setString(3, email);
			pst.setString(4, phone);
			
			int c=pst.executeUpdate();
			
			if(c>0)
			{
				System.out.println("Record is inserted");
				
			}
			else
			{
				System.out.println("Record is not inserted");
				
			}
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		}
		 if(t.equals("teacher"))
	{
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","root");
			
			PreparedStatement pst=con.prepareStatement("insert into teacher values(?,?,?,?)");
			pst.setString(1, un);
			pst.setString(2, pwd);
			pst.setString(3, email);
			pst.setString(4, phone);
			
			int c=pst.executeUpdate();
			
			if(c>0)
			{
				System.out.println("Record is inserted");
				
			}
			else
			{
				System.out.println("Record is not inserted");
				
			}
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		}
	}
	}