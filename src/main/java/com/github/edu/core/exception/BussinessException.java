package com.github.edu.core.exception;



/**
 * @author fengshuonan
 * @Description 业务异常的封装
 * @date 2016年11月12日 下午5:05:10
 */
public class BussinessException extends DaasException {

	public BussinessException(BizExceptionEnum bizExceptionEnum) {
		super(bizExceptionEnum.getCode(), bizExceptionEnum.getMessage(),"");
	}
	
	public BussinessException(String friendlyMsg, BizExceptionEnum bizExceptionEnum) {
		super(bizExceptionEnum.getCode(), friendlyMsg,"");
	}

	public BussinessException(int code, String message) {
		super(code, message, "");
	}
	
	public BussinessException(String friendlyMsg, int friendlyCode) {
		super(friendlyCode, friendlyMsg,"");
	}
}
