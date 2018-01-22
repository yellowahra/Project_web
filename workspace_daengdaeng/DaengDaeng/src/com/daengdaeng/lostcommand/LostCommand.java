package com.daengdaeng.lostcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface LostCommand {
	void execute(HttpServletRequest request, HttpServletResponse response);

}
