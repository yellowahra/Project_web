package com.daengdaeng.watchcommand;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.wdao.WatchDao;
import com.daengdaeng.wdto.WatchDto;

public class WatchListCommand implements WatchCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		WatchDao dao = new WatchDao();
		ArrayList<WatchDto> dtos = dao.wlist();
		
		request.setAttribute("wlist", dtos);
	}

}
