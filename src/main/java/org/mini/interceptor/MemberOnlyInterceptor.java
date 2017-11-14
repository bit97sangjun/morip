package org.mini.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import lombok.extern.java.Log;

@Log
public class MemberOnlyInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		Object value = request.getSession().getAttribute("login");
		
		if(value != null) {
			log.info("이미 세션에 값이 존재한 사용자 : " + value);
			return true;
		}
		
		if(value == null) {
			log.info("세션에 없는 사용자 쿠키 확인하기");
			
			Cookie loginCookie = WebUtils.getCookie(request, "login");
			
			log.info("쿠키 : " + loginCookie);
			
			if(loginCookie != null) {
				log.info("쿠키 존재 -> 세션에 담자");
				log.info("쿠키 값: " + loginCookie.getValue());
				request.getSession().setAttribute("login", loginCookie.getValue());
				return true;
			}
		}
		
		log.info("세션 ㄴㄴ 쿠키 ㄴㄴ");
		response.sendRedirect("/login");
		return false;
		
	}

}
