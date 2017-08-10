package com.quiz.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class log
 */
@WebServlet("/log")
public class log extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public log() {
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
		String un=request.getParameter("n1");
		String pwd=request.getParameter("p1");
		String t=request.getParameter("user");
			out.println("User name is:"+un);
		out.println("Password is:"+pwd);
		System.out.println("user is:"+t);
		if(t.equals("student"))
		{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","root");
			PreparedStatement pst=con.prepareStatement("select username,password from student");
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				if(un.equals(rs.getString(1)) && pwd.equals(rs.getString(2)))
				{
					RequestDispatcher rd=request.getRequestDispatcher("quiz.jsp");
					rd.forward(request, response);
				}
				
			}
			
			
			RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
			rd.include(request, response);
			
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		}
		if(t.equals("teacher"))
		{
			out.print("welcome teacher");
			try
			{
				out.print("hi");
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","root");
				PreparedStatement pst=con.prepareStatement("select username,password from teacher");
				ResultSet rs=pst.executeQuery();
				while(rs.next())
				{
					if(un.equals(rs.getString(1)) && pwd.equals(rs.getString(2)))
					{
						RequestDispatcher rd=request.getRequestDispatcher("add.jsp");
						rd.forward(request, response);
					}
					
				}
				
				RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");
				rd.include(request, response);
				
				
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			
		}
	}
	}