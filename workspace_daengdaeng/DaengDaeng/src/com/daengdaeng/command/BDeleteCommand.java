package com.daengdaeng.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.dao.BDao;

public class BDeleteCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String bId = request.getParameter("bId");
		
		BDao dao = new BDao();
		dao.delete(bId);
		
	}
	
}
