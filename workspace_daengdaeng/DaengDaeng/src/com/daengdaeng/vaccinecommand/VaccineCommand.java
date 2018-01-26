package com.daengdaeng.vaccinecommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface VaccineCommand {
	void execute(HttpServletRequest request, HttpServletResponse response);

}
