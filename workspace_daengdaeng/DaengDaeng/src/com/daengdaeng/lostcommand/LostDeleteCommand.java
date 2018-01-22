package com.daengdaeng.lostcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.ldao.LostDao;

public class LostDeleteCommand implements LostCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String lId = request.getParameter("lId");
		
		LostDao dao = new LostDao();
		dao.ldelete(lId);
		
	}
	
}
