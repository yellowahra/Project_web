package com.daengdaeng.vfrontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.vaccinecommand.VaccineCommand;
import com.daengdaeng.vaccinecommand.VaccineDeleteCommand;
import com.daengdaeng.vaccinecommand.VaccineListCommand;
import com.daengdaeng.vaccinecommand.VaccineWriteCommand;
import com.daengdaeng.vaccinecommand.VVaccineListCommand;
/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.dov")
public class VaccineFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VaccineFrontController() {
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
		
		VaccineCommand command = null;
		
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
		
		
		if(comm.equals("vlist.dov")) {
			
			command = new VaccineListCommand();
			
			command.execute(request, response);
			
			viewPage = "vaccinehome.jsp";
		}else if(comm.equals("vwrite_view.dov")) {
			viewPage = "vaccinewrite_view.jsp";
			
		}else if(comm.equals("vwrite.dov")) {
			command = new VaccineWriteCommand();
			
			command.execute(request, response);
			
			viewPage= "vvlist.dov";
		}else if(comm.equals("vdelete.dov")){
			command = new VaccineDeleteCommand();
			command.execute(request, response);
			viewPage = "vlist.dov";
			
		}else if(comm.equals("vvlist.dov")){
			command = new VVaccineListCommand();
			
			command.execute(request, response);
			
			viewPage = "vaccinelist.jsp";
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
	
}
