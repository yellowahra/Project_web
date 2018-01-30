package com.daengdaeng.photocommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.photodao.PhotoDao;

public class PhotoWriteCommand implements PhotoCommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String cid=request.getParameter("cid");
		String dname =request.getParameter("dname");
		String ptitle =request.getParameter("ptitle");
		String pfile =request.getParameter("pfile");
		String takendate =request.getParameter("takendate");

		PhotoDao dao = new PhotoDao();
		dao.photowrite(cid, dname, ptitle, pfile, takendate);
	}


}
