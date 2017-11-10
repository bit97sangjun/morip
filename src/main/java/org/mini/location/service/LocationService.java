package org.mini.location.service;

import java.util.List;

import org.mini.domain.Movie;
import org.mini.domain.Place;

public interface LocationService {
	public List<Movie> getMovies(int pno, int zcode);
	
	public String getPlaceName(int pno);
	
	public List<Place> getPlace(int zcode);
}
