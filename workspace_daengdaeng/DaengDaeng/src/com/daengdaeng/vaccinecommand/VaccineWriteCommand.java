package com.daengdaeng.vaccinecommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.vdao.VaccineDao;

public class VaccineWriteCommand implements VaccineCommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String cid =request.getParameter("cid");
		String dname =request.getParameter("dname");
	
		String vname = request.getParameter("vname");
		String vinjdate = request.getParameter("vinjdate");
		String vseff = request.getParameter("vseff");
		String vmemo = request.getParameter("vmemo");
		

		VaccineDao dao = new VaccineDao();
		dao.vwrite(cid, dname, vname, vinjdate, vseff, vmemo);
	}


}
