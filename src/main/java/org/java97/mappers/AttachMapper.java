package org.java97.mappers;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface AttachMapper {

	@Insert("insert into tbl_attach (tno, fname) values ( #{tno}, #{fileName})")
	public void addAttach(@Param("tno") Long tno, 
			@Param("fileName") String fileName);
	
}
