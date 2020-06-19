package com.github.edu.modular.edu.util;

/**
 * @author gong ming xing
 * @Package com.youedata.daas.kettlemanager.base
 * @Description: ${todo}
 * @date 2018/4/20/02016:17
 */
public class ResponseResult {
    private int code;
    private String message;
    private Object result;

    private static final String okMsg = "请求成功";

    public ResponseResult() {
    }

    public ResponseResult(int code, String message){
        this.code = code;
        this.message = message;
    }
    public ResponseResult(int code,String message,Object object){
        this.code = code;
        this.message = message;
        this.result = object;
    }

    public static  ResponseResult createSuccessResult(){
        return new ResponseResult(200, okMsg);
    }

    public static  ResponseResult createFailResult(String msg){
        return new ResponseResult(404, msg);
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }
}
