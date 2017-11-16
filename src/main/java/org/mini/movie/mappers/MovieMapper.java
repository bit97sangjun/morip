package org.mini.movie.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.mini.domain.Movie;
import org.mini.domain.Report;
import org.mini.domain.ReportList;
import org.mini.dto.Criteria;

public interface MovieMapper extends CRUDMapper<Report, Integer> {

	//@Select("select * from tb_report order by rno desc limit #{skip}, #{size}")
	public List<ReportList> getList(@Param("cri")Criteria cri, @Param("search")String search);
	
	//@Select("select count(rno) from tb_report")
	public int getTotal(@Param("cri")Criteria cri, @Param("search")String search);

	@Select("select * from tb_report")
	public List<Report> getAllData();
	

	@Insert("insert into tb_reportimg (rno, rimg) values ( #{rno}, #{fimeName})")
	public void addAttach(@Param("rno") Long rno, 
			@Param("fileName") String fileName);

	@Insert("insert into tb_report(rtitle , rcontent) value(#{rtitle},#{rcontent})")
	public void report(Report report);
	
	@Select("select mimg ,mtitle from tb_movie where mtitle like CONCAT('%', #{keyword}, '%')")
	public List<Movie> getMovieread(String keyword);
}
