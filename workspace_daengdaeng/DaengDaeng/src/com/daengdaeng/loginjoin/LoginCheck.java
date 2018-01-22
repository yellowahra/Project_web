package com.daengdaeng.loginjoin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection;
	private Statement stmt;
	private ResultSet resultSet;
	
	private String cname, cid, cpw;
	private String cemail;
	HttpSession httpSession;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCheck() {
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
	
	protected void actionCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		HttpSession httpSession = request.getSession();
		cid = request.getParameter("cid");
		cpw = request.getParameter("cpw");
		
			

			if(pwConfirm()){
				System.out.println("Password authentication is successful");
				String query = "SELECT * FROM customer WHERE cid='"+cid+"' AND cpw='" + cpw +"'";
				System.out.println(query);
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					
					connection = DriverManager.getConnection(
							"jdbc:oracle:thin:@localhost:1521:orcl", 
							"daengdaeng", "oracle_11g");
					while(resultSet.next()) {
						cname = resultSet.getString("cname");
						cid = resultSet.getString("cid");
						cpw = resultSet.getString("cpw");
						cemail =  resultSet.getString("cemail");
					}
					
				
					
					httpSession.setAttribute("cname", cname);
					httpSession.setAttribute("cid", cid);
					httpSession.setAttribute("cpw", cpw);
					stmt = connection.createStatement();
					int i = stmt.executeUpdate(query);
					if(i==1) {
						System.out.println("Login Success");
						httpSession.setAttribute("cname", cname);
						response.sendRedirect("home/loginResult.jsp");
					}else {
						System.out.println("login Fail");
						
						response.sendRedirect("home/loginfail.jsp");
						
					}
			
		
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet!=null) resultSet.close();
				if(stmt != null) stmt.close();
				if(connection !=null) connection.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}else {
		System.out.println("Error-Password do not matched.");
	
	}
	
}//actionCheck

}