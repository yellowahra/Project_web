package com.daengdaeng.dogcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.ddao.DogDao;

public class DogWriteCommand implements DogCommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String cid=request.getParameter("cid");
		String dname =request.getParameter("dname");
		String dfilename =request.getParameter("dfilename");
		String dbd =request.getParameter("dbd");
		String dad =request.getParameter("dad");
		String dage =request.getParameter("dage");
		String dbreed =request.getParameter("dbreed");
		String dgender =request.getParameter("dgender");
		String dweight = request.getParameter("dweight");
		String didnum = request.getParameter("didnum");

		DogDao dao = new DogDao();
		dao.dwrite(cid, dname, dfilename, dbd, dad, dage, dbreed, dgender, dweight, didnum);
	}


}
