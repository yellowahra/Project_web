package com.daengdaeng.lostcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.ldao.LostDao;

public class LostWriteCommand implements LostCommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String cid=request.getParameter("cid");
		String lbreed = request.getParameter("lbreed");
		String lage = request.getParameter("lage");
		String lgender = request.getParameter("lgender");
		String llocation = request.getParameter("llocation");
		String lfilename = request.getParameter("lfilename");
		String lcontact = request.getParameter("lcontact");
		String lmemo = request.getParameter("lmemo");
		LostDao dao = new LostDao();
		dao.lwrite(cid, lbreed, lage, lgender, llocation, lfilename, lcontact, lmemo);
	}


}
