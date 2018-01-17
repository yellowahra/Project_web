package com.daengdaeng.adoptcommand;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.adao.AdoptDao;
import com.daengdaeng.adto.AdoptDto;

public class AdoptListCommand implements AdoptCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		AdoptDao dao = new AdoptDao();
		ArrayList<AdoptDto> dtos = dao.alist();
		
		request.setAttribute("alist", dtos);
	}

}
