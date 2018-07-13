package com.src.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.factory.Factory;
import com.src.model.Model;

/**
 * Servlet implementation class UserCommentsController
 */
@WebServlet("/UserCommentsController")
public class UserCommentsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserCommentsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String country=request.getParameter("country");
		String comments=request.getParameter("comments");
		
		Model m=new Model();
		m.setFirst_name(first_name);
		m.setLast_name(last_name);
		m.setCountry(country);
		m.setComments(comments);
		
		try
		{
			int r=0;
			r=Factory.getinstance().UserComments(m);
			if(r!=0){
				request.setAttribute("SignUp",m);
				request.getRequestDispatcher("UserComments.jsp").forward(request, response);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
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
