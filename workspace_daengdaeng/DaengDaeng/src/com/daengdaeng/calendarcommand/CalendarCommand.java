package com.daengdaeng.calendarcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CalendarCommand {
	void execute(HttpServletRequest request, HttpServletResponse response);

}
