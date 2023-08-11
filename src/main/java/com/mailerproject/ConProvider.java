package com.mailerproject;

import java.util.*;
import java.sql.*;

public class ConProvider {
	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/JD32","root","root");
		}catch(Exception e){System.out.println(e);}
		return con;
	    }

}
