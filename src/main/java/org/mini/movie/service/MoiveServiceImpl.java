package org.mini.movie.service;

import java.util.List;

import org.mini.domain.Report;
import org.mini.dto.Criteria;
import org.mini.movie.mappers.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MoiveServiceImpl implements MovieService {

	@Autowired
	private MovieMapper mapper;
	
	@Override
	public void register(Report report) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Report get(int rno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modify(Report report) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(int rno) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public List<Report> getList(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getList(cri);
	}

	@Override
	public int getCount(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotal(cri);
	}
	
}
