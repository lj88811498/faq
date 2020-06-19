package com.github.edu.modular.edu.util;

import javax.servlet.http.HttpServletResponse;
import java.io.OutputStream;
import java.net.URLEncoder;

public class FileUtil {

    /**
     * 下载公共配置
     * @param response
     * @param fileName
     * @throws Exception
     */
    public static void downloadSetting(HttpServletResponse response, String fileName) throws Exception{
        // 配置文件下载
        response.setHeader("content-type", "application/octet-stream");
        response.setContentType("application/octet-stream");
        // 下载文件能正常显示中文
        response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
    }

    /**
     * 下载文件
     * @param response
     * @param fileName
     *      文件名
     * @param data
     *      下载数据
     * @throws Exception
     */
    public static void downloadFile(HttpServletResponse response, String fileName, byte[] data) throws Exception{
        downloadSetting(response,fileName);
        //实现下载
        OutputStream os = response.getOutputStream();
        os.write(data);
        os.flush();
    }
}
