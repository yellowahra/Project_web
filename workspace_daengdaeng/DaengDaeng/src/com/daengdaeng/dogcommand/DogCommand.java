package com.daengdaeng.dogcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface DogCommand {
	void execute(HttpServletRequest request, HttpServletResponse response);

}
