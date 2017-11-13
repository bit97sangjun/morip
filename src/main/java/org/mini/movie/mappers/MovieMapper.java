package org.mini.movie.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.mini.domain.Movie;
import org.mini.domain.Report;
import org.mini.dto.Criteria;

public interface MovieMapper extends CRUDMapper<Report, Integer> {

	@Select("select * from report order by rno desc limit #{skip}, #{size}")
	public List<Report> getList(Criteria cri);
	
	@Select("select count(rno) from report ")
	public int getTotal(Criteria cri);
	

	@Insert("insert into report (rno, rimg) values ( #{tno}, #{fimeName})")
	public void addAttach(@Param("rno") Long rno, 
			@Param("fileName") String fileName);

	@Insert("insert into report(rtitle , rcontent) value(#{rtitle},#{rcontent})")
	public void report(Report report);
	
	@Select("select mimg ,mtitle from movie where mtitle like CONCAT('%', #{keyword}, '%')")
	public List<Movie> getMovieread(String keyword);
}
