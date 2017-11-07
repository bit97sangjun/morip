package org.java97.service;

import java.util.List;

import org.java97.domain.MyTodo;
import org.java97.dto.Criteria;

public interface MyTodoService {

	public void register(MyTodo vo);
	
	public void register(MyTodo vo, String[] files);
	
	
	public MyTodo get(Long tno);
	
	public void modify(MyTodo vo);
	
	public void remove(Long tno);
	
	public List<MyTodo> getList(Criteria cri);
}
