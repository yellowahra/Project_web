package com.daengdaeng.allergycommand;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.allergydao.AllergyDao;

import com.daengdaeng.allergydto.AllergyDto;


public class AAllergyListCommand implements AllergyCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		AllergyDao dao = new AllergyDao();
		ArrayList<AllergyDto> dtos = dao.aallergylist();
		
		request.setAttribute("aallergylist", dtos);
	}

}
