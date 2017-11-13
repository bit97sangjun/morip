package org.mini.location.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.mini.domain.Location;
import org.mini.domain.Movie;
import org.mini.domain.Place;
import org.mini.domain.Zone;

public interface LocationMapper {
	
//	@Select("select mimg, mtitle from tb_movie where mcode in (select mcode from tb_location where pno = #{pno})")
//	public List<Movie> getPoster(int pno);
	
	public List<Movie> getPoster(@Param(value="pno") int pno, @Param(value="zcode") int zcode);
	
	@Select("select pname from tb_place where pno = #{pno}")
	public String getMarkerName(int pno);
	
	@Select("select addr, pno from tb_place where zcode = #{zcode}")
	public List<Place> getMarker(int zcode);
	
	@Select("select pno, mcode from tb_location")
	public List<Location> getLocation();
	
	@Select("select zcode, zname from tb_zone where zcode = #{zcode}")
	public Zone getZone(int zcode);
	
}
