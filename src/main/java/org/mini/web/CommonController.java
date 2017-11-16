package org.mini.web;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.imgscalr.Scalr;
import org.mini.domain.Member;
import org.mini.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

import lombok.extern.java.Log;

@Log
@Controller
public class CommonController {
	
	@Autowired
	CommonService service;
	
	
	@GetMapping("/home")
	public void home() {
		
	}
	
	@GetMapping("/join")
	public void joinPage() {

	}
	
	@PostMapping("/join")
	public String join(Member member) {
		System.out.println(member);
		
		service.join(member);
		
		return "redirect:/home";
		
	}
	
	@PostMapping("/dup")
	@ResponseBody
	public Boolean dupCheck(String id, String nick, int type) {
		
		// true면 중복됨
		Boolean result = null;
		
		switch(type) {
		case 1: 
			result = service.idcheck(id);
			break;
		case 2:	
			result = service.nickcheck(nick);
			break;
		}
		
		return result;
	}
	
	@GetMapping("/login")
	public void loginPage() {
		
	}
	
	@PostMapping("/ismember")
	@ResponseBody
	public Boolean isMember(String id, String pw) {
		
		System.out.println(service.loginTest(id, pw));
		
		// 로그인 성공이 true
		return service.loginTest(id, pw);
	}
	
	@PostMapping("/loginProcess")
	public String login(String id, String pw, Boolean remember, Model model) {
		
		System.out.println("remember" + remember);
		
		model.addAttribute("remember", remember);
		model.addAttribute("id", id);
		
		return "redirect:/home";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		
		Object obj = session.getAttribute("login");
		
		if(obj != null) {
			session.removeAttribute("login");
			session.invalidate();
			
			Cookie cookie = WebUtils.getCookie(request, "login");
			
			if(cookie != null) {
				cookie.setPath("/");
				cookie.setMaxAge(0);
			}
		}
		return "redirect:/home";
	}
	
	
	@GetMapping("/loginonly")
	public void loginonly() {
		
	}
	
	@PostMapping("/profile")
	@ResponseBody
	public String ex1Post(MultipartFile f1, Model model) {

		log.info(f1.getOriginalFilename());
		log.info(f1.getContentType());
		log.info("" + f1.getSize());

		String uuid = UUID.randomUUID().toString();
			
		String uploadName = uuid + "_" + f1.getOriginalFilename();

		model.addAttribute("uploadName", uploadName);

		try {
			if (f1.getSize() > 0) {

				OutputStream out = new FileOutputStream("C:\\movietrip\\userprofile" + uploadName);

				FileCopyUtils.copy(f1.getInputStream(), out);

				// 이미지 파일인 경우에만 thumbnail 만들기
				if (f1.getContentType().startsWith("image")) {

					model.addAttribute("isImage", f1.getContentType().startsWith("image"));

					// 원본파일이 만들어진 후 thumbnail image 만들기
					makeThumbnail(uploadName);
				}

			}

		} catch (Exception e) {
			log.warning(e.getMessage());
		}
		
		return "";
	}
	
	private String makeThumbnail(String fileName) throws Exception {

		BufferedImage sourceImg = ImageIO.read(new File("C:\\movietrip\\userprofile", fileName));

		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);
		BufferedImage destImg2 = Scalr.resize(destImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_WIDTH, 100);
		// \해주는게 separator thumbnail인지 아닌지 구분용 s_
		String thumbnailName = "C:\\movietrip\\userprofile" + File.separator + "s_" + fileName;

		File newFile = new File(thumbnailName);
		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

		ImageIO.write(destImg2, formatName.toUpperCase(), newFile);
		log.info(thumbnailName);
		return thumbnailName;
	}
	
}
