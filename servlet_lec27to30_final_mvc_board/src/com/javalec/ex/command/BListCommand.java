package com.javalec.ex.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.dao.BDAO;
import com.javalec.ex.dto.BDTO;

public class BListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BDAO dao = new BDAO();
		ArrayList<BDTO> dtos = dao.list();
		request.setAttribute("list", dtos);
	}

}
