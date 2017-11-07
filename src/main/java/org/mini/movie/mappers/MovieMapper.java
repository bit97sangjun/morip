package org.mini.movie.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.mini.dto.Criteria;
import org.mini.movie.domain.CommentDomain;

public interface MovieMapper extends CRUDMapper<CommentDomain, Integer> {

	@Select("select * from tbl_board order by bno desc limit #{skip}, #{size}")
	public List<CommentDomain> getList2(Criteria cri);
	
	@Select("select count(bno) from tbl_board ")
	public int getTotal(Criteria cri);
	
	@Select("select * from tbl_board order by bno desc limit #{first} *10, #{second}")
	public List<CommentDomain> getList( 
			@Param(value="first") int first,
			@Param(value="second") int second);
}
