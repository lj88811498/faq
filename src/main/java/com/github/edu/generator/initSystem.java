package com.github.edu.generator;

import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.converts.MySqlTypeConvert;
import com.baomidou.mybatisplus.generator.config.rules.DbColumnType;
import com.baomidou.mybatisplus.generator.config.rules.DbType;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.github.edu.generator.action.config.AbstractGeneratorConfig;
import com.github.edu.generator.engine.SimpleTemplateEngine;
import com.github.edu.generator.engine.base.GunsTemplateEngine;
import com.github.edu.generator.engine.config.ContextConfig;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Monkey on 2017/11/7.
 */
public class initSystem extends AbstractGeneratorConfig {

    public static void first (String sysPath, String author, String[] tables) {
        AutoGenerator mpg = new AutoGenerator();

        // 全局配置
        GlobalConfig gc = new GlobalConfig();
        gc.setOutputDir(sysPath + "\\src\\main\\java");//这里写你自己的java目录,到guns-admin
        gc.setFileOverride(false);//是否覆盖
        gc.setActiveRecord(true);
        gc.setEnableCache(false);// XML 二级缓存
        gc.setBaseResultMap(true);// XML ResultMap
        gc.setBaseColumnList(false);// XML columList
        gc.setAuthor(author);// 自己的名字
        mpg.setGlobalConfig(gc);

        // 数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setDbType(DbType.MYSQL);
        dsc.setTypeConvert(new MySqlTypeConvert() {
            // 自定义数据库表字段类型转换【可选】
            @Override
            public DbColumnType processTypeConvert(String fieldType) {
                return super.processTypeConvert(fieldType);
            }
        });
        dsc.setDriverName("com.mysql.jdbc.Driver");
//        dsc.setUsername("root");
//        dsc.setPassword("1qaz@WSX");
//        dsc.setUrl("jdbc:mysql://172.16.0.5:3306/edu?characterEncoding=utf8");
//        dsc.setUsername("reader");
//        dsc.setPassword("Admin_2018");
//        dsc.setUrl("jdbc:mysql://172.16.24.179:3307/bitnami_redmine?characterEncoding=utf8");
//
//        dsc.setUsername("dms");
//        dsc.setPassword("dms686868");
//        dsc.setUrl("jdbc:mysql://114.67.201.165:63306/pig_desk?characterEncoding=utf8");
        dsc.setUsername("root");
        dsc.setPassword("root");
        dsc.setUrl("jdbc:mysql://172.16.24.203:3308/faq?characterEncoding=utf8");


        mpg.setDataSource(dsc);

        // 策略配置
        StrategyConfig strategy = new StrategyConfig();
        //strategy.setTablePrefix(new String[]{"_"});// 此处可以修改为您的表前缀

        if (tables.length > 0) {
            strategy.setInclude(tables);// 需要生成的表
        }
        strategy.setNaming(NamingStrategy.underline_to_camel);// 表名生成策略
        // 生成model中的字段如@TableField("fillTel") private String fillTel;
        // 驼峰命名的数据库必须不能少这个配置！！
        strategy.setDbColumnUnderline(true);
        mpg.setStrategy(strategy);

        // 包配置
        PackageConfig pc = new PackageConfig();
        pc.setParent(null);
        pc.setEntity("com.github.edu.modular.edu.model");
        pc.setMapper("com.github.edu.modular.edu.dao");
        pc.setXml("com.github.edu.modular.edu.dao.mapping");
        pc.setService("TTT");       //本项目没用，生成之后删掉
        pc.setServiceImpl("TTT");   //本项目没用，生成之后删掉
        pc.setController("TTT");    //本项目没用，生成之后删掉
        mpg.setPackageInfo(pc);

        // 注入自定义配置，可以在 VM 中使用 cfg.abc 设置的值
        InjectionConfig cfg = new InjectionConfig() {
            @Override
            public void initMap() {
                Map<String, Object> map = new HashMap<>();
                map.put("abc", this.getConfig().getGlobalConfig().getAuthor() + "-mp");
                this.setMap(map);
            }
        };
        mpg.setCfg(cfg);

        // 执行生成
        mpg.execute();

        // 打印注入设置
        System.err.println(mpg.getCfg().getMap().get("abc"));

    }

