package com.github.edu.generator.engine;


import com.github.edu.generator.engine.base.GunsTemplateEngine;
import com.github.edu.core.util.ToolUtil;

/**
 * 通用的模板生成引擎
 *
 * @author fengshuonan
 * @date 2017-05-09 20:32
 */
public class SimpleTemplateEngine extends GunsTemplateEngine {

    @Override
    protected void generatePageEditHtml() {
        String path = ToolUtil.format(super.getContextConfig().getProjectPath() + getPageConfig().getPageEditPathTemplate(),
                super.getContextConfig().getBizEnName(), super.getContextConfig().getBizEnName());
        generateFile(super.getContextConfig().getTemplatePrefixPath() + "/page_edit.html.btl", path);
        System.out.println("生成编辑页面成功!");
    }

    @Override
    protected void generatePageAddHtml() {
        String path = ToolUtil.format(super.getContextConfig().getProjectPath() + getPageConfig().getPageAddPathTemplate(),
                super.getContextConfig().getBizEnName(), super.getContextConfig().getBizEnName());
        generateFile(super.getContextConfig().getTemplatePrefixPath() + "/page_add.html.btl", path);
        System.out.println("生成添加页面成功!");
    }

    @Override
    protected void generatePageInfoJs() {
        String path = ToolUtil.format(super.getContextConfig().getProjectPath() + getPageConfig().getPageInfoJsPathTemplate(),
                super.getContextConfig().getBizEnName(), super.getContextConfig().getBizEnName());
        generateFile(super.getContextConfig().getTemplatePrefixPath() + "/page_info.js.btl", path);
        System.out.println("生成页面详情js成功!");
    }

    @Override
    protected void generatePageJs() {
        String path = ToolUtil.format(super.getContextConfig().getProjectPath() + getPageConfig().getPageJsPathTemplate(),
                super.getContextConfig().getBizEnName(), super.getContextConfig().getBizEnName());
        generateFile(super.getContextConfig().getTemplatePrefixPath() + "/page.js.btl", path);
        System.out.println("生成页面js成功!");
    }

    @Override
    protected void generatePageHtml() {
        String path = ToolUtil.format(super.getContextConfig().getProjectPath() + getPageConfig().getPagePathTemplate(),
                super.getContextConfig().getBizEnName(), super.getContextConfig().getBizEnName());
        generateFile(super.getContextConfig().getTemplatePrefixPath() + "/page.html.btl", path);
        System.out.println("生成页面成功!");
    }

    @Override
    protected void generateController() {
        String controllerPath = ToolUtil.format(super.getContextConfig().getProjectPath() + super.getControllerConfig().getControllerPathTemplate(),
                ToolUtil.firstLetterToUpper(super.getContextConfig().getBizEnName()));
        generateFile(super.getContextConfig().getTemplatePrefixPath() + "/Controller.java.btl", controllerPath);
        System.out.println("生成控制器成功!");
    }

    @Override
    protected void generateSqls() {
        String path = ToolUtil.format(super.getContextConfig().getProjectPath() + super.sqlConfig.getSqlPathTemplate(),
                ToolUtil.firstLetterToUpper(super.getContextConfig().getBizEnName()));
        generateFile(super.getContextConfig().getTemplatePrefixPath() + "/menu_sql.sql.btl", path);
        System.out.println("生成sql成功!");
    }
    @Override
    protected void generateDao() {
        String daoPath = ToolUtil.format(super.getContextConfig().getProjectPath() + super.getDaoConfig().getDaoPathTemplate(),
                ToolUtil.firstLetterToUpper(super.getContextConfig().getBizEnName()));
//        generateFile("gunsTemplate/Dao.java.btl", daoPath);
        generateFile(super.getContextConfig().getTemplatePrefixPath() + "/Dao.java.btl", daoPath);
        System.out.println("生成Dao成功!");

        String mappingPath = ToolUtil.format(super.getContextConfig().getProjectPath() + super.getDaoConfig().getXmlPathTemplate(),
                ToolUtil.firstLetterToUpper(super.getContextConfig().getBizEnName()));
        generateFile(super.getContextConfig().getTemplatePrefixPath() + "/Mapping.xml.btl", mappingPath);
        System.out.println("生成Dao Mapping xml成功!");
    }

    @Override
    protected void generateService() {
        String servicePath = ToolUtil.format(super.getContextConfig().getProjectPath() + super.getServiceConfig().getServicePathTemplate(),
                ToolUtil.firstLetterToUpper(super.getContextConfig().getBizEnName()));
//        generateFile( "gunsTemplate/Service.java.btl", servicePath);
        generateFile(super.getContextConfig().getTemplatePrefixPath() + "/Service.java.btl", servicePath);
        System.out.println("生成Service成功!");

        String serviceImplPath = ToolUtil.format(super.getContextConfig().getProjectPath() + super.getServiceConfig().getServiceImplPathTemplate(),
                ToolUtil.firstLetterToUpper(super.getContextConfig().getBizEnName()));
//        generateFile("gunsTemplate/ServiceImpl.java.btl", serviceImplPath);
        generateFile(super.getContextConfig().getTemplatePrefixPath() + "/ServiceImpl.java.btl", serviceImplPath);
        System.out.println("生成ServiceImpl成功!");
    }
}
