package com.daengdaeng.adoptcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.adao.AdoptDao;

public class AdoptDeleteCommand implements AdoptCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String aId = request.getParameter("aId");
		
		AdoptDao dao = new AdoptDao();
		dao.adelete(aId);
		
	}
	
}
