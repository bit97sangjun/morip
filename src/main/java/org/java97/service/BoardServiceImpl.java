package org.java97.service;

import java.util.List;

import org.java97.domain.Board;
import org.java97.dto.Criteria;
import org.java97.mappers.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public void register(Board board) {
		
		mapper.create(board);

	}
	
	// 조회
	@Override
	public Board get(Integer bno) {

		return mapper.read(bno);
	}

	@Override
	public void modify(Board board) {
		// TODO Auto-generated method stub

	}

	@Override
	public void remove(Integer bno) {
		// TODO Auto-generated method stub
			
	}

	@Override
	public List<Board> getList(Criteria cri) {
		
		return mapper.getList2(cri);
	}

	@Override
	public int getListCount(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotal(cri);
	}

}
