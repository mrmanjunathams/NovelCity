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
 * Servlet implementation class RequestController
 */
@WebServlet("/RequestController")
public class RequestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String novel_name=request.getParameter("novel_name");
		String author=request.getParameter("author");
		String pub_year=request.getParameter("pub_year");
		
		Model m=new Model();
		m.setNovel_name(novel_name);
		m.setAuthor(author);
		m.setPub_year(pub_year);
		
		try
		{
			int row=0;
			row=Factory.getinstance().Request(m);
			if(row!=0){
				request.setAttribute("req",m);
				request.getRequestDispatcher("Request.jsp").forward(request, response);
			}
			
		}catch(Exception e) 
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
