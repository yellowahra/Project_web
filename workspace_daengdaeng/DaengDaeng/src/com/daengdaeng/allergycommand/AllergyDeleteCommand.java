package com.daengdaeng.allergycommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.allergydao.AllergyDao;

public class AllergyDeleteCommand implements AllergyCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String alId = request.getParameter("alId");
		
		AllergyDao dao = new AllergyDao();
		dao.allergydelete(alId);
		
	}
	
}
