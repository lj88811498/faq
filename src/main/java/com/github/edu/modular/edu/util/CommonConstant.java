/*
 *    Copyright (c) 2018-2025, lengleng All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 * Neither the name of the pig4cloud.com developer nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 * Author: lengleng (wangiegie@gmail.com)
 */

package com.github.edu.modular.edu.util;

/**
 * @author lengleng
 * @date 2017/10/29
 */
public interface CommonConstant {
    /**
     * token请求头名称
     */
    String REQ_HEADER = "Authorization";

    /**
     * token分割符
     */
    String TOKEN_SPLIT = "Bearer ";

    /**
     * jwt签名
     */
    String SIGN_KEY = "PIG";
    /**
     * 删除
     */
    String STATUS_DEL = "1";
    /**
     * 正常
     */
    String STATUS_NORMAL = "0";

    /**
     * 锁定
     */
    String STATUS_LOCK = "9";

    /**
     * 菜单
     */
    String MENU = "0";

    /**
     * 按钮
     */
    String BUTTON = "1";

    /**
     * 删除标记
     */
    String DEL_FLAG = "del_flag";

    /**
     * 编码
     */
    String UTF8 = "UTF-8";

    /**
     * JSON 资源
     */
    String CONTENT_TYPE = "application/json; charset=utf-8";

    /**
     * 阿里大鱼
     */
    String ALIYUN_SMS = "aliyun_sms";

    /**
     * 路由信息Redis保存的key
     */
    String ROUTE_KEY = "_ROUTE_KEY";

    Integer DEPT_FLAG_B= 0;//分公司
    Integer DEPT_FLAG_T= 1;//普通部门
    Integer DEPT_FLAG_G= 2;//案归组

    /**
     * 还款类型
     */
    Integer REPAY_TYPE_COM = 0; //承诺还款
    Integer REPAY_TYPE_CHE = 1; //登账
    Integer REPAY_TYPE_REC = 2; //对账

    /**
     * 还款任务过期时间Redis-Key
     */
    String REPAY_TASK_EXPIRE_TIME = "_REPAY_SCHEDULED_TASK_EXPIRE_TIME";

    String COLLECTION = "pig_urge_info";
    
    String COLLECTION_WORKORDER = "pig_workorder_info";

    String COLLECTION_WORKORDER_REPLY = "pig_workorder_reply_info";

    String COLLECTION_RECONILIATION = "pig_Reconiliation_info";

    String MONGO_DATA_BASE_NAME = "pig";
    long DIFF_DAYS = 3L;
    /**
     *未提交报备
     */
    Integer NO_REPORT_STATE = 0;
    /**
     * 报备审批中
     */
    Integer ING_REPORT_STATE = 1;
    /**
     * 报备成功
     */
    Integer SUCCESS_REPORT_STATE = 1;

    String EFFECTIVE = "有效";

    String NON_EFFECTIVE = "无效";

    String SYS_ADD = "电话";

    String LINE = "-";
    String BLANK = "";

    String DATE_FORMAT = "yyyy-MM-dd";
    String DATE_FORMAT_NON_LINE = "yyyyMMdd";
    /**
     * 催收方式
     */
    String CALL = "电话";
    /**
     * 最后一次还款金额
     */
    String LAST_REPAY = "lastRepay";
    /**
     * 最后一次还款日
     */
    String LAST_REPAY_DAY = "lastRepayDay";

    int YIBAI = 100;
    /**
     * mongo collection:质检信息
     */
    String COLLECTION_QTC_QUALITY_INFO = "qtc_quality_info";
}
