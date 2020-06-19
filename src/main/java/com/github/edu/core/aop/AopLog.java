package com.github.edu.core.aop;

import com.github.edu.core.shiro.ShiroKit;
import com.github.edu.core.util.RecordLogUtil;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


/**
 * @author Monkey
 * @desc aop日志统一出口
 * @date 2020-03-06
 */
public class AopLog {

    //日志前缀标识
    public static String PREFIX = "enter=";
    public static String SUFFIX = "exiting=";
    public static String EXCEPTION = "exception=";

    //需要过滤的controller集合
    private static List<String> controllerFilters = new ArrayList<String>();
    private static List<String> controllerFilterMethods = new ArrayList<String>();
    private static String CONTROLLER_SUFFIX = "Controller";

    //需要过滤的service集合
    private static List<String> serviceFilters = new ArrayList<String>();
    private static List<String> serviceFilterMethods = new ArrayList<String>();
    private static String SERVICE_SUFFIX = "ServiceImpl";

    //预处理数据
    static {
        //controller级别
        controllerFilters.add("LoginController");
        controllerFilters.add("HttpdServerController");
        controllerFilterMethods.add("spiderScheduled");

        //service级别
        //you can add your service
    }


    /**
     * 写入日志
     *
     * @param point
     * @param prefix
     * @param e
     */
    public static void  writeLog(JoinPoint point, String prefix, Throwable e) {
        try {
            String actionName = point.getSignature().getDeclaringTypeName();
            String realMethod = point.getSignature().getName();
//            RecordLogUtil.info("controllerName =" + actionName);
            StringBuilder msg = new StringBuilder();
            if (checkIsFilterByName(actionName, realMethod)) {
                return;
            } else {
                String args = getArgs(point.getArgs());

                String userName = getUserName();

                String method = actionName + "." + realMethod;

                if (EXCEPTION.equals(prefix)) {
                    msg.append(prefix)
                       .append("请求异常=")
                       .append(e)
                       .append(",请求方法=")
                       .append(method)
                       .append(", 参数=")
                       .append(args)
                       .append(", 请求人=")
                       .append(userName);

                    RecordLogUtil.info(msg.toString());
                    //LogManager.me().executeLog(LogTaskFactory.bussinessLog(getUserId(), realMethod, controllerName, realMethod, msg));
                    return;
                }
                msg.append(prefix)
                    .append("请求方法=")
                    .append(method)
                    .append(", 参数=")
                    .append(args)
                    .append(", 请求人=")
                    .append(userName);

                RecordLogUtil.info(msg.toString());

                if (PREFIX.equals(prefix)) {
                    //you can do any thing in this function
                    //LogManager.me().executeLog(LogTaskFactory.bussinessLog(getUserId(), realMethod, controllerName, realMethod, msg));
                }
            }
        } catch (Exception ex) {
            RecordLogUtil.errorLog("nobody", "AopLog.writeLog", point, ex);

            //you can do any thing in this function
            //LogManager.me().executeLog(LogTaskFactory.exceptionLog(getUserId(), ex));
        }
    }

    public static Object exception(ProceedingJoinPoint joinPoint, Exception e) {
        try {
            writeLog(joinPoint, AopLog.EXCEPTION, e);
        } catch (Exception ex) {
            writeLog(joinPoint, AopLog.EXCEPTION, e);
        }
        return new Object();
    }

    /**
     * 获取参数
     *
     * @param object
     * @return
     */
    public static String getArgs(Object[] object) {
        List args = new ArrayList();
        for (Object obj : object) {
            if (obj instanceof HttpServletRequest) {
                continue;
            } else if (obj instanceof HttpServletResponse) {
                continue;
            } else if (obj instanceof HttpSession) {
                continue;
            }
            args.add(obj);
        }

       String result = args.toString()
                .replaceAll("& #41;", ")")
                .replaceAll("& #40;", "(")
                .replaceAll("& #39;", "'");

        return result;
    }

    /**
     * 得到userName
     *
     * @return
     */
    public static String getUserName() {
        String userName = null;
        try {
            userName = ShiroKit.getUser().name;
        } catch (Exception e) {
            return userName;
        }
        return userName;
    }
    /**
     * @Author: Monkey
     * @Param: []
     * @Date: Created in  2018/8/16 10:36.
     * @Returns java.lang.String
     */
    public int getUserId() {
        int userId = 0;
        try {
            userId = ShiroKit.getUser().id;
        } catch (Exception e) {
            return userId;
        }
        return userId;
    }
    /**
     * 检查是否是过滤的controller或者service
     *
     * @return
     */
    public static boolean checkIsFilterByName(String actionName, String methodName) {
        int offset = 1;

        String actionSuffix = actionName.substring(actionName.lastIndexOf(".") + offset);

        if (!actionSuffix.endsWith(CONTROLLER_SUFFIX) && !actionSuffix.endsWith(SERVICE_SUFFIX)) {
            return true;
        }

        if ((controllerFilters.contains(actionSuffix) || serviceFilters.contains(actionSuffix))) {
            return true;
        }

        if (checkIsFilterByMethodName(actionSuffix, methodName)) {
            return true;
        }
        return false;
    }

    /**
     * 检查是否是过滤的controller或者service的方法
     *
     * @return
     */
    public static boolean checkIsFilterByMethodName(String actionSuffix, String methodName) {
        int offset = 1;

        String methodSuffix = methodName.substring(methodName.lastIndexOf(".") + offset);

        boolean actionFlag = !controllerFilters.contains(actionSuffix) && serviceFilterMethods.contains(methodSuffix);

        boolean methodFlag = !serviceFilters.contains(actionSuffix) && controllerFilterMethods.contains(methodSuffix);

        return actionFlag && methodFlag;
    }
}
