package com.daengdaeng.joincommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.joindao.JoinDao;

public class JoinDeleteCommand implements JoinCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String cid = request.getParameter("cid");
		
		JoinDao dao = new JoinDao();
		dao.joindelete(cid);
		
	}
	
}
