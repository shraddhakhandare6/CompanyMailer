package com.mailerproject;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.io.PrintWriter;


/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		request.getRequestDispatcher("header.html").include(request, response);
		
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		String dob=request.getParameter("dob");
		String addressLine=request.getParameter("addressLine");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String country=request.getParameter("country");
		String contact=request.getParameter("contact");
		
		
		//int status=RegisterDao.save(name, email+"@cmailer.com", password, gender, dob, addressLine, city, state, country, contact);
		//if(status>0){
		//	out.print("<p>You are successfully registered!</p>");
		//	request.getRequestDispatcher("login.html").include(request, response);	
		//}
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/JD32","root","root");
			PreparedStatement ps=con.prepareStatement("insert into COMPANY_MAILER_USER values(?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,password);
			ps.setString(4,gender);
			ps.setDate(5,Date.valueOf(dob));
			ps.setString(6,addressLine);
			ps.setString(7,city);
			ps.setString(8,state);
			ps.setString(9,country);
			ps.setString(10,contact);
			ps.setDate(11,Formatter.getCurrentDate());
			ps.setString(12,"yes");
			
			int status=ps.executeUpdate();
			if(status>0){
				out.print("<p>You are successfully registered!</p>");
				request.getRequestDispatcher("login.html").include(request, response);	
				
			}
		}
		catch(Exception e){System.out.println(e);}
		
		request.getRequestDispatcher("footer.html").include(request, response);
		out.close();
	}

}
