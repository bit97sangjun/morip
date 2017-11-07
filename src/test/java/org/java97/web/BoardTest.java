package org.java97.web;

import java.util.List;
import java.util.stream.IntStream;

import javax.inject.Inject;

import org.java97.domain.Board;
import org.java97.dto.Criteria;
import org.java97.mappers.BoardMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.java.Log;

@Log
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
	locations ={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BoardTest {
	@Inject
	BoardMapper mapper;
	
//	@Test
//	public void createTest() {
//		
//		IntStream
//		.range(0,100)
//		.forEach(i -> {
//			Board board = new Board();
//			board.setTitle("Hello" + i);
//			board.setContent("content" + i);
//			board.setWriter("writer" + i);
//			mapper.create(board);
//		});
//		
//	}
//	
//	@Test
//	public void readTest() {
//		
//		log.info("" + mapper.read(50));
//		
//	}
//	
//	
//	@Test
//	public void listTest() {
//		
//		List<Board> list = mapper.getList2(new Criteria(1, 10));
//		
////		// 람다식으로 쓰기
////		mapper.getList(10, 10).forEach(board -> log.info(""+board));
//		
//		for (Board board : list) {
//			log.info("" + board);
//		}
//		
//	}
//	
//	@Test
//	public void updateTest() {
//		
//		Board board = new Board();
//		board.setTitle("Hello 수정");
//		board.setContent("content 수정");
//		board.setBno(31);
//		mapper.update(board);
//		
//	}
//	
//	@Test
//	public void deleteTest() {
//		
//		mapper.delete(40);
//		
//	}
	
	@Test
	public void pageTest() {
	
//		mapper.page(new Criteria(1,10));
		
//		List<Board> list = mapper.page(new Criteria(1,10));
		
//		for (Board board : list) {
//		log.info("" + board);
//		}
		
	}
	
}
