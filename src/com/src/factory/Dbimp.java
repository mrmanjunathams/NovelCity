package com.src.factory;
import com.src.model.*;

import com.src.controller.*;

import com.src.model.*;
import java.sql.*;
import java.util.ArrayList;
import com.src.model.*;
public class Dbimp implements Dbintr{

	static Connection c;
	static ResultSet r;
	static 
	{
		try
        {
        Class.forName("org.h2.Driver");
         c=DriverManager.getConnection("jdbc:h2:~/test","sa","");
        }
        catch(Exception e)
        {
           System.out.println(e); 
        }
	}
	
	public int Request(Model m1) throws SQLException{
		PreparedStatement ps;
		ps=c.prepareStatement("insert into REQ_NOVEL values(?,?,?)");
		ps.setString(1,m1.getNovel_name());
		ps.setString(2,m1.getAuthor());
		ps.setString(3,m1.getPub_year());
		return ps.executeUpdate();
		
		
	}
	
	public int UserComments(Model m2) throws SQLException{
		PreparedStatement ps;
		ps=c.prepareStatement("insert into user_comments values(?,?,?,?)");
	    ps.setString(1,m2.getFirst_name());
	    ps.setString(2,m2.getLast_name());
	    ps.setString(3,m2.getCountry());
	    ps.setString(4,m2.getComments());
		return ps.executeUpdate();
		
	}

	public int SignUp(Model m4) throws SQLException
	{
		PreparedStatement ps;
		ps=c.prepareStatement("insert into USERS values(?,?,?,?,?)");
		ps.setString(1,m4.getName());
		ps.setString(2,m4.getEmail());
		ps.setString(3,m4.getPhone());
		ps.setString(4,m4.getGender());
		ps.setString(5,m4.getPassword());
		return ps.executeUpdate();
	}
	public int getuser(Model m3) throws SQLException
	{
		 PreparedStatement st;
		 st=c.prepareStatement("select name,password from USERS where name='"+m3.getName()+"' and password='"+m3.getPassword()+"'"); 
		 ResultSet r=null;
		 int value=0;
		 r=st.executeQuery();
		 if(r.next())
		 {
			 value=1;
		 }
		 else
		 {
			 value=0;
		 }       
		        return value;      
	}
	
	public ArrayList<Model> getMyProfile(Model m) throws SQLException
	{
		PreparedStatement ps;
		ps=c.prepareStatement("select * from users where name='"+m.getName()+"'");
		ResultSet r=ps.executeQuery();
		ArrayList<Model> mod=new ArrayList<Model>();
		while(r.next())
		{
			Model mo=new Model();
			mo.setName(r.getString(1));
			mo.setEmail(r.getString(2));
			mo.setPhone(r.getString(3));
			mo.setGender(r.getString(4));
			
			mod.add(mo);
		}
		return mod;
	}
	

	
	public ArrayList<downloadModel> getnovel() throws SQLException {
		 String query="select * from novels";
		 PreparedStatement pst=c.prepareStatement(query);
		 ResultSet r=pst.executeQuery();
		 ArrayList<downloadModel> download_mod=new ArrayList<downloadModel>();
		 while(r.next()){
			 downloadModel d=new downloadModel();
			 d.setName(r.getString(1));
			 d.setLanguage(r.getString(2));
			 d.setAuthor_name(r.getString(3));
			 d.setPub_year(r.getString(4));
			
			 download_mod.add(d);
			
			  }
		 return download_mod;
	         
	 }

	@Override
	public ArrayList<downloadModel> findNovel(String name) throws SQLException {
		
		 PreparedStatement pst=c.prepareStatement("select * from novels where name LIKE '%"+name+"%'");
		 ResultSet r=pst.executeQuery();
		 
		 ArrayList<downloadModel> download_mod=new ArrayList<downloadModel>();
		 while(r.next()){
			 downloadModel d=new downloadModel();
			 d.setName(r.getString(1));
			 d.setLanguage(r.getString(2));
			 d.setAuthor_name(r.getString(3));
			 d.setPub_year(r.getString(4));
			 download_mod.add(d);
			
			  }
		 return download_mod;
	         
	}

}
