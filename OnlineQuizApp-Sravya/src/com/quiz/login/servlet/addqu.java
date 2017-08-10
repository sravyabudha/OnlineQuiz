package com.quiz.login.servlet;

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

/**
 * Servlet implementation class addqu
 */
@WebServlet("/addqu")
public class addqu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addqu() {
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
		String qn=request.getParameter("qname");
		String an1=request.getParameter("a1");
		String an2=request.getParameter("a2");
		String an3=request.getParameter("a3");
		String an4=request.getParameter("a4");
		String sn=request.getParameter("s1");
		int randomNum = 1 + (int)(Math.random() * 25); 
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","root");
			PreparedStatement pst1=con.prepareStatement("insert into question(qid,qname,sid) values(?,?,?)");
			pst1.setInt(1, randomNum);
			pst1.setString(2, qn);
			pst1.setString(3, sn);
			int c=pst1.executeUpdate();
			
			if(c>0)
			{
				System.out.println("question is added");
				PreparedStatement pst2=con.prepareStatement("insert into answers(id,choice,qid) values(?,?,?)");
				pst2.setInt(1, 1);
				pst2.setString(2, an1);
				pst2.setInt(3, randomNum);
				int k=pst2.executeUpdate();
				PreparedStatement pst3=con.prepareStatement("insert into answers(id,choice,qid) values(?,?,?)");
				pst3.setInt(1, 2);
				pst3.setString(2, an2);
				pst3.setInt(3, randomNum);
				int l=pst3.executeUpdate();
				PreparedStatement pst4=con.prepareStatement("insert into answers(id,choice,qid) values(?,?,?)");
				pst4.setInt(1, 3);
				pst4.setString(2, an3);
				pst4.setInt(3, randomNum);
				int m=pst4.executeUpdate();
				PreparedStatement pst5=con.prepareStatement("insert into answers(id,choice,qid) values(?,?,?)");
				pst5.setInt(1, 4);
				pst5.setString(2, an4);
				pst5.setInt(3, randomNum);
				int n=pst5.executeUpdate();
			}
			else
			{
				System.out.println("question is not addeed");
				RequestDispatcher rd=request.getRequestDispatcher("question.jsp");
				rd.include(request, response);
			}
			
	}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}


	}


