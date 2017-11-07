package org.java97.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MyTodo {
	
	private Long tno;
	private String title, todo;
	private Date regdate;
	
}
