package org.mini.movie.service;

import java.util.List;

import org.mini.domain.Movie;
import org.mini.domain.Report;
import org.mini.dto.Criteria;

public interface MovieService {

	public void register(Report report);
	public Report get(int rno);
	public void modify(Report report);
	public void remove(int rno);
	
	public List<Report> getList(Criteria cri);
	public int getCount(Criteria cri);
	public List<Movie> getMovieread(String keyword);
}
