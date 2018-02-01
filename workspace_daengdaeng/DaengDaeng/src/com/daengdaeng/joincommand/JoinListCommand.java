package com.daengdaeng.joincommand;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.joindao.JoinDao;
import com.daengdaeng.joindto.JoinDto;

public class JoinListCommand implements JoinCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		JoinDao dao = new JoinDao();
		ArrayList<JoinDto> dtos = dao.joinlist();
		
		request.setAttribute("joinlist", dtos);
	}

}
