package org.java97.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.java97.domain.MyTodo;
import org.java97.dto.Criteria;

public interface MyTodoMapper extends CRUDMapper<MyTodo, Long> {

	
	@Select("select * from tbl_do order by tno desc limit #{skip}, #{size}")
	public List<MyTodo> getList(Criteria cri);
}
