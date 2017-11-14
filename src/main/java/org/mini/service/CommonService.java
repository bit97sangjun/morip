package org.mini.service;

import org.mini.domain.Member;

public interface CommonService {
	
	public Boolean idcheck(String id);

	public Boolean nickcheck(String nick);
	
	public void join(Member member);
	
	public Boolean loginTest(String id, String pw);
	
}
