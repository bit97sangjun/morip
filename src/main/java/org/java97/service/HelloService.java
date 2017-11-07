package org.java97.service;

import javax.sql.DataSource;

import lombok.Setter;

@Setter
public class HelloService {
	
	private DataSource ds;
	

	public String sayHello() {
		return "Hello World";
	}
}
