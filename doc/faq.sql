/*
Navicat MySQL Data Transfer

Source Server         : 172.16.24.203_3308
Source Server Version : 50730
Source Host           : 172.16.24.203:3308
Source Database       : faq

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-06-19 23:10:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for faq
-- ----------------------------
DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_pid` varchar(128) DEFAULT NULL COMMENT '父级',
  `faq_type` varchar(2) DEFAULT '1' COMMENT '类型： 1q 2a 0 首页',
  `faq_info` text COMMENT '内容',
  `faq_isdelete` varchar(2) DEFAULT '0' COMMENT '是否删除：1是0否',
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='faq';

-- ----------------------------
-- Records of faq
-- ----------------------------
INSERT INTO `faq` VALUES ('1', '0', '0', '欢迎来到【服务中心】【自助服务】机器人问答\r\n<br/>\r\n一、是否注册了服务却调不通？<br/>\r\n	<a href=\"javascript:;\" onclick=\"q(2);a(this.innerHTML,1)\">1.开发环境</a>\r\n	<br/>\r\n	<a href=\"javascript:;\" onclick=\"q(3);a(this.innerHTML,1)\">2.其他环境</a>', '0');
INSERT INTO `faq` VALUES ('2', '1', '2', '开发环境', '0');
INSERT INTO `faq` VALUES ('3', '1', '2', '其他环境', '0');
INSERT INTO `faq` VALUES ('4', '2,1', '1', '开发环境是docker部署，还是k8s部署？', '0');
INSERT INTO `faq` VALUES ('5', '4,2', '2', '1.docker', '0');
INSERT INTO `faq` VALUES ('6', '4,2', '2', '2.k8s', '0');
INSERT INTO `faq` VALUES ('7', '4,2', '2', '3.jar', '0');
INSERT INTO `faq` VALUES ('8', '3,1', '1', '其他环境是docker部署，还是k8s部署？', '0');
INSERT INTO `faq` VALUES ('12', '5,6,7,9,10,11,17', '1', '你想了解什么？', '0');
INSERT INTO `faq` VALUES ('13', '12,5,17', '2', '1.查询id命令', '0');
INSERT INTO `faq` VALUES ('14', '12,5,17', '2', '2.查询日志位置', '0');
INSERT INTO `faq` VALUES ('15', '12,5,17', '2', '3.检索日志命令', '0');
INSERT INTO `faq` VALUES ('16', '7', '1', 'jar包部署位置请联系测试询问', '0');
INSERT INTO `faq` VALUES ('17', '8,3', '2', '1.docker', '0');
INSERT INTO `faq` VALUES ('18', '8,3', '2', '2.k8s', '0');
INSERT INTO `faq` VALUES ('19', '8,3', '2', '3.jar', '0');
INSERT INTO `faq` VALUES ('23', '13', '1', '未知容器名时使用<br/>1.docker ps<br/>已知容器名时使用（亦或也可直接使用容器名代替id）<br/>2.docker ps -a | grep kong', '0');
INSERT INTO `faq` VALUES ('28', '14', '1', 'docker日志位置一般默认在<br/> /var/lib/docker/containers/ 目录下面，<br/>然后根据【1.查询id命令】找到确切的id前10位就能通过自动补齐找到对应的容器目录啦', '0');
INSERT INTO `faq` VALUES ('29', '15', '1', '当我们找到docker容器的日志文件目录后<br/>会在这个文件夹内找到一个带有【容器id-json.log】,此时是不是想吟诗一首。惊雷！这通天修为天塌地陷紫金锤...额打住了<br/>\r\n此时我们想看全部日志则可以直接使用 cat xx-json.log 或者 tail xx-json.log <br/>\r\n若想滚动查看日志 tail -f xx-json.log <br/>\r\n若想检索某一个特殊关键字进行滚动查看 <br/>tail -f xx-json.log | grep dataos-back  ，此处的dataos-back是关键字<br/><br/><br/>\r\n当然这里还有最最最简便的查看方法，若是查看开发环境194的服务中心kong日志的话，可以访问以下地址在可视化界面直接查看<br/>\r\n【<a href=\"http://172.16.24.202:9000/\" target=\"_blank\">http://172.16.24.202:9000/<a/>】  登录 test/123456<br/>\r\n首页点击鲸鱼图片---->选择 Containers---->logs小图标即可进入打印日志界面<br/>\r\n在 Search 栏输入你想查询的关键字即可<br/><br/>\r\n【没有可视化界面的怎么办？联系人工在线安装？<a href=\"javascript:;\" onclick=\"a(this.innerHTML,1);a(\'人工坐席超级忙...自动返回首页\',0);q(0);a(\'返回首页\',1)\">转人工</a>】', '0');
INSERT INTO `faq` VALUES ('30', '18,6', '1', '你知道在哪个环境的哪个空间吗？', '0');
INSERT INTO `faq` VALUES ('31', '18,6', '2', '知道，下一步', '0');
INSERT INTO `faq` VALUES ('32', '31', '1', '先设置临时空间名为目标空间名', '0');
INSERT INTO `faq` VALUES ('33', '31', '2', ' tns = dataosdev<br/>下一步', '0');
INSERT INTO `faq` VALUES ('34', '33', '1', '先确认是否注册成功，应该去K8S查询到对应环境的mysql-service。', '0');
INSERT INTO `faq` VALUES ('35', '33', '2', ' kubectl get svc -n $tns | grep mysql-service <br/>下一步', '0');
INSERT INTO `faq` VALUES ('36', '35', '1', '连接数据库后，在svc_admin库查询【服务表svc_info,路由表svc_route_info】，根据返回值判断是否成功注册。', '0');
INSERT INTO `faq` VALUES ('37', '35', '2', 'SELECT * FROM `svc_info` where svc_name = \'云市场管理\';<br/>\r\n		   SELECT * FROM `svc_route_info` where svc_id = \'xxxxx\';<br/>下一步', '0');
INSERT INTO `faq` VALUES ('38', '37', '1', '如果没有注册成功，则通过命令查询到服务中心的后台', '0');
INSERT INTO `faq` VALUES ('39', '37', '2', '1、kubectl get pod -n $tns | grep kong-admin | awk {\'print $1\'}<br/>\r\n	 => kong-admin-697d678566-lfllj                   <br/>\r\n    2、kubectl logs -n $tns kong-admin-697d678566-lfllj --tail 200 <br/>\r\n查询其他日志查询方式', '0');
INSERT INTO `faq` VALUES ('40', '39', '1', '所有日志自动刷新', '0');
INSERT INTO `faq` VALUES ('41', '39', '2', ' kubectl logs -n $tns $(kubectl get pod -n $tns | grep kong-admin | awk {\'print $1\'}) --tail 200<br/>下一步', '0');
INSERT INTO `faq` VALUES ('42', '41', '1', '检索结果且持续刷新的日志，此处的http-log是你要搜索的关键字', '0');
INSERT INTO `faq` VALUES ('43', '41', '2', ' kubectl logs -n $tns $(kubectl get pod -n dataosdev | grep kong-admin | awk {\'print $1\'}) --tail 200 -f | grep http-log<br/>下一步', '0');
INSERT INTO `faq` VALUES ('44', '43', '1', '若还未排查出问题所在，则去kong网关搜索日志，此处的http-log是你要搜索的关键字', '0');
INSERT INTO `faq` VALUES ('45', '43', '1', 'kubectl exec -it $(kubectl get pod -n $tns | grep svccenter-kong | awk {\'print $1\'})  -n $tns -- tail -f /usr/local/kong/logs/access.log | grep http-log<br/>\r\n【还没有解决问题吗？<a href=\"javascript:;\" onclick=\"a(this.innerHTML,1);a(\'人工坐席超级忙...自动返回首页\',0);q(0);a(\'返回首页\',1)\">转人工</a>】', '0');
