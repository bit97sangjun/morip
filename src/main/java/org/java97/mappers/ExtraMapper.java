package org.java97.mappers;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface ExtraMapper {
	
	@Insert("insert into tbl_do_extra (tno, val) values( (select LAST_INSERT_ID() from tbl_do limit 1), #{val})")
	public void create(@Param(value="val") int val);
	
	
}
