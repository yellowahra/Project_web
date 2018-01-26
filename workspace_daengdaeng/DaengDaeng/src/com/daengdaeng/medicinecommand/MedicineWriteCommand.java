package com.daengdaeng.medicinecommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.mdao.MedicineDao;

public class MedicineWriteCommand implements MedicineCommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String cid =request.getParameter("cid");
		String dname =request.getParameter("dname");
	
		String mname = request.getParameter("mname");
		String mdosage = request.getParameter("mdosage");
		String mfreq = request.getParameter("mfreq");
		String mseff = request.getParameter("mseff");
		String mmemo = request.getParameter("mmemo");
		

		MedicineDao dao = new MedicineDao();
		dao.mwrite(cid, dname, mname, mdosage, mfreq, mseff, mmemo);
	}


}
