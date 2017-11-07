package org.java97.web;

import org.java97.domain.Board;
import org.java97.dto.Criteria;
import org.java97.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/register")
	public void registerGET(Criteria cri) {
		
	}
	
	@GetMapping("/detail")
	public void detail(@RequestParam(name="bno") int bno, 
			@ModelAttribute("cri") Criteria cri, Model model) {
		model.addAttribute("board", service.get(bno));
	}
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("total", service.getListCount(cri));
		
		log.info(""+cri.getPage());
	}
	
	
	
	@PostMapping("/register")
	public String registerPost(Board board, Criteria cri, RedirectAttributes rttr) {

		log.info("" + board);
		
		service.register(board);
				
		rttr.addFlashAttribute("result", "success");
		rttr.addFlashAttribute("criteria", cri);
		return "redirect:/board/list";
	}

}






