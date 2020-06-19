package com.github.edu.modular.edu.service.helper;

import com.alibaba.fastjson.JSONObject;
import com.sun.jersey.api.client.Client;
import com.github.edu.core.constant.Constant;
import com.github.edu.modular.edu.util.FTPUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.util.*;

@Component
public class FileUploadHelper {

    private static final Logger logger = LoggerFactory.getLogger(FileUploadHelper.class);


    private String uploadConfig = "{\"ip\":\"172.16.24.203\",\"port\":\"21\",\"username\":\"user\",\"password\":\"user@123\"}";


    /**
     * 上传单个文件
     *
     * @param file 文件
     * @param fileType 文件类型 JPG,PNG
     * @param fileSize 单位兆 M
     * @param imageOrDoc 1 表图片，2 表文档
     * @return
     */

    public Map<String,String> uploadSingleFile(MultipartFile file, String fileType, Integer fileSize, Integer imageOrDoc) throws Exception {
        Map<String,String> pathMap=new HashMap<>();
        String fileUploadUrl = "";
        String fileName = checkFile(file, fileType, fileSize, imageOrDoc);
        String type = getFileType(fileName);
        Client client = new Client();
        try {

            String now = String.valueOf(System.currentTimeMillis());
            String reName = now + genRandomNum() + "-" + Constant.FILE_PREX + "." + type;
            String basePath = (Objects.equals(2, imageOrDoc) ?"docs/" : "images/");
            fileUploadUrl= basePath + reName;

            logger.info("uploadConfig={},fileUploadUrl={}", uploadConfig, fileUploadUrl);
            if (!FTPUtils.uploadFile(file.getInputStream(), JSONObject.parseObject(uploadConfig), reName, basePath)) {
                logger.info("上传文件失败。。。");
            }
        } catch (Exception e) {
            logger.info("上传文件失败");
            e.printStackTrace();
            throw new Exception("上传文件失败");
        }finally {
            client.destroy();
        }
        pathMap.put(Constant.FILE_UPLOAD_URL,fileUploadUrl);
        pathMap.put(Constant.FILE_NAME,fileName);
        return pathMap;
    }


    /**
     * 上传多个文件
     *
     * @param files 多个文件列表
     * @param fileType 文件类型 JPG,PNG
     * @param fileSize 单位兆 M
     * @param imageOrDoc 1 表图片，2 表文档
     * @return
     */

    public List<String> uploadMoreFile(List<MultipartFile> files, String fileType, Integer fileSize, Integer imageOrDoc) throws Exception {


        List<String> urlList = new ArrayList<>();
        //  String fileUploadUrl = "";
        for (int i = 0; i < files.size(); i++) {
            try {
                Map<String,String>  map = uploadSingleFile(files.get(i), fileType, fileSize, imageOrDoc);
                urlList.add(map.get(Constant.FILE_UPLOAD_URL));
            } catch (Exception e) {
                logger.info("上传文件失败");
                e.printStackTrace();
                throw new Exception("上传文件失败");
            }
        }
        return urlList;
    }

    public void deleteFile(String filePath, Integer imageOrDoc) throws Exception {
        try {
            String basePath = (Objects.equals(2, imageOrDoc) ?"docs/" :"images/");
            String fileName = filePath.substring(filePath.lastIndexOf("\\")+1);

            FTPUtils.deleteFile(JSONObject.parseObject(uploadConfig), fileName, basePath);

        } catch (Exception e) {
            logger.error("删除文件失败",e);
            e.printStackTrace();
            throw new Exception("删除文件失败");
        }
    }


    /**
     * 验证文件
     *
     * @param file 文件
     * @param fileType 文件类型 JPG,PNG
     * @param fileSize 单位兆 M
     * @param imageOrDoc 1 表图片，2 表文档
     * @return
     */
    public String checkFile(MultipartFile file, String fileType, Integer fileSize, Integer imageOrDoc) throws Exception {
        if (file == null) {
            throw new Exception("error!");
        }
        String fileName = file.getOriginalFilename();
        long fsize = file.getSize();
        /*
        判断文件的大小支持
         */
        if (fileSize != null) {
            if (fsize > (fileSize * 1024 * 1024)) {
                throw new Exception("error!");
            }
        } else {
            if (fsize > (1024 * 1024)) {
                throw new Exception("error!");
            }
        }

        /*
         判断文件格式支持情况
         */
        if (fileType != null && !fileType.equals("")) {
            String type = getFileType(fileName);
            if (!fileType.contains(type.toUpperCase())) {
                throw new Exception("error!");
            } else {
                if (imageOrDoc.equals(1)) {
                    if (!fileType.contains("JPEG") && !fileType.contains("JPG") && !fileType.contains("PNG") && !fileType.contains("TGA")) {
                        throw new Exception("error!");
                    }

                }else{
                    if (!fileType.contains("DOC") && !fileType.contains("DOCX") && !fileType.contains("XLS") && !fileType.contains("XLSX")) {
                        throw new Exception("error!");
                    }
                }
            }
        }
        return fileName;
    }


    private String getFileType(String fileName) {
        String type = fileName.indexOf(".") != -1 ? fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()) : null;
        return type;
    }


    /**
     * 生成8位随机字符串，数字+英文字母
     * @return
     */
    public String genRandomNum(){
        int  maxNum = 36;
        int i;
        int count = 0;
        char[] str = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
                'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
                'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
        StringBuffer pwd = new StringBuffer("");
        Random r = new Random();
        while(count < 8){
            i = Math.abs(r.nextInt(maxNum));
            if (i >= 0 && i < str.length) {
                pwd.append(str[i]);
                count ++;
            }
        }
        return pwd.toString();
    }
}
