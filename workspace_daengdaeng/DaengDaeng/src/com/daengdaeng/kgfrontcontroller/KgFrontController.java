package com.daengdaeng.kgfrontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.kgcommand.KgCommand;
import com.daengdaeng.kgcommand.KgDeleteCommand;
import com.daengdaeng.kgcommand.KgListCommand;
import com.daengdaeng.kgcommand.KgWriteCommand;

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.dos")
public class KgFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KgFrontController() {
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
		
		KgCommand command = null;
		
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
		
		
		if(comm.equals("slist.dos")) {
			
			command = new KgListCommand();
			
			command.execute(request, response);
			
			viewPage = "weighthome.jsp";
		}else if(comm.equals("swrite_view.dos")) {
			viewPage = "weightwrite_view.jsp";
			
		}else if(comm.equals("swrite.dos")) {
			command = new KgWriteCommand();
			
			command.execute(request, response);
			
			viewPage= "slist.dos";
		}else if(comm.equals("sdelete.dos")){
			command = new KgDeleteCommand();
			command.execute(request, response);
			viewPage = "slist.dos";
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
	
}
