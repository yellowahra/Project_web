package com.daengdaeng.kgcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.kgdao.KgDao;

public class KgWriteCommand implements KgCommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String cid =request.getParameter("cid");
		String dname =request.getParameter("dname");
	
		String dweight = request.getParameter("dweight");
	

		KgDao dao = new KgDao();
		dao.swrite(cid, dname, dweight);
	}


}
