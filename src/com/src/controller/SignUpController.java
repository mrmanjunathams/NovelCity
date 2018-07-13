package com.src.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import com.src.factory.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.factory.Factory;
import com.src.model.Model;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/SignUpController")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String gender=request.getParameter("gender");
		String password=request.getParameter("password");
		String cpassword=request.getParameter("cpassword");
		ArrayList<Model> mod =new ArrayList<Model>();
		HashMap<String,String> errors =new HashMap<>();
		if(name==null|name.length()<=0)
		{
		  errors.put("name_error", "name field should be filled");
			
		}
		else
		{
			 request.setAttribute("name", name);
		}
		if(email==null|email.length()<=0)
		{
			errors.put("email_error","email field should be filled");
		}
		else
		{
			request.setAttribute("email",email);
		}
		if(phone==null|phone.length()<=0|phone.length()>10|phone.length()<10)
		{
			errors.put("phone_error","phone number should be fieled with 10 digit number");
		}
		else
		{
			request.setAttribute("phone", phone);
		}
		if(gender==null|gender.length()<=0)
		{
			errors.put("gender_error","gender should be selected");
		}
		else
		{
			request.setAttribute("gender",gender);
		}
		
		if(password==null | password.length()<=0)
		{
			errors.put("password_error","password field should be filled");
		}
		else
		{
			request.setAttribute("password",password);
		}
		if(cpassword==null|cpassword.length()<=0)
		{
			errors.put("cpassword_error","confirm password field should be filled");
		}
		else
		{
			request.setAttribute("cpassword",cpassword);
		}
		if(password.equals(cpassword))
		{
			request.setAttribute("cpassword", cpassword);
		}
		else
		{
			errors.put("missmatch_error","password and confirm password both should match each other");
		}
	
			
			
		
		
		if(errors.isEmpty())
		{
			String msg="Sorry username already exits";
			Model m1=new Model();
			m1.setName(name);
			m1.setEmail(email);
			m1.setPhone(phone);
			m1.setGender(gender);
			m1.setPassword(password);
			m1.setCpassword(cpassword);	
			m1.setMessage(msg);
			try 
			{
				mod=null;
				mod=Factory.getinstance().getMyProfile(m1);
				
				int r=0;
				r=Factory.getinstance().SignUp(m1);
				if(r!=0)
				{
					request.setAttribute("SignUp",m1);
					request.getRequestDispatcher("LogIn.jsp").forward(request, response);
				
			}
				
			}	
			catch(Exception e)
			{
				request.setAttribute("SignUp",m1);
				request.getRequestDispatcher("SignUp.jsp").forward(request, response);
			}
		}
		else
		{
		  request.setAttribute("errors",errors);
		  request.getRequestDispatcher("SignUp.jsp").forward(request, response);
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
