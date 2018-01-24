package com.daengdaeng.kgcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.kgdao.KgDao;

public class KgDeleteCommand implements KgCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String sId = request.getParameter("sId");
		
		KgDao dao = new KgDao();
		dao.sdelete(sId);
		
	}
	
}
