package com.daengdaeng.watchcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.wdao.WatchDao;

public class WatchWriteCommand implements WatchCommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String cid=request.getParameter("cid");
		String wbreed = request.getParameter("wbreed");
		String wage = request.getParameter("wage");
		String wgender = request.getParameter("wgender");
		String wlocation = request.getParameter("wlocation");
		String wfilename = request.getParameter("wfilename");
		String wcontact = request.getParameter("wcontact");
		String wmemo = request.getParameter("wmemo");
		WatchDao dao = new WatchDao();
		dao.wwrite(cid, wbreed, wage, wgender, wlocation, wfilename, wcontact, wmemo);
	}


}
