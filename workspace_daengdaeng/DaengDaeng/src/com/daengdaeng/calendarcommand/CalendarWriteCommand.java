package com.daengdaeng.calendarcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.cdao.CalendarDao;

public class CalendarWriteCommand implements CalendarCommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String cid =request.getParameter("cid");
		String dname =request.getParameter("dname");
	
		String ndate = request.getParameter("ndate");
		String ntime = request.getParameter("ntime");
		String ntype = request.getParameter("ntype");
	
		String nmemo = request.getParameter("nmemo");
		

		CalendarDao dao = new CalendarDao();
		dao.calendarwrite(cid, dname, ndate, ntime, ntype, nmemo);
	}


}
