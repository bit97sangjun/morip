package org.java97.aop;

import java.util.Arrays;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import lombok.extern.java.Log;

@Component
@Aspect
@Log
public class TestAdvice {
	
	//@Around("execution(* org.java97.service.MyTodoServiceImpl.*(..))")	// 이게 pointcut
	public void timeLog(ProceedingJoinPoint pjp)throws Throwable{
	    
	    
	    
	  }   
	
}
