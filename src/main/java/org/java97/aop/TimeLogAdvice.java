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
public class TimeLogAdvice {
	
	//@Around("execution(* org.java97.service.MyTodoServiceImpl.*(..))")	// 이게 pointcut
	public Object timeLog(ProceedingJoinPoint pjp)throws Throwable{
	    
	    long startTime = System.currentTimeMillis();
	    log.info(""+Arrays.toString(pjp.getArgs()));
	    
	    // invoke
	    Object result = pjp.proceed();
	    
	    long endTime = System.currentTimeMillis();
	    // 실행하는 메서드의 이름 : 걸린 시간
	    log.info( pjp.getSignature().getName()+ " : " + (endTime - startTime) );
	    log.info("=============================================");
	    
	    return result;
	  }   
	
}
