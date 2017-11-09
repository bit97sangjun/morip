package org.mini.movie.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.mini.domain.Comment;
import org.mini.domain.Report;
import org.mini.dto.Criteria;

public interface MovieMapper extends CRUDMapper<Report, Integer> {

	@Select("select * from report order by rno desc limit #{skip}, #{size}")
	public List<Report> getList(Criteria cri);
	
	@Select("select count(rno) from report ")
	public int getTotal(Criteria cri);
}
