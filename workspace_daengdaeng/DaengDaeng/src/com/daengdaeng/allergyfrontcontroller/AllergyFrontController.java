package com.daengdaeng.allergyfrontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.allergycommand.AllergyCommand;
import com.daengdaeng.allergycommand.AllergyDeleteCommand;
import com.daengdaeng.allergycommand.AllergyListCommand;
import com.daengdaeng.allergycommand.AllergyWriteCommand;
import com.daengdaeng.allergycommand.AAllergyListCommand;
/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.doal")
public class AllergyFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllergyFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet");
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		System.out.println("doPost");
		actionDo(request, response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("actionDo");
		
		request.setCharacterEncoding("EUC-KR");
		
		String viewPage = null;
		
		AllergyCommand command = null;
		
		String uri = request.getRequestURI();
		System.out.println("URI: " + uri);
		
		String contextPath = request.getContextPath();
		System.out.println("contextPath : " + contextPath);
		
		String[] arrURI = uri.split("/");
		
		String comm = arrURI[arrURI.length-1];
		
		System.out.println(arrURI.length);
		
		for(int i=0; i < arrURI.length ; i++) {
			System.out.printf("arrURI[%d] = %s\n", i, arrURI[i]);
		}
		
		System.out.println("comm: " + comm);
		
		
		if(comm.equals("allergylist.doal")) {
			
			command = new AllergyListCommand();
			
			command.execute(request, response);
			
			viewPage = "allergyhome.jsp";
		}else if(comm.equals("allergywrite_view.doal")) {
			viewPage = "allergywrite_view.jsp";
			
		}else if(comm.equals("allergywrite.doal")) {
			command = new AllergyWriteCommand();
			
			command.execute(request, response);
			
			viewPage= "allergylist.doal";
		}else if(comm.equals("allergydelete.doal")){
			command = new AllergyDeleteCommand();
			command.execute(request, response);
			viewPage = "allergylist.doal";
			
		}else if(comm.equals("aallergylist.doal")){
			command = new AAllergyListCommand();
			
			command.execute(request, response);
			
			viewPage = "allergylist.jsp";
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
	
}
