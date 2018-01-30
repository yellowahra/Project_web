package com.daengdaeng.photocommand;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daengdaeng.photodao.PhotoDao;
import com.daengdaeng.photodto.PhotoDto;

public class PhotoListCommand implements PhotoCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		PhotoDao dao = new PhotoDao();
		ArrayList<PhotoDto> dtos = dao.photolist();
		
		request.setAttribute("photolist", dtos);
	}

}
