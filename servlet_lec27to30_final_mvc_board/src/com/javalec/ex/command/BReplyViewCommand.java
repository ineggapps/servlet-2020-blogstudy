package com.javalec.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.dao.BDAO;
import com.javalec.ex.dto.BDTO;

public class BReplyViewCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bId = request.getParameter("bId");
		BDAO dao = new BDAO();
		BDTO dto = dao.reply_view(bId);
		request.setAttribute("reply_view", dto);
	}

}
