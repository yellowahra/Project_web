package com.daengdaeng.watchcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.wdao.WatchDao;

public class WatchDeleteCommand implements WatchCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String wId = request.getParameter("wId");
		
		WatchDao dao = new WatchDao();
		dao.wdelete(wId);
		
	}
	
}
