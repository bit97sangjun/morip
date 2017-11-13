package org.mini.service;

import org.mini.mappers.CommonMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonServiceImpl implements CommonService {

	@Autowired
	CommonMapper mapper;
	
	
	@Override
	public Boolean idcheck(String id) {
		
		// 중복된 게 없으면 false 반환
		Boolean result = mapper.idcheck(id) == 0 ? false : true;
		
		return result;
	}

	@Override
	public Boolean nickcheck(String nick) {
		
		// 중복된 게 없으면 false 반환
		 Boolean result = mapper.nickcheck(nick) == 0 ? false : true;
		
		return result;
	}

}
