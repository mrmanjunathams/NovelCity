package com.src.factory;
import java.sql.*;
import java.util.*;
import com.src.model.Model;
import com.src.model.downloadModel;

public interface Dbintr {
	
	public int SignUp( Model rm1) throws SQLException;
	public int Request(Model m1) throws SQLException;
	public int UserComments(Model m2) throws SQLException;
	 public int getuser(Model m1) throws SQLException;
	 public ArrayList<Model> getMyProfile(Model m) throws SQLException;
	 public ArrayList<downloadModel> findNovel(String name) throws SQLException;
	public ArrayList<downloadModel> getnovel()throws SQLException;

}
