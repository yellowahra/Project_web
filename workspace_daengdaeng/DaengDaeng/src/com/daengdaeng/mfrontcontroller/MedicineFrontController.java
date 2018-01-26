package com.daengdaeng.mfrontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.medicinecommand.MedicineCommand;
import com.daengdaeng.medicinecommand.MedicineDeleteCommand;
import com.daengdaeng.medicinecommand.MedicineListCommand;
import com.daengdaeng.medicinecommand.MedicineWriteCommand;
import com.daengdaeng.medicinecommand.MMedicineListCommand;
/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.dom")
public class MedicineFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MedicineFrontController() {
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
		
		MedicineCommand command = null;
		
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
		
		
		if(comm.equals("mlist.dom")) {
			
			command = new MedicineListCommand();
			
			command.execute(request, response);
			
			viewPage = "medicinehome.jsp";
		}else if(comm.equals("mwrite_view.dom")) {
			viewPage = "medicinewrite_view.jsp";
			
		}else if(comm.equals("mwrite.dom")) {
			command = new MedicineWriteCommand();
			
			command.execute(request, response);
			
			viewPage= "mlist.dom";
		}else if(comm.equals("mdelete.dom")){
			command = new MedicineDeleteCommand();
			command.execute(request, response);
			viewPage = "mlist.dom";
			
		}else if(comm.equals("mmlist.dom")){
			command = new MMedicineListCommand();
			
			command.execute(request, response);
			
			viewPage = "medicinelist.jsp";
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
	
}
