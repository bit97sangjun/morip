package org.java97.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.java97.domain.Board;
import org.java97.dto.Criteria;

public interface BoardMapper extends CRUDMapper<Board, Integer> {

	@Select("select * from tbl_board order by bno desc limit #{skip}, #{size}")
	public List<Board> getList2(Criteria cri);
	
	@Select("select count(bno) from tbl_board ")
	public int getTotal(Criteria cri);
	
	@Select("select * from tbl_board order by bno desc limit #{first} *10, #{second}")
	public List<Board> getList( 
			@Param(value="first") int first,
			@Param(value="second") int second);
}