    public static void second (String sysPath, String author , String[] str) {
//        String bizChNames[] = {"常规项目","导出配置","项目跟踪","项目地址及用地","投资方公司","履约信息","项目操作","洽谈信息","责任单位", "附件信息"};
//        String bizEnNames[] = {"normalProject", "normalExportConfig", "followProject", "proArea", "proCompany", "proConvention", "proHistory", "proTalk", "unitLiable","proAttachment"} ;
//        String entityNames[] = {"NormalProject", "ExportConfig", "FollowProject", "ProArea", "ProCompany", "ProConvention", "ProHistory", "ProTalk", "UnitLiable","ProAttachment"};
        //中文名
//        String bizChNames[] = {"用户信息","角色信息","用户角色","部门信息","问题反馈","科室","收藏","附件","满意度"};
//        //数据表英文名
//        String bizEnNames[] = {"userInfo","role","userRole","dept","question","office","collet","attachment","degree"} ;
//        //驼峰式表名
//        String entityNames[] = {"UserInfo","Role","UserRole","Dept","Question","Office","Collet","Attachment","Degree"};

//        String bizChNames[] = {"custom_entities", "custom_field_enumerations", "custom_fields", "custom_fields_projects", "custom_fields_roles", "custom_fields_trackers", "custom_tables", "custom_tables_projects", "custom_tables_roles", "custom_tables_trackers", "custom_values", "custom_workflows", "custom_workflows_projects"};
//        //数据表英文名
//        String bizEnNames[] = {"customEntities", "customFieldEnumerations", "customFields", "customFieldsProjects", "customFieldsRoles", "customFieldsTrackers", "customTables", "customTablesProjects", "customTablesRoles", "customTablesTrackers","customValues", "customWorkflows", "customWorkflowsProjects"} ;
//        //驼峰式表名
//        String entityNames[] = {"CustomEntities", "CustomFieldEnumerations", "CustomFields", "CustomFieldsProjects", "CustomFieldsRoles", "CustomFieldsTrackers", "CustomTables", "CustomTablesProjects", "CustomTablesRoles", "CustomTablesTrackers", "CustomValues", "CustomWorkflows", "CustomWorkflowsProjects"};
//        String bizChNames[] = { "custom_entities"};
//        //数据表英文名
//        String bizEnNames[] = { "customEntities"} ;
//        //驼峰式表名
//        String entityNames[] = { "CustomEntities"};

        String bizChNames[] = str;
//        //数据表英文名
        String bizEnNames[] = new String[str.length] ;
//        //驼峰式表名
        String entityNames[] = new String[str.length];
        String a = null;
        for (int i=0; i < str.length; i ++) {
            a = str[i];
            while (a.contains("_")) {
                a = a.substring(0, a.indexOf("_")) + a.substring(a.indexOf("_") + 1, a.indexOf("_") + 2).toUpperCase() + a.substring(a.indexOf("_") + 2) ;
            }
            bizEnNames[i] = a;
            a = a.substring(0, 1).toUpperCase() + a.substring(1);
            entityNames[i] = a;
        }

        String projectPath = sysPath;
        String moduleName = "edu";
//        String moduleName = "";

        for (int i = 0; i < bizChNames.length; i++) {
            ContextConfig contextConfig = new ContextConfig(projectPath, bizChNames[i], bizEnNames[i], moduleName, entityNames[i], author);
            GunsTemplateEngine gunsTemplateEngine = new SimpleTemplateEngine();
            gunsTemplateEngine.setContextConfig(contextConfig);
            gunsTemplateEngine.start();
        }

    }
    //删除磊哥制造的垃圾
    public static void deleteFile(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
            } else if (file.isDirectory()) {
                File[] files = file.listFiles();
                for (int i = 0; i < files.length; i++) {
                    deleteFile(files[i]);
                    System.out.println("删除:" + files[i]);
                }
                file.delete();
            }
        } else {
            System.out.println("所删除的文件不存在");
        }

    }

    public static void main(String[] args) {
        //项目路径
//        String sysPath = "E:\\tcj123\\tcj\\guns-admin";
//        String sysPath = "E:\\git\\fxplat";
//        String sysPath = "D:\\YouE\\反邪教\\code\\fxplat";
//        String sysPath = "D:\\YouE\\南宁云app\\code\\edu";
//        String sysPath = "E:\\dataos\\edu\\edu";
        String sysPath = "E:\\dataos\\edu\\edu";
        sysPath = "d:\\test";
        sysPath = "F:\\monkey\\edu\\edu_api";
        sysPath = "E:\\dataos\\服务中心\\问答系统\\edu_api";
        sysPath = "E:\\dataos\\faq\\faq";
//        sysPath = "C:\\工作\\edu_api";
        //作者
        String author = "Monkey";
//        String str[] = new String[]{"custom_entities", "custom_field_enumerations", "custom_fields", "custom_fields_projects", "custom_fields_roles", "custom_fields_trackers", "custom_tables", "custom_tables_projects", "custom_tables_roles", "custom_tables_trackers", "custom_values", "custom_workflows", "custom_workflows_projects"};
//        String str[] = new String[]{"issue_badge_user_settings", "issue_categories", "issue_relations", "issue_statuses", "issue_view_columns", "issues", "trackers", "versions", "repositories", "time_entries"};
//        String str[] = new String[]{"projects", "projects_trackers"};
//        String str[] = new String[]{"wikis","wiki_redirects","wiki_pages","wiki_contents","wiki_content_versions"};
//        String str[] = new String[]{"wikis","wiki_pages","wiki_contents"};
        String str[] = new String[]{"zb"};
        //String数组针对后续添加表需要设置表名，不能为空，为空则表示全部导入
//        first(sysPath, author, new String[]{"custom_entities", "custom_field_enumerations", "custom_fields", "custom_fields_projects", "custom_fields_roles", "custom_fields_trackers", "custom_tables", "custom_tables_projects", "custom_tables_roles", "custom_tables_trackers", "custom_values", "custom_workflows", "custom_workflows_projects"});

        first(sysPath, author, str);
        second(sysPath, author, str);
        //垃圾路径
        File file = new File(sysPath + "\\src\\main\\java\\TTT");
        deleteFile(file);
    }

    @Override
    protected void config() {

    }
}
