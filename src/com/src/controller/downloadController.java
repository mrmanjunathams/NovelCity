package com.src.controller;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.factory.Factory;
import com.src.model.Model;
import com.src.model.downloadModel;

/**
 * Servlet implementation class downloadController
 */
@WebServlet("/downloadController")
public class downloadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public downloadController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<downloadModel> m =new ArrayList<downloadModel>();
		try{
			
			m=Factory.getinstance().getnovel();
				request.setAttribute("novels",m);
				request.getRequestDispatcher("downloads.jsp").forward(request, response);
			
			 
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
