package com.daengdaeng.kgcommand;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.kgdao.KgDao;

import com.daengdaeng.kgdto.KgDto;

public class KgListCommand implements KgCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		KgDao dao = new KgDao();
		ArrayList<KgDto> dtos = dao.slist();
		
		request.setAttribute("slist", dtos);
	}

}
