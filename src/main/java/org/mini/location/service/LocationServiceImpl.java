package org.mini.location.service;

import java.util.List;

import org.mini.domain.Comment;
import org.mini.domain.Location;
import org.mini.domain.Movie;
import org.mini.domain.Place;
import org.mini.domain.Zone;
import org.mini.location.mappers.LocationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LocationServiceImpl implements LocationService {

	@Autowired
	private LocationMapper mapper;
	
	@Override
	public List<Movie> getMovies(int pno, int zcode) {
		
		return mapper.getPoster(pno, zcode);
	}

	@Override
	public String getPlaceName(int pno) {
		return mapper.getMarkerName(pno);
	}

	@Override
	public List<Place> getPlace(int zcode) {
		return mapper.getMarker(zcode);
	}

	@Override
	public List<Location> getLocation() {
		return mapper.getLocation();
	}

	@Override
	public Zone getZone(int zcode) {
		return mapper.getZone(zcode);
	}

	@Override
	public Movie rMovie(int rno) {
		return mapper.rMoive(rno);
	}

	@Override
	public List<Place> rMarker(int rno) {
		return mapper.rMarker(rno);
	}

	@Override
	public void rCreate(Comment comment) {
		mapper.rCreate(comment);
	}

	@Override
	public List<Comment> rList(int rno) {
		return mapper.rList(rno);
	}

}
