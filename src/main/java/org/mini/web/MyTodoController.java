package org.java97.web;

import java.util.Arrays;
import java.util.List;

import org.java97.domain.MyTodo;
import org.java97.dto.Criteria;
import org.java97.service.MyTodoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.java.Log;

@Log
@CrossOrigin(origins="*")
@RestController
@RequestMapping("/mytodo/*")
public class MyTodoController {

	@Autowired
	private MyTodoService service;
	
	@GetMapping("/page/{page}")
	public ResponseEntity<List<MyTodo>> getList(
			@PathVariable("page") int pageNum, 
			@RequestParam(name="size", defaultValue="10") int size ){
		
		log.info("=============================");
		log.info("=============================");
		log.info("" + service.getClass().getName());
		log.info("=============================");
		log.info("=============================");
		
		Criteria cri = new Criteria(pageNum, size);
		
		return 
			new ResponseEntity<List<MyTodo>>(
					service.getList(cri), 
					HttpStatus.OK);
		
	}
	
	@PostMapping("/newForm")
	public String registerFormPost(MyTodo vo, String[] files ) {
		
		log.info("VO: " + vo);
		log.info("files: " + Arrays.toString(files));
		
		service.register(vo, files);
		
		return "";
	}
	
	@PostMapping("/new")
	public ResponseEntity<String> register(@RequestBody MyTodo vo) {
	
		log.info("" + vo);
		service.register(vo);
		
		return new ResponseEntity<>("registed",HttpStatus.CREATED);
	}
	
	@GetMapping("/{tno}")
	public ResponseEntity<MyTodo> detail(@PathVariable(name="tno") Long tno ) {
		
		try {
			MyTodo todo = service.get(tno);
			
			if(todo == null) {
				throw new Exception();
			}			
			return new ResponseEntity<MyTodo>(todo, HttpStatus.OK);
			
		}catch(Exception e) {
			
			return new ResponseEntity(HttpStatus.NOT_FOUND);
		}
		
	}
	
	@DeleteMapping("/{tno}")
	public ResponseEntity<String> remove(@PathVariable(name="tno") Long tno){
		try {
			
			service.remove(tno);
			return new ResponseEntity<String>("removed", HttpStatus.OK);
		}catch(Exception e) {
			return new ResponseEntity<String>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
	}
	
	
}
