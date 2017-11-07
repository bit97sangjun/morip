package org.java97.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class StoreVO {

	// int는 기본으로 0이라는 값을 갖기 때문에 Integer로 준다.
	// long도 Long으로.. 기본값을 null로 잡고싶기 때문
	
	private Long sno;
	private String sname;
	private double lat, lng;
	private String tel;
	
	
}
