package com.loginjoin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinCheck
 */
@WebServlet("/JoinCheck")
public class JoinCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection;
	private Statement stmt;
	
	private String cname, cid, cpw, cemail;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet()");
		actionCheck(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		System.out.println("doPost()");
		actionCheck(request, response);
	}
	
	private void actionCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		cname = request.getParameter("cname");
		cid = request.getParameter("cid");
		cpw = request.getParameter("cpw");
		cemail = request.getParameter("cemail");
		
		String query = "INSERT INTO customer VALUES('"
				+ cid + "', '" + cpw +"', '" + cname + "', '"
			 + cemail + "')";
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			connection = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:orcl", 
					"daengdaeng", "oracle_11g");
			
			stmt = connection.createStatement();
			
			int i = stmt.executeUpdate(query);
			if(i==1) {
				System.out.println("INSERT SUCESS");
				response.sendRedirect("home/joinResult.jsp");
			}else {
				System.out.println("INSERT FAIL");
				response.sendRedirect("home/join.html");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(stmt!=null) stmt.close();
				if(connection!=null) connection.close();
			}catch(Exception e) { e.printStackTrace(); }
		}
		
	}

}
