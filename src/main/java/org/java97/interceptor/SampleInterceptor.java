package org.java97.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.java97.interceptor.SampleInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import lombok.extern.java.Log;

@Log
public class SampleInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		log.info(modelAndView.getViewName());
		log.info(""+modelAndView.getModel());
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		log.info("preH....");
		log.info(""+ handler);
		
		//만일 HttpSession 에 login 이름의 값이 없다면 /login 으로 튕겨낸다.
		Object value =request.getSession().getAttribute("login");
		
		if(value != null) {
			log.info("이미 세션에 값이 존재한 사용자이다"+value);
			return true ;
		}
		
		if(value == null) {
			log.info("세션에 없으므로 쿠키를 확인해보자. ");
			
			Cookie loginCookie = WebUtils.getCookie(request, "login");
			
			log.info("쿠키에" + loginCookie);
			
			if(loginCookie != null) {
				
				log.info("쿠키는 존재하므로 세션에 담자");
				
				request.getSession().setAttribute("login", loginCookie.getValue());
			
				return true;
			}
		}
		log.info("세션도 쿠키도 없다.");
		
		return false;
	}
	
}