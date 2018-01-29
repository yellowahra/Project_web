package com.daengdaeng.calendarcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.cdao.CalendarDao;

public class CalendarDeleteCommand implements CalendarCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String nId = request.getParameter("nId");
		
		CalendarDao dao = new CalendarDao();
		dao.calendardelete(nId);
		
	}
	
}
