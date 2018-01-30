package com.daengdaeng.photocommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.photodao.PhotoDao;

public class PhotoDeleteCommand implements PhotoCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String pId = request.getParameter("pId");
		
		PhotoDao dao = new PhotoDao();
		dao.photodelete(pId);
		
	}
	
}
