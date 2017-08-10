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
 * Servlet implementation class adds
 */
@WebServlet("/adds")
public class adds extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adds() {
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
		String sn=request.getParameter("sname");
		String sd=request.getParameter("sd");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","root");
			PreparedStatement pst=con.prepareStatement("insert into subject(name,description) values(?,?)");
			pst.setString(1, sn);
			pst.setString(2, sd);
int c=pst.executeUpdate();
			
			if(c>0)
			{
				System.out.println("subject is added");
				RequestDispatcher rd=request.getRequestDispatcher("question.jsp");
				rd.include(request, response);
				
			}
			else
			{
				System.out.println("subject is not addeed");
				out.println("<html>");
				out.println("<body>");
				out.println("<form action=addqu method=post>");
				out.println("QuestionName<input type=text name=qname><br>");
				out.println("Ans1<input type=text name=a1>");
				out.println("Ans2<input type=text name=a2>");
				out.println("Ans3<input type=text name=a3>");
				out.println("Ans4<input type=text name=a4>");
				PreparedStatement pst1=con.prepareStatement("select * from subject");
				ResultSet rs=pst1.executeQuery();
				while(rs.next()){
				out.println("<select name=s1><option>rs.getString(1)</option>");
				out.println("</select>");
				}
				out.println("<input type=submit value=add>");

				out.println("</form>");

				out.println("</body>");
				out.println("</html>");
				
				//RequestDispatcher rd=request.getRequestDispatcher("add.jsp");
				//rd.include(request, response);
			}
			
	}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}

}