package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InitParamAnnotation
 */
@WebServlet(urlPatterns = { "/InitParamAnnotation" }, initParams = { @WebInitParam(name = "id", value = "abcde"),
		@WebInitParam(name = "pw", value = "12345"), @WebInitParam(name = "email", value = "abcde@gmail.com") })
public class InitParamAnnotation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InitParamAnnotation() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = getInitParameter("id");
		String pw = getInitParameter("pw");
		String email = getInitParameter("email");

		PrintWriter writer = response.getWriter();
		writer.println("<html><head></head><body>");
		writer.println("id: " + id + "<br />");
		writer.println("pw: " + pw + "<br />");
		writer.println("email: " + email + "<br />");
		writer.println("</body></html>");
		writer.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
