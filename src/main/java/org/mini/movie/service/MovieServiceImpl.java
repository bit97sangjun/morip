package org.mini.movie.service;

import java.util.List;

import org.mini.domain.Movie;
import org.mini.domain.Report;
import org.mini.domain.ReportList;
import org.mini.dto.Criteria;
import org.mini.movie.mappers.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.java.Log;

@Log
@Service
public class MovieServiceImpl implements MovieService {

   @Autowired
   private MovieMapper mapper;

   
   
   @Override
   public void register(Report report) {

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
   public List<ReportList> getList(Criteria cri, String str) {
      // TODO Auto-generated method stub
      log.info("service str : " + str);
      return mapper.getList(cri, str);
   }

   @Override
   public int getCount(Criteria cri, String str) {
      // TODO Auto-generated method stub
      return mapper.getTotal(cri, str);
   }

   @Override
   public List<Movie> getMovieread(String keyword) {
      log.info("keyword" +keyword);
      return mapper.getMovieread(keyword);
   }

 
   
@Override
public void register(Report report, String[] files, Long rno, String fileName) {
	
	mapper.report(report);
	mapper.addAttach(rno, fileName);
	
	for(int i=0; i< files.length; i++) {
		mapper.addAttach(rno, fileName);
	}
  }

@Override
public List<Report> getAllData() {
	// TODO Auto-generated method stub
	return mapper.getAllData();
}
}