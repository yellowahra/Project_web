package com.daengdaeng.calendarcommand;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.cdao.CalendarDao;

import com.daengdaeng.cdto.CalendarDto;

public class CalendarListCommand implements CalendarCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		CalendarDao dao = new CalendarDao();
		ArrayList<CalendarDto> dtos = dao.calendarlist();
		
		request.setAttribute("calendarlist", dtos);
	}

}
