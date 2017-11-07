package org.java97.service;

import java.util.List;

import org.java97.domain.Board;
import org.java97.dto.Criteria;

public interface BoardService {

	public void register(Board board);
	
	public Board get(Integer bno);
	
	public void modify(Board board);
	
	public void remove(Integer bno);
	
	public List<Board> getList(Criteria cri);
	
	public int getListCount(Criteria cri);
	
}
