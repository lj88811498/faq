package com.github.edu.modular.edu.util;

/**
 * @Author: Monkey
 * @Date: Created in 11:35  2019/4/12.
 * @Description:
 */
public class GlobalException extends Exception{

    private String msg;

    GlobalException() {

    }

    public GlobalException(String errorMsg) {
        this.msg = errorMsg;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String errorMsg) {
        this.msg = errorMsg;
    }
}
