package org.java97.web;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.apache.commons.io.IOUtils;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.imgscalr.Scalr;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.java.Log;

@Log
@Controller
public class UploadController {
	
//	@GetMapping(value="/download", produces="application/octet-stream")
	@GetMapping(value="/download")
	@ResponseBody
//	public byte[] downloadFile(String name) {
	public ResponseEntity<byte[]> downloadFile(String name) {
		
		ResponseEntity<byte[]> result = null;
		
		HttpHeaders headers = new HttpHeaders();
		
		
		// uuid 잘라내기.. 36자임.. 근데 _가 하나 더 있어서 37자 잘라내야함
		String fileName = name.substring(37);
		
		
		try {
//			InputStream in = new FileInputStream("C:\\zzz\\sample.txt");
			InputStream in = new FileInputStream("C:\\zzz\\" + name);
			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			
			IOUtils.copy(in, bos);
		
			headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
	        headers.add("Content-Disposition", "attachment; filename=\""+ 
	          new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
	        								// UTF-8 빼면 IE에서도 안꺠짐?? 깨지는데?!?!??
	        
	        
			
//			return bos.toByteArray();
			return new ResponseEntity<byte[]>(bos.toByteArray(),headers,HttpStatus.OK);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	@GetMapping("/delFile")
	@ResponseBody
	public String delFile(String name) {
		
		log.info("delFile : " + name);
		
		return "success";
	}
	
	
	// http://localhost:8000/display?name=dino.jpg
//								  produces=이런 MIMEtype을 주겠다
	@GetMapping(value="/display", produces="image/jpeg")
	@ResponseBody
	public byte[] display(String name) {
		
		try {
			FileInputStream in = new FileInputStream("C:\\zzz\\" + name);
			
			ByteArrayOutputStream bas = new ByteArrayOutputStream();
			
			FileCopyUtils.copy(in, bas);
			
			return bas.toByteArray();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	
	@GetMapping("/upload/ex1")
	public void ex1() {

	}

	@PostMapping("/upload/ex1")
	public String ex1Post(MultipartFile f1, Model model) {

		log.info(f1.getOriginalFilename());
		log.info(f1.getContentType());
		log.info("" + f1.getSize());

		String uuid = UUID.randomUUID().toString();

		log.info("UUID 길이 : "+ uuid.length());
			
		String uploadName = uuid + "_" + f1.getOriginalFilename();

		model.addAttribute("uploadName", uploadName);

		try {
			if (f1.getSize() > 0) {

				OutputStream out = new FileOutputStream("C:\\zzz\\" + uploadName);

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
		
		// 경로를 주는 이유? upload폴더를 사용하고있기 때문..
		return "/upload/result";
	}

	private String makeThumbnail(String fileName) throws Exception {

		BufferedImage sourceImg = ImageIO.read(new File("C:\\zzz", fileName));

		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);
		// \해주는게 separator thumbnail인지 아닌지 구분용 s_
		String thumbnailName = "C:\\zzz" + File.separator + "s_" + fileName;

		File newFile = new File(thumbnailName);
		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

		ImageIO.write(destImg, formatName.toUpperCase(), newFile);
		log.info(thumbnailName);
		return thumbnailName;
	}

}
