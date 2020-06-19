package com.github.edu.core.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;

/**
 * @desc service层aop
 * Created by Monkey on 2016/6/7.
 */

//关闭service层的aop日志，需要时再开启
//@Aspect
//@Service("serviceAop")
public class ServiceAop {

    @Pointcut("execution(* com.github.edu.modular.edu.service.*.*(..))"
            //多个阔以依次写下去
            //+ "or" + "execution(public * com.youedata.edu.modular.edu.service.*.*(..))"
            )
    private void servicePoint() {
    }

    @Before("servicePoint()")
    public void before(JoinPoint point) {
        AopLog.writeLog(point, AopLog.PREFIX, null);
    }

    @After("servicePoint()")
    public void after(JoinPoint point) {
        AopLog.writeLog(point, AopLog.SUFFIX, null);
    }

    @Around("servicePoint()")
    public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
        try {
            Object result = joinPoint.proceed();
            return result;
        } catch (Exception e) {
            return AopLog.exception(joinPoint, e);
        }
    }





}
