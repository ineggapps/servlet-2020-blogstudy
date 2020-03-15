package com.javalec.ex;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MembersAllService implements Service{

	@Override
	public ArrayList<MemberDTO> execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDAO dao = MemberDAO.getInstance();
		return dao.membersAll();
	}

}
