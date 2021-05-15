package com.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ajaxservlet
 */
@WebServlet("/Ajaxservlet")
public class Ajaxservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/plain");
		PrintWriter out=response.getWriter();
		String action=request.getParameter("action");
		if(action.equals("demo1"))
		{
		String fullname=request.getParameter("fullname");
		out.println("hello"+fullname);
		}
		if(action.equals("demo2"))
		{
		int numb1=Integer.parseInt(request.getParameter("number1"));
		int numb2=Integer.parseInt(request.getParameter("number2"));
		int result=numb1+numb2;
		out.println(result);
		}
		
		
	}

}
