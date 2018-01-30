package com.daengdaeng.photocommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface PhotoCommand {
	void execute(HttpServletRequest request, HttpServletResponse response);

}
