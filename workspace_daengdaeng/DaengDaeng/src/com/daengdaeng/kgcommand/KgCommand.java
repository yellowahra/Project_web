package com.daengdaeng.kgcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface KgCommand {
	void execute(HttpServletRequest request, HttpServletResponse response);

}
