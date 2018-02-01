package com.daengdaeng.loginjoin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ModifyCheck
 */
@WebServlet("/ModifyCheck")
public class ModifyCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private Connection connection;
	private Statement stmt;
	//ctrl+shift+o
	
	private String cname, cid, cpw, cemail;
	HttpSession httpSession;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		actionCheck(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		actionCheck(request, response);
	}
	protected void actionCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		httpSession = request.getSession();
		
		cname = request.getParameter("cname");
		cid = request.getParameter("cid");
		cpw = request.getParameter("cpw");
		cemail = request.getParameter("cemail");
		
		if(pwConfirm()){
			System.out.println("Password authentication is successful");
			String query = "UPDATE customer SET cname= '"+cname+"', cemail='"
														   +cemail+"' WHERE cid='" +cid+"'";
			System.out.println(query);
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				connection = DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521:orcl", 
						"daengdaeng", "oracle_11g");
				
				stmt = connection.createStatement();
				int i = stmt.executeUpdate(query);
				if(i==1) {
					System.out.println("UPDATE Success");
					httpSession.setAttribute("cname", cname);
					response.sendRedirect("home/login/modifyResult.jsp");
				}else {
					System.out.println("UPDATE Fail");
					
					response.sendRedirect("home/login/updatefail.jsp");
					
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if(stmt!=null) stmt.close();
					if(connection!=null) connection.close();
					
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		}else {
			System.out.println("Error-Password do not matched.");
			response.sendRedirect("home/login/updatefail.jsp");
		}
		
	}//actionCheck
	private boolean pwConfirm() {
		boolean result = false;
		String sessionPw = (String)httpSession.getAttribute("cpw");
		if(sessionPw.equals(cpw)) {
			result = true;			
		}else {
			result = false;
		}
		return result;
	}//pwConfirm
}
