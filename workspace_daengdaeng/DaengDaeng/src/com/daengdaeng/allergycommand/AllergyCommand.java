package com.daengdaeng.allergycommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface AllergyCommand {
	void execute(HttpServletRequest request, HttpServletResponse response);

}
