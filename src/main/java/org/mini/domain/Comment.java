package org.mini.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Comment {

	private int cno ;
	private double score ;
	private int rno ;
	private Date cregdate ;
	private Date cupdate ;
	private String ccontent ;
	private String id;
	
}
