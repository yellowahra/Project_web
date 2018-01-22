package com.daengdaeng.watchcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface WatchCommand {
	void execute(HttpServletRequest request, HttpServletResponse response);

}
