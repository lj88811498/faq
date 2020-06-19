package com.github.edu.modular.edu.util;

import com.alibaba.fastjson.JSONObject;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;
import org.slf4j.LoggerFactory;

import java.io.*;

public class FTPUtils {
    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(FTPUtils.class);

    public static boolean uploadFile(InputStream in, JSONObject ftpConnect,String uploadPath, String basePath){
        boolean result = true;

        String ip=ftpConnect.getString("ip");
        int port=ftpConnect.getIntValue("port");
        String username=ftpConnect.getString("username");
        String password=ftpConnect.getString("password");

        FTPClient ftpClient = new FTPClient();
        try {
            // 2. 创建 ftp 连接
            ftpClient.connect(ip, port);
            // 3. 登录 ftp 服务器
            ftpClient.login(username, password);
            int reply = ftpClient.getReplyCode(); // 获取连接ftp 状态返回值
            if (!FTPReply.isPositiveCompletion(reply)) {
                ftpClient.disconnect(); // 如果返回状态不再 200 ~ 300 则认为连接失败
            }
            logger.info("连接成功");
            // 4. 读取本地文件
            // FileInputStream inputStream = new FileInputStream(new
            // File("F:\\hello.png"));
            // 5. 设置上传的路径
            boolean b = ftpClient.changeWorkingDirectory(StringUtils.isBlank(basePath) ? "/" : basePath);
            logger.info("连接状态："+b);
            // 6. 修改上传文件的格式为二进制
            ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
            ftpClient.enterLocalPassiveMode();//设置为被动模式
            // 7. 服务器存储文件，第一个参数是存储在服务器的文件名，第二个参数是文件流
            if (!ftpClient.storeUniqueFile(uploadPath,in)) {
                logger.info("上传失败");
                result = false;
            }
            logger.info("上传成功！");
            // 8. 关闭连接
            ftpClient.logout();
        } catch (Exception e) {
            logger.error("上传文件失败",e);
            result = false;
        } finally {
            if (ftpClient.isConnected()) {
                try {
                    ftpClient.disconnect();
                    in.close();
                } catch (IOException ioe) {
                    logger.error("关闭连接失败",ioe);
                }
            }
        }
        return result;
    }

    public static boolean deleteFile(JSONObject ftpConnect, String filename, String basePath) {
        boolean flag = false;
        String ip = ftpConnect.getString("ip");
        int port = ftpConnect.getIntValue("port");
        String username = ftpConnect.getString("username");
        String password = ftpConnect.getString("password");
        FTPClient ftpClient = new FTPClient();
        try {
            // 2. 创建 ftp 连接
            ftpClient.connect(ip, port);
            // 3. 登录 ftp 服务器
            ftpClient.login(username, password);
            int reply = ftpClient.getReplyCode(); // 获取连接ftp 状态返回值
            if (!FTPReply.isPositiveCompletion(reply)) {
                ftpClient.disconnect(); // 如果返回状态不再 200 ~ 300 则认为连接失败
            }
            // 切换FTP目录
            boolean b = ftpClient.changeWorkingDirectory(StringUtils.isBlank(basePath) ? "images/" : basePath);
            int dele = ftpClient.dele(filename);
            ftpClient.logout();
            flag = true;
            System.out.println("删除文件成功");
        } catch (Exception e) {
            System.out.println("删除文件失败");
            e.printStackTrace();
        } finally {
            if (ftpClient.isConnected()) {
                try {
                    ftpClient.disconnect();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return flag;
    }

    public static void main(String[] args) {
        File file = new File("D:\\upload\\cs.jpg");
        String c = "{\"ip\":\"172.16.24.194\",\"port\":\"21\",\"username\":\"ftpuser\",\"password\":\"ftpuser@123\"}";
        JSONObject jsonObject = JSONObject.parseObject(c);
        try {
            uploadFile(new FileInputStream(file), jsonObject, "cs.jpg", "images/");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
}
