package com.quiz.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test() {
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
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","root");
			PreparedStatement pst=con.prepareStatement("select name from subject");
			
            ResultSet rs=pst.executeQuery();
			
			
			
				out.println("<html>");
				out.println("<body>");
				out.println("<form action=enter method=post>");
				
				
				out.println("<select name=s1>");
				while(rs.next()){
				out.println("<option>"+rs.getString(1)+"</option>");
				}
				out.println("</select>");
				
				out.println("<input type=submit value=proceed>");

				out.println("</form>");

				out.println("</body>");
				out.println("</html>");
				
				//RequestDispatcher rd=request.getRequestDispatcher("add.jsp");
				//rd.include(request, response);
		
	
	}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}

	}

}