package com.github.edu.core.constant;

/**
 * @Author: Monkey
 * @Param:
 * @Date: Created in  2018/3/14 17:21.
 * @Returns 
 */

public class Constant {
    //分隔符
    public static final String SEPARATOR = ",";

    //时间格式
    public static final String DATEFORMAT = "yyyy-MM-dd HH:mm:ss";


    //请求参数
    public static final String CODE = "code";
    public static final String MSG = "msg";
    public static final String RESULT = "result";
    public static final String DATA = "data";

    public static final String OK = "OK";
    public static final String ERROR = "ERROR";

    public static final String OK_MSG = "操作成功";
    public static final String ERROR_MGS = "操作失败";
    public static final String EXPORT_ERROR = "导出失败";
    public static final String ADD_ERROR = "新增失败";
    public static final String UPDATE_ERROR = "修改失败";
    public static final String EXPORT_OK = "导出成功";
    public static final String DEL_ERROR = "删除失败";
    public static final String ADD_OK = "新增成功";
    public static final String UPDATE_OK = "修改成功";
    public static final String DEL_OK = "删除成功";
    public static final String FLAG_ERROR= "页面标识错误";
    public static final String START_OK= "启动成功";
    public static final String STOP_OK= "停止成功";
    public static final String START_ERROR= "启动失败";

    public static final int PAGE = 20;
    public static final int CURRENT_PAGE = 0;

    public static final String ERROR_PAGE = "/404.html";

    /**
     * 出行信息
     */
    public static final String CAR_ADD_ERROR = "出行信息不完整！";
    public static final String CAR_ADD_ERROR_NULL = "用户名和身份证不能为空！";
    public static final String CAR_ADD_NO_USER = "无此人信息！";


    public static final String PROGRESS_ZORE = "0";
    public static final String PROGRESS_ONE = "1";
    public static final String PROGRESS_TWO = "2";
    public static final String PROGRESS_THREE = "3";
    public static final String PROGRESS_FOUR = "4";
    public static final String PROGRESS_FIVE = "5";
    public static final String PROGRESS_SIX = "6";
    public static final String PROGRESS_SEVEN = "7";
    public static final String PROGRESS_EIGHT = "8";
    public static final String PROGRESS_NIGHT = "9";
    public static final String PROGRESS_TEN = "10";
    public static final String PROGRESS_ERROR_MSG = "问题当前状态不能进行审核！";
    public static final String DEGREE_SERVICE_ID_ERROR_MSG = "评价的客服人员编号错误！";
    public static final String SIGN_ERROR_MSG = "###";
    public static final String SIGN_OFFICE = "$$$";
    /**
     * 自动回复，处理中
     */
    public static final String QUESTION_AUTO_ANSWER = "1";
    public static final String QUESTION_PERSON_ANSWER = "0";

    /**
     * 图片地址分割符
     */
    public static final String FILE_SEPARATOR = "/";


    public static final String ERROR_MSG = "操作失败";


    public static final String DATESET_KUDU_TABLE_PREFIX = "/kudu";
    public static final String DATESET_FILE_PREFIX = "/hdfs";
    public static final String DATESET_MYSQL_TABLE_PREFIX = "/mysql";
    // 数据集类型: 表数据
    public static final String RES_TYPE_TABLE = "1";
    // 数据集类型: 文件数据
    public static final String RES_TYPE_FILE = "2";
    // 逗号分隔符
    public static final String SEPARATOR_COMMA = ",";

    public static final String FILE_PREX = "svc";

    public static final String FILE_UPLOAD_URL = "fileUploadUrl";
    public static final String FILE_NAME = "fileName";
    public static final String FILETYPE = "DOC,DOCX,XLS,XLSX,TXT";

}
