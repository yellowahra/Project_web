package com.daengdaeng.medicinecommand;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.mdao.MedicineDao;

import com.daengdaeng.mdto.MedicineDto;


public class MMedicineListCommand implements MedicineCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		MedicineDao dao = new MedicineDao();
		ArrayList<MedicineDto> dtos = dao.mmlist();
		
		request.setAttribute("mmlist", dtos);
	}

}
