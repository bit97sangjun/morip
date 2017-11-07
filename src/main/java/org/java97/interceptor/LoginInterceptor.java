package org.java97.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.java.Log;

@Log
public class LoginInterceptor extends HandlerInterceptorAdapter  {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		//사용자가 정상적으로 로그인 했다면..
		//Model 안에 member 이름으로 값이 뭔가 있을것이다.
		
	    Object obj = modelAndView.getModel().get("member");
	    log.info("===============================================================");
	    if(obj == null) {
	    	response.sendRedirect("/login?msg=fail");
	    	return;
	    }
	    //값이 존재...
		log.info("정상적으로 로그인된 사요자" +obj);
		request.getSession().setAttribute("login", obj);
		try {
			Boolean remember = (Boolean)modelAndView.getModel().get("remember");
			//쿠키생성후 시간설정하고 보냄.
			if(remember) {
				Cookie loginCookie = new Cookie("login" , obj.toString());
				loginCookie.setMaxAge(60*60*24*7);
				response.addCookie(loginCookie);
			}
		} catch (Exception e) {
			
		}
		
		
		// HttpSession에다가 담자.
		
		/*//Model 에 member 라는 이름으로 값이 존재한다면.
		Object obj =modelAndView.getModel().get("member");
		
		//쿠키를 생성하고..
		if(obj != null) {
			Cookie loginCookie = new Cookie("login" , obj.toString());
			loginCookie.setMaxAge(60*5);
			response.addCookie(loginCookie);
		}*/
		//response 추가.
		
		
		
	}

}
