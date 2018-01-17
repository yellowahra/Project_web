package com.daengdaeng.adoptcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface AdoptCommand {
	void execute(HttpServletRequest request, HttpServletResponse response);

}
