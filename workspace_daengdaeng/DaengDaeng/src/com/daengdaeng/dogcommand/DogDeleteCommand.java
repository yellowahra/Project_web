package com.daengdaeng.dogcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.ddao.DogDao;

public class DogDeleteCommand implements DogCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String dId = request.getParameter("dId");
		
		DogDao dao = new DogDao();
		dao.ddelete(dId);
		
	}
	
}
