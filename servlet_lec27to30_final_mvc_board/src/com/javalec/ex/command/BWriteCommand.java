package com.javalec.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.dao.BDAO;

public class BWriteCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bTitle = request.getParameter("bTitle");
		String bName = request.getParameter("bName");
		String bContent = request.getParameter("bContent");
		
		BDAO dao = new BDAO();
		dao.write(bTitle, bName, bContent);
	}

}
