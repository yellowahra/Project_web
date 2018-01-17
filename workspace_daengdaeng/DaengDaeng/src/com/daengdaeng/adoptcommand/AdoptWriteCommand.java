package com.daengdaeng.adoptcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.adao.AdoptDao;

public class AdoptWriteCommand implements AdoptCommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String cid=request.getParameter("cid");
		String abreed = request.getParameter("abreed");
		String aage = request.getParameter("aage");
		String agender = request.getParameter("agender");
		String alocation = request.getParameter("alocation");
		
		AdoptDao dao = new AdoptDao();
		dao.awrite(cid, abreed, aage, agender, alocation);
	}


}
