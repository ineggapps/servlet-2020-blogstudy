package com.javalec.ex;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LifeCycleEx
 */
@WebServlet("/LifeCycleEx")
public class LifeCycleEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LifeCycleEx() {
        super();
        System.out.println("���� ���� ��... ������ ȣ���");
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException { 
    	// TODO Auto-generated method stub
    	System.out.println("init() �޼��尡 ȣ���");
    }
    
    
    @Override
    public void destroy() {
    	// TODO Auto-generated method stub
    	System.out.println("destroy() �޼��尡 ȣ���");
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet �޼�����ϴ�");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost  �޼�����ϴ�");
		doGet(request, response);
	}
	
	@PostConstruct
	private void initPostConstruct(){
		System.out.println("init()�޼��� ���� ���� ����Ǵ� �޼���");
	}
	
	@PreDestroy
	private void destroyPreDestroy() {
		System.out.println("destroy()�޼��尡 ȣ��ǰ� ���� ����Ǵ� �޼���");
	}

}
