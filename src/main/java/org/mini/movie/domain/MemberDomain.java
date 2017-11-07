package org.mini.movie.domain;

import lombok.Data;

@Data
public class MemberDomain {

	private int id;
	private String pw;
	private String userimg ;
	private String email;
	private String nick;
	private boolean isadmin;
}
