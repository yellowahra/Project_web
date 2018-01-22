package com.daengdaeng.lostcommand;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.ldao.LostDao;
import com.daengdaeng.ldto.LostDto;

public class LostListCommand implements LostCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		LostDao dao = new LostDao();
		ArrayList<LostDto> dtos = dao.llist();
		
		request.setAttribute("llist", dtos);
	}

}
