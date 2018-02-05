package com.daengdaeng.cfrontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.calendarcommand.CalendarCommand;
import com.daengdaeng.calendarcommand.CalendarDeleteCommand;
import com.daengdaeng.calendarcommand.CalendarListCommand;
import com.daengdaeng.calendarcommand.CalendarWriteCommand;
import com.daengdaeng.calendarcommand.CCalendarListCommand;
/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.doc")
public class CalendarFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalendarFrontController() {
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
		
		CalendarCommand command = null;
		
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
		
		
		if(comm.equals("calendarlist.doc")) {
			
			command = new CalendarListCommand();
			
			command.execute(request, response);
			
			viewPage = "calendarhome.jsp";
		}else if(comm.equals("calendarwrite_view.doc")) {
			viewPage = "calendarwrite_view.jsp";
			
		}else if(comm.equals("calendarwrite.doc")) {
			command = new CalendarWriteCommand();
			
			command.execute(request, response);
			
			viewPage= "ccalendarlist.doc";
		}else if(comm.equals("calendardelete.doc")){
			command = new CalendarDeleteCommand();
			command.execute(request, response);
			viewPage = "calendarlist.doc";
			
		}else if(comm.equals("ccalendarlist.doc")){
			command = new CCalendarListCommand();
			
			command.execute(request, response);
			
			viewPage = "calendarlist.jsp";
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
	
}
