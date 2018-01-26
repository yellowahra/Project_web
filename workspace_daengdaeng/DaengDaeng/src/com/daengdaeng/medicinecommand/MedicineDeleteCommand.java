package com.daengdaeng.medicinecommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.mdao.MedicineDao;

public class MedicineDeleteCommand implements MedicineCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String mId = request.getParameter("mId");
		
		MedicineDao dao = new MedicineDao();
		dao.mdelete(mId);
		
	}
	
}
