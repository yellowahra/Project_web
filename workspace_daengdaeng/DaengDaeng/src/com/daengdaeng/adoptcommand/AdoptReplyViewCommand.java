package com.daengdaeng.adoptcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.adao.AdoptDao;
import com.daengdaeng.adto.AdoptDto;

public class AdoptReplyViewCommand implements AdoptCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String aId = request.getParameter("aId");
				
		AdoptDao dao = new AdoptDao();
		AdoptDto dto = dao.areply_view(aId);
		
		request.setAttribute("reply_view", dto);
		
	}

}
