package com.daengdaeng.dfrontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.dogcommand.DogCommand;
import com.daengdaeng.dogcommand.DogDeleteCommand;
import com.daengdaeng.dogcommand.DogListCommand;
import com.daengdaeng.dogcommand.DogWriteCommand;

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.dod")
public class DogFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DogFrontController() {
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
		
		DogCommand command = null;
		
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
		
		
		if(comm.equals("dlist.dod")) {
			
			command = new DogListCommand();
			
			command.execute(request, response);
			
			viewPage = "doglist.jsp";
		}else if(comm.equals("dwrite_view.dod")) {
			viewPage = "dogwrite_view.jsp";
		}else if(comm.equals("dwrite.dod")) {
			command = new DogWriteCommand();
			command.execute(request, response);
			viewPage= "dlist.dod";
		}else if(comm.equals("ddelete.dod")){
			command = new DogDeleteCommand();
			command.execute(request, response);
			viewPage = "dlist.dod";
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
	
}
