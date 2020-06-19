package com.github.edu.core.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

/**
 * @desc controller层aop
 * Created by Monkey on 2016/6/7.
 */


@Aspect
@Component
public class ControllerAop {


    @Pointcut("execution(public * com.github.edu.modular.edu.controller.*.*(..))"
            //多个阔以依次写下去
            //+ "or" + "execution(public * com.youedata.edu.modular.edu.service.*.*(..))"
            )
    private void controllerPoint() {
    }

    @Before("controllerPoint()")
    public void before(JoinPoint point) {
        AopLog.writeLog(point, AopLog.PREFIX, null);
    }

    @After("controllerPoint()")
    public void after(JoinPoint point) {
        AopLog.writeLog(point, AopLog.SUFFIX, null);
    }

    @Around("controllerPoint()")
    public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
        try {
            Object result = joinPoint.proceed();
            return result;
        } catch (Exception e) {
           return AopLog.exception(joinPoint, e);
        }
    }



}
