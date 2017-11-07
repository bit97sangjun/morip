package org.java97.service;

import java.util.List;

import org.java97.domain.MyTodo;
import org.java97.dto.Criteria;
import org.java97.mappers.AttachMapper;
import org.java97.mappers.MyTodoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.java.Log;

@Log
@Service

public class MyTodoServiceImpl implements MyTodoService {

	@Autowired
	private MyTodoMapper mapper;
	
	@Autowired
	private AttachMapper attachMapper;
	
	
	
	@Override
	public void register(MyTodo vo) {
		log.info("register");		
		mapper.create(vo);
	}

	@Override
	public MyTodo get(Long tno) {
		log.info("get");
		return mapper.read(tno);
	}

	@Override
	public void modify(MyTodo vo) {
		log.info("modify");

	}

	@Override
	public void remove(Long tno) {
		log.info("remove");
		
		mapper.delete(tno);

	}

	@Override
	public List<MyTodo> getList(Criteria cri) {
		return mapper.getList(cri);
		
	}

	@Transactional
	@Override
	public void register(MyTodo vo, String[] files) {
		
		mapper.create(vo);
		
		log.info("vo" + vo.toString());
		
		for(int i = 0; i < files.length; i++) {
			attachMapper.addAttach(vo.getTno(), files[i]);
		}
		
	}

}
