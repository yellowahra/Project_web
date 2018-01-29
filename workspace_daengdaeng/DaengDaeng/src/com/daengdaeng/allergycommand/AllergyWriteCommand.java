package com.daengdaeng.allergycommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.allergydao.AllergyDao;

public class AllergyWriteCommand implements AllergyCommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String cid =request.getParameter("cid");
		String dname =request.getParameter("dname");
	
		String alredate = request.getParameter("alredate");
		String alreason = request.getParameter("alreason");
		String alreaction = request.getParameter("alreaction");
		String alseverity = request.getParameter("alseverity");
		String almemo = request.getParameter("almemo");
		

		AllergyDao dao = new AllergyDao();
		dao.allergywrite(cid, dname, alredate, alreason, alreaction, alseverity, almemo);
	}


}
