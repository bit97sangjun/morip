package org.mini.movie.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.mini.domain.Comment;
import org.mini.dto.Criteria;
import org.mini.mappers.CRUDMapper;

public interface MovieMapper extends CRUDMapper<Comment, Integer> {

	@Select("select * from tbl_board order by bno desc limit #{skip}, #{size}")
	public List<Comment> getList2(Criteria cri);
	
	@Select("select count(bno) from tbl_board ")
	public int getTotal(Criteria cri);
	
	@Select("select * from tbl_board order by bno desc limit #{first} *10, #{second}")
	public List<Comment> getList( 
			@Param(value="first") int first,
			@Param(value="second") int second);
}
