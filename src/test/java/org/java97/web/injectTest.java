package org.java97.web;

import static org.junit.Assert.assertEquals;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.java97.mappers.TimeMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.java.Log;

@Log
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
	locations ={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class injectTest {
	
//	@Inject
//	HelloService service;
	
//	@Test
//	public void testSayHello() {
//		log.info(service.sayHello());
//	}
	@Inject
	TimeMapper timeMapper;

	@Test
	public void getTime() {
//		System.out.println(timeMapper.getClass().getName());
//		System.out.println(timeMapper.getTime());
		System.out.println(timeMapper.getYesterday());
	}
	
	@Inject
	DataSource ds;
	
	@Test
	public void testSayHello() throws Exception{
		System.out.println(ds.getConnection());
	}
	
	
	@Test
	public void test() {
		int first = 10;
		int second = 10;
		
		assertEquals(first, second); // 값이 같은지 확인
		
	}

}
