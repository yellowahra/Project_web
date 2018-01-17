package com.daengdaeng.adoptcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.adao.AdoptDao;
import com.daengdaeng.adto.AdoptDto;



public class AdoptContentCommand implements AdoptCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String aId = request.getParameter("Id");
		
		AdoptDao dao = new AdoptDao();
		AdoptDto dto = dao.acontentView(aId);
		
		request.setAttribute("acontent_view", dto);
	}

}
