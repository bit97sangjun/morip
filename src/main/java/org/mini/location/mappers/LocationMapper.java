package org.mini.location.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.mini.domain.Movie;

public interface LocationMapper {
	
	@Select("select mimg, mtitle from tb_movie where mcode in (select mcode from tb_location where pno = #{pno})")
	public List<Movie> read(int pno);
	
}
