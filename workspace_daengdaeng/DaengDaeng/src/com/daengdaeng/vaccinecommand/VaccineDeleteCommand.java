
package com.daengdaeng.vaccinecommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.vdao.VaccineDao;

public class VaccineDeleteCommand implements VaccineCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String vId = request.getParameter("vId");
		
		VaccineDao dao = new VaccineDao();
		dao.vdelete(vId);
		
	}
	
}
