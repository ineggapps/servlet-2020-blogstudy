package com.javalec.ex;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextListenerEx implements ServletContextListener{

	
	public ContextListenerEx() {
		System.out.println("�����Ǿ����ϴ�.");
	}
		
	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("contextDestroyed()");
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("contextInitialized()");
	}
	
}
