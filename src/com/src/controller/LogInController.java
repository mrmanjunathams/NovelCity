package com.src.controller;
import com.src.factory.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.src.factory.Factory;
import com.src.model.Model;

/**
 * Servlet implementation class LogInController
 */
@WebServlet("/LogInController")
public class LogInController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		
		HashMap<String,String> errors =new HashMap<>();
		if(name==null|name.length()<=0)
		{
		  errors.put("name_error", "name field should be filled");
			
		}
		else
		{
			 request.setAttribute("name", name);
		}
		if(password==null|password.length()<=0)
		{
			errors.put("password_error","password field should filled");
		}
		else
		{
			request.setAttribute("password", password);
		}
		if(errors.isEmpty())
		{
		Model m=new Model();
		String msg="Username or Password is wrong";
		m.setName(name);
		m.setPassword(password);
		m.setMessage(msg);
		try {
			int b=Factory.getinstance().getuser(m);
			
			if(b==1)
			{
				request.setAttribute("logindata",m);
				response.setContentType("text/html");
				PrintWriter out=response.getWriter();
				HttpSession session=request.getSession();
				session.setAttribute("name", name);
				request.getRequestDispatcher("NovelCityController").include(request, response);
				
				
			}
			else
			{
				request.setAttribute("logindata",m);
				request.getRequestDispatcher("LogIn.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		else
		{
		  request.setAttribute("errors",errors);
		  request.getRequestDispatcher("LogIn.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
