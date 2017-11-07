package org.mini.domain;

import lombok.Data;

@Data
public class Member {

	private int id;
	private String pw;
	private String userimg ;
	private String email;
	private String nick;
	private boolean isadmin;
}
