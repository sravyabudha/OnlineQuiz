package com.quiz.login.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;

public class li {
	public static void main(String args[])
	{
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz","root","root");
	PreparedStatement pst=con.prepareStatement("delete from onlinequiz.student where username='s'");
	int rs=pst.executeUpdate();
	if(rs>0)
	{
		System.out.println("deleted");
	}
	else
		System.out.println("not deleted");
	}

catch(Exception ex)
{
	ex.printStackTrace();
}
}
}