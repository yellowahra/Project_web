package com.daengdaeng.vaccinecommand;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.vdao.VaccineDao;

import com.daengdaeng.vdto.VaccineDto;


public class VVaccineListCommand implements VaccineCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		VaccineDao dao = new VaccineDao();
		ArrayList<VaccineDto> dtos = dao.vvlist();
		
		request.setAttribute("vvlist", dtos);
	}

}
