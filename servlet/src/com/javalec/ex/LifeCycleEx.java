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
        System.out.println("서블릿 생성 중... 생성자 호출됨");
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException { 
    	// TODO Auto-generated method stub
    	System.out.println("init() 메서드가 호출됨");
    }
    
    
    @Override
    public void destroy() {
    	// TODO Auto-generated method stub
    	System.out.println("destroy() 메서드가 호출됨");
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet 메서드랍니다");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost  메서드랍니다");
		doGet(request, response);
	}
	
	@PostConstruct
	private void initPostConstruct(){
		System.out.println("init()메서드 실행 직전 실행되는 메서드");
	}
	
	@PreDestroy
	private void destroyPreDestroy() {
		System.out.println("destroy()메서드가 호출되고 나서 실행되는 메서드");
	}

}
