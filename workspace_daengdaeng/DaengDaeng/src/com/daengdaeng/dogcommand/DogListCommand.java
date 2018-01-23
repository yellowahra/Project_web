package com.daengdaeng.dogcommand;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.ddao.DogDao;
import com.daengdaeng.ddto.DogDto;

public class DogListCommand implements DogCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		DogDao dao = new DogDao();
		ArrayList<DogDto> dtos = dao.dlist();
		
		request.setAttribute("dlist", dtos);
	}

}
