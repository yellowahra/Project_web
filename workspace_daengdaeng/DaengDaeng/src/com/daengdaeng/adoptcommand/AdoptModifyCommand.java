package com.daengdaeng.adoptcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.adao.AdoptDao;

public class AdoptModifyCommand implements AdoptCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String aId = request.getParameter("aId");
		String cid = request.getParameter("cid");
		String abreed = request.getParameter("abreed");
		String aage = request.getParameter("aage");
		String agender = request.getParameter("agender");
		String alocation = request.getParameter("alocation");
		String filename = request.getParameter("filename");
		AdoptDao dao = new AdoptDao();
		dao.amodify(aId, cid, abreed, aage, agender, alocation, filename);
		
	}
	
}
