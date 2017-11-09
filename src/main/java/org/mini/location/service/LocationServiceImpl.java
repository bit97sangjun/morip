package org.mini.location.service;

import java.util.List;

import org.mini.domain.Movie;
import org.mini.location.mappers.LocationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LocationServiceImpl implements LocationService {

	@Autowired
	private LocationMapper mapper;
	
	@Override
	public List<Movie> getMovies(int pno) {
		
		return mapper.read(pno);
	}

}
