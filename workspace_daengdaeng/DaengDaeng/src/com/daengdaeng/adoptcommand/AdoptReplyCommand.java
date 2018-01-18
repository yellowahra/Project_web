package com.daengdaeng.adoptcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.adao.AdoptDao;

public class AdoptReplyCommand implements AdoptCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String aId = request.getParameter("bId");
		String cid = request.getParameter("cid");
		String abreed = request.getParameter("abreed");
		String aage = request.getParameter("aage");
		String agender = request.getParameter("agender");
		String alocation = request.getParameter("alocation");
		String filename = request.getParameter("filename");
		String bGroup = request.getParameter("bGroup");
		String bStep = request.getParameter("bStep");
		String bIndent = request.getParameter("bIndent");
		
		AdoptDao dao = new AdoptDao();
		dao.areply(aId, cid, abreed, aage, agender, alocation, filename, bGroup, bStep, bIndent);
		
	}

}
