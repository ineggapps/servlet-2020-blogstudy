package com.javalec.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BContentCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bId = request.getParameter("bId");
		BDAO dao = new BDAO();
		BDTO dto = dao.contentView(bId);

		request.setAttribute("content_view", dto);
	}

}
