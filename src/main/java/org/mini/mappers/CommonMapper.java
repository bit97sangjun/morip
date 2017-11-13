package org.mini.mappers;

import org.apache.ibatis.annotations.Select;

public interface CommonMapper {
	
	@Select("select count(id) from tb_member where id = #{id}")
	public int idcheck(String id);
	
	@Select("select count(nick) from tb_member where nick = #{nick}")
	public int nickcheck(String nick);
	
}
