package com.daengdaeng.joincommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.joindao.JoinDao;

public class JoinWriteCommand implements JoinCommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String cname=request.getParameter("cname");
		String cid=request.getParameter("cid");
		String cpw = request.getParameter("cpw");
		String cemail = request.getParameter("cemail");
	
		JoinDao dao = new JoinDao();
		dao.joinwrite(cname, cid, cpw, cemail);
	}


}
