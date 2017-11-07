package org.java97.mappers;

import java.util.List;

import org.java97.dto.Criteria;

public interface PageMapper<E> {
	
	public List<E> page(Criteria cri);
	
}