//package com.youedata.nncloud.core.aop;
//
//import BussinessLog;
//import AbstractDictMap;
//import LogManager;
//import LogTaskFactory;
//import HttpKit;
//import Contrast;
//import org.aspectj.lang.JoinPoint;
//import org.aspectj.lang.Signature;
//import org.aspectj.lang.annotation.Aspect;
//import org.aspectj.lang.annotation.Before;
//import org.aspectj.lang.annotation.Pointcut;
//import org.aspectj.lang.reflect.MethodSignature;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.stereotype.Component;
//
//import java.lang.reflect.Method;
//import java.util.Map;
//
///**
// * 日志记录
// *
// * @author fengshuonan
// * @date 2016年12月6日 下午8:48:30
// */
//@Aspect
//@Component
//public class LogAop {
//
//    private Logger log = LoggerFactory.getLogger(this.getClass());
//
//    @Pointcut(value = "@annotation(BussinessLog)")
//    public void cutService() {
//    }
//
//    @Before("cutService()")
//    public void recordSysLog(JoinPoint point) throws Throwable {
//
//        try {
//            handle(point);
//        } catch (Exception e) {
//            log.error("日志记录出错!", e);
//        }
//
////        return result;
//    }
//
//    private void handle(JoinPoint point) throws Exception {
//
//        //获取拦截的方法名
//        Signature sig = point.getSignature();
//        MethodSignature msig = null;
//        if (!(sig instanceof MethodSignature)) {
//            throw new IllegalArgumentException("该注解只能用于方法");
//        }
//        msig = (MethodSignature) sig;
//        Object target = point.getTarget();
//        Method currentMethod = target.getClass().getMethod(msig.getName(), msig.getParameterTypes());
//        String methodName = currentMethod.getName();
//
////        //如果当前用户未登录，不做日志
////        ShiroUser user = ShiroKit.getUser();
////        if (null == user) {
////            return;
////        }
//        //String userId = GlobalHashMap.getUserId();
//
//        //获取拦截方法的参数
//        String className = point.getTarget().getClass().getName();
//        Object[] params = point.getArgs();
//
//        //获取操作名称
//        BussinessLog annotation = currentMethod.getAnnotation(BussinessLog.class);
//        String bussinessName = annotation.value();
//        String key = annotation.key();
//        Class dictClass = annotation.dict();
//
//        StringBuilder sb = new StringBuilder();
//        for (Object param : params) {
//            sb.append(param);
//            sb.append(" & ");
//        }
//        //如果涉及到修改,比对变化
//        String msg;
//        Map<String, String> parameters = HttpKit.getRequestParameters();
//        AbstractDictMap dictMap = (AbstractDictMap) dictClass.newInstance();
//        msg = Contrast.parseMutiKey(dictMap, key, parameters);
//        String ip = HttpKit.getRemoteHostReal(HttpKit.getRequest());
//
//        LogManager.me().executeLog(LogTaskFactory.bussinessLog(4, bussinessName, className, methodName, ip, msg));
//    }
//}