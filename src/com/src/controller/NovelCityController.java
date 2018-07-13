package com.src.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.src.factory.Factory;
import com.src.model.Model;
import com.src.model.downloadModel;

/**
 * Servlet implementation class NovelCityController
 */
@WebServlet("/NovelCityController")
public class NovelCityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NovelCityController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Model> mod =new ArrayList<Model>();
		response.setContentType("text/html");
		request.getRequestDispatcher("NovelCity.jsp").include(request, response);
		
		HttpSession session=request.getSession(false);
		Model mo=new Model();
		if(session!=null)
		{
			try{
				String name=(String) session.getAttribute("name");
				mo.setName(name);
				mod=Factory.getinstance().getMyProfile(mo);
			}catch(Exception e){
				e.getStackTrace();
			}
		
			request.getSession().setAttribute("data",mod);
			request.getRequestDispatcher("NovelCity.jsp").forward(request, response);
			}
			else{
				request.getRequestDispatcher("login.jsp").include(request, response);
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
