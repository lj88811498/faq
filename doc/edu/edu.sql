/*
Navicat MySQL Data Transfer

Source Server         : 172.16.24.203_3308
Source Server Version : 50730
Source Host           : 172.16.24.203:3308
Source Database       : edu

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-05-28 17:09:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attachment
-- ----------------------------
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE `attachment` (
  `attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_task_id` int(11) DEFAULT NULL COMMENT '问题分类id',
  `attachment_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '附件code',
  `attachment_file_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '文件编号',
  `attachment_url` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '请求地址',
  `attachment_name` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '附件名字',
  `attachment_type` varchar(2) COLLATE utf8_bin DEFAULT '1' COMMENT '附件类型：1.工单 2.题目 3.考试',
  `attachment_download_url` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '下载地址',
  `attachment_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `attachment_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `attachment_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `attachment_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='附件';

-- ----------------------------
-- Records of attachment
-- ----------------------------
INSERT INTO `attachment` VALUES ('3', '6', 'f2dee3c08971440ebeb6a48243714ad42', null, '创建镜像.jpg', '创建镜像.jpg', '1', null, '2020-04-25 14:20:58', '2020-04-25 14:20:58', null, null);
INSERT INTO `attachment` VALUES ('4', '6', 'f2dee3c08971440ebeb6a48243714ad42', null, '创建镜像2.png', '创建镜像2.png', '1', null, '2020-04-25 14:20:58', '2020-04-25 14:20:58', null, null);
INSERT INTO `attachment` VALUES ('5', '6', 'f2dee3c08971440ebeb6a48243714ad41', null, 'd:\\image\\tmp\\创建镜像.jpg', '创建镜像.jpg', '1', null, '2020-04-25 14:23:34', '2020-04-25 14:23:34', null, null);
INSERT INTO `attachment` VALUES ('6', '6', 'f2dee3c08971440ebeb6a48243714ad41', null, 'd:\\image\\tmp\\创建镜像2.png', '创建镜像2.png', '1', null, '2020-04-25 14:23:34', '2020-04-25 14:23:34', null, null);
INSERT INTO `attachment` VALUES ('7', '9', 'f2dee3c08971440ebeb6a48243714ad43', null, 'd:\\image\\tmp\\创建镜像.jpg', '创建镜像.jpg', '1', null, '2020-04-25 14:24:22', '2020-04-25 14:24:22', null, null);
INSERT INTO `attachment` VALUES ('8', '9', 'f2dee3c08971440ebeb6a48243714ad43', null, 'd:\\image\\tmp\\创建镜像2.png', '创建镜像2.png', '1', null, '2020-04-25 14:24:22', '2020-04-25 14:24:22', null, null);
INSERT INTO `attachment` VALUES ('9', null, '451ad8036b8142589cb2257644f2da26', null, 'd:\\image\\tmp\\创建镜像.jpg', '创建镜像.jpg', '1', null, '2020-04-25 14:40:35', '2020-04-25 14:40:35', null, null);
INSERT INTO `attachment` VALUES ('10', null, '451ad8036b8142589cb2257644f2da26', null, 'd:\\image\\tmp\\创建镜像2.png', '创建镜像2.png', '1', null, '2020-04-25 14:40:35', '2020-04-25 14:40:35', null, null);
INSERT INTO `attachment` VALUES ('11', null, 'bb6d27bbb6224d0c90ea693da1b90d00', null, 'd:\\image\\tmp\\创建镜像.jpg', '创建镜像.jpg', '1', null, '2020-04-25 14:41:01', '2020-04-25 14:41:01', null, null);
INSERT INTO `attachment` VALUES ('12', null, 'bb6d27bbb6224d0c90ea693da1b90d00', null, 'd:\\image\\tmp\\创建镜像2.png', '创建镜像2.png', '1', null, '2020-04-25 14:41:01', '2020-04-25 14:41:01', null, null);
INSERT INTO `attachment` VALUES ('13', '10', '704f1be5907d4f14890c5b84b77f998d', null, 'storagegroup/M00/01/02/wKgdBF6kRaWABlaxAACop37aoIU.530dfc', '创建镜像.jpg', '1', null, '2020-04-25 22:12:42', '2020-04-25 22:12:42', null, null);
INSERT INTO `attachment` VALUES ('14', '10', '704f1be5907d4f14890c5b84b77f998d', null, 'storagegroup/M00/01/02/wKgdBF6kRcOATzmLAAEGhfeaM1g.040b66', '创建镜像2.png', '1', null, '2020-04-25 22:12:42', '2020-04-25 22:12:42', null, null);
INSERT INTO `attachment` VALUES ('15', '12', 'd1c21e1e4b26430689342b861f5f9999', null, 'storagegroup/M00/01/02/wKgdBF6kScSAL1goAACop37aoIU.0342cb', '创建镜像.jpg', '1', null, '2020-04-25 22:29:31', '2020-04-25 22:29:31', null, null);
INSERT INTO `attachment` VALUES ('16', '12', 'd1c21e1e4b26430689342b861f5f9999', null, 'storagegroup/M00/01/02/wKgdBF6kScWAa5lnAAEGhfeaM1g.9c9bb5', '创建镜像2.png', '1', null, '2020-04-25 22:29:31', '2020-04-25 22:29:31', null, null);
INSERT INTO `attachment` VALUES ('19', null, '58c51e7094684632b50bd8d099b4e6cd', null, 'storagegroup/M00/01/02/wKgdBF6k8SGAVPRMAALvy-BUDYk.61db0f', '12111.jpg', '1', 'attachment/play/download/filecode/58c51e7094684632b50bd8d099b4e6cd', '2020-04-26 10:23:32', '2020-04-26 10:23:32', null, null);
INSERT INTO `attachment` VALUES ('20', null, '58c51e7094684632b50bd8d099b4e6cd', null, 'storagegroup/M00/01/02/wKgdBF6k8SGAUSIJAAAZ5crAGSA.fa064b', 'b1.jpg', '1', 'attachment/play/download/filecode/58c51e7094684632b50bd8d099b4e6cd', '2020-04-26 10:23:32', '2020-04-26 10:23:32', null, null);
INSERT INTO `attachment` VALUES ('21', null, 'de86e522e5ea4299a0807ed6f4a6a6af', null, 'storagegroup/M00/01/02/wKgdBF6k9diADXAyAALvy-BUDYk.afef36', '12111.jpg', '1', 'attachment/play/download/filecode/de86e522e5ea4299a0807ed6f4a6a6af', '2020-04-26 10:43:39', '2020-04-26 10:43:39', null, null);
INSERT INTO `attachment` VALUES ('22', null, 'de86e522e5ea4299a0807ed6f4a6a6af', null, 'storagegroup/M00/01/02/wKgdBF6k9dmAYjEjAAAZ5crAGSA.abdc2c', 'b1.jpg', '1', 'attachment/play/download/filecode/de86e522e5ea4299a0807ed6f4a6a6af', '2020-04-26 10:43:39', '2020-04-26 10:43:39', null, null);
INSERT INTO `attachment` VALUES ('23', null, '9e6daacd77e544d293e30d4be3cad796', null, 'storagegroup/M00/01/06/wKgdBF6lgUiAWFzlAACop37aoIU.620aa3', '创建镜像.jpg', '1', 'attachment/play/download/filecode/d09eac63-aa58-4143-b31b-f03d61182a17', '2020-04-26 20:38:38', '2020-04-26 20:38:38', null, null);
INSERT INTO `attachment` VALUES ('24', null, '9e6daacd77e544d293e30d4be3cad796', null, 'storagegroup/M00/01/06/wKgdBF6lgU6AAQeuAAEGhfeaM1g.48a66f', '创建镜像2.png', '1', 'attachment/play/download/filecode/cc125ab8-68da-4bdb-b365-f3277fc66ac4', '2020-04-26 20:38:38', '2020-04-26 20:38:38', null, null);
INSERT INTO `attachment` VALUES ('25', null, '442f18139a8247bfab6bcdf68b0c5914', null, 'storagegroup/M00/01/06/wKgdBF6lgfOADt7_AACop37aoIU.bec14b', '创建镜像.jpg', '1', 'attachment/play/download/filecode/d340cb68a20c442785f9e78031254af9', '2020-04-26 20:41:26', '2020-04-26 20:41:26', null, null);
INSERT INTO `attachment` VALUES ('26', null, '442f18139a8247bfab6bcdf68b0c5914', null, 'storagegroup/M00/01/06/wKgdBF6lgfWAWtcoAAEGhfeaM1g.b15522', '创建镜像2.png', '1', 'attachment/play/download/filecode/37628bad0ee84a149eb0fabc3281a314', '2020-04-26 20:41:26', '2020-04-26 20:41:26', null, null);
INSERT INTO `attachment` VALUES ('27', null, '12ea62c6d93247b6a727f9e01444e036', 'e7a27f12-4346-4abb-82d6-3326258c8c40', 'storagegroup/M00/01/06/wKgdBF6lg6eAbHimAACop37aoIU.e7a27f', '创建镜像.jpg', '1', 'attachment/play/download/filecode/e7a27f1243464abb82d63326258c8c40', '2020-04-26 20:48:39', '2020-04-26 20:48:39', null, null);
INSERT INTO `attachment` VALUES ('28', null, '12ea62c6d93247b6a727f9e01444e036', '8c4eafab-2112-4165-a509-990f087ec1ea', 'storagegroup/M00/01/06/wKgdBF6lg6iAbdnZAAEGhfeaM1g.8c4eaf', '创建镜像2.png', '1', 'attachment/play/download/filecode/8c4eafab21124165a509990f087ec1ea', '2020-04-26 20:48:39', '2020-04-26 20:48:39', null, null);
INSERT INTO `attachment` VALUES ('29', null, 'c4e33224635d4998b71f24326c416c59', '605938fdb6f344eaa693fbc949298e5c', 'storagegroup/M00/01/06/wKgdBF6lhBuAZgkNAACop37aoIU.605938', '创建镜像.jpg', '1', 'attachment/play/download/filecode/605938fdb6f344eaa693fbc949298e5c', '2020-04-26 20:50:35', '2020-04-26 20:50:35', null, null);
INSERT INTO `attachment` VALUES ('30', null, 'c4e33224635d4998b71f24326c416c59', '771f0f6afe2b4d43a15f9fab00894ff7', 'storagegroup/M00/01/06/wKgdBF6lhBuAf-BaAAEGhfeaM1g.771f0f', '创建镜像2.png', '1', 'attachment/play/download/filecode/771f0f6afe2b4d43a15f9fab00894ff7', '2020-04-26 20:50:35', '2020-04-26 20:50:35', null, null);
INSERT INTO `attachment` VALUES ('31', null, '37537490fc5e445980a14e10fc4933b5', 'a4a33176a08547e6a5ebb84a3d996c88', 'storagegroup/M00/01/02/wKgdCF6v1ESAHAynAACop37aoIU.a4a331', '创建镜像.jpg', '1', 'attachment/play/download/filecode/a4a33176a08547e6a5ebb84a3d996c88', '2020-05-04 16:34:16', '2020-05-04 16:34:16', null, null);
INSERT INTO `attachment` VALUES ('32', null, '37537490fc5e445980a14e10fc4933b5', '62e8bbd2444e4078bca58a3570d064b4', 'storagegroup/M00/01/02/wKgdCF6v1ESAcy5NAAEGhfeaM1g.62e8bb', '创建镜像2.png', '1', 'attachment/play/download/filecode/62e8bbd2444e4078bca58a3570d064b4', '2020-05-04 16:34:16', '2020-05-04 16:34:16', null, null);
INSERT INTO `attachment` VALUES ('33', null, '64e4d162cae1412f968ddcfd07fcbffc', 'e91abf7bbf8943b2acb8a7b21efed064', 'storagegroup/M00/01/02/wKgdCF6v606AbQV9AACop37aoIU.e91abf', '创建镜像.jpg', '1', 'attachment/play/download/filecode/e91abf7bbf8943b2acb8a7b21efed064', '2020-05-04 18:12:34', '2020-05-04 18:12:34', null, null);
INSERT INTO `attachment` VALUES ('34', null, '64e4d162cae1412f968ddcfd07fcbffc', 'e5f22300d1eb430d9213a482f05fa0e6', 'storagegroup/M00/01/02/wKgdCF6v606AcBekAAEGhfeaM1g.e5f223', '创建镜像2.png', '1', 'attachment/play/download/filecode/e5f22300d1eb430d9213a482f05fa0e6', '2020-05-04 18:12:34', '2020-05-04 18:12:34', null, null);
INSERT INTO `attachment` VALUES ('35', null, 'be17706c820f4192a6e22100ac8532b5', '49e0f618d0fe4c2983af91c868224c6e', 'storagegroup/M00/01/02/wKgdCF6v68GASEG0AACop37aoIU.49e0f6', '创建镜像.jpg', '1', 'attachment/play/download/filecode/49e0f618d0fe4c2983af91c868224c6e', '2020-05-04 18:14:29', '2020-05-04 18:14:29', null, null);
INSERT INTO `attachment` VALUES ('36', null, 'be17706c820f4192a6e22100ac8532b5', 'ddcb836e34164dd28bc1c10807d72da2', 'storagegroup/M00/01/02/wKgdCF6v68GAASMRAAEGhfeaM1g.ddcb83', '创建镜像2.png', '1', 'attachment/play/download/filecode/ddcb836e34164dd28bc1c10807d72da2', '2020-05-04 18:14:29', '2020-05-04 18:14:29', null, null);
INSERT INTO `attachment` VALUES ('37', null, 'cbc17450c26d4d83ad65a5c04c919c38', 'dc3e71dd03c440ed9bf8ed5917c46c01', 'storagegroup/M00/01/02/wKgdCF6v9tSASACJAACop37aoIU.dc3e71', '创建镜像.jpg', '1', 'attachment/play/download/filecode/dc3e71dd03c440ed9bf8ed5917c46c01', '2020-05-04 19:01:45', '2020-05-04 19:01:45', null, null);
INSERT INTO `attachment` VALUES ('38', null, 'cbc17450c26d4d83ad65a5c04c919c38', '4a0ea7b0218e4c19a70513ca46d903e0', 'storagegroup/M00/01/02/wKgdCF6v9tSABmxvAAEGhfeaM1g.4a0ea7', '创建镜像2.png', '1', 'attachment/play/download/filecode/4a0ea7b0218e4c19a70513ca46d903e0', '2020-05-04 19:01:45', '2020-05-04 19:01:45', null, null);
INSERT INTO `attachment` VALUES ('39', null, '6e172924ad2e442ea8eb85a10b827a90', 'c30024a1c5144fd7a08a3b62678e9138', 'storagegroup/M00/01/02/wKgdCF6v-WuATgsOAACop37aoIU.c30024', '创建镜像.jpg', '1', 'attachment/play/download/filecode/c30024a1c5144fd7a08a3b62678e9138', '2020-05-04 19:12:46', '2020-05-04 19:12:46', null, null);
INSERT INTO `attachment` VALUES ('40', null, '7537600645d449c98880ef5e8852c2c1', 'f36795aa3589454697f6504f90b95dac', 'storagegroup/M00/01/02/wKgdCF6v-Z-AX3spAACop37aoIU.f36795', '创建镜像.jpg', '1', 'attachment/play/download/filecode/f36795aa3589454697f6504f90b95dac', '2020-05-04 19:13:39', '2020-05-04 19:13:39', null, null);
INSERT INTO `attachment` VALUES ('41', '1', 'bd986e0a744a410c9e2e14ccddb49cc4', '84bab948ad7c498bbf5071a412260ddc', 'storagegroup/M00/01/02/wKgdCF6v-bGAKDrVAACop37aoIU.84bab9', '创建镜像.jpg', '1', 'attachment/play/download/filecode/84bab948ad7c498bbf5071a412260ddc', '2020-05-04 19:13:57', '2020-05-04 19:13:57', null, null);
INSERT INTO `attachment` VALUES ('42', '2', '2063690f61ba4d53983b3630ce66637c', 'c2b92685df274485bf61b9c4049e0e4b', 'storagegroup/M00/01/02/wKgdCF6v-b-AEaiPAACop37aoIU.c2b926', '创建镜像.jpg', '1', 'attachment/play/download/filecode/c2b92685df274485bf61b9c4049e0e4b', '2020-05-04 19:14:11', '2020-05-04 19:14:11', null, null);
INSERT INTO `attachment` VALUES ('43', '44', 'c51e40496f8c46bcac1a4fc98c6274ec', '2d960884f9764d1e97c1ce9dd7ea65fa', 'storagegroup/M00/01/02/wKgdCF6v-c2AawP-AACop37aoIU.2d9608', '创建镜像.jpg', '1', 'attachment/play/download/filecode/2d960884f9764d1e97c1ce9dd7ea65fa', '2020-05-04 19:14:24', '2020-05-04 19:14:24', null, null);
INSERT INTO `attachment` VALUES ('44', null, 'a24ec0ec123848e6b2d231f79367fd18', '01452f178ead4400862939eaec712860', 'storagegroup/M00/01/02/wKgdCF6yy56ARk2jAACm4QqkiSM.01452f', 'timg.jpg', '1', 'attachment/play/download/filecode/01452f178ead4400862939eaec712860', '2020-05-06 22:37:18', '2020-05-06 22:37:18', null, null);
INSERT INTO `attachment` VALUES ('45', null, '6cc2f037de3d41348c6adbdf7211b81e', '17bd2d2e4e4648c8b9d190fc080ba9aa', 'storagegroup/M00/01/02/wKgdCF6zdTWAX-biAABqSdRjb8o.17bd2d', 'u=2464152447,2707117762&fm=26&gp=0.jpg', '1', 'attachment/play/download/filecode/17bd2d2e4e4648c8b9d190fc080ba9aa', '2020-05-07 10:40:53', '2020-05-07 10:40:53', null, null);
INSERT INTO `attachment` VALUES ('46', null, 'fb6e990543044ce6b7d6d19b9ae8c649', 'd9ef275bc6f84f4586c01eb19aa7fe14', 'storagegroup/M00/01/02/wKgdCF6zdfGABaqSAABqSdRjb8o.d9ef27', 'u=2464152447,2707117762&fm=26&gp=0.jpg', '1', 'attachment/play/download/filecode/d9ef275bc6f84f4586c01eb19aa7fe14', '2020-05-07 10:44:01', '2020-05-07 10:44:01', null, null);
INSERT INTO `attachment` VALUES ('47', null, 'fa58552ffc0c4544819c68f32cbef390', 'a357fa81841e4e8f9e35bb6359842ad1', 'storagegroup/M00/01/02/wKgdCF6zdfaAKD-gAAC_bySCOaI.a357fa', 'v2-2a0caf70d9cf28ca3913766119855ae9_hd.jpg', '1', 'attachment/play/download/filecode/a357fa81841e4e8f9e35bb6359842ad1', '2020-05-07 10:44:06', '2020-05-07 10:44:06', null, null);
INSERT INTO `attachment` VALUES ('48', null, '27db634931884fddbaf8bc6951a68b30', '0dbf7d6d57654959ba178acd6da1add4', 'storagegroup/M00/01/02/wKgdCF6zpvmAUo7aAABqSdRjb8o.0dbf7d', 'u=2464152447,2707117762&fm=26&gp=0.jpg', '1', 'attachment/play/download/filecode/0dbf7d6d57654959ba178acd6da1add4', '2020-05-07 14:13:13', '2020-05-07 14:13:13', null, null);
INSERT INTO `attachment` VALUES ('49', null, '17e64cd450884d45b100661718bebb20', 'ffd443d95b304f719deab96f01cb75b0', 'storagegroup/M00/01/02/wKgdCF6zpvyAXINmAABQS1GF8l8.ffd443', 'QQ??20191108112350.jpg', '1', 'attachment/play/download/filecode/ffd443d95b304f719deab96f01cb75b0', '2020-05-07 14:13:16', '2020-05-07 14:13:16', null, null);
INSERT INTO `attachment` VALUES ('50', null, 'beb5712e5bf64ebab23f2d0295d9ef14', 'bc32c794846b43febf03a93310c7f514', 'storagegroup/M00/01/02/wKgdCF6zp2mALWQiAABqSdRjb8o.bc32c7', 'u=2464152447,2707117762&fm=26&gp=0.jpg', '1', 'attachment/play/download/filecode/bc32c794846b43febf03a93310c7f514', '2020-05-07 14:15:05', '2020-05-07 14:15:05', null, null);
INSERT INTO `attachment` VALUES ('51', null, 'fcac01d8909a4afeaccbcb9216d13e20', '4658093856ab4a0680b544144e03953e', 'storagegroup/M00/01/02/wKgdCF6zp2yAb_xsAABQS1GF8l8.465809', 'QQ??20191108112350.jpg', '1', 'attachment/play/download/filecode/4658093856ab4a0680b544144e03953e', '2020-05-07 14:15:08', '2020-05-07 14:15:08', null, null);
INSERT INTO `attachment` VALUES ('52', '18', '165037607c2744edbfb453918b4865cf', '902d2a6be4f64086b7dbcf8280228740', 'storagegroup/M00/01/02/wKgdCF6zp_eAN147AABQS1GF8l8.902d2a', 'QQ??20191108112350.jpg', '1', 'attachment/play/download/filecode/902d2a6be4f64086b7dbcf8280228740', '2020-05-07 14:17:27', '2020-05-07 14:17:27', null, null);
INSERT INTO `attachment` VALUES ('53', '18', 'efd539315aaf450791c9946e6676e6dc', '4b2b7e7a737346c0aeba064abac53749', 'storagegroup/M00/01/02/wKgdCF6zp_qAPRbLAABqSdRjb8o.4b2b7e', 'u=2464152447,2707117762&fm=26&gp=0.jpg', '1', 'attachment/play/download/filecode/4b2b7e7a737346c0aeba064abac53749', '2020-05-07 14:17:30', '2020-05-07 14:17:30', null, null);
INSERT INTO `attachment` VALUES ('54', '19', '1ebe0e49cec242949c55073fb009d811', '3e0a9421bb5f41458919a7dee16bbc49', 'storagegroup/M00/01/02/wKgdCF6zwMmAR3U2AAC_bySCOaI.3e0a94', 'v2-2a0caf70d9cf28ca3913766119855ae9_hd.jpg', '1', 'attachment/play/download/filecode/3e0a9421bb5f41458919a7dee16bbc49', '2020-05-07 16:03:21', '2020-05-07 16:03:21', null, null);
INSERT INTO `attachment` VALUES ('55', '21', 'bc0aebf2472442179678d60cfa7838bf', '4a8713108f154f328d7abe2bb9f1792c', 'storagegroup/M00/01/02/wKgdCF60CJaASqv6AAPdqmq20UI.4a8713', '1.jpg', '1', 'attachment/play/download/filecode/4a8713108f154f328d7abe2bb9f1792c', '2020-05-07 21:09:42', '2020-05-07 21:09:42', null, null);
INSERT INTO `attachment` VALUES ('56', '23', 'f671a35897624db18a9c47906bfa42ad', 'eeb0686d7d8f4af1bcaefaf50d6076b5', 'storagegroup/M00/01/02/wKgdCF60GESAFrfGAAAAh4rd8k8.eeb068', 'workOrder-fail-1588400389818.txt', '1', 'attachment/play/download/filecode/eeb0686d7d8f4af1bcaefaf50d6076b5', '2020-05-07 22:16:36', '2020-05-07 22:16:36', null, null);
INSERT INTO `attachment` VALUES ('57', null, 'abe2b9bb763a4e1ca7d02217fe767428', '46a27a48f0ff4fc885da4894a9b77a82', 'storagegroup/M00/01/03/wKgdCF63nneABnOMAADy6oIl52o.46a27a', '服务中心设计说明.docx', '1', 'attachment/play/download/filecode/46a27a48f0ff4fc885da4894a9b77a82', '2020-05-10 06:27:47', '2020-05-10 06:27:47', null, null);
INSERT INTO `attachment` VALUES ('58', null, '7fa31fbc6ccc45628b1bde614aa01d67', '0b2d7f816b66499f8aa304c552a20779', 'storagegroup/M00/01/03/wKgdCF63oO6AY0y_AHmqT5fIzTM.0b2d7f', '噬天为帝.txt', '1', 'attachment/play/download/filecode/0b2d7f816b66499f8aa304c552a20779', '2020-05-10 06:36:33', '2020-05-10 06:36:33', null, null);
INSERT INTO `attachment` VALUES ('59', null, 'd5fc68c9a60b4719b338a9ac1c758b03', 'bf33d3aa74074d62ada9dde6f8ccc781', 'storagegroup/M00/01/03/wKgdCF683myAaOVfAAAmUVId2Is.bf33d3', '代码统计-第6页.xlsx', '2', 'attachment/play/download/filecode/d5fc68c9a60b4719b338a9ac1c758b03', '2020-05-14 06:00:12', '2020-05-14 06:00:12', null, null);
INSERT INTO `attachment` VALUES ('60', null, 'd93ffbaab9ed47a5996286fa1258a8d8', '4591dbab69d94d129845a1ce9f8a8cbb', 'group1/M00/00/00/rBAYy1688feAHbfMAAAmUVId2Is.4591db', '代码统计-第6页.xlsx', '2', 'attachment/play/download/filecode/4591dbab69d94d129845a1ce9f8a8cbb', '2020-05-14 07:23:36', '2020-05-14 07:23:36', null, null);

-- ----------------------------
-- Table structure for confirm_exam
-- ----------------------------
DROP TABLE IF EXISTS `confirm_exam`;
CREATE TABLE `confirm_exam` (
  `confirm_exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) DEFAULT NULL COMMENT '考试id',
  `paper_id` int(11) DEFAULT NULL COMMENT '卷子id',
  `practice_id` int(11) DEFAULT NULL COMMENT '练习库id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `confirm_exam_version` varchar(8) DEFAULT '1' COMMENT '版本',
  `confirm_exam_status` varchar(4) DEFAULT '1' COMMENT '状态：1未参加 2已参加 3已提交',
  `confirm_exam_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `confirm_exam_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `confirm_exam_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `confirm_exam_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `confirm_exam_is_delete` int(11) DEFAULT '0' COMMENT '是否删除：0否1是',
  PRIMARY KEY (`confirm_exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='确认考试';

-- ----------------------------
-- Records of confirm_exam
-- ----------------------------
INSERT INTO `confirm_exam` VALUES ('1', '3', '11', null, '5', '1', '1', '2020-05-20 13:04:23', '2020-05-20 13:04:23', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('2', '3', '11', null, '32', '1', '1', '2020-05-20 13:04:23', '2020-05-20 13:04:23', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('3', '3', '11', null, '27', '1', '1', '2020-05-20 13:04:23', '2020-05-20 13:04:23', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('4', '3', '11', null, '57', '1', '1', '2020-05-20 13:04:23', '2020-05-20 13:04:23', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('5', '3', '11', null, '56', '1', '1', '2020-05-20 13:04:23', '2020-05-20 13:04:23', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('6', '3', '11', null, '58', '1', '1', '2020-05-20 13:04:23', '2020-05-20 13:04:23', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('7', '3', '11', null, '5', '1', '1', '2020-05-20 13:27:29', '2020-05-20 13:27:29', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('8', '3', '11', null, '32', '1', '1', '2020-05-20 13:27:29', '2020-05-20 13:27:29', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('9', '3', '11', null, '27', '1', '1', '2020-05-20 13:27:29', '2020-05-20 13:27:29', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('10', '3', '11', null, '57', '1', '1', '2020-05-20 13:27:29', '2020-05-20 13:27:29', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('11', '3', '11', null, '56', '1', '1', '2020-05-20 13:27:29', '2020-05-20 13:27:29', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('12', '3', '11', null, '58', '1', '1', '2020-05-20 13:27:29', '2020-05-20 13:27:29', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('13', '3', '11', null, '60', '1', '1', '2020-05-20 13:27:29', '2020-05-20 13:27:29', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('14', '3', '11', null, '61', '1', '1', '2020-05-20 13:27:29', '2020-05-20 13:27:29', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('15', '3', '11', null, '62', '1', '1', '2020-05-20 13:27:29', '2020-05-20 13:27:29', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('16', '3', '11', null, '63', '1', '1', '2020-05-20 13:27:29', '2020-05-20 13:27:29', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('17', '3', '11', null, '5', '3', '1', '2020-05-20 13:33:27', '2020-05-20 13:33:27', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('18', '3', '11', null, '32', '3', '1', '2020-05-20 13:33:27', '2020-05-20 13:33:27', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('19', '3', '11', null, '27', '3', '1', '2020-05-20 13:33:27', '2020-05-20 13:33:27', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('20', '3', '11', null, '57', '3', '1', '2020-05-20 13:33:27', '2020-05-20 13:33:27', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('21', '3', '11', null, '56', '3', '1', '2020-05-20 13:33:27', '2020-05-20 13:33:27', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('22', '3', '11', null, '58', '3', '1', '2020-05-20 13:33:27', '2020-05-20 13:33:27', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('23', '3', '11', null, '60', '3', '1', '2020-05-20 13:33:27', '2020-05-20 13:33:27', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('24', '3', '11', null, '61', '3', '1', '2020-05-20 13:33:27', '2020-05-20 13:33:27', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('25', '3', '11', null, '62', '3', '1', '2020-05-20 13:33:27', '2020-05-20 13:33:27', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('26', '3', '11', null, '63', '3', '1', '2020-05-20 13:33:27', '2020-05-20 13:33:27', '58', null, '1');
INSERT INTO `confirm_exam` VALUES ('27', '3', '11', null, '5', '4', '1', '2020-05-20 13:41:10', '2020-05-20 13:41:10', '58', null, '0');
INSERT INTO `confirm_exam` VALUES ('28', '3', '11', null, '32', '4', '1', '2020-05-20 13:41:10', '2020-05-20 13:41:10', '58', null, '0');
INSERT INTO `confirm_exam` VALUES ('29', '3', '11', null, '27', '4', '1', '2020-05-20 13:41:10', '2020-05-20 13:41:10', '58', null, '0');
INSERT INTO `confirm_exam` VALUES ('30', '3', '11', null, '57', '4', '1', '2020-05-20 13:41:10', '2020-05-20 13:41:10', '58', null, '0');
INSERT INTO `confirm_exam` VALUES ('31', '3', '11', null, '56', '4', '1', '2020-05-20 13:41:10', '2020-05-20 13:41:10', '58', null, '0');
INSERT INTO `confirm_exam` VALUES ('32', '3', '11', null, '58', '4', '1', '2020-05-20 13:41:10', '2020-05-20 13:41:10', '58', null, '0');
INSERT INTO `confirm_exam` VALUES ('33', '3', '11', null, '60', '4', '1', '2020-05-20 13:41:10', '2020-05-20 13:41:10', '58', null, '0');
INSERT INTO `confirm_exam` VALUES ('34', '3', '11', null, '61', '4', '1', '2020-05-20 13:41:10', '2020-05-20 13:41:10', '58', null, '0');
INSERT INTO `confirm_exam` VALUES ('35', '3', '11', null, '62', '4', '1', '2020-05-20 13:41:10', '2020-05-20 13:41:10', '58', null, '0');
INSERT INTO `confirm_exam` VALUES ('36', '3', '11', null, '63', '4', '1', '2020-05-20 13:41:10', '2020-05-20 13:41:10', '58', null, '0');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `course_desc` varchar(255) DEFAULT NULL COMMENT '课程描述',
  `course_type_id` int(11) DEFAULT NULL COMMENT '课程分类id',
  `course_cover` varchar(255) DEFAULT NULL COMMENT '课程封面地址',
  `course_time` int(11) DEFAULT NULL COMMENT '课程时长(分钟)',
  `course_credit` int(255) DEFAULT NULL COMMENT '课程学分',
  `course_type` int(255) DEFAULT NULL COMMENT '资源类型',
  `course_courseware` varchar(255) DEFAULT NULL COMMENT '课件资源地址',
  `course_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `course_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `course_create_by` int(255) DEFAULT NULL COMMENT '创建人',
  `course_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `course_is_delete` int(255) DEFAULT NULL COMMENT '是否删除：0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程管理';

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for course_type
-- ----------------------------
DROP TABLE IF EXISTS `course_type`;
CREATE TABLE `course_type` (
  `course_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_type_parent_id` int(11) DEFAULT '0' COMMENT '上级分类',
  `course_type_name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `course_type_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `course_type_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `course_type_create_by` int(255) DEFAULT NULL COMMENT '创建人',
  `course_type_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `course_type_is_delete` int(255) DEFAULT '0' COMMENT '是否删除：0否1是',
  PRIMARY KEY (`course_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='课程分类';

-- ----------------------------
-- Records of course_type
-- ----------------------------
INSERT INTO `course_type` VALUES ('1', '0', '123', null, null, null, null, '0');
INSERT INTO `course_type` VALUES ('2', '1', '1234', null, null, null, null, '0');
INSERT INTO `course_type` VALUES ('3', '2', '12345', null, null, null, null, '0');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) DEFAULT NULL COMMENT '卷子id',
  `exam_name` varchar(256) DEFAULT NULL COMMENT '考试名称',
  `exam_status` varchar(4) DEFAULT '1' COMMENT '考试状态：1未发布2已发布未开始3进行中4已结束',
  `exam_version` varchar(4) DEFAULT '1' COMMENT '版本',
  `exam_start_time` datetime DEFAULT NULL COMMENT '考试开始时间',
  `exam_end_time` datetime DEFAULT NULL COMMENT '考试结束时间',
  `exam_time` varchar(16) DEFAULT NULL COMMENT '答题时间（分钟）',
  `exam_times` varchar(4) DEFAULT NULL COMMENT '答题次数',
  `exam_desc` text COMMENT '考试须知',
  `exam_index_img_url` varchar(1024) DEFAULT NULL COMMENT '封面图片',
  `exam_credit` varchar(4) DEFAULT '0' COMMENT '通过学分',
  `exam_is_order` varchar(4) DEFAULT '0' COMMENT '是否打乱试题顺序：0否1是',
  `exam_is_order_choice` varchar(4) DEFAULT '0' COMMENT '是否打乱选择题选项顺序：0否1是',
  `exam_reconnect` varchar(4) DEFAULT '-1' COMMENT '重连次数，-1时表示不限制',
  `exam_submit` varchar(4) DEFAULT '0' COMMENT '允许查看已提交答卷：1交卷后显示正确答案2考试结束后显示正确答案3手动公布正确答案',
  `exam_grade` varchar(4) DEFAULT '0' COMMENT '及格分数',
  `exam_users` varchar(2048) DEFAULT NULL COMMENT '学员集合',
  `exam_checkers` varchar(2048) DEFAULT NULL COMMENT '阅卷人集合',
  `exam_show_user` varchar(4) DEFAULT '0' COMMENT '是否显示考生姓名：0否1是',
  `exam_auto_pack` varchar(4) DEFAULT '0' COMMENT '是否填空题自动批阅时精准匹配答案：0否1是',
  `exam_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `exam_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `exam_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `exam_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `exam_is_delete` int(11) DEFAULT NULL COMMENT '是否删除：0否1是',
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='考试';

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('1', '10', '考试123', '1', '1', '2020-05-18 20:31:10', '2020-05-18 20:31:10', '60', '3', '开始考试咯', 'attachment/play/download/filecode/4591dbab69d94d129845a1ce9f8a8cbb', '10', '0', '0', '3', '1', '60', '56,58', '32,57', '0', '0', '2020-05-18 20:31:10', '2020-05-18 20:31:10', '57', '0', '0');
INSERT INTO `exam` VALUES ('2', '10', '考试123', '1', '1', '2020-05-18 20:31:10', '2020-05-18 20:31:10', '60', '3', '开始考试咯', 'attachment/play/download/filecode/4591dbab69d94d129845a1ce9f8a8cbb', '10', '0', '0', '3', '1', '60', '56,58', '32,57', '0', '0', '2020-05-18 20:31:10', '2020-05-18 20:31:10', '57', '0', '0');
INSERT INTO `exam` VALUES ('3', '11', '考试咯321', '2', '4', '2020-05-20 21:00:43', '2020-05-20 21:00:43', '60', '3', '考试不能作弊~~~', 'attachment/play/download/filecode/0b2d7f816b66499f8aa304c552a20779', '8', '0', '0', '3', '1', '98', '5,32,27,57,56,58,60,61,62,63', '5,32,27,57,56,58', '0', '0', '2020-05-20 21:00:43', '2020-05-20 21:41:11', '58', '57', '0');

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `paper_id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_name` varchar(128) DEFAULT NULL COMMENT '试卷名称',
  `paper_type` varchar(4) DEFAULT NULL COMMENT '出题方式:1固定出题2随机出题',
  `paper_single` varchar(4) DEFAULT NULL COMMENT '单选分值',
  `paper_more` varchar(4) DEFAULT NULL COMMENT '多选分值',
  `paper_judge` varchar(4) DEFAULT NULL COMMENT '判断题分值',
  `paper_pack` varchar(4) DEFAULT NULL COMMENT '填空题分值',
  `paper_faq` varchar(4) DEFAULT NULL COMMENT '问答分值',
  `paper_version` varchar(8) DEFAULT '1' COMMENT '版本',
  `paper_config` varchar(4) DEFAULT '0' COMMENT '是否按100分平均分配：0否1是',
  `paper_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paper_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `paper_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `paper_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `paper_is_delete` int(11) DEFAULT '0' COMMENT '是否删除：0否1是',
  PRIMARY KEY (`paper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='卷子';

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES ('1', '语文卷子哦1', '1', '2', '1', '3', '4', '2', '1', '0', '2020-05-14 14:17:43', '2020-05-14 14:17:43', '57', null, '0');
INSERT INTO `paper` VALUES ('2', '语文卷子哦2', '1', '2', '1', '3', '4', '2', '1', '0', '2020-05-14 14:18:54', '2020-05-14 14:18:54', '5', null, '0');
INSERT INTO `paper` VALUES ('3', '语文卷子哦2', '1', '2', '1', '3', '4', '2', '1', '0', '2020-05-14 14:30:21', '2020-05-14 14:30:21', '5', null, '0');
INSERT INTO `paper` VALUES ('4', '语文卷子哦2', '1', '2', '1', '3', '4', '2', '1', '0', '2020-05-14 14:42:14', '2020-05-14 14:42:14', '5', null, '0');
INSERT INTO `paper` VALUES ('5', '语文卷子哦2', '1', '2', '1', '3', '4', '2', '1', '0', '2020-05-14 14:44:54', '2020-05-14 14:44:54', '5', null, '0');
INSERT INTO `paper` VALUES ('6', '语文卷子哦2', '1', '2', '1', '3', '4', '2', '1', '0', '2020-05-14 15:21:58', '2020-05-14 15:21:58', '5', null, '0');
INSERT INTO `paper` VALUES ('7', '语文卷子哦2', '1', '2', '1', '3', '4', '2', '1', '0', '2020-05-15 02:27:09', '2020-05-15 02:27:09', '5', null, '0');
INSERT INTO `paper` VALUES ('8', '语文卷子哦2', '1', '2', '1', '3', '4', '2', '1', '0', '2020-05-15 02:55:47', '2020-05-15 02:55:47', '5', null, '0');
INSERT INTO `paper` VALUES ('9', '语文卷子哦2', '1', '2', '1', '3', '4', '2', '1', '0', '2020-05-15 03:01:06', '2020-05-15 03:01:06', '5', null, '0');
INSERT INTO `paper` VALUES ('10', '数学卷子了哦2', '1', '2', '1', '3', '4', '2', '4', '0', '2020-05-15 03:15:00', '2020-05-15 03:15:00', '5', null, '0');
INSERT INTO `paper` VALUES ('11', '语文卷子哦2', '2', '2', '1', '3', '4', '2', '1', '0', '2020-05-15 16:22:31', '2020-05-15 16:22:31', '5', null, '0');

-- ----------------------------
-- Table structure for paper_config
-- ----------------------------
DROP TABLE IF EXISTS `paper_config`;
CREATE TABLE `paper_config` (
  `paper_config_id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) DEFAULT NULL COMMENT '卷子id',
  `paper_config_obj` int(11) DEFAULT NULL COMMENT '题库id（随机抽题）/题目id（固定抽题）',
  `paper_config_single` varchar(4) DEFAULT NULL COMMENT '单选个数（随机抽题）',
  `paper_config_more` varchar(4) DEFAULT NULL COMMENT '多选个数（随机抽题）',
  `paper_config_judge` varchar(4) DEFAULT NULL COMMENT '判断题个数（随机抽题）',
  `paper_config_pack` varchar(4) DEFAULT NULL COMMENT '填空题个数（随机抽题）',
  `paper_config_faq` varchar(4) DEFAULT NULL COMMENT '问答个数（随机抽题）',
  `paper_config_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paper_config_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `paper_config_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `paper_config_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`paper_config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='卷子配置';

-- ----------------------------
-- Records of paper_config
-- ----------------------------

-- ----------------------------
-- Table structure for paper_subjects
-- ----------------------------
DROP TABLE IF EXISTS `paper_subjects`;
CREATE TABLE `paper_subjects` (
  `paper_subjects_id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) DEFAULT NULL COMMENT '卷子id',
  `subjects_id` int(11) DEFAULT NULL COMMENT '题目id',
  `subjects_name` varchar(1024) DEFAULT NULL COMMENT '题目名称',
  `subjects_type` varchar(4) DEFAULT NULL COMMENT '题型:1单选2多选3判断4填空5问答',
  `paper_subjects_grade` varchar(4) DEFAULT NULL COMMENT '分数',
  `paper_subjects_order` varchar(8) DEFAULT NULL COMMENT '随机排序',
  `paper_subjects_version` varchar(8) DEFAULT '1' COMMENT '版本',
  `paper_subjects_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paper_subjects_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `paper_subjects_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `paper_subjects_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `paper_subjects_is_delete` int(11) DEFAULT NULL COMMENT '是否删除：0否1是',
  PRIMARY KEY (`paper_subjects_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='卷子题目';

-- ----------------------------
-- Records of paper_subjects
-- ----------------------------
INSERT INTO `paper_subjects` VALUES ('1', '1', '1', null, '1', null, null, '1', '2020-05-14 14:17:43', '2020-05-14 14:17:43', null, null, null);
INSERT INTO `paper_subjects` VALUES ('2', '2', '1', null, '1', null, null, '1', '2020-05-14 14:18:54', '2020-05-14 14:18:54', null, null, null);
INSERT INTO `paper_subjects` VALUES ('3', '2', '2', null, '1', null, null, '1', '2020-05-14 14:18:54', '2020-05-14 14:18:54', null, null, null);
INSERT INTO `paper_subjects` VALUES ('4', '2', '3', null, '1', null, null, '1', '2020-05-14 14:18:54', '2020-05-14 14:18:54', null, null, null);
INSERT INTO `paper_subjects` VALUES ('5', '3', '1', null, '1', null, null, '1', '2020-05-14 14:30:21', '2020-05-14 14:30:21', null, null, null);
INSERT INTO `paper_subjects` VALUES ('6', '3', '2', null, '1', null, null, '1', '2020-05-14 14:30:21', '2020-05-14 14:30:21', null, null, null);
INSERT INTO `paper_subjects` VALUES ('7', '3', '3', null, '1', null, null, '1', '2020-05-14 14:30:21', '2020-05-14 14:30:21', null, null, null);
INSERT INTO `paper_subjects` VALUES ('8', '4', '1', null, '1', null, null, '1', '2020-05-14 14:42:14', '2020-05-14 14:42:14', null, null, null);
INSERT INTO `paper_subjects` VALUES ('9', '4', '2', null, '1', null, null, '1', '2020-05-14 14:42:14', '2020-05-14 14:42:14', null, null, null);
INSERT INTO `paper_subjects` VALUES ('10', '4', '3', null, '1', null, null, '1', '2020-05-14 14:42:14', '2020-05-14 14:42:14', null, null, null);
INSERT INTO `paper_subjects` VALUES ('11', '5', '1', null, '1', '1', null, '1', '2020-05-14 14:44:54', '2020-05-14 14:44:54', null, null, null);
INSERT INTO `paper_subjects` VALUES ('12', '5', '2', null, '1', '2', null, '1', '2020-05-14 14:44:54', '2020-05-14 14:44:54', null, null, null);
INSERT INTO `paper_subjects` VALUES ('13', '5', '3', null, '1', '3', null, '1', '2020-05-14 14:44:54', '2020-05-14 14:44:54', null, null, null);
INSERT INTO `paper_subjects` VALUES ('14', '6', '1', null, '1', '1', null, '1', '2020-05-14 15:21:58', '2020-05-14 15:21:58', null, null, null);
INSERT INTO `paper_subjects` VALUES ('15', '6', '2', null, '1', '2', null, '1', '2020-05-14 15:21:58', '2020-05-14 15:21:58', null, null, null);
INSERT INTO `paper_subjects` VALUES ('16', '6', '3', null, '1', '3', null, '1', '2020-05-14 15:21:58', '2020-05-14 15:21:58', null, null, null);
INSERT INTO `paper_subjects` VALUES ('17', '7', '1', '1+1=?', '1', '1', null, '1', '2020-05-15 02:27:09', '2020-05-15 02:27:09', null, null, null);
INSERT INTO `paper_subjects` VALUES ('18', '7', '2', '1+1=?', '1', '2', null, '1', '2020-05-15 02:27:09', '2020-05-15 02:27:09', null, null, null);
INSERT INTO `paper_subjects` VALUES ('19', '7', '3', '1+1=?', '1', '3', null, '1', '2020-05-15 02:27:09', '2020-05-15 02:27:09', null, null, null);
INSERT INTO `paper_subjects` VALUES ('20', '8', '1', '1+1=?', '1', '1', null, '1', '2020-05-15 02:55:47', '2020-05-15 02:55:47', null, null, null);
INSERT INTO `paper_subjects` VALUES ('21', '8', '2', '1+1=?', '1', '2', null, '1', '2020-05-15 02:55:47', '2020-05-15 02:55:47', null, null, null);
INSERT INTO `paper_subjects` VALUES ('22', '8', '3', '1+1=?', '1', '3', null, '1', '2020-05-15 02:55:47', '2020-05-15 02:55:47', null, null, null);
INSERT INTO `paper_subjects` VALUES ('23', '9', '1', '1+1=?', '1', '1', null, '1', '2020-05-15 03:01:06', '2020-05-15 03:01:06', null, null, null);
INSERT INTO `paper_subjects` VALUES ('24', '9', '2', '1+1=?', '1', '2', null, '1', '2020-05-15 03:01:06', '2020-05-15 03:01:06', null, null, null);
INSERT INTO `paper_subjects` VALUES ('25', '9', '3', '1+1=?', '1', '3', null, '1', '2020-05-15 03:01:06', '2020-05-15 03:01:06', null, null, null);
INSERT INTO `paper_subjects` VALUES ('26', '10', '1', '1+1=?', '1', '1', null, '1', '2020-05-15 03:15:00', '2020-05-15 03:15:00', null, null, null);
INSERT INTO `paper_subjects` VALUES ('27', '10', '2', '1+1=?', '1', '2', null, '1', '2020-05-15 03:15:00', '2020-05-15 03:15:00', null, null, null);
INSERT INTO `paper_subjects` VALUES ('28', '10', '3', '1+1=?', '1', '3', null, '1', '2020-05-15 03:15:00', '2020-05-15 03:15:00', null, null, null);
INSERT INTO `paper_subjects` VALUES ('29', '10', '1', '1+1=?', '1', '1', null, '2', '2020-05-15 03:16:41', '2020-05-15 03:16:41', null, null, null);
INSERT INTO `paper_subjects` VALUES ('30', '10', '2', '1+1=?', '1', '2', null, '2', '2020-05-15 03:16:41', '2020-05-15 03:16:41', null, null, null);
INSERT INTO `paper_subjects` VALUES ('31', '10', '3', '1+1=?', '1', '3', null, '2', '2020-05-15 03:16:41', '2020-05-15 03:16:41', null, null, null);
INSERT INTO `paper_subjects` VALUES ('32', '10', '1', '1+1=?', '1', '1', null, '3', '2020-05-15 03:29:45', '2020-05-15 03:29:45', null, null, null);
INSERT INTO `paper_subjects` VALUES ('33', '10', '2', '1+1=?', '1', '2', null, '3', '2020-05-15 03:29:45', '2020-05-15 03:29:45', null, null, null);
INSERT INTO `paper_subjects` VALUES ('34', '10', '3', '1+1=?', '1', '3', null, '3', '2020-05-15 03:29:45', '2020-05-15 03:29:45', null, null, null);

-- ----------------------------
-- Table structure for paper_subjects_answer
-- ----------------------------
DROP TABLE IF EXISTS `paper_subjects_answer`;
CREATE TABLE `paper_subjects_answer` (
  `paper_subjects_answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `subjects_id` int(11) DEFAULT NULL COMMENT '题目id',
  `paper_id` int(11) DEFAULT NULL COMMENT '卷子id',
  `paper_subjects_answer_order` varchar(8) DEFAULT NULL COMMENT '随机排序',
  `paper_subjects_answer_code` varchar(4) DEFAULT NULL COMMENT '编号',
  `paper_subjects_answer_sure` varchar(4) DEFAULT NULL COMMENT '是否正确：1正确0错误',
  `paper_subjects_answer_name` varchar(1024) DEFAULT NULL COMMENT '答案',
  `paper_subjects_answer_name_img_url` varchar(1024) DEFAULT NULL COMMENT '答案图片',
  `paper_subjects_answer_version` varchar(8) DEFAULT '1' COMMENT '版本',
  `paper_subjects_answer_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`paper_subjects_answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='卷子答案';

-- ----------------------------
-- Records of paper_subjects_answer
-- ----------------------------
INSERT INTO `paper_subjects_answer` VALUES ('1', '2', '8', null, 'A', '1', '2', null, '1', '2020-05-15 02:55:47');
INSERT INTO `paper_subjects_answer` VALUES ('2', '2', '8', null, 'B', '0', '3', null, '1', '2020-05-15 02:55:47');
INSERT INTO `paper_subjects_answer` VALUES ('3', '2', '8', null, 'C', '0', '1', null, '1', '2020-05-15 02:55:47');
INSERT INTO `paper_subjects_answer` VALUES ('4', '2', '8', null, 'D', '0', '0', null, '1', '2020-05-15 02:55:47');
INSERT INTO `paper_subjects_answer` VALUES ('5', '3', '8', null, 'A', '0', '2', 'attachment/play/download/filecode/eeb0686d7d8f4af1bcaefaf50d6076b5', '1', '2020-05-15 02:55:47');
INSERT INTO `paper_subjects_answer` VALUES ('6', '3', '8', null, 'B', '0', '3', 'attachment/play/download/filecode/4b2b7e7a737346c0aeba064abac53749', '1', '2020-05-15 02:55:47');
INSERT INTO `paper_subjects_answer` VALUES ('7', '3', '8', null, 'C', '1', '11', null, '1', '2020-05-15 02:55:47');
INSERT INTO `paper_subjects_answer` VALUES ('8', '3', '8', null, 'D', '0', '0', null, '1', '2020-05-15 02:55:47');
INSERT INTO `paper_subjects_answer` VALUES ('9', '1', '9', null, 'A', '1', '2', null, '1', '2020-05-15 03:01:06');
INSERT INTO `paper_subjects_answer` VALUES ('10', '1', '9', null, 'B', '0', '3', null, '1', '2020-05-15 03:01:06');
INSERT INTO `paper_subjects_answer` VALUES ('11', '1', '9', null, 'C', '0', '1', null, '1', '2020-05-15 03:01:06');
INSERT INTO `paper_subjects_answer` VALUES ('12', '1', '9', null, 'D', '0', '0', null, '1', '2020-05-15 03:01:06');
INSERT INTO `paper_subjects_answer` VALUES ('13', '2', '9', null, 'A', '1', '2', null, '1', '2020-05-15 03:01:06');
INSERT INTO `paper_subjects_answer` VALUES ('14', '2', '9', null, 'B', '0', '3', null, '1', '2020-05-15 03:01:06');
INSERT INTO `paper_subjects_answer` VALUES ('15', '2', '9', null, 'C', '0', '1', null, '1', '2020-05-15 03:01:06');
INSERT INTO `paper_subjects_answer` VALUES ('16', '2', '9', null, 'D', '0', '0', null, '1', '2020-05-15 03:01:06');
INSERT INTO `paper_subjects_answer` VALUES ('17', '3', '9', null, 'A', '0', '2', 'attachment/play/download/filecode/eeb0686d7d8f4af1bcaefaf50d6076b5', '1', '2020-05-15 03:01:06');
INSERT INTO `paper_subjects_answer` VALUES ('18', '3', '9', null, 'B', '0', '3', 'attachment/play/download/filecode/4b2b7e7a737346c0aeba064abac53749', '1', '2020-05-15 03:01:06');
INSERT INTO `paper_subjects_answer` VALUES ('19', '3', '9', null, 'C', '1', '11', null, '1', '2020-05-15 03:01:06');
INSERT INTO `paper_subjects_answer` VALUES ('20', '3', '9', null, 'D', '0', '0', null, '1', '2020-05-15 03:01:06');
INSERT INTO `paper_subjects_answer` VALUES ('21', '1', '10', null, 'A', '1', '2', null, '1', '2020-05-15 03:15:00');
INSERT INTO `paper_subjects_answer` VALUES ('22', '1', '10', null, 'B', '0', '3', null, '1', '2020-05-15 03:15:00');
INSERT INTO `paper_subjects_answer` VALUES ('23', '1', '10', null, 'C', '0', '1', null, '1', '2020-05-15 03:15:00');
INSERT INTO `paper_subjects_answer` VALUES ('24', '1', '10', null, 'D', '0', '0', null, '1', '2020-05-15 03:15:00');
INSERT INTO `paper_subjects_answer` VALUES ('25', '2', '10', null, 'A', '1', '2', null, '1', '2020-05-15 03:15:00');
INSERT INTO `paper_subjects_answer` VALUES ('26', '2', '10', null, 'B', '0', '3', null, '1', '2020-05-15 03:15:00');
INSERT INTO `paper_subjects_answer` VALUES ('27', '2', '10', null, 'C', '0', '1', null, '1', '2020-05-15 03:15:00');
INSERT INTO `paper_subjects_answer` VALUES ('28', '2', '10', null, 'D', '0', '0', null, '1', '2020-05-15 03:15:00');
INSERT INTO `paper_subjects_answer` VALUES ('29', '3', '10', null, 'A', '0', '2', 'attachment/play/download/filecode/eeb0686d7d8f4af1bcaefaf50d6076b5', '1', '2020-05-15 03:15:00');
INSERT INTO `paper_subjects_answer` VALUES ('30', '3', '10', null, 'B', '0', '3', 'attachment/play/download/filecode/4b2b7e7a737346c0aeba064abac53749', '1', '2020-05-15 03:15:00');
INSERT INTO `paper_subjects_answer` VALUES ('31', '3', '10', null, 'C', '1', '11', null, '1', '2020-05-15 03:15:00');
INSERT INTO `paper_subjects_answer` VALUES ('32', '3', '10', null, 'D', '0', '0', null, '1', '2020-05-15 03:15:00');
INSERT INTO `paper_subjects_answer` VALUES ('33', '1', '10', null, 'A', '1', '2', null, '2', '2020-05-15 03:16:41');
INSERT INTO `paper_subjects_answer` VALUES ('34', '1', '10', null, 'B', '0', '3', null, '2', '2020-05-15 03:16:41');
INSERT INTO `paper_subjects_answer` VALUES ('35', '1', '10', null, 'C', '0', '1', null, '2', '2020-05-15 03:16:41');
INSERT INTO `paper_subjects_answer` VALUES ('36', '1', '10', null, 'D', '0', '0', null, '2', '2020-05-15 03:16:41');
INSERT INTO `paper_subjects_answer` VALUES ('37', '2', '10', null, 'A', '1', '2', null, '2', '2020-05-15 03:16:41');
INSERT INTO `paper_subjects_answer` VALUES ('38', '2', '10', null, 'B', '0', '3', null, '2', '2020-05-15 03:16:41');
INSERT INTO `paper_subjects_answer` VALUES ('39', '2', '10', null, 'C', '0', '1', null, '2', '2020-05-15 03:16:41');
INSERT INTO `paper_subjects_answer` VALUES ('40', '2', '10', null, 'D', '0', '0', null, '2', '2020-05-15 03:16:41');
INSERT INTO `paper_subjects_answer` VALUES ('41', '3', '10', null, 'A', '0', '2', 'attachment/play/download/filecode/eeb0686d7d8f4af1bcaefaf50d6076b5', '2', '2020-05-15 03:16:41');
INSERT INTO `paper_subjects_answer` VALUES ('42', '3', '10', null, 'B', '0', '3', 'attachment/play/download/filecode/4b2b7e7a737346c0aeba064abac53749', '2', '2020-05-15 03:16:41');
INSERT INTO `paper_subjects_answer` VALUES ('43', '3', '10', null, 'C', '1', '11', null, '2', '2020-05-15 03:16:41');
INSERT INTO `paper_subjects_answer` VALUES ('44', '3', '10', null, 'D', '0', '0', null, '2', '2020-05-15 03:16:41');
INSERT INTO `paper_subjects_answer` VALUES ('45', '1', '10', null, 'A', '1', '2', null, '3', '2020-05-15 03:29:45');
INSERT INTO `paper_subjects_answer` VALUES ('46', '1', '10', null, 'B', '0', '3', null, '3', '2020-05-15 03:29:45');
INSERT INTO `paper_subjects_answer` VALUES ('47', '1', '10', null, 'C', '0', '1', null, '3', '2020-05-15 03:29:45');
INSERT INTO `paper_subjects_answer` VALUES ('48', '1', '10', null, 'D', '0', '0', null, '3', '2020-05-15 03:29:45');
INSERT INTO `paper_subjects_answer` VALUES ('49', '2', '10', null, 'A', '1', '2', null, '3', '2020-05-15 03:29:45');
INSERT INTO `paper_subjects_answer` VALUES ('50', '2', '10', null, 'B', '0', '3', null, '3', '2020-05-15 03:29:45');
INSERT INTO `paper_subjects_answer` VALUES ('51', '2', '10', null, 'C', '0', '1', null, '3', '2020-05-15 03:29:45');
INSERT INTO `paper_subjects_answer` VALUES ('52', '2', '10', null, 'D', '0', '0', null, '3', '2020-05-15 03:29:45');
INSERT INTO `paper_subjects_answer` VALUES ('53', '3', '10', null, 'A', '0', '2', 'attachment/play/download/filecode/eeb0686d7d8f4af1bcaefaf50d6076b5', '3', '2020-05-15 03:29:45');
INSERT INTO `paper_subjects_answer` VALUES ('54', '3', '10', null, 'B', '0', '3', 'attachment/play/download/filecode/4b2b7e7a737346c0aeba064abac53749', '3', '2020-05-15 03:29:45');
INSERT INTO `paper_subjects_answer` VALUES ('55', '3', '10', null, 'C', '1', '11', null, '3', '2020-05-15 03:29:45');
INSERT INTO `paper_subjects_answer` VALUES ('56', '3', '10', null, 'D', '0', '0', null, '3', '2020-05-15 03:29:45');

-- ----------------------------
-- Table structure for paper_subjects_bank
-- ----------------------------
DROP TABLE IF EXISTS `paper_subjects_bank`;
CREATE TABLE `paper_subjects_bank` (
  `paper_subjects_bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) DEFAULT NULL COMMENT '卷子id',
  `subjects_bank_id` int(11) DEFAULT NULL COMMENT '题库id',
  `subjects_bank_name` varchar(256) DEFAULT NULL COMMENT '题库名称',
  `paper_subjects_bank_single` varchar(8) DEFAULT NULL COMMENT '单选题个数',
  `paper_subjects_bank_more` varchar(8) DEFAULT NULL COMMENT '多选个数',
  `paper_subjects_bank_judge` varchar(8) DEFAULT NULL COMMENT '判断题个数',
  `paper_subjects_bank_pack` varchar(8) DEFAULT NULL COMMENT '填空题个数',
  `paper_subjects_bank_faq` varchar(8) DEFAULT NULL COMMENT '问答个数',
  `paper_subjects_bank_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paper_subjects_bank_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `paper_subjects_bank_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `paper_subjects_bank_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `paper_subjects_bank_is_delete` int(11) DEFAULT NULL COMMENT '是否删除：0否1是',
  PRIMARY KEY (`paper_subjects_bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='卷子题库';

-- ----------------------------
-- Records of paper_subjects_bank
-- ----------------------------
INSERT INTO `paper_subjects_bank` VALUES ('1', '11', '4', '语文3', '9', '6', '5', '7', '4', '2020-05-15 16:22:31', '2020-05-15 16:22:31', '57', null, null);

-- ----------------------------
-- Table structure for practice
-- ----------------------------
DROP TABLE IF EXISTS `practice`;
CREATE TABLE `practice` (
  `practice_id` int(11) NOT NULL AUTO_INCREMENT,
  `practice_name` varchar(256) DEFAULT NULL COMMENT '练习名字',
  `practice_status` varchar(4) DEFAULT '1' COMMENT '状态：1启用2禁用',
  `practice_subjects_bank_ids` varchar(2048) DEFAULT NULL COMMENT '题库id',
  `practice_subjects_times` int(11) DEFAULT '0' COMMENT '次数',
  `practice_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `practice_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `practice_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `practice_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `practice_is_delete` int(11) DEFAULT '0' COMMENT '是否删除：0否1是',
  `practice_publish_status` int(2) DEFAULT NULL COMMENT '发布状态：1已创建 2已发布',
  PRIMARY KEY (`practice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='练习库';

-- ----------------------------
-- Records of practice
-- ----------------------------
INSERT INTO `practice` VALUES ('1', '111', '1', '222', '222', '2020-05-16 10:10:45', '2020-05-16 10:10:45', '1', null, '0', null);

-- ----------------------------
-- Table structure for study_plan
-- ----------------------------
DROP TABLE IF EXISTS `study_plan`;
CREATE TABLE `study_plan` (
  `study_plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `study_plan_name` varchar(255) DEFAULT NULL COMMENT '学习计划名称',
  `study_plan_finish_time` datetime DEFAULT NULL COMMENT '学习计划完成时间',
  `study_plan_desc` varchar(255) DEFAULT NULL COMMENT '学习计划描述',
  `study_plan_img` varchar(255) DEFAULT NULL COMMENT '学习计划封面图片',
  `study_plan_credit` int(255) DEFAULT NULL COMMENT '学习计划学分',
  `study_plan_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `study_plan_update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `study_plan_create_by` int(255) DEFAULT NULL COMMENT '创建人',
  `study_plan_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `study_plan_is_delete` int(255) DEFAULT '0' COMMENT '是否删除：0否1是',
  `study_plan_achieve_hours` int(1) DEFAULT NULL COMMENT '达到课程学时：学员达到学习时长 0 否 1 是',
  `study_plan_adopt_hours` int(1) DEFAULT NULL COMMENT '通过课程考试：学员达到学习时长，并通过课程考试 0 否 1 是',
  `study_plan_relearn` int(1) DEFAULT NULL COMMENT '课程学习进度从零开始计算，已学过课程需在本计划中重新学习 0 否 1 是',
  `study_plan_remind_cron` varchar(255) DEFAULT NULL COMMENT '消息提醒cron表达式',
  `study_plan_chapter` varchar(255) DEFAULT NULL COMMENT '章节',
  `study_plan_status` int(1) DEFAULT NULL COMMENT '1 待发布 2进行中 3 已完成',
  `study_plan_push_time` datetime DEFAULT NULL COMMENT '发布时间',
  `study_plan_type` int(255) DEFAULT NULL COMMENT '类型 0 普通学习计划 1自动分发计划',
  PRIMARY KEY (`study_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习计划';

-- ----------------------------
-- Records of study_plan
-- ----------------------------

-- ----------------------------
-- Table structure for study_plan_chapter
-- ----------------------------
DROP TABLE IF EXISTS `study_plan_chapter`;
CREATE TABLE `study_plan_chapter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `study_plan_chapter_name` varchar(255) DEFAULT NULL,
  `study_plan_id` int(11) DEFAULT NULL COMMENT '学习计划id',
  `study_plan_chapter_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `study_plan_chapter_update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `study_plan_chapter_create_by` int(255) DEFAULT NULL COMMENT '创建人',
  `study_plan_chapter_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `study_plan_chapter_is_delete` int(255) NOT NULL DEFAULT '0' COMMENT '是否删除：0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习计划章节';

-- ----------------------------
-- Records of study_plan_chapter
-- ----------------------------

-- ----------------------------
-- Table structure for study_plan_course
-- ----------------------------
DROP TABLE IF EXISTS `study_plan_course`;
CREATE TABLE `study_plan_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `study_plan_course_id` int(255) DEFAULT NULL COMMENT '课程id',
  `study_plan_id` int(11) DEFAULT NULL COMMENT '学习计划id',
  `study_plan_course_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `study_plan_course_update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `study_plan_course_create_by` int(11) NOT NULL COMMENT '创建人',
  `study_plan_course_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `study_plan_course_is_delete` int(1) DEFAULT '0' COMMENT '是否删除：0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习计划--课程';

-- ----------------------------
-- Records of study_plan_course
-- ----------------------------

-- ----------------------------
-- Table structure for study_plan_exam
-- ----------------------------
DROP TABLE IF EXISTS `study_plan_exam`;
CREATE TABLE `study_plan_exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `study_plan_exam_id` int(11) DEFAULT NULL COMMENT '考试id',
  `study_plan_id` int(11) NOT NULL COMMENT '学习计划id',
  `study_plan_exam_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `study_plan_exam_update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `study_plan_exam_create_by` int(255) DEFAULT NULL COMMENT '创建人',
  `study_plan_exam_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `study_plan_exam_is_delete` int(1) DEFAULT '0' COMMENT '是否删除：0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习计划--考试';

-- ----------------------------
-- Records of study_plan_exam
-- ----------------------------

-- ----------------------------
-- Table structure for study_plan_user
-- ----------------------------
DROP TABLE IF EXISTS `study_plan_user`;
CREATE TABLE `study_plan_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `study_plan_user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `study_plan_id` int(11) DEFAULT NULL COMMENT '学习计划id',
  `study_plan_user_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `study_plan_user_update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `study_plan_user_create_by` int(255) DEFAULT NULL COMMENT '创建人',
  `study_plan_user_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `study_plan_user_is_delete` int(1) DEFAULT '0' COMMENT '是否删除：0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习计划--用户';

-- ----------------------------
-- Records of study_plan_user
-- ----------------------------

-- ----------------------------
-- Table structure for subjects
-- ----------------------------
DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `subjects_id` int(11) NOT NULL AUTO_INCREMENT,
  `subjects_bank_id` int(11) DEFAULT NULL COMMENT '题库id',
  `subjects_name` varchar(1024) DEFAULT NULL COMMENT '题目名称',
  `subjects_name_img_url` varchar(1024) DEFAULT NULL COMMENT '题干图片',
  `subjects_type` varchar(4) DEFAULT NULL COMMENT '题型:1单选2多选3判断4填空5问答',
  `subjects_sure_answer` varchar(1024) DEFAULT NULL COMMENT '答案（判断题时：1正确0错误）',
  `subjects_analysis` varchar(1024) DEFAULT NULL COMMENT '题干解析',
  `subjects_analysis_img_url` varchar(1024) DEFAULT NULL COMMENT '题干解析图片',
  `subjects_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `subjects_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `subjects_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `subjects_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `subjects_is_delete` int(11) DEFAULT '0' COMMENT '是否删除：0否1是',
  PRIMARY KEY (`subjects_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='题目';

-- ----------------------------
-- Records of subjects
-- ----------------------------
INSERT INTO `subjects` VALUES ('1', '4', '1+1=?', null, '1', '', '此题考查个人智商下限', null, '2020-05-13 08:23:01', '2020-05-13 08:23:01', '5', null, '0');
INSERT INTO `subjects` VALUES ('2', '4', '1+1=?', null, '1', '', '此题考查个人智商下限', null, '2020-05-13 08:33:40', '2020-05-13 08:33:40', '5', null, '0');
INSERT INTO `subjects` VALUES ('3', '4', '10+1=?', 'attachment/play/download/filecode/3e0a9421bb5f41458919a7dee16bbc49', '1', '', '此题考查个人智商下限', 'attachment/play/download/filecode/4a8713108f154f328d7abe2bb9f1792c', '2020-05-13 08:47:07', '2020-05-13 17:32:37', '5', null, '0');

-- ----------------------------
-- Table structure for subjects_answer
-- ----------------------------
DROP TABLE IF EXISTS `subjects_answer`;
CREATE TABLE `subjects_answer` (
  `subjects_answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `subjects_id` int(11) DEFAULT NULL COMMENT '题目id',
  `subjects_answer_code` varchar(4) DEFAULT NULL COMMENT '编号',
  `subjects_answer_sure` varchar(4) DEFAULT NULL COMMENT '是否正确：1正确0错误',
  `subjects_answer_name` varchar(1024) DEFAULT NULL COMMENT '答案',
  `subjects_answer_name_img_url` varchar(1024) DEFAULT NULL COMMENT '答案图片',
  `subjects_answer_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `subjects_answer_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `subjects_answer_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `subjects_answer_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`subjects_answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='答案';

-- ----------------------------
-- Records of subjects_answer
-- ----------------------------
INSERT INTO `subjects_answer` VALUES ('1', '2', 'A', '1', '2', null, '2020-05-13 08:33:40', '2020-05-13 08:33:40', null, null);
INSERT INTO `subjects_answer` VALUES ('2', '2', 'B', '0', '3', null, '2020-05-13 08:33:40', '2020-05-13 08:33:40', null, null);
INSERT INTO `subjects_answer` VALUES ('3', '2', 'C', '0', '1', null, '2020-05-13 08:33:40', '2020-05-13 08:33:40', null, null);
INSERT INTO `subjects_answer` VALUES ('4', '2', 'D', '0', '0', null, '2020-05-13 08:33:40', '2020-05-13 08:33:40', null, null);
INSERT INTO `subjects_answer` VALUES ('5', '3', 'A', '0', '2', 'attachment/play/download/filecode/eeb0686d7d8f4af1bcaefaf50d6076b5', '2020-05-13 08:47:07', '2020-05-13 08:47:07', null, null);
INSERT INTO `subjects_answer` VALUES ('6', '3', 'B', '0', '3', 'attachment/play/download/filecode/4b2b7e7a737346c0aeba064abac53749', '2020-05-13 08:47:07', '2020-05-13 08:47:07', null, null);
INSERT INTO `subjects_answer` VALUES ('7', '3', 'C', '1', '11', null, '2020-05-13 08:47:07', '2020-05-13 08:47:07', null, null);
INSERT INTO `subjects_answer` VALUES ('8', '3', 'D', '0', '0', null, '2020-05-13 08:47:07', '2020-05-13 08:47:07', null, null);
INSERT INTO `subjects_answer` VALUES ('9', '1', 'A', '1', '2', null, '2020-05-13 08:33:40', '2020-05-13 08:33:40', null, null);
INSERT INTO `subjects_answer` VALUES ('10', '1', 'B', '0', '3', null, '2020-05-13 08:33:40', '2020-05-13 08:33:40', null, null);
INSERT INTO `subjects_answer` VALUES ('11', '1', 'C', '0', '1', null, '2020-05-13 08:33:40', '2020-05-13 08:33:40', null, null);
INSERT INTO `subjects_answer` VALUES ('12', '1', 'D', '0', '0', null, '2020-05-13 08:33:40', '2020-05-13 08:33:40', null, null);

-- ----------------------------
-- Table structure for subjects_bank
-- ----------------------------
DROP TABLE IF EXISTS `subjects_bank`;
CREATE TABLE `subjects_bank` (
  `subjects_bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `subjects_bank_type_id` int(11) DEFAULT NULL COMMENT '题库分类id',
  `subjects_bank_name` varchar(256) DEFAULT NULL COMMENT '题库名称',
  `subjects_bank_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `subjects_bank_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `subjects_bank_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `subjects_bank_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `subjects_bank_is_delete` int(11) DEFAULT '0' COMMENT '是否删除：0否1是',
  PRIMARY KEY (`subjects_bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='题库';

-- ----------------------------
-- Records of subjects_bank
-- ----------------------------
INSERT INTO `subjects_bank` VALUES ('1', '3', '数学2', '2020-05-13 02:50:18', '2020-05-13 10:53:13', '5', '57', '0');
INSERT INTO `subjects_bank` VALUES ('2', '2', '语文1', '2020-05-13 02:53:16', '2020-05-13 02:53:16', '5', null, '0');
INSERT INTO `subjects_bank` VALUES ('3', '2', '语文2', '2020-05-13 02:53:17', '2020-05-13 02:53:17', '5', null, '0');
INSERT INTO `subjects_bank` VALUES ('4', '2', '语文3', '2020-05-13 02:53:17', '2020-05-13 02:53:17', '5', null, '0');
INSERT INTO `subjects_bank` VALUES ('5', '2', '语文4', '2020-05-13 02:54:44', '2020-05-13 02:54:44', '5', null, '0');

-- ----------------------------
-- Table structure for subjects_bank_type
-- ----------------------------
DROP TABLE IF EXISTS `subjects_bank_type`;
CREATE TABLE `subjects_bank_type` (
  `subjects_bank_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `subjects_bank_type_name` varchar(128) DEFAULT NULL COMMENT '题库分类名称',
  `subjects_bank_type_parent_id` int(11) DEFAULT NULL COMMENT '父节点',
  `subjects_bank_type_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `subjects_bank_type_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `subjects_bank_type_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `subjects_bank_type_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `subjects_bank_type_is_delete` int(11) DEFAULT '0' COMMENT '是否删除：0否1是',
  PRIMARY KEY (`subjects_bank_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='题库分类';

-- ----------------------------
-- Records of subjects_bank_type
-- ----------------------------
INSERT INTO `subjects_bank_type` VALUES ('1', '分类1', null, '2020-05-11 10:58:02', '2020-05-11 10:58:02', null, null, '0');
INSERT INTO `subjects_bank_type` VALUES ('2', '分类2', null, '2020-05-11 10:58:02', '2020-05-11 10:58:02', null, null, '0');
INSERT INTO `subjects_bank_type` VALUES ('3', '分类3', null, '2020-05-11 12:34:32', '2020-05-11 12:34:32', null, null, '0');
INSERT INTO `subjects_bank_type` VALUES ('4', '分类4', null, '2020-05-11 12:36:16', '2020-05-11 12:36:16', null, null, '0');
INSERT INTO `subjects_bank_type` VALUES ('5', '分类5', null, '2020-05-11 12:39:36', '2020-05-11 12:39:36', null, null, '0');
INSERT INTO `subjects_bank_type` VALUES ('6', '分类6', null, '2020-05-11 12:41:41', '2020-05-11 12:41:41', null, null, '0');
INSERT INTO `subjects_bank_type` VALUES ('7', '题库分类名称1', '2', '2020-05-12 07:52:45', '2020-05-12 07:52:45', null, null, '0');
INSERT INTO `subjects_bank_type` VALUES ('8', '题库分类名称2', '2', '2020-05-12 09:21:02', '2020-05-12 09:21:02', null, null, '0');
INSERT INTO `subjects_bank_type` VALUES ('9', '题库分类名称9', '3', '2020-05-12 09:22:54', '2020-05-12 09:22:54', null, null, '0');
INSERT INTO `subjects_bank_type` VALUES ('10', '题库分类名称10', '3', '2020-05-12 09:38:42', '2020-05-12 09:38:42', null, null, '1');
INSERT INTO `subjects_bank_type` VALUES ('11', '题库分类名称10', '3', '2020-05-13 01:48:48', '2020-05-13 01:48:48', null, null, '0');
INSERT INTO `subjects_bank_type` VALUES ('12', '123', null, '2020-05-15 15:10:35', '2020-05-15 15:10:35', null, null, '0');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dept_flag` int(2) DEFAULT NULL COMMENT '部门tag  0 普通部门  1 分公司 2 案归组',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  `parent_id` int(11) DEFAULT NULL,
  `longitude` decimal(11,2) DEFAULT NULL COMMENT '经度',
  `latitude` decimal(11,2) DEFAULT NULL COMMENT '纬度',
  `city` varchar(255) DEFAULT NULL COMMENT '地区',
  `city_no` varchar(50) DEFAULT NULL COMMENT '城市编码',
  `collection_region` varchar(255) DEFAULT NULL COMMENT '催收区域',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='部门-部门管理基础信息表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '山东农信', '2', '2018-01-23 03:00:23', null, '2019-06-09 17:05:49', '0', '79', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('4', '高新农信', null, '2018-01-23 03:00:52', null, '2018-01-23 20:41:11', '0', '3', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('5', '院校农信', null, '2018-01-23 03:00:57', null, '2018-01-23 20:41:22', '0', '4', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('6', '潍坊学院农信', '115', '2018-01-23 03:01:06', null, '2018-03-08 00:22:04', '0', '5', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('7', '山东沙县', null, '2018-01-23 03:01:57', null, '2018-01-23 20:42:15', '0', '2', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('8', '潍坊沙县12', null, '2018-01-23 03:02:03', null, '2019-06-04 22:07:23', '0', '7', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('9', '高新沙县', null, '2018-01-23 03:02:14', null, '2018-03-08 00:28:14', '0', '8', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('11', '海湾市场小学', '4', '2019-03-02 16:32:31', null, null, '0', '10', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('18', '一百一百', '4', '2019-03-28 22:40:37', null, '2019-04-03 21:06:20', '0', '2', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('19', '部门名称长度测试', '4', '2019-03-29 19:56:43', null, '2019-05-09 21:50:55', '0', '1', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('20', '资阳农信', null, '2019-03-29 19:59:26', null, null, '0', '19', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('21', '乐山农信', null, '2019-03-29 19:59:52', null, null, '0', '19', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('24', '乐山农信', null, '2019-03-29 20:00:33', null, '2019-05-14 20:27:59', '0', '19', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('25', 'ling', null, '2019-04-09 15:24:13', null, null, '0', '10', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('27', '乐至县农信', null, '2019-05-15 22:34:15', null, null, '0', '20', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('28', '广州分公司', '1', '2019-06-04 21:58:12', '1', '2020-01-05 00:45:52', '0', '79', '102.20', '24.34', '北京市', '110000', '广州');
INSERT INTO `sys_dept` VALUES ('29', '办公室', null, '2019-06-04 21:58:33', null, null, '0', '28', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('30', '数据部', '4', '2019-06-04 21:58:50', null, '2019-06-05 20:48:22', '0', '29', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('31', '前手事业部', null, '2019-06-04 22:02:57', null, null, '0', '28', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('32', '广发一手', '3', '2019-06-04 22:03:14', null, '2019-06-20 20:06:05', '0', '31', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('33', '广发一手(佛山)', null, '2019-06-04 22:03:36', '2', '2019-06-20 20:12:10', '0', '32', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('34', '事业四部', '4', '2019-06-04 22:03:57', null, '2019-06-05 22:13:44', '0', '28', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('35', '广发M1', null, '2019-06-04 22:04:22', '2', '2019-07-06 15:02:13', '0', '34', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('36', '事业三部', '3', '2019-06-04 22:04:47', null, '2019-06-05 22:13:42', '0', '28', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('37', '提前批', null, '2019-06-04 22:04:56', null, null, '0', '36', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('39', '234打法', '3', '2019-06-04 22:07:33', null, null, '0', '2', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('40', '广发专项一手', '3', '2019-06-04 22:07:50', null, '2019-06-20 20:06:05', '0', '31', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('41', '324打法', '5', '2019-06-04 22:07:53', null, null, '0', '19', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('42', '农商三四手', null, '2019-06-04 22:08:10', null, null, '0', '36', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('43', '事业一部', '1', '2019-06-04 22:08:32', '1', '2019-12-01 21:39:32', '0', '28', null, null, '广州市', '440100', '广州');
INSERT INTO `sys_dept` VALUES ('45', '广发二手', '2', '2019-06-04 22:08:51', null, '2019-06-05 22:26:19', '0', '43', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('46', '广发包干区二手', '2', '2019-06-04 22:09:03', '2', '2019-06-20 20:11:54', '0', '45', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('47', '事业二部', '2', '2019-06-04 22:09:32', null, '2019-06-05 22:13:33', '0', '28', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('48', '广州分行二手', null, '2019-06-04 22:09:46', null, null, '0', '47', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('49', '广发一手(东莞)', null, '2019-06-04 22:11:06', '2', '2019-06-20 20:12:14', '0', '32', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('50', '广发三手', '3', '2019-06-04 22:13:17', null, '2019-06-05 22:26:10', '0', '43', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('51', '广发一区三手(佛山)', '2', '2019-06-04 22:13:46', '2', '2019-07-17 23:37:40', '0', '50', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('52', '浦发', null, '2019-06-04 22:14:21', '2', '2019-07-06 16:49:19', '0', '34', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('53', '孵化部', null, '2019-06-04 22:14:32', null, null, '0', '28', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('54', '交行', null, '2019-06-04 22:14:41', null, null, '0', '53', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('55', '广发零本金五手', null, '2019-06-04 22:14:51', null, null, '0', '47', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('56', '广州分行一手', null, '2019-06-04 22:15:04', null, null, '0', '47', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('57', '广发一区三手(东莞)', '1', '2019-06-04 22:15:44', '2', '2019-07-17 23:37:33', '0', '50', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('58', '广发一手', '2', '2019-06-04 22:15:56', null, '2019-06-20 20:06:07', '0', '53', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('59', '广州分行三手', null, '2019-06-04 22:17:24', null, null, '0', '47', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('60', '广发一区二手', '1', '2019-06-04 22:18:11', '2', '2019-06-20 20:11:50', '0', '45', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('61', '行政部', '2', '2019-06-04 22:18:21', null, '2019-06-05 20:48:15', '0', '29', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('62', '新员工未分组', null, '2019-06-04 22:18:31', null, null, '0', '28', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('63', '广发包干区一手', null, '2019-06-04 22:19:01', '2', '2019-06-20 20:12:17', '0', '32', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('64', '广发一区三手(珠海)', '3', '2019-06-04 22:19:31', '2', '2019-07-17 23:37:45', '0', '50', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('65', '农行前催', null, '2019-06-04 22:19:46', null, null, '0', '34', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('66', '广发包干区三手', '4', '2019-06-04 22:21:10', '2', '2019-07-17 23:37:51', '0', '50', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('67', '农商一二手', null, '2019-06-04 22:22:14', null, null, '0', '36', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('68', '人事部', '3', '2019-06-04 22:23:23', null, '2019-06-05 20:48:19', '0', '29', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('69', '广发零本金三手', null, '2019-06-04 22:24:06', null, null, '0', '47', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('70', '234324fas嘎斯', '45', '2019-06-04 22:24:23', null, null, '0', '19', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('71', '而尴尬事', '32', '2019-06-04 22:59:08', null, '2019-06-18 20:55:33', '0', '19', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('72', '而尴尬事', '32', '2019-06-04 22:59:12', null, null, '0', '19', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('73', '3234d', '1', '2019-06-04 22:59:51', null, null, '0', '20', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('74', '财务部', '1', '2019-06-05 20:41:24', null, '2019-06-05 21:16:48', '0', '29', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('75', '广州银行', null, '2019-06-05 20:42:03', null, '2019-06-20 20:06:08', '0', '53', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('76', '广发五手', null, '2019-06-05 20:43:29', null, null, '0', '47', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('77', '广发一手', '1', '2019-06-05 20:46:39', null, '2019-06-05 22:25:39', '0', '43', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('78', '广发一手(东莞)', '1', '2019-06-05 20:47:28', '2', '2019-06-20 20:11:57', '0', '77', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('79', '总公司', '0', '2019-06-09 17:05:17', null, null, '0', '0', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('80', '成都公司', '1', '2019-06-09 17:05:34', '1', '2019-12-01 21:37:02', '0', '79', null, null, '成都市', '510100', '成都');
INSERT INTO `sys_dept` VALUES ('81', '事业五部', '5', '2019-06-11 23:26:25', null, null, '0', '28', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('82', '事业一部', '1', '2019-06-18 21:14:43', '0', '2019-06-25 00:38:33', '0', '79', '12.00', '11.00', '北京市', null, null);
INSERT INTO `sys_dept` VALUES ('83', '11211', '22', '2019-08-02 11:06:46', '1', '2019-08-15 15:40:14', '0', '82', null, null, '北京市', '110000', null);
INSERT INTO `sys_dept` VALUES ('84', '成都分公司', '12', '2019-08-02 22:23:47', '1', '2020-04-01 23:34:37', '0', '79', null, null, '成都市', '510100', '成都');
INSERT INTO `sys_dept` VALUES ('86', '南充分公司', '6', '2019-08-10 11:22:43', '1', '2020-04-01 23:40:22', '0', '79', null, null, '南充市', '511300', '南充');
INSERT INTO `sys_dept` VALUES ('87', '南充分公司一组', '1', '2019-08-10 11:23:17', '2', null, '0', '86', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('91', '广发组', '111', '2019-08-15 13:00:17', '2', null, '0', '84', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('95', '浙商组', null, '2019-09-12 19:52:20', '2', null, '0', '86', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('100', '成都一组', '1', '2019-12-01 21:32:43', '2', null, '0', '80', null, null, null, null, null);
INSERT INTO `sys_dept` VALUES ('101', '上海分公司', '7', '2020-03-26 14:20:04', '1', '2020-03-27 19:44:03', '0', '79', '12.30', '77.60', '石家庄市', '130100', '上海');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  `name` varchar(32) NOT NULL COMMENT '菜单名称',
  `permission` varchar(32) DEFAULT NULL COMMENT '菜单权限标识',
  `path` varchar(128) DEFAULT NULL COMMENT '前端URL',
  `url` varchar(128) DEFAULT NULL COMMENT '请求链接',
  `method` varchar(32) DEFAULT NULL COMMENT '请求方法',
  `parent_id` int(11) DEFAULT NULL COMMENT '父菜单ID',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  `component` varchar(64) DEFAULT NULL COMMENT 'VUE页面',
  `sort` int(11) DEFAULT '1' COMMENT '排序值',
  `type` char(1) DEFAULT NULL COMMENT '菜单类型 （0菜单 1按钮）',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '0--正常 1--删除',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', null, '/admin', null, null, '-1', 'icon-xitongguanli', 'Layout', '300', '0', '2017-11-07 20:56:00', '2018-05-14 21:53:22', '0');
INSERT INTO `sys_menu` VALUES ('2', '用户管理', null, 'user', '', null, '1', 'icon-yonghuguanli', 'views/admin/user/index', '1', '0', '2017-11-02 22:24:37', '2018-05-14 22:11:35', '0');
INSERT INTO `sys_menu` VALUES ('3', '菜单管理', null, 'menu', '', null, '1', 'icon-xitongguanli', 'views/admin/menu/index', '2', '0', '2017-11-07 20:56:00', '2019-03-09 07:16:05', '0');
INSERT INTO `sys_menu` VALUES ('4', '角色管理', null, 'role', null, null, '1', 'icon-jiaoseguanli', 'views/admin/role/index', '4', '0', '2017-11-08 10:13:37', '2018-05-14 22:11:19', '0');
INSERT INTO `sys_menu` VALUES ('5', '日志管理', null, 'log', null, null, '1', 'icon-rizhiguanli', 'views/admin/log/index', '5', '0', '2017-11-20 14:06:22', '2018-05-14 22:11:18', '0');
INSERT INTO `sys_menu` VALUES ('6', '字典管理', null, 'dict', null, null, '1', 'icon-zygl', 'views/admin/dict/index', '6', '0', '2017-11-29 11:30:52', '2018-05-14 22:12:48', '0');
INSERT INTO `sys_menu` VALUES ('7', '部门管理', null, 'dept', null, null, '1', 'icon-iconbmgl', 'views/admin/dept/index', '7', '0', '2018-01-20 13:17:19', '2018-05-14 22:11:16', '0');
INSERT INTO `sys_menu` VALUES ('8', '系统监控', null, '', null, null, '-1', 'icon-quanqudaofuwujiankong', null, '301', '0', '2018-01-22 12:30:41', '2018-05-14 20:41:16', '0');
INSERT INTO `sys_menu` VALUES ('9', '服务监控', null, 'http://139.224.200.249:5001', null, null, '8', 'icon-bofangqi-suoping', null, '9', '0', '2018-01-23 10:53:33', '2018-04-21 03:51:56', '0');
INSERT INTO `sys_menu` VALUES ('10', '数据管理', '', '/datamanage', '', '', '-1', 'icon-iconbmgl', 'Layout', '12', '0', '2019-02-20 15:51:29', '2019-03-09 05:32:44', '1');
INSERT INTO `sys_menu` VALUES ('11', 'pinpoint监控', null, 'https://pinpoint.pig4cloud.com', null, null, '8', 'icon-xiazaihuancun', null, '10', '0', '2018-01-25 11:08:52', '2018-04-22 07:02:38', '0');
INSERT INTO `sys_menu` VALUES ('12', '缓存状态', null, 'http://139.224.200.249:8585', null, null, '8', 'icon-ecs-status', null, '12', '0', '2018-01-23 10:56:11', '2018-04-21 03:51:47', '0');
INSERT INTO `sys_menu` VALUES ('13', 'ELK状态', null, 'http://139.224.200.249:5601', null, null, '8', 'icon-ecs-status', null, '13', '0', '2018-01-23 10:55:47', '2018-04-21 03:51:40', '0');
INSERT INTO `sys_menu` VALUES ('14', '接口文档', null, 'http://114.67.201.1:8991/swagger-ui.html', '/swagger-ui.html', null, '8', 'icon-wendangdocument72', null, '14', '0', '2018-01-23 10:56:43', '2019-02-17 14:48:53', '0');
INSERT INTO `sys_menu` VALUES ('15', '任务监控', null, 'http://139.224.200.249:8899', null, null, '8', 'icon-biaoge', null, '15', '0', '2018-01-23 10:55:18', '2018-04-21 03:51:34', '0');
INSERT INTO `sys_menu` VALUES ('19', '减免管理', null, '/reduction', null, null, '-1', 'icon-iconbmgl', 'Layout', '107', null, '2019-03-09 05:27:17', '2019-03-09 05:54:20', '0');
INSERT INTO `sys_menu` VALUES ('20', '外访管理', null, '/visit', null, null, '-1', 'icon-yonghufangwenjilu', 'Layout', '103', '0', '2019-03-09 05:40:54', '2019-03-09 05:52:41', '0');
INSERT INTO `sys_menu` VALUES ('21', '用户查看', '', null, '/admin/user/**', 'GET', '2', null, null, null, '1', '2017-11-07 20:58:05', '2018-02-04 14:28:49', '0');
INSERT INTO `sys_menu` VALUES ('22', '用户新增', 'sys_user_add', null, '/admin/user/*', 'POST', '2', null, null, null, '1', '2017-11-08 09:52:09', '2017-12-04 16:31:10', '0');
INSERT INTO `sys_menu` VALUES ('23', '用户修改', 'sys_user_upd', null, '/admin/user/**', 'PUT', '2', null, null, null, '1', '2017-11-08 09:52:48', '2018-01-17 17:40:01', '0');
INSERT INTO `sys_menu` VALUES ('24', '用户删除', 'sys_user_del', null, '/admin/user/*', 'DELETE', '2', null, null, null, '1', '2017-11-08 09:54:01', '2017-12-04 16:31:18', '0');
INSERT INTO `sys_menu` VALUES ('25', '获取所在部门下用户角色', 'user_role_all', null, '/admin/user/userDeptRole', 'GET', '2', null, null, '1', '1', '2019-06-27 22:13:49', '2019-06-27 23:00:47', '0');
INSERT INTO `sys_menu` VALUES ('31', '菜单查看', null, null, '/admin/menu/**', 'GET', '3', null, null, null, '1', '2017-11-08 09:57:56', '2017-11-14 17:29:17', '0');
INSERT INTO `sys_menu` VALUES ('32', '菜单新增', 'sys_menu_add', null, '/admin/menu/*', 'POST', '3', null, null, null, '1', '2017-11-08 10:15:53', '2018-01-20 14:37:50', '0');
INSERT INTO `sys_menu` VALUES ('33', '菜单修改', 'sys_menu_edit', null, '/admin/menu/*', 'PUT', '3', null, null, null, '1', '2017-11-08 10:16:23', '2018-01-20 14:37:56', '0');
INSERT INTO `sys_menu` VALUES ('34', '菜单删除', 'sys_menu_del', null, '/admin/menu/*', 'DELETE', '3', null, null, null, '1', '2017-11-08 10:16:43', '2018-01-20 14:38:03', '0');
INSERT INTO `sys_menu` VALUES ('41', '角色查看', null, null, '/admin/role/**', 'GET', '4', null, null, null, '1', '2017-11-08 10:14:01', '2018-02-04 13:55:06', '0');
INSERT INTO `sys_menu` VALUES ('42', '角色新增', 'sys_role_add', null, '/admin/role/*', 'POST', '4', null, null, null, '1', '2017-11-08 10:14:18', '2018-04-20 07:21:38', '0');
INSERT INTO `sys_menu` VALUES ('43', '角色修改', 'sys_role_edit', null, '/admin/role/*', 'PUT', '4', null, null, null, '1', '2017-11-08 10:14:41', '2018-04-20 07:21:50', '0');
INSERT INTO `sys_menu` VALUES ('44', '角色删除', 'sys_role_del', null, '/admin/role/*', 'DELETE', '4', null, null, null, '1', '2017-11-08 10:14:59', '2018-04-20 07:22:00', '0');
INSERT INTO `sys_menu` VALUES ('45', '分配权限', 'sys_role_perm', null, '/admin/role/*', 'PUT', '4', null, null, null, '1', '2018-04-20 07:22:55', '2018-04-20 07:24:40', '0');
INSERT INTO `sys_menu` VALUES ('51', '日志查看', null, null, '/admin/log/**', 'GET', '5', null, null, null, '1', '2017-11-20 14:07:25', '2018-02-04 14:28:53', '0');
INSERT INTO `sys_menu` VALUES ('52', '日志删除', 'sys_log_del', null, '/admin/log/*', 'DELETE', '5', null, null, null, '1', '2017-11-20 20:37:37', '2017-11-28 17:36:52', '0');
INSERT INTO `sys_menu` VALUES ('61', '字典查看', null, null, '/admin/dict/**', 'GET', '6', null, null, null, '1', '2017-11-19 22:04:24', '2017-11-29 11:31:24', '0');
INSERT INTO `sys_menu` VALUES ('62', '字典删除', 'sys_dict_del', null, '/admin/dict/**', 'DELETE', '6', null, null, null, '1', '2017-11-29 11:30:11', '2018-01-07 15:40:51', '0');
INSERT INTO `sys_menu` VALUES ('63', '字典新增', 'sys_dict_add', null, '/admin/dict/**', 'POST', '6', null, null, null, '1', '2018-05-11 22:34:55', null, '0');
INSERT INTO `sys_menu` VALUES ('64', '字典修改', 'sys_dict_upd', null, '/admin/dict/**', 'PUT', '6', null, null, null, '1', '2018-05-11 22:36:03', null, '0');
INSERT INTO `sys_menu` VALUES ('71', '部门查看', '', null, '/admin/dept/**', 'GET', '7', null, '', null, '1', '2018-01-20 13:17:19', '2018-01-20 14:55:24', '0');
INSERT INTO `sys_menu` VALUES ('72', '部门新增', 'sys_dept_add', null, '/admin/dept/**', 'POST', '7', null, null, null, '1', '2018-01-20 14:56:16', '2018-01-20 21:17:57', '0');
INSERT INTO `sys_menu` VALUES ('73', '部门修改', 'sys_dept_edit', null, '/admin/dept/**', 'PUT', '7', null, null, null, '1', '2018-01-20 14:56:59', '2018-01-20 21:17:59', '0');
INSERT INTO `sys_menu` VALUES ('74', '部门删除', 'sys_dept_del', null, '/admin/dept/**', 'DELETE', '7', null, null, null, '1', '2018-01-20 14:57:28', '2018-01-20 21:18:05', '0');
INSERT INTO `sys_menu` VALUES ('78', '标签管理', null, '/tagsManagement', null, null, '-1', 'icon-yonghufangwenjilu', 'Layout', '22', '0', '2020-03-22 21:10:11', '2020-03-23 23:25:15', '0');
INSERT INTO `sys_menu` VALUES ('100', '客户端管理', '', 'client', '', '', '1', 'icon-bangzhushouji', 'views/admin/client/index', '9', '0', '2018-01-20 13:17:19', '2018-05-15 21:28:10', '0');
INSERT INTO `sys_menu` VALUES ('101', '数据管理', '', '/datamanage', '', '', '-1', 'icon-shujuguanli', 'Layout', '100', '0', '2019-02-20 15:51:29', '2019-02-20 15:54:20', '0');
INSERT INTO `sys_menu` VALUES ('102', '客户端添加', 'sys_client_upd', null, '/admin/client/**', 'PUT', '100', 'icon-iconbmgl', 'Layout', '12', '1', '2019-03-05 14:36:03', '2019-03-09 05:39:39', '0');
INSERT INTO `sys_menu` VALUES ('103', '客户端删除', 'sys_client_del', null, '/admin/client/**', 'DELETE', '100', null, null, null, '1', '2018-05-15 21:39:16', '2018-05-15 21:52:34', '0');
INSERT INTO `sys_menu` VALUES ('104', '客户端查看', null, null, '/admin/client/**', 'GET', '100', null, null, null, '1', '2018-05-15 21:39:57', '2018-05-15 21:52:40', '0');
INSERT INTO `sys_menu` VALUES ('105', '协催管理', null, '/assist-collection', null, null, '-1', 'icon-qiyexinxiguanli', 'Layout', '102', '0', '2019-03-05 14:36:03', '2019-03-09 06:00:01', '0');
INSERT INTO `sys_menu` VALUES ('109', '诉讼管理', null, '/lawsuit', null, null, '-1', 'icon-susong', 'Layout', '105', '0', '2019-03-09 05:24:28', '2019-03-09 05:56:45', '0');
INSERT INTO `sys_menu` VALUES ('110', '路由管理', null, 'route', null, null, '1', 'icon-luyou', 'views/admin/route/index', '8', '0', '2018-05-15 21:44:51', '2018-05-16 06:58:20', '0');
INSERT INTO `sys_menu` VALUES ('111', '路由查看', null, null, '/admin/route/**', 'GET', '110', null, null, null, '1', '2018-05-15 21:45:59', '2018-05-16 07:23:04', '0');
INSERT INTO `sys_menu` VALUES ('112', '路由新增', 'sys_route_add', null, '/admin/route/**', 'POST', '110', null, null, null, '1', '2018-05-15 21:52:22', '2018-05-15 21:53:46', '0');
INSERT INTO `sys_menu` VALUES ('113', '路由修改', 'sys_route_upd', null, '/admin/route/**', 'PUT', '110', null, null, null, '1', '2018-05-15 21:55:38', null, '0');
INSERT INTO `sys_menu` VALUES ('114', '路由删除', 'sys_route_del', null, '/admin/route/**', 'DELETE', '110', null, null, null, '1', '2018-05-15 21:56:45', null, '0');
INSERT INTO `sys_menu` VALUES ('121', '呼叫中心', null, '/call-manage', null, null, '-1', 'icon-icon-test', 'Layout', '101', '0', '2019-03-09 05:22:10', '2019-03-09 05:57:27', '0');
INSERT INTO `sys_menu` VALUES ('130', '统计分析', null, '/dashboard', null, 'GET', '-1', 'icon-07_tongjifenxi', 'Layout', '1', '0', '2019-03-09 07:10:53', '2019-03-09 07:11:42', '0');
INSERT INTO `sys_menu` VALUES ('140', '我的案件', null, '/MyCase', null, null, '-1', 'icon-anjianguanli1', 'Layout', '1', '0', '2019-05-21 12:31:59', '2019-05-24 14:15:20', '0');
INSERT INTO `sys_menu` VALUES ('144', '报备案件', null, 'reportedCase', null, 'GET', '140', 'icon-xiangmubaobei', 'views/myCase/reportedCase/Index', '5', '0', '2019-05-25 07:49:41', '2019-05-25 07:50:41', '0');
INSERT INTO `sys_menu` VALUES ('145', '预结清案件', null, 'preliminarySettlementCase', null, 'GET', '140', 'icon-jieqing', 'views/myCase/preliminarySettlementCase/Index', '6', '0', '2019-05-25 07:52:28', '2019-05-25 07:52:58', '0');
INSERT INTO `sys_menu` VALUES ('146', '已结清案件', null, 'closedCase', null, 'GET', '140', 'icon-icon-test', 'views/myCase/closedCase/Index', '10', '0', '2019-05-25 07:53:12', '2019-05-25 07:53:49', '0');
INSERT INTO `sys_menu` VALUES ('150', '部门案件', null, '/departmentCases', null, 'GET', '-1', 'icon-bumen', 'Layout', '3', '0', '2019-05-25 07:55:06', '2019-05-25 07:56:11', '0');
INSERT INTO `sys_menu` VALUES ('160', '还款管理', '', '/paymentManagement', null, 'GET', '-1', 'icon-rizhiguanli', 'Layout', '10', '0', '2019-06-08 20:54:43', '2019-06-08 20:55:52', '0');
INSERT INTO `sys_menu` VALUES ('170', '个案序列号', null, 'caseSerialNum', null, '', '-1', null, 'Layout', '1', '0', '2019-06-08 23:15:44', '2019-06-25 22:39:32', '1');
INSERT INTO `sys_menu` VALUES ('180', '案件管理', null, '/caseManagement', null, 'GET', '-1', 'icon-zygl', 'Layout', '50', '0', '2019-06-10 21:53:57', '2019-06-10 21:56:30', '0');
INSERT INTO `sys_menu` VALUES ('190', '催记管理', null, '/collectionManagement', null, 'GET', '-1', 'icon-shebei', 'Layout', '60', '0', '2019-07-01 21:13:09', '2019-07-01 21:13:49', '0');
INSERT INTO `sys_menu` VALUES ('191', '减免申请管理', 'DerateApplyManage', 'DerateApplyManage', null, 'GET', '19', null, 'src/views/DerateManage/ApplyManage/Index', '2', '0', '2019-03-24 04:01:43', '2019-03-24 04:02:54', '0');
INSERT INTO `sys_menu` VALUES ('192', '减免报备管理', 'DerateReportingManage', 'DerateReportingManage', null, 'GET', '19', null, 'src/views/DerateManage/ReportingManage/Index', '4', '0', '2019-03-24 04:02:47', '2019-03-24 04:08:10', '0');
INSERT INTO `sys_menu` VALUES ('195', '工单管理', null, '/workOrderManagement', null, 'GET', '-1', 'icon-shebei', 'Layout', '65', '0', '2019-09-11 22:37:24', null, '0');
INSERT INTO `sys_menu` VALUES ('200', '质检中心', null, '/quality-inspection', null, '', '-1', 'icon-anjianguanli', 'Layout', '102', '0', '2019-08-10 10:29:07', '2019-08-10 10:31:07', '0');
INSERT INTO `sys_menu` VALUES ('201', '外访申请管理', 'VisitApplyManage', 'ApplyManage', null, 'GET', '20', 'icon-qiyexinxiguanli', 'views/VisitManage/ApplyManage/index', '2', '0', '2019-03-24 03:59:55', '2019-03-24 04:08:21', '0');
INSERT INTO `sys_menu` VALUES ('202', '外访设备管理', 'VisitDeviceManage', 'VisitDeviceManage', null, 'GET', '20', 'icon-shebei', 'views/VisitManage/DeviceManage/Index', '3', '0', '2019-03-24 04:00:50', '2019-03-24 04:08:27', '0');
INSERT INTO `sys_menu` VALUES ('203', '外访批次管理', null, 'BatchManage', null, 'GET', '20', null, 'views/VisitManage/BatchManage/index', '3', '0', '2019-12-23 11:50:00', '2019-12-23 11:52:08', '0');
INSERT INTO `sys_menu` VALUES ('204', '我的外访申请', null, 'MyApplyManage', null, 'GET', '20', null, 'views/VisitManage/MyApplyManage/index', '4', '0', '2019-12-23 11:50:21', '2019-12-23 11:52:14', '0');
INSERT INTO `sys_menu` VALUES ('205', '车辆管理', null, 'VehicleManage', null, 'GET', '20', null, 'views/VisitManage/VehicleManage/index', '5', '0', '2019-12-30 15:12:51', '2019-12-30 15:13:08', '0');
INSERT INTO `sys_menu` VALUES ('210', '消息中心', null, null, null, null, '-1', 'icon-anjianguanli', null, '70', '0', '2019-08-13 16:59:49', '2019-08-13 17:00:06', '0');
INSERT INTO `sys_menu` VALUES ('220', '配置管理', null, '/configManage', null, 'GET', '-1', 'icon-xitongguanli', 'Layout', '90', '0', '2019-08-31 14:01:04', '2019-08-31 14:01:26', '0');
INSERT INTO `sys_menu` VALUES ('230', '数据工作台', null, '/dataWorkbench', null, 'GET', '-1', 'icon-quanqudaofuwujiankong', 'Layout', '51', '0', '2020-02-23 14:49:03', '2020-02-23 14:49:54', '0');
INSERT INTO `sys_menu` VALUES ('240', '佣金管理', null, '/commissionManagement', null, null, '-1', 'icon-shebei', 'Layout', '4', '0', '2020-03-10 20:57:55', '2020-03-10 20:58:22', '0');
INSERT INTO `sys_menu` VALUES ('241', '标签配置管理', null, 'tagsConfig', null, 'GET', '78', null, 'views/tags/tagsConfig/index', '1', '0', '2020-03-22 21:11:56', '2020-03-23 23:27:55', '0');
INSERT INTO `sys_menu` VALUES ('242', '标签类型管理', null, 'tagsType', null, null, '78', null, 'views/tags/tagsType/index', '1', '0', '2020-03-22 21:12:26', '2020-03-23 23:28:11', '0');
INSERT INTO `sys_menu` VALUES ('243', '标签管理', null, 'tagsList', null, null, '78', null, 'views/tags/tagsList/index', '1', '0', '2020-03-22 21:28:43', '2020-03-23 23:28:32', '0');
INSERT INTO `sys_menu` VALUES ('250', '标签管理', null, '/tagsManagement', null, 'GET', '-1', 'icon-xitongguanli', 'Layout', '91', '0', '2020-03-23 23:10:56', '2020-03-23 23:15:16', '1');
INSERT INTO `sys_menu` VALUES ('260', '工单配置', null, '/workOrderConfig', null, 'GET', '-1', 'icon-shebei', 'Layout', '310', '0', '2020-04-09 15:17:50', '2020-04-09 15:28:34', '0');
INSERT INTO `sys_menu` VALUES ('270', '工单后台', null, '/workOrderBack', null, 'GET', '-1', 'icon-shebei', 'Layout', '320', '0', '2020-04-10 17:48:13', '2020-04-10 17:48:22', '0');
INSERT INTO `sys_menu` VALUES ('280', '我的工单', null, '/myWorkOrder', null, 'GET', '-1', 'icon-shebei', 'Layout', '330', '0', '2020-04-10 17:53:33', '2020-04-10 17:53:44', '0');
INSERT INTO `sys_menu` VALUES ('290', '文件管理', null, '/fileManage', null, 'GET', '-1', 'icon-rizhiguanli', 'Layout', '1', '0', '2020-04-23 19:47:54', '2020-04-23 19:48:21', '0');
INSERT INTO `sys_menu` VALUES ('1001', '案件管理', '', null, '', '', '-1', 'icon-iconbmgl', null, '12', '0', '2019-02-20 15:51:29', '2019-03-04 14:35:56', '1');
INSERT INTO `sys_menu` VALUES ('1011', '案件导入', null, 'caseimport', '', 'GET', '101', 'icon-daoru', 'views/Datamanage/CaseImport', '1', '0', '2019-02-20 15:56:55', '2019-02-20 15:57:16', '0');
INSERT INTO `sys_menu` VALUES ('1012', '身份证导入', null, 'idcard-import', null, 'GET', '101', 'icon-icon-', 'views/Datamanage/IdcardImport', '3', '0', '2019-02-24 03:41:19', '2019-02-24 03:42:12', '0');
INSERT INTO `sys_menu` VALUES ('1013', '案件模板管理', null, 'data-template', null, 'GET', '101', 'icon-mobanguanli', 'views/Datamanage/DataTemplate', '2', '0', '2019-03-01 13:58:35', '2019-03-01 13:58:45', '0');
INSERT INTO `sys_menu` VALUES ('1014', '模板配置', null, 'template-configure', null, 'GET', '101', 'icon-jiankong', 'views/Datamanage/DataTemplateConfigure', '1', '0', '2019-03-01 16:37:12', '2019-03-04 15:32:20', '1');
INSERT INTO `sys_menu` VALUES ('1015', '案件管理', 'case-manage', 'case-manage', null, 'GET', '101', 'icon-anjianguanli', 'views/Datamanage/CaseManage', '5', '0', '2019-03-19 12:44:22', '2019-03-19 12:48:22', '0');
INSERT INTO `sys_menu` VALUES ('1016', '催记管理', 'collection-record-manage', 'CollectionRecordManage', null, 'GET', '101', 'icon-credentials_icon', 'views/Datamanage/CollectionRecordManage/Index', '7', '0', '2019-03-24 03:58:08', '2019-03-24 04:09:23', '0');
INSERT INTO `sys_menu` VALUES ('1017', '案件分配', null, 'caseDistribute', null, 'GET', '101', 'icon-fenpei', 'views/Datamanage/CaseDistribute/Index', '1', '0', '2019-03-24 08:30:34', '2019-03-24 09:36:34', '0');
INSERT INTO `sys_menu` VALUES ('1018', '案归组管理', 'CaseDepartmentManage', 'dept-manage', null, 'GET', '101', 'icon-shebei', 'views/Datamanage/CaseDepartmentManage/Index', '3', '0', '2019-04-14 14:14:36', '2019-04-14 14:14:55', '0');
INSERT INTO `sys_menu` VALUES ('1019', '结果查询', null, 'resultsQuery', null, 'GET', '101', 'icon-credentials_icon', 'views/Datamanage/resultsQuery/index', '9', '0', '2019-09-05 13:50:19', '2019-09-05 13:51:56', '0');
INSERT INTO `sys_menu` VALUES ('1020', '系统模板管理', null, 'systemTemplate', null, 'GET', '101', 'icon-qiyexinxiguanli', 'views/Datamanage/systemTemplate/index', '21', '0', '2019-09-07 16:21:51', null, '0');
INSERT INTO `sys_menu` VALUES ('1021', '个案序列号补全', null, 'complemented', null, null, '101', null, 'views/Datamanage/complemented', '10', '0', '2019-10-29 23:54:46', '2019-10-29 23:57:20', '0');
INSERT INTO `sys_menu` VALUES ('1022', '浦发派单流水查询', null, 'pufaDispatch', null, 'GET', '101', null, 'views/Datamanage/pufaDispatch/index', '22', '0', '2020-01-13 22:26:03', null, '0');
INSERT INTO `sys_menu` VALUES ('1023', '工单模板', 'workorder_template_manage', null, '/admin/caseWorkOrderSystemConfigInfo/list', 'GET', '1020', null, null, '20', '1', '2019-09-07 22:11:50', '2019-09-07 22:13:11', '0');
INSERT INTO `sys_menu` VALUES ('1024', '浦发退单查询', null, 'pufaChargeback', null, 'GET', '101', null, 'views/Datamanage/pufaChargeback/index', '24', '0', '2020-01-13 22:29:08', null, '0');
INSERT INTO `sys_menu` VALUES ('1025', '浦发标签查询', null, 'pufaTag', null, 'GET', '101', null, 'views/Datamanage/pufaTag/index', '25', '0', '2020-01-13 22:32:10', null, '0');
INSERT INTO `sys_menu` VALUES ('1051', '协催信息管理', 'assist-infomation-manage', 'InfomationManage', null, 'GET', '105', 'icon-biaoxinxiguanli', 'views/AssistCollectionManage/InfomationManage/Index', '2', '0', '2019-03-24 03:51:45', '2019-03-24 04:10:09', '0');
INSERT INTO `sys_menu` VALUES ('1052', '信函管理', 'assist-letter-manage', 'LetterManage', null, 'GET', '105', 'icon-xinhan', 'views/AssistCollectionManage/LetterManage/Index', '4', '0', '2019-03-24 03:53:20', '2019-03-24 04:10:18', '0');
INSERT INTO `sys_menu` VALUES ('1091', '诉讼案件管理', 'LawsuitCaseManage', 'LawsuitCaseManage', null, 'GET', '109', 'icon-anjianguanli', 'views/LawsuitManage/LawsuitCaseManage/Index', '4', '0', '2019-03-24 04:04:15', '2019-03-24 04:10:24', '0');
INSERT INTO `sys_menu` VALUES ('1092', '收费记录', 'LawsuitIncomeRecord', 'IncomeRecord', null, 'GET', '109', 'icon-money', 'views/LawsuitManage/IncomeRecord/Index', '1', '0', '2019-03-24 04:05:19', '2019-03-24 04:10:29', '0');
INSERT INTO `sys_menu` VALUES ('1210', '呼叫中心接口配置', 'call_center_api_config', null, null, 'GET', '-1', null, null, '1', '1', '2019-07-27 06:37:31', '2019-07-27 06:38:50', '1');
INSERT INTO `sys_menu` VALUES ('1211', '我的案件接口集合', 'my-case', '', null, 'GET', '140', 'icon-anjianguanli1', '', '2', '1', '2019-03-19 13:23:53', '2019-03-19 13:44:23', '0');
INSERT INTO `sys_menu` VALUES ('1212', '部门案件-接口集合', 'dept_case_list', '', '/admin/deptList', 'GET', '150', 'icon-bumen', '', '3', '1', '2019-03-19 13:29:54', '2019-04-14 03:24:34', '0');
INSERT INTO `sys_menu` VALUES ('1213', 'api配置', 'cell_center_api_config', null, null, 'GET', '121', null, null, '5', '1', '2019-07-27 06:39:44', '2019-07-27 06:40:01', '0');
INSERT INTO `sys_menu` VALUES ('1214', '座席配置', null, 'seatConfig', null, '', '121', null, 'views/CallManage/SeatConfig', '1', '0', '2019-08-08 20:08:37', '2019-08-08 20:09:19', '0');
INSERT INTO `sys_menu` VALUES ('1301', '系统分析', null, 'dash', null, 'GET', '130', 'icon-fenxi', 'views/dashboard/index', '1', '0', '2019-03-09 07:28:49', '2019-03-09 07:42:00', '0');
INSERT INTO `sys_menu` VALUES ('1302', '测试', null, null, null, 'GET', '130', null, null, '1', '0', '2019-05-24 14:56:45', '2019-05-24 14:57:37', '1');
INSERT INTO `sys_menu` VALUES ('1304', '区域分析', null, 'regionalAnalysis', null, 'GET', '130', 'icon-quyuditu', 'views/regionalAnalysis/index', '2', '0', '2019-06-22 20:50:23', '2019-06-22 20:51:16', '0');
INSERT INTO `sys_menu` VALUES ('1305', '今日通话情况统计', null, 'todayCalls', null, 'GET', '130', 'icon-fenxi', 'views/todayCalls/index', '3', '0', '2020-02-15 14:31:58', '2020-02-15 14:36:34', '0');
INSERT INTO `sys_menu` VALUES ('1306', '通话情况报表', null, 'callReport', null, 'GET', '130', 'icon-icon-test', 'views/dashboard/callReport/index', '4', '0', '2020-03-08 11:01:05', '2020-03-26 21:38:18', '0');
INSERT INTO `sys_menu` VALUES ('1401', '未还款案件', '', 'unDoneCase', '/a', 'GET', '140', 'icon-huankuan1', 'views/myCase/unDoneCase/Index', '1', '0', '2019-05-22 15:09:18', '2019-05-24 14:08:52', '0');
INSERT INTO `sys_menu` VALUES ('1402', '部分还款案件', '', 'partCase', null, 'GET', '140', 'icon-yihuankuanbufen', 'views/myCase/partCase/Index', '2', '0', '2019-05-22 15:10:31', '2019-05-24 14:13:55', '0');
INSERT INTO `sys_menu` VALUES ('1403', '减免案件', null, 'breaksCase', null, 'GET', '140', 'icon-c-jianmian', 'views/myCase/breaksCase/Index', '3', '0', '2019-05-25 07:44:53', '2019-05-25 07:48:40', '0');
INSERT INTO `sys_menu` VALUES ('1405', '获取菜单已读未读', 'mycase_get_read_status', null, '/admin/myCase/getMenuRead', 'GET', '140', null, null, '1', '1', '2019-06-08 14:57:01', null, '0');
INSERT INTO `sys_menu` VALUES ('1406', '修改阅读状态', 'mycase_update_read', null, '/admin/myCase/read/*', 'PUT', '140', null, null, '1', '1', '2019-06-08 17:46:01', null, '0');
INSERT INTO `sys_menu` VALUES ('1408', '个案详情', 'case-detail-info', null, '/admin/case/*', 'GET', '140', '', null, '7', '1', '2019-07-18 22:49:18', null, '0');
INSERT INTO `sys_menu` VALUES ('1409', '案件上报历史数据接口', null, null, '/admin/myCase/getReportList', 'GET', '140', null, null, '9', '1', '2019-08-18 14:02:33', null, '0');
INSERT INTO `sys_menu` VALUES ('1501', '未还款案件', 'dept_noRepayPage_page', 'unDoneCase', null, 'GET', '150', 'icon-huankuan1', 'views/departmentCases/unDoneCase/Index', '1', '0', '2019-05-25 07:57:23', '2019-06-02 07:17:14', '0');
INSERT INTO `sys_menu` VALUES ('1502', '部分还款案件', 'dept_partRepayPage_page', 'partCase', null, 'GET', '150', 'icon-yihuankuanbufen', 'views/departmentCases/partCase/Index', '2', '0', '2019-05-28 12:37:14', '2019-05-28 12:37:23', '0');
INSERT INTO `sys_menu` VALUES ('1503', '预结清案件', 'dept_preSettleCase_page', 'preliminarySettlementCase', null, 'GET', '150', 'icon-jieqing', 'views/departmentCases/preliminarySettlementCase/Index', '5', '0', '2019-05-28 12:37:14', '2019-05-28 12:37:23', '0');
INSERT INTO `sys_menu` VALUES ('1504', '已结清案件', 'dept_endCase_page', 'closedCase', null, 'GET', '150', 'icon-icon-test', 'views/departmentCases/closedCase/Index', '6', '0', '2019-05-28 12:37:14', '2019-05-28 12:37:23', '0');
INSERT INTO `sys_menu` VALUES ('1505', '报备案件', 'dept_reportCase_page', 'reportedCase', null, 'GET', '150', 'icon-xiangmubaobei', 'views/departmentCases/reportedCase/Index', '4', '0', '2019-05-28 12:37:14', '2019-05-28 12:37:23', '0');
INSERT INTO `sys_menu` VALUES ('1506', '减免案件', 'dept_cutDownCase_page', 'breaksCase', null, 'GET', '150', 'icon-c-jianmian', 'views/departmentCases/breaksCase/Index', '3', '0', '2019-05-28 12:37:14', '2019-05-28 12:37:23', '0');
INSERT INTO `sys_menu` VALUES ('1509', '留案案件', null, 'stayCase', null, 'GET', '150', 'icon-bumen', 'views/departmentCases/stayCase/index', '9', '0', '2020-03-09 14:42:59', '2020-03-26 21:40:11', '0');
INSERT INTO `sys_menu` VALUES ('1601', '承诺还款管理', null, 'promisePayment', null, 'GET', '160', 'icon-huankuan', 'views/paymentManagement/promisePayment/index', '1', '0', '2019-06-08 21:01:17', '2019-06-08 21:03:24', '0');
INSERT INTO `sys_menu` VALUES ('1602', '登帐还款管理', null, 'caseAccountingRepayList', null, 'GET', '160', 'icon-huankuan1', 'views/paymentManagement/caseAccountingRepayList/index', '2', '0', '2019-06-30 16:22:43', '2019-06-30 16:23:31', '0');
INSERT INTO `sys_menu` VALUES ('1603', '对账管理', null, 'caseAccReconciliationRepayList', null, 'GET', '160', 'icon-yihuankuanbufen', 'views/paymentManagement/caseAccReconciliationRepayList/index', '3', '0', '2019-06-30 16:21:47', '2019-06-30 16:22:12', '0');
INSERT INTO `sys_menu` VALUES ('1604', '实际绩效回款额', null, 'rebate', null, 'GET', '160', 'icon-icon-test', 'views/paymentManagement/rebate/index', '4', '0', '2019-07-06 22:10:04', '2019-07-06 22:10:39', '0');
INSERT INTO `sys_menu` VALUES ('1605', '对账模板管理', null, 'reconciliationTemplate', null, 'GET', '160', 'icon-yihuankuanbufen', 'views/paymentManagement/reconciliationTemplate/index', '5', '0', '2019-10-09 20:43:17', '2019-10-09 20:47:03', '0');
INSERT INTO `sys_menu` VALUES ('1606', '对账导入', null, 'reconciliationImport', null, 'GET', '160', 'icon-daoru', 'views/paymentManagement/reconciliationImport/index', '6', '0', '2019-10-23 22:48:10', '2019-10-23 22:50:24', '0');
INSERT INTO `sys_menu` VALUES ('1607', '广发还款信息查询', null, null, null, null, '1606', null, null, '7', '0', '2019-12-10 23:32:53', '2019-12-10 23:34:09', '1');
INSERT INTO `sys_menu` VALUES ('1608', '广发还款信息查询', null, 'CGBRepaymentInfo', null, 'GET', '160', 'icon-yihuankuanbufen', 'views/paymentManagement/CGBRepaymentInfo/index', '7', '0', '2019-12-10 23:35:20', '2019-12-10 23:38:25', '0');
INSERT INTO `sys_menu` VALUES ('1609', '首页对账还款统计', null, null, '/admin/caseReconciliationFullInfo/statics', 'GET', '160', null, null, '9', '1', '2019-12-29 10:47:28', null, '0');
INSERT INTO `sys_menu` VALUES ('1610', '浦发对账还款金额查询', null, 'SPDBRepaymentInfo', null, 'GET', '160', 'icon-yihuankuanbufen', 'views/paymentManagement/SPDBRepaymentInfo/index', '8', '0', '2020-01-10 12:48:42', '2020-01-10 12:48:59', '0');
INSERT INTO `sys_menu` VALUES ('1611', '浦发累计对账还款查询', null, 'SPDBCumulativeRepaymentInfo', null, 'GET', '160', 'icon-yihuankuanbufen', 'views/paymentManagement/SPDBCumulativeRepaymentInfo/index', '9', '0', '2020-01-10 12:52:10', '2020-01-10 12:54:13', '0');
INSERT INTO `sys_menu` VALUES ('1612', '对账还款组排名', null, 'groupSort', null, 'GET', '160', 'icon-yihuankuanbufen', 'views/paymentManagement/groupSort/index', '12', '0', '2020-02-15 16:58:03', '2020-02-15 21:36:29', '0');
INSERT INTO `sys_menu` VALUES ('1701', '个案序列号详情', null, 'caseSerialNumDetail', null, 'GET', '170', null, 'views/caseSerialNum/index', '1', '0', '2019-06-08 23:17:43', '2019-06-25 22:39:32', '1');
INSERT INTO `sys_menu` VALUES ('1801', '减免案件管理', null, 'breaksCase', null, 'GET', '180', 'icon-c-jianmian', 'views/caseManagement/breaksCase/index', '1', '0', '2019-06-10 21:54:27', '2019-06-10 21:55:19', '0');
INSERT INTO `sys_menu` VALUES ('1802', '报备案件管理', null, 'reportCase', null, 'GET', '180', 'icon-xiangmubaobei', 'views/caseManagement/reportCase/index', '2', '0', '2019-06-15 21:27:11', '2019-06-15 21:30:12', '0');
INSERT INTO `sys_menu` VALUES ('1803', '客户信息库', null, 'customerInfo', null, 'GET', '180', 'icon-shuaxin', 'views/caseManagement/customerInfo/index', '3', '0', '2019-06-23 18:59:14', '2019-06-23 19:00:08', '0');
INSERT INTO `sys_menu` VALUES ('1804', '地址库', null, 'address', null, 'GET', '180', 'icon-biaoge', 'views/caseManagement/address/index', '4', '0', '2019-07-06 22:12:37', '2019-07-06 22:13:25', '0');
INSERT INTO `sys_menu` VALUES ('1805', '号码库', null, 'phone', null, 'GET', '180', 'icon-bangzhushouji', 'views/caseManagement/phone/index', '5', '0', '2019-07-06 22:14:08', '2019-07-06 22:14:48', '0');
INSERT INTO `sys_menu` VALUES ('1806', '备注管理', null, 'remark', null, null, '180', null, 'views/caseManagement/remark/index', '6', '0', '2019-08-26 13:51:46', '2019-08-26 14:04:41', '0');
INSERT INTO `sys_menu` VALUES ('1807', '浦发案件查询', null, 'pufaCase', null, 'GET', '180', '', 'views/caseManagement/pufaCase/index', '7', '0', '2020-01-08 16:47:25', '2020-01-08 16:48:43', '0');
INSERT INTO `sys_menu` VALUES ('1808', '浦发客户信息查询', null, 'pufaCustomer', null, 'GET', '180', null, 'views/caseManagement/pufaCustomer/index', '8', '0', '2020-01-09 11:03:58', '2020-01-09 11:04:34', '0');
INSERT INTO `sys_menu` VALUES ('1809', '浦发号码查询', null, 'pufaPhone', null, 'GET', '180', null, 'views/caseManagement/pufaPhone/index', '9', '0', '2020-01-09 11:55:31', null, '0');
INSERT INTO `sys_menu` VALUES ('1901', '催记管理', 'urge_template_manage_menu', 'collectionManagement', '', 'GET', '190', 'icon-xiangmubaobei', 'views/collectionManagement/collectionManagement/index', '10', '0', '2019-07-01 21:15:06', '2019-09-11 21:51:18', '0');
INSERT INTO `sys_menu` VALUES ('1902', '催记配置管理', null, 'Configuration', null, 'GET', '190', 'icon-xitongguanli', 'views/collectionManagement/Configuration/index', '20', '0', '2019-07-06 22:22:27', '2019-07-06 22:22:40', '0');
INSERT INTO `sys_menu` VALUES ('1903', '催记模板管理', null, 'templateMange', null, null, '190', 'icon-xitongguanli', 'views/collectionManagement/templateMange/index', '3', '0', '2019-09-15 14:52:48', '2019-09-15 14:54:07', '0');
INSERT INTO `sys_menu` VALUES ('1904', '催记填写管理', null, 'formManagement', null, null, '190', 'icon-xitongguanli', 'views/collectionManagement/formManagement/index', '4', '0', '2019-09-21 19:43:59', null, '0');
INSERT INTO `sys_menu` VALUES ('1905', '补录配置', '', 'addConfig', null, 'GET', '190', 'icon-yonghuguanli', 'views/collectionManagement/addConfig/index', '5', '0', '2019-10-06 13:09:31', '2019-10-06 13:27:09', '0');
INSERT INTO `sys_menu` VALUES ('1906', '浦发催记上送管理', 'pufa_urge_send', 'pufaUrgeSend', null, 'GET', '190', null, 'views/collectionManagement/pufaUrgeSend/index', '6', '0', '2020-05-07 00:16:07', null, '0');
INSERT INTO `sys_menu` VALUES ('1907', '广发催记上送管理', 'guangfa_urge_send', 'guangfaUrgeSend', null, 'GET', '190', null, 'views/collectionManagement/guangfaUrgeSend/index', '7', '0', '2020-05-07 17:04:58', null, '0');
INSERT INTO `sys_menu` VALUES ('1952', '工单管理', 'workorder_list_management', 'workOrderList', null, 'GET', '195', 'icon-xiangmubaobei', 'views/workOrderManagement/workOrderList/index', '2', '0', '2020-01-01 16:16:43', '2020-01-02 09:37:49', '0');
INSERT INTO `sys_menu` VALUES ('1953', '广发工单查询', null, 'guangfaWorkOrder', null, 'GET', '195', 'icon-xiangmubaobei', 'views/workOrderManagement/guangfaWorkOrder/index', '3', '0', '2020-01-21 11:10:58', '2020-01-21 11:12:50', '0');
INSERT INTO `sys_menu` VALUES ('1954', '工单类型管理', 'workorder_type_management', 'workOrderType', null, 'GET', '195', 'icon-xiangmubaobei', 'views/workOrderManagement/workOrderType/index', '4', '0', '2020-02-18 12:01:02', '2020-02-18 12:01:53', '0');
INSERT INTO `sys_menu` VALUES ('1955', '工单回复模板管理', 'workorder_reply_temp_management', 'workOrderReplyTemp', null, 'GET', '195', 'icon-xiangmubaobei', 'views/workOrderManagement/workOrderReplyTemp/index', '5', '0', '2020-02-19 12:25:38', '2020-02-19 12:25:58', '0');
INSERT INTO `sys_menu` VALUES ('1956', '我的工单', 'my_workorder_management', 'myWorkOrder', null, 'GET', '195', 'icon-xiangmubaobei', 'views/workOrderManagement/myWorkOrder/index', '6', '0', '2020-02-22 16:04:55', '2020-02-22 16:05:09', '0');
INSERT INTO `sys_menu` VALUES ('1957', '部门工单', 'dept_workorder_management', 'deptWorkOrder', null, 'GET', '195', 'icon-xiangmubaobei', 'views/workOrderManagement/deptWorkOrder/index', '7', '0', '2020-03-17 17:32:13', '2020-03-17 17:32:55', '0');
INSERT INTO `sys_menu` VALUES ('2051', '添加车辆', null, null, '/admin/carManagement', 'POST', '205', null, null, '1', '1', '2020-01-04 17:38:13', '2020-01-04 19:23:10', '0');
INSERT INTO `sys_menu` VALUES ('2052', '修改车辆', null, null, '/admin/carManagement', 'PUT', '205', null, null, '2', '1', '2020-01-04 17:39:33', '2020-01-04 19:23:17', '0');
INSERT INTO `sys_menu` VALUES ('2053', '车辆列表', null, null, '/admin/carManagement/page', 'POST', '205', null, null, '3', '1', '2020-01-04 19:25:02', '2020-01-04 21:50:39', '0');
INSERT INTO `sys_menu` VALUES ('2054', '获取车辆管理人', null, null, '/admin/carManagement', 'GET', '205', null, null, '1', '1', '2020-01-05 21:02:28', null, '0');
INSERT INTO `sys_menu` VALUES ('2101', '获取所有模块消息数量', 'ALL_MODULE_MSG_COUNT', null, '/admin/msgCenterInfo/getModuleCount', 'GET', '210', null, null, '1', '1', '2019-08-13 17:01:42', null, '0');
INSERT INTO `sys_menu` VALUES ('2102', '获取消息列表', 'MSG_LIST', null, '/admin/msgCenterInfo/selectMsgCenterList', 'GET', '210', null, null, '2', '1', '2019-08-13 17:02:26', null, '0');
INSERT INTO `sys_menu` VALUES ('2103', '获取指定消息详细信息', 'MSG_DETAIL', null, '/admin/msgCenterInfo/selectMsgCenterById', 'GET', '210', null, null, '3', '1', '2019-08-13 17:03:23', null, '0');
INSERT INTO `sys_menu` VALUES ('2104', '发送消息', 'SEND_MSG', null, '/admin/msgCenterInfo', 'POST', '210', null, null, '4', '1', '2019-08-13 17:04:26', null, '0');
INSERT INTO `sys_menu` VALUES ('2105', '读取指定消息', 'READ_MSG_ONE', null, '/admin/msgCenterInfo/read', 'PUT', '210', null, null, '5', '1', '2019-08-13 17:05:16', null, '0');
INSERT INTO `sys_menu` VALUES ('2106', '读取所有消息', 'READ_MSG_ALL', null, '/admin/msgCenterInfo/readAll', 'PUT', '210', null, null, '6', '1', '2019-08-13 17:05:48', null, '0');
INSERT INTO `sys_menu` VALUES ('2107', '删除指定消息', 'DEL_MSG_ONE', null, '/admin/msgCenterInfo/*', 'DELETE', '210', null, null, '7', '1', '2019-08-13 17:06:37', null, '0');
INSERT INTO `sys_menu` VALUES ('2108', '删除所有消息', 'DEL_MSG_ALL', null, '/admin/msgCenterInfo/delAll', 'DELETE', '210', null, null, '8', '1', '2019-08-13 17:07:19', null, '0');
INSERT INTO `sys_menu` VALUES ('2201', '委案方管理', null, 'committeeCase', null, 'GET', '220', 'icon-biaoge', 'views/configManage/committeeCase/index', '1', '0', '2019-08-31 14:02:13', '2019-08-31 14:04:47', '0');
INSERT INTO `sys_menu` VALUES ('2202', '逾期手别管理', null, 'overdueHand', null, 'GET', '220', 'icon-biaoge', 'views/configManage/overdueHand/index', '2', '0', '2020-03-11 12:39:20', '2020-03-11 12:40:20', '0');
INSERT INTO `sys_menu` VALUES ('2203', '减免材料类型管理', 'relief_material_type', 'reliefMaterialType', null, 'GET', '220', 'icon-biaoge', 'views/configManage/reliefMaterialType/index', '3', '0', '2020-03-13 20:56:33', '2020-03-13 20:56:44', '0');
INSERT INTO `sys_menu` VALUES ('2204', '减免材料管理', 'relief_material_management', 'reliefMaterial', null, 'GET', '220', 'icon-biaoge', 'views/configManage/reliefMaterial/index', '4', '0', '2020-03-13 20:57:40', null, '0');
INSERT INTO `sys_menu` VALUES ('2205', '催收区域管理', null, 'urgeRegion', null, 'GET', '220', null, 'views/configManage/urgeRegion/index', '5', '0', '2020-04-01 21:10:48', null, '0');
INSERT INTO `sys_menu` VALUES ('2301', '甲方案件报表', null, 'partyReport', null, 'GET', '230', null, 'views/dataWorkbench/partyReport/index', '1', '0', '2020-02-23 14:51:07', '2020-02-23 14:55:10', '0');
INSERT INTO `sys_menu` VALUES ('2302', '案归组案件统计', '', 'caseStatis', null, 'GET', '230', null, 'views/dataWorkbench/caseStatis/index', '2', '0', '2020-04-14 15:49:05', '2020-04-14 15:49:31', '0');
INSERT INTO `sys_menu` VALUES ('2401', '广发常规委外佣金查询', 'guangfa_outsourcing_management', 'guangfaOutsourcingCommission', null, 'GET', '240', 'icon-xiangmubaobei', 'views/commissionManagement/guangfaOutsourcingCommission/index', '1', '0', '2020-03-10 21:00:19', '2020-03-10 21:00:51', '0');
INSERT INTO `sys_menu` VALUES ('2402', '广发常规加项佣金查询', 'guangfa_routine_plus_commission', 'guangfaRoutinePlusCommission', null, 'GET', '240', 'icon-xiangmubaobei', 'views/commissionManagement/guangfaRoutinePlusCommission/index', '2', '0', '2020-03-10 21:05:15', '2020-03-10 21:05:37', '0');
INSERT INTO `sys_menu` VALUES ('2403', '广发佣金查询', 'guangfa_commission_management', 'guangfaCommission', null, 'GET', '240', 'icon-xiangmubaobei', 'views/commissionManagement/guangfaCommission/index', '3', '0', '2020-03-10 21:09:54', '2020-03-10 21:10:23', '0');
INSERT INTO `sys_menu` VALUES ('2404', '广发常规佣金汇总信息', 'guangfa_routine_total_commission', 'guangfaRoutineTotalCommission', null, 'GET', '240', 'icon-xiangmubaobei', 'views/commissionManagement/guangfaRoutineTotalCommission/index', '4', '0', '2020-03-10 21:12:15', '2020-03-10 21:13:10', '0');
INSERT INTO `sys_menu` VALUES ('2405', '添加标签', null, null, '/admin//lableInfo', 'POST', '241', null, null, '1', '1', '2020-03-22 21:14:06', '2020-03-22 21:14:47', '0');
INSERT INTO `sys_menu` VALUES ('2406', '修改标签', null, null, '/admin//lableInfo', 'PUT', '241', null, null, '1', '1', '2020-03-22 21:15:44', '2020-03-22 22:13:41', '0');
INSERT INTO `sys_menu` VALUES ('2407', '添加标签类型', null, null, '/admin/lableTypeInfo', 'POST', '242', null, null, '1', '1', '2020-03-22 21:17:29', '2020-03-22 22:14:22', '0');
INSERT INTO `sys_menu` VALUES ('2408', '修改标签类型', null, null, '/admin/lableTypeInfo', 'PUT', '242', null, null, '1', '1', '2020-03-22 21:18:12', '2020-03-22 22:14:30', '0');
INSERT INTO `sys_menu` VALUES ('2409', '分页获取标签列表', null, null, '/admin//lableInfo/lableInfoPage', 'GET', '241', null, null, '1', '1', '2020-03-22 21:21:37', '2020-03-22 22:13:51', '0');
INSERT INTO `sys_menu` VALUES ('2410', '获取标签类型(1=有效，不传全部)', null, null, '/admin//lableTypeInfo/list/*', 'GET', '241', null, null, '1', '1', '2020-03-22 21:24:10', '2020-04-16 22:19:50', '0');
INSERT INTO `sys_menu` VALUES ('2411', '获取所有的有效标签', null, null, '/admin/lableInfo/list', 'GET', '241', null, null, '1', '1', '2020-03-22 21:25:31', '2020-04-16 23:06:48', '0');
INSERT INTO `sys_menu` VALUES ('2412', '获取标签管理列表', null, null, '/admin/lableInfo/lableManagementPage', 'GET', '243', null, null, '1', '1', '2020-03-22 21:30:51', '2020-03-22 22:14:39', '0');
INSERT INTO `sys_menu` VALUES ('2413', '案件详情页编辑标签详情', null, null, '/admin/lableInfo/caseDetailEditLable/*', 'GET', '243', null, null, '1', '1', '2020-03-22 21:33:23', '2020-03-22 22:14:49', '0');
INSERT INTO `sys_menu` VALUES ('2414', '案件详情页获取标签统计', null, null, '/admin/lableInfo/caseDetailLableCount/*', 'GET', '243', null, null, '1', '1', '2020-03-22 21:34:38', '2020-03-22 22:09:56', '0');
INSERT INTO `sys_menu` VALUES ('2415', '案件详情页生成标签', null, null, '/admin/lableInfo/addByCaseSerialNum', 'POST', '243', null, null, '1', '1', '2020-03-23 13:33:25', '2020-03-24 20:47:44', '0');
INSERT INTO `sys_menu` VALUES ('2416', ' 根据个案序列号修改固定标签的绑定关系', null, null, '/admin/lableInfo/addByCaseSerialNum', 'PUT', '243', null, null, '1', '1', '2020-03-24 22:03:54', null, '0');
INSERT INTO `sys_menu` VALUES ('2601', '工单类型管理', null, 'workOrderType', null, 'GET', '260', null, 'views/workOrderConfigManagement/workOrderType/index', '3', '0', '2020-04-09 15:19:33', '2020-04-09 15:35:01', '0');
INSERT INTO `sys_menu` VALUES ('2602', '问题分类管理', null, 'issueType', null, 'GET', '260', null, 'views/workOrderConfigManagement/issueType/index', '4', '0', '2020-04-09 15:24:49', '2020-04-09 15:35:51', '0');
INSERT INTO `sys_menu` VALUES ('2603', '人员配置', null, 'memberConfig', null, 'GET', '260', null, 'views/workOrderConfigManagement/memberConfig/index', '5', '0', '2020-04-09 15:25:20', '2020-04-09 15:36:01', '0');
INSERT INTO `sys_menu` VALUES ('2604', '座位片区配置', null, 'seatingArea', null, 'GET', '260', null, 'views/workOrderConfigManagement/seatingArea/index', '6', '0', '2020-04-09 15:25:50', '2020-04-09 15:36:14', '0');
INSERT INTO `sys_menu` VALUES ('2605', '工单提示语配置', null, 'workOrderPrompt', null, 'GET', '260', null, 'views/workOrderConfigManagement/workOrderPrompt/index', '20', '0', '2020-04-09 15:26:09', '2020-04-09 15:36:22', '0');
INSERT INTO `sys_menu` VALUES ('2701', '已提交工单', null, 'committedOrder', null, 'GET', '270', null, 'views/workOrderBack/committedOrder/index', '7', '0', '2020-04-10 17:49:52', '2020-04-10 17:50:47', '0');
INSERT INTO `sys_menu` VALUES ('2702', '待处理工单', null, 'pendingOrder', null, 'GET', '270', null, 'views/workOrderBack/pendingOrder/index', '21', '0', '2020-04-10 17:50:39', '2020-04-10 17:50:51', '0');
INSERT INTO `sys_menu` VALUES ('2703', '已确认工单', null, 'confirmOrder', null, 'GET', '270', null, 'views/workOrderBack/confirmOrder/index', '22', '0', '2020-04-10 17:51:39', '2020-04-29 17:42:14', '0');
INSERT INTO `sys_menu` VALUES ('2704', '已关闭工单', null, 'closedOrder', null, 'GET', '270', null, 'views/workOrderBack/closedOrder/index', '23', '0', '2020-04-10 17:52:19', '2020-05-04 18:11:44', '0');
INSERT INTO `sys_menu` VALUES ('2705', '获取工单后台列表', null, null, '/desk/task/manager', 'GET', '270', null, null, '5', '1', '2020-04-29 16:00:02', '2020-04-29 16:36:25', '0');
INSERT INTO `sys_menu` VALUES ('2801', '提交工单', null, 'commitOrder', null, 'GET', '280', null, 'views/myWorkOrder/commitOrder/index', '24', '0', '2020-04-10 17:54:34', '2020-05-04 18:11:26', '0');
INSERT INTO `sys_menu` VALUES ('2802', '我的工单', null, 'myWorkOrder', null, 'GET', '280', null, 'views/myWorkOrder/myWorkOrder/index', '25', '0', '2020-04-10 17:55:14', '2020-05-04 18:11:21', '0');
INSERT INTO `sys_menu` VALUES ('2901', '甲方委外文件管理', null, 'outsource', null, 'GET', '290', null, 'views/fileManage/outsource/index', '1', '0', '2020-04-23 19:48:52', '2020-04-23 23:41:32', '0');
INSERT INTO `sys_menu` VALUES ('2902', '文件操作日志', null, 'operateLog', null, 'GET', '290', null, 'views/fileManage/operateLog/index', '2', '0', '2020-04-23 23:53:42', '2020-04-23 23:55:23', '0');
INSERT INTO `sys_menu` VALUES ('10013', '浦发登录管理', null, 'pufaLogin', null, 'GET', '1', null, 'views/admin/pufaLogin/index', '13', '0', '2020-04-16 08:01:14', null, '0');
INSERT INTO `sys_menu` VALUES ('10112', '案件批次新增', 'case_batch_add', null, '/admin/loansCaseBatch', 'POST', '1011', null, null, '1', '1', '2019-03-02 21:04:27', '2019-03-02 21:20:08', '0');
INSERT INTO `sys_menu` VALUES ('10113', '车贷导入', 'car_loan_import', null, '/admin/case/import', 'POST', '1011', null, null, '2', '1', '2019-03-02 22:24:33', '2019-03-05 15:10:26', '0');
INSERT INTO `sys_menu` VALUES ('10114', '案件批次更新', 'loansCaseBatch-update', null, '/admin/loansCaseBatch', 'PUT', '1011', null, null, '1', '1', '2019-05-13 15:05:07', '2019-05-13 15:05:24', '0');
INSERT INTO `sys_menu` VALUES ('10115', '催收区域', 'cuish-01', null, '/admin/loansCaseCollection/**', 'GET', '1011', null, null, '4', '1', '2019-03-05 15:08:58', '2019-03-05 15:10:36', '0');
INSERT INTO `sys_menu` VALUES ('10118', '委案方列表', 'principal-list', null, '/admin/loansCaseDelegation/**', 'GET', '1011', null, null, '5', '1', '2019-03-05 15:20:18', '2019-03-06 22:10:37', '0');
INSERT INTO `sys_menu` VALUES ('10119', '删除案件批次', 'delete-case-batch', null, '/admin/loansCaseBatch/**', 'DELETE', '1011', null, null, '8', '1', '2019-03-05 15:41:47', '2019-03-05 15:43:00', '0');
INSERT INTO `sys_menu` VALUES ('10121', '已导入批次查询', 'case_batch_import', null, '/admin/loansCaseBatch/**', 'GET', '1011', null, null, '3', '1', '2019-03-02 10:39:54', '2019-03-02 20:13:23', '0');
INSERT INTO `sys_menu` VALUES ('10131', '模板查看', 'loan-template-list', null, '/admin/loanExcelTemplate/**', 'GET', '1013', null, null, '1', '1', '2019-03-04 15:31:42', '2019-03-09 23:41:14', '0');
INSERT INTO `sys_menu` VALUES ('10132', '模板添加', 'loan-template-add', null, '/admin/loanExcelTemplate', 'POST', '1013', null, null, '2', '1', '2019-03-05 13:57:15', '2019-03-10 00:00:19', '0');
INSERT INTO `sys_menu` VALUES ('10133', '模板删除', 'loan-template-delete', null, '/admin/loanExcelTemplate/*', 'DELETE', '1013', null, null, '3', '1', '2019-03-06 12:22:49', '2019-03-10 00:00:23', '0');
INSERT INTO `sys_menu` VALUES ('10134', '模板启用', null, null, '/admin/loanExcelTemplate/enable/*', 'PUT', '1013', null, null, '4', '1', '2019-03-16 03:19:27', '2019-03-16 03:23:08', '0');
INSERT INTO `sys_menu` VALUES ('10135', '模板禁用', null, null, '/admin/loanExcelTemplate/disable/*', 'PUT', '1013', null, null, '5', '1', '2019-03-16 03:21:27', '2019-03-16 03:23:27', '0');
INSERT INTO `sys_menu` VALUES ('10136', '车辆模板配置字段查看', 'car-loan-field-list', null, '/admin/carLoanField/carLoanFieldList', 'GET', '1013', null, null, '3', '1', '2019-03-07 00:10:39', '2019-03-07 00:17:25', '0');
INSERT INTO `sys_menu` VALUES ('10137', '自定义模板配置字段查看', 'excel-template-config', null, '/admin/loanExcelTmpConfig/**', 'GET', '1013', null, null, '34', '1', '2019-03-07 00:12:48', '2019-03-08 21:22:45', '0');
INSERT INTO `sys_menu` VALUES ('10138', '模板更新', 'loan-template-update', null, '/admin/loanExcelTemplate', 'PUT', '1013', null, null, '4', '1', '2019-06-13 21:24:59', '2019-06-13 21:25:28', '0');
INSERT INTO `sys_menu` VALUES ('10141', '模板列表加载', 'loanExcelTemplatePage', null, '/admin/loanExcelTemplate/**', 'GET', '1014', null, null, '1', '1', '2019-03-04 14:36:37', '2019-03-04 15:32:08', '1');
INSERT INTO `sys_menu` VALUES ('10171', '案件分配列表', 'case_assign_page', null, '/admin/case/**', 'GET', '1017', null, null, '1', '1', '2019-03-24 08:34:07', '2019-03-24 09:40:56', '0');
INSERT INTO `sys_menu` VALUES ('10172', '配置案归组ID', 'redeploy_case_dept', '1', '/admin/caseDept/toRedeploy', 'POST', '1017', null, '1', '1', '1', '2019-03-25 16:03:45', null, '0');
INSERT INTO `sys_menu` VALUES ('10173', '退案', 'retire_case', '1', '/admin/caseDept/retireCase', 'POST', '1017', null, '1', '29', '1', '2019-03-25 16:10:25', '2019-05-05 14:50:36', '0');
INSERT INTO `sys_menu` VALUES ('10177', '退案库列表查询', 'withdraw_list', '1', '/admin/caseWithdraw/caseWithdrawPage/**', 'GET', '1017', null, '1', '29', '1', '2019-03-26 15:48:52', '2019-05-05 14:50:42', '0');
INSERT INTO `sys_menu` VALUES ('10178', '退案库-恢复', 'withdraw_recover', '1', '/admin/caseWithdraw/recover', 'PUT', '1017', null, '1', '29', '1', '2019-03-27 02:52:28', '2019-05-05 14:50:48', '0');
INSERT INTO `sys_menu` VALUES ('10181', '案归组分配进度查询', 'case_dept_assign_query', null, '/admin/caseDeptAllotFront/getAssignResultByAssignId', 'GET', '1018', null, null, '1', '1', '2019-12-08 21:50:37', null, '0');
INSERT INTO `sys_menu` VALUES ('10201', '催记模板', 'urge_template_managent', null, '/admin/caseUrgeSystemConfigInfo/list', 'GET', '1020', null, null, '10', '1', '2019-09-07 21:22:46', '2019-09-07 21:26:40', '0');
INSERT INTO `sys_menu` VALUES ('10202', '催记模板修改', 'urge_template_update', null, '/admin/caseUrgeSystemConfigInfo', 'PUT', '1020', null, null, '11', '1', '2019-09-07 21:43:09', null, '0');
INSERT INTO `sys_menu` VALUES ('10204', '工单模板修改', 'workorder_template_update', null, '/admin/caseWorkOrderSystemConfigInfo', 'PUT', '1020', null, null, '21', '1', '2019-09-07 22:14:12', null, '0');
INSERT INTO `sys_menu` VALUES ('10205', '案件模板', 'case_template_list', null, '/admin/caseImportSystemConfigInfo/list', 'GET', '1020', null, null, '5', '1', '2019-10-13 23:20:10', '2019-10-13 23:22:44', '0');
INSERT INTO `sys_menu` VALUES ('10206', '案件模板修改', 'case_template_update', null, '/admin/caseImportSystemConfigInfo', 'PUT', '1020', null, null, '6', '1', '2019-10-13 23:22:27', null, '0');
INSERT INTO `sys_menu` VALUES ('10211', '文件上传', null, null, '/admin/fucBatch/upload', 'POST', '1021', null, null, '1', '1', '2019-10-30 01:36:44', null, '0');
INSERT INTO `sys_menu` VALUES ('10319', '浦发模板全量字段', 'pufaLoanFieldResult', null, '/admin/pufaLoanField/pufaLoanFieldResult', 'GET', '1013', null, null, '1', '1', '2019-06-29 09:56:44', null, '0');
INSERT INTO `sys_menu` VALUES ('10512', '协催信息详情', 'show_assist_detail', '1', '/admin/caseColAssistRel/*', 'GET', '1051', null, '1', '1', '1', '2019-03-24 06:38:25', '2019-03-25 02:45:22', '0');
INSERT INTO `sys_menu` VALUES ('10513', '撤销协催', 'cancel_assist', '1', '/admin/caseColAssistRel/*', 'DELETE', '1051', null, '1', '2', '1', '2019-03-24 08:24:03', '2019-03-25 02:45:32', '0');
INSERT INTO `sys_menu` VALUES ('10517', '获取协催列表', 'loab_myassist_page', '1', '/admin/caseColAssistRel/list/**', 'GET', '1051', null, '1', '1', '1', '2019-03-24 10:14:56', '2019-03-26 07:29:32', '0');
INSERT INTO `sys_menu` VALUES ('10518', '完成协催', 'end_assist', '1', '/admin/caseColAssistRel/endByIds/**', 'PUT', '1051', null, '1', '1', '1', '2019-03-27 12:58:36', '2019-03-27 13:00:02', '0');
INSERT INTO `sys_menu` VALUES ('10519', '撤销协催（多值）', 'del_assist', '1', '/admin/caseColAssistRel/deleteByIds/**', 'PUT', '1051', null, '1', '1', '1', '2019-03-27 12:59:53', null, '0');
INSERT INTO `sys_menu` VALUES ('10931', '测试外放demo接口', 'demo-visit-test', null, '/visit/demo/**', 'GET', '1', null, null, '102', '1', '2020-01-31 21:58:08', null, '0');
INSERT INTO `sys_menu` VALUES ('12111', '获取电催列表', 'get_col_tel_st', '1', '/admin/casePhoneColRel/list**', 'GET', '1211', null, '1', '1', '1', '2019-03-29 06:00:15', '2019-03-29 08:33:37', '0');
INSERT INTO `sys_menu` VALUES ('12112', '暂停案件', 'pauseCase', '1', '/admin/casePhoneColRel/pauseCase', 'PUT', '1211', null, '1', '1', '1', '2019-03-30 07:12:46', null, '0');
INSERT INTO `sys_menu` VALUES ('12113', '修改案件状态', 'update_collection_status', '1', '/admin/casePhoneColRel/updateCollectionStatus/*', 'PUT', '1211', null, '1', '1', '1', '2019-03-30 07:13:55', null, '0');
INSERT INTO `sys_menu` VALUES ('12114', '修改案件类型', 'update_case_type', '1', '/admin/casePhoneColRel/updateCollectionType/*', 'PUT', '1211', null, '1', '1', '1', '2019-03-30 07:14:42', null, '0');
INSERT INTO `sys_menu` VALUES ('12115', '案件标色', 'put_case_color', '1', '/admin/casePhoneColRel/putCaseColor/*', 'PUT', '1211', null, '1', '1', '1', '2019-03-30 07:15:35', null, '0');
INSERT INTO `sys_menu` VALUES ('12116', '申请协催', 'put_apply_assist', null, '/admin/casePhoneColRel/applyAssist', 'PUT', '1211', null, null, '1', '1', '2019-03-30 07:16:27', null, '0');
INSERT INTO `sys_menu` VALUES ('12117', '电催列表上方数据查询', 'get_tel_index_data', null, '/admin/casePhoneColRel/indexData/**', 'GET', '1211', null, null, '1', '1', '2019-03-31 02:46:18', '2019-04-03 15:10:33', '0');
INSERT INTO `sys_menu` VALUES ('12118', '获取电催号码列表', 'caseBasePhoneList', null, '/admin/caseBasePhone/caseBasePhoneList', 'GET', '1211', null, null, '8', '1', '2019-07-05 23:59:22', null, '0');
INSERT INTO `sys_menu` VALUES ('12119', '获取电催证件列表', 'caseBaseIdcardList', null, '/admin/caseBaseIdcard/caseBaseIdcardList', 'GET', '1211', null, null, '9', '1', '2019-07-11 14:17:59', null, '0');
INSERT INTO `sys_menu` VALUES ('12121', '部门案件查询', 'get_dept_list', null, '/admin/casePhoneColRel/deptCaseList/**', 'GET', '1212', null, null, '1', '1', '2019-04-14 03:25:39', null, '0');
INSERT INTO `sys_menu` VALUES ('12122', '部门案件上方数据查询', 'get_dept_index_data', null, '/admin/casePhoneColRel/deptIndexData/**', 'GET', '1212', null, null, '1', '1', '2019-04-14 12:27:21', '2019-04-14 12:28:22', '0');
INSERT INTO `sys_menu` VALUES ('12131', '录音推送地址', 'recording_push_addr', null, '/admin/callCenter/callbackRecording', 'POST', '1213', null, null, '1', '1', '2019-07-27 06:41:23', '2019-07-27 06:42:03', '0');
INSERT INTO `sys_menu` VALUES ('12132', '事件推送地址', 'call_center_call', null, '/admin/callCenter/callbackEvent', 'POST', '1213', '', null, '1', '1', '2019-07-27 06:50:07', '2019-07-27 08:02:48', '0');
INSERT INTO `sys_menu` VALUES ('12141', '座席列表', 'omni_list', null, '/admin/omniTemplateInfo/getOmniList', 'GET', '1214', null, null, '1', '0', '2019-08-08 20:11:03', '2019-08-11 13:40:02', '1');
INSERT INTO `sys_menu` VALUES ('12142', '座席详细', 'omni_detail', null, '/admin/omniTemplateInfo/getOmniById', 'GET', '1214', null, null, '2', '1', '2019-08-08 20:11:52', '2019-08-08 20:12:02', '0');
INSERT INTO `sys_menu` VALUES ('12143', '座席用户列表', 'omni_user_list', null, '/admin/omniTemplateInfo/getOmniUserList', 'GET', '1214', null, null, '3', '1', '2019-08-08 20:12:48', null, '0');
INSERT INTO `sys_menu` VALUES ('12144', '新增座席', 'add_omni', null, '/admin/omniTemplateInfo', 'POST', '1214', null, null, '4', '1', '2019-08-08 20:13:26', null, '0');
INSERT INTO `sys_menu` VALUES ('12145', '编辑座席', 'edit_omni', null, '/admin/omniTemplateInfo', 'PUT', '1214', null, null, '5', '1', '2019-08-08 20:13:54', null, '0');
INSERT INTO `sys_menu` VALUES ('12146', '删除座席', 'del_omni', null, '/admin/omniTemplateInfo', 'DELETE', '1214', null, null, '6', '1', '2019-08-08 20:14:32', '2019-08-11 18:51:04', '0');
INSERT INTO `sys_menu` VALUES ('12147', '座席列表', 'omni_list', null, '/admin/omniTemplateInfo/**', 'GET', '1214', null, null, '1', '1', '2019-08-11 15:10:38', '2019-08-11 15:15:50', '0');
INSERT INTO `sys_menu` VALUES ('13061', '通话记录统计', null, null, '/admin/caseUrgeInfo/callRecords/search', 'GET', '1306', null, null, '1', '1', '2020-03-27 23:36:20', null, '0');
INSERT INTO `sys_menu` VALUES ('14001', '未还款案件列表', 'mycase_no_repay_page', null, '/admin/myCase/noRepayPage/**', 'GET', '1401', null, null, '1', '1', '2019-05-21 12:33:03', '2019-05-21 12:37:14', '0');
INSERT INTO `sys_menu` VALUES ('14002', '部分还款金额列表', 'part_repay_case', null, '/admin/myCase/partRepayPage/**', 'GET', '1402', null, null, '1', '1', '2019-05-21 12:56:14', '2019-05-21 12:56:38', '0');
INSERT INTO `sys_menu` VALUES ('14010', '首页案件统计接口', null, null, '/admin/myCase/getIndexCaseCount', 'GET', '140', null, null, '10', '1', '2019-09-23 00:23:18', null, '0');
INSERT INTO `sys_menu` VALUES ('14011', '今日上报', 'report_btn', null, '/admin/myCase/todayReport', 'PUT', '1401', null, null, '1', '1', '2019-05-25 10:15:06', '2019-05-25 10:15:27', '0');
INSERT INTO `sys_menu` VALUES ('14012', '取消今日上报', 'unReport_btn', null, '/admin/myCase/unReport', 'PUT', '1401', null, null, '1', '1', '2019-05-25 10:15:06', '2019-05-25 10:15:27', '0');
INSERT INTO `sys_menu` VALUES ('14013', '申请协催', 'applyAssist_btn', null, '/admin/myCase/applyAssist', 'PUT', '1401', null, null, '1', '1', '2019-05-25 10:18:52', null, '0');
INSERT INTO `sys_menu` VALUES ('14014', '留案', 'leaveCase_btn', null, '/admin/myCase/leaveCase', 'PUT', '1401', null, null, '1', '1', '2019-05-25 10:15:06', '2019-05-25 10:15:27', '0');
INSERT INTO `sys_menu` VALUES ('14015', '取消留案', 'unLeaveCase_btn', null, '/admin/myCase/unLeaveCase', 'PUT', '1401', null, null, '1', '1', '2019-05-25 10:15:06', '2019-05-25 10:15:27', '0');
INSERT INTO `sys_menu` VALUES ('14016', '预结清', 'preSettle_btn', null, '/admin/myCase/preSettle', 'PUT', '1401', null, null, '1', '1', '2019-05-25 10:18:52', null, '0');
INSERT INTO `sys_menu` VALUES ('14017', '申请减免', 'applyCutDown_btn', null, '/admin/myCase/applyCutDown', 'PUT', '1401', null, null, '1', '1', '2019-05-26 12:10:11', '2019-05-26 12:31:31', '0');
INSERT INTO `sys_menu` VALUES ('14018', '申请延期', 'apply_delay_btn', null, '/admin/myCase/applyDelay', 'PUT', '1401', null, null, '1', '1', '2019-06-01 06:51:52', '2019-06-01 06:52:17', '0');
INSERT INTO `sys_menu` VALUES ('14019', '申请报备', 'applyReport_btn', null, '/admin/myCase/applyReport', 'PUT', '1401', null, null, '1', '1', '2019-06-02 01:54:39', '2019-06-02 11:44:14', '0');
INSERT INTO `sys_menu` VALUES ('14030', '首页我的案件', null, null, '/admin/myCase/countCaseStatus', 'GET', '140', null, null, '11', '1', '2019-10-26 00:16:53', null, '0');
INSERT INTO `sys_menu` VALUES ('14031', '获取当前案件催收状态', null, null, '/admin/myCase/getCurrentCollectionStatus', 'GET', '140', null, null, '12', '1', '2020-02-15 20:06:25', null, '0');
INSERT INTO `sys_menu` VALUES ('14032', '首页跟案件有关统计', null, null, '/admin/caseIndex/index', 'GET', '140', null, null, '1', '1', '2020-02-18 21:57:53', null, '0');
INSERT INTO `sys_menu` VALUES ('14033', '留案案件', null, 'stayCase', null, 'GET', '140', 'icon-daoru', 'views/myCase/stayCase/index', '33', '0', '2020-03-09 14:49:16', '2020-03-26 20:38:38', '0');
INSERT INTO `sys_menu` VALUES ('14034', '停催案件', null, 'stopUrgeCase', null, 'GET', '140', 'icon-bumen', 'views/myCase/stopUrgeCase/index', '34', '0', '2020-03-09 14:50:11', '2020-03-26 20:39:07', '0');
INSERT INTO `sys_menu` VALUES ('14035', '申请停催', null, null, '/admin/myCase/applyStopUrge', 'PUT', '140', null, null, '1', '1', '2020-03-10 22:33:26', null, '0');
INSERT INTO `sys_menu` VALUES ('14036', '申请留案', null, null, '/admin/myCase/applyLeave', 'PUT', '140', null, null, '1', '1', '2020-03-22 20:37:30', null, '0');
INSERT INTO `sys_menu` VALUES ('14401', '报备案件列表', 'mycase_reportCase_list', null, '/admin/myCase/reportCase/**', 'GET', '144', null, null, '1', '1', '2019-06-02 10:35:06', null, '0');
INSERT INTO `sys_menu` VALUES ('14402', '报备案件列表统计', null, null, '/admin/myCase/reportCase2', 'GET', '144', null, null, '1', '1', '2020-02-15 12:23:48', '2020-02-15 21:30:27', '0');
INSERT INTO `sys_menu` VALUES ('15007', '案件稽核', 'deptcase_audit_btn', null, '/admin/deptCase/caseAudit', 'PUT', '150', null, null, '1', '1', '2019-06-08 23:49:03', null, '0');
INSERT INTO `sys_menu` VALUES ('15008', '回拨查询', 'call_back_query', 'callbackQuery', null, 'GET', '150', 'icon-quanqudaofuwujiankong', 'views/departmentCases/callbackQuery/index', '8', '0', '2020-01-02 21:25:37', '2020-02-15 16:08:41', '0');
INSERT INTO `sys_menu` VALUES ('15010', '停催案件', null, 'stopUrgeCase', null, 'GET', '150', 'icon-daoru', 'views/departmentCases/stopUrgeCase/index', '10', '0', '2020-03-09 14:43:48', '2020-03-26 21:39:56', '0');
INSERT INTO `sys_menu` VALUES ('15091', '留案案件列表', null, null, '/admin/deptCase/leave', 'GET', '1509', null, null, '1', '1', '2020-03-22 20:26:19', '2020-03-22 20:26:45', '0');
INSERT INTO `sys_menu` VALUES ('16013', '部门对账流水', 'dept_payment', 'deptPayment', null, 'GET', '160', null, 'views/paymentManagement/deptPayment/index', '13', '0', '2020-04-15 23:40:15', '2020-04-15 23:40:51', '0');
INSERT INTO `sys_menu` VALUES ('16014', '我的对账流水', 'my_payment', 'myPayment', null, 'GET', '160', null, 'views/paymentManagement/myPayment/index', '14', '0', '2020-04-15 23:42:37', '2020-04-15 23:42:57', '0');
INSERT INTO `sys_menu` VALUES ('16051', '银行对账模板信息表', null, null, '/admin/caseReconciliationTemplateInfo/page', 'GET', '1605', null, null, '1', '1', '2019-10-09 21:11:27', '2019-10-09 21:14:40', '0');
INSERT INTO `sys_menu` VALUES ('16052', '通过ID查询', 'reconciliatio_template_byid', null, '/admin/caseReconciliationTemplateInfo/*', 'GET', '1605', null, null, '2', '1', '2019-10-09 21:17:08', null, '0');
INSERT INTO `sys_menu` VALUES ('16053', '获取模板列表', null, null, '/admin/caseReconciliationTemplateInfo/list', 'GET', '1605', null, null, '3', '1', '2019-10-09 21:18:45', '2019-10-09 21:19:04', '0');
INSERT INTO `sys_menu` VALUES ('16054', '添加', 'reconciliatio_template_add', null, '/admin/caseReconciliationTemplateInfo', 'POST', '1605', null, null, '4', '1', '2019-10-09 21:20:02', null, '0');
INSERT INTO `sys_menu` VALUES ('16055', '启用', 'reconciliatio_template_turnon', null, '/admin/caseReconciliationTemplateInfo/turnOn/*', 'POST', '1605', null, null, '5', '1', '2019-10-09 21:20:48', null, '0');
INSERT INTO `sys_menu` VALUES ('16056', '禁用', 'reconciliatio_template_turnoff', null, '/admin/caseReconciliationTemplateInfo/turnOff/*', 'POST', '1605', null, null, '6', '1', '2019-10-09 21:21:31', null, '0');
INSERT INTO `sys_menu` VALUES ('16057', '删除', 'reconciliatio_template_del', null, '/admin/caseReconciliationTemplateInfo/*', 'DELETE', '1605', null, null, '7', '1', '2019-10-09 21:22:13', '2019-10-09 21:50:34', '0');
INSERT INTO `sys_menu` VALUES ('16058', '编辑', 'reconciliatio_template_upd', null, '/admin/caseReconciliationTemplateInfo', 'PUT', '1605', null, null, '8', '1', '2019-10-09 21:22:47', null, '0');
INSERT INTO `sys_menu` VALUES ('16059', '根据模板ID查询', 'reconciliatio_config_byid', null, '/admin/caseReconciliationFullConfigInfo/template/*', 'GET', '1605', null, null, '9', '1', '2019-10-09 21:24:19', '2019-10-09 22:48:00', '0');
INSERT INTO `sys_menu` VALUES ('16061', '对账列表查询', null, null, '/admin/caseReconciliationBatchInfo/page', 'GET', '1606', null, null, '1', '1', '2019-10-29 23:22:57', null, '0');
INSERT INTO `sys_menu` VALUES ('16062', '日志列表查询', null, null, '/admin/caseReconciliationBatchLogInfo/page', 'GET', '1606', null, null, '1', '1', '2019-10-29 23:35:25', null, '0');
INSERT INTO `sys_menu` VALUES ('16063', '新增对账单', null, null, '/admin/caseReconciliationBatchInfo', 'POST', '1606', null, null, '1', '1', '2019-11-08 00:03:58', null, '0');
INSERT INTO `sys_menu` VALUES ('16064', '删除对账单', null, null, '/admin/caseReconciliationBatchInfo/**', 'DELETE', '1606', null, null, '1', '1', '2019-11-08 00:04:58', '2019-11-08 00:22:11', '0');
INSERT INTO `sys_menu` VALUES ('16065', '编辑对账单', null, null, '/admin/caseReconciliationBatchInfo', 'PUT', '1606', null, null, '1', '1', '2019-11-08 00:10:45', '2019-11-08 00:22:31', '0');
INSERT INTO `sys_menu` VALUES ('16066', '对账操作日志导出', null, null, '/admin/caseReconciliationBatchLogInfo/export', 'GET', '1606', null, null, '6', '1', '2019-11-08 14:03:19', null, '0');
INSERT INTO `sys_menu` VALUES ('16067', '对账操作日志后台任务导出', null, null, '/admin/caseReconciliationBatchLogInfo/exportBig', 'GET', '1606', null, null, '7', '1', '2019-11-08 15:10:21', null, '0');
INSERT INTO `sys_menu` VALUES ('16068', '根据个案查询对账信息', null, null, '/admin/totalRepayment/case', 'GET', '1606', null, null, '8', '1', '2019-11-09 14:08:54', null, '0');
INSERT INTO `sys_menu` VALUES ('16069', '对账单分页查询', null, null, '/admin/caseReconciliationFullInfo/page', 'GET', '1606', null, null, '9', '1', '2019-11-13 12:04:54', null, '0');
INSERT INTO `sys_menu` VALUES ('16081', '查询', null, null, '/admin/caseReconciliationFullInfo/gf/repaymentInfo', 'GET', '1608', null, null, '1', '1', '2019-12-10 23:36:40', null, '0');
INSERT INTO `sys_menu` VALUES ('16082', '详情页广发查询', null, null, '/caseReconciliationFullInfo/gf/repaymentRealTime', 'GET', '1608', null, null, '2', '1', '2020-01-06 14:42:09', '2020-01-06 14:44:31', '1');
INSERT INTO `sys_menu` VALUES ('16121', '列表查询', null, null, '/admin/caseReconciliationFullInfo/groupSort', 'GET', '1612', null, null, '1', '1', '2020-02-15 17:07:59', null, '0');
INSERT INTO `sys_menu` VALUES ('18010', '浦发地址查询', null, 'pufaAddress', null, 'GET', '180', null, 'views/caseManagement/pufaAddress/index', '10', '0', '2020-01-09 11:56:06', null, '0');
INSERT INTO `sys_menu` VALUES ('18011', '浦发注记查询', null, 'pufaMark', null, 'GET', '180', null, 'views/caseManagement/pufaMark/index', '11', '0', '2020-01-10 13:25:24', null, '0');
INSERT INTO `sys_menu` VALUES ('18012', '浦发卡信息查询', null, 'pufaCard', null, 'GET', '180', null, 'views/caseManagement/pufaCard/index', '12', '0', '2020-01-10 13:26:13', null, '0');
INSERT INTO `sys_menu` VALUES ('18013', '浦发账户查询', null, 'pufaAccount', null, 'GET', '180', null, 'views/caseManagement/pufaAccount/index', '13', '0', '2020-01-13 19:27:49', null, '0');
INSERT INTO `sys_menu` VALUES ('18014', '留案案件管理', null, 'stayCase', null, 'GET', '180', null, 'views/caseManagement/stayCase/index', '14', '0', '2020-03-09 21:55:03', '2020-03-14 13:48:43', '0');
INSERT INTO `sys_menu` VALUES ('18015', '停催案件管理', null, 'stopUrgeCase', null, 'GET', '180', null, 'views/caseManagement/stopUrgeCase/index', '15', '0', '2020-03-09 21:55:40', '2020-03-14 13:48:35', '0');
INSERT INTO `sys_menu` VALUES ('18016', '结清案件管理', 'settle_case_management', 'settleCase', null, 'GET', '180', null, 'views/caseManagement/settleCase/index', '16', '0', '2020-03-13 10:57:19', '2020-03-13 10:58:43', '0');
INSERT INTO `sys_menu` VALUES ('18017', '预结清案件管理', 'pre_settle_case_management', 'preSettleCase', null, 'GET', '180', null, 'views/caseManagement/preSettleCase/index', '17', '0', '2020-03-13 20:17:16', null, '0');
INSERT INTO `sys_menu` VALUES ('18020', '浦发案件落库测试', null, null, '/admin/puFa/testPuFaCase/**', 'GET', '180', null, null, '20', '1', '2020-03-25 14:12:21', '2020-03-29 14:40:41', '0');
INSERT INTO `sys_menu` VALUES ('18021', '卡号管理', null, 'cardNo', null, 'GET', '180', null, 'views/customerManagement/cardNo/index', '6', '0', '2020-03-26 01:18:56', '2020-03-26 01:19:19', '0');
INSERT INTO `sys_menu` VALUES ('18022', '浦催记发手动推送', null, null, '/admin/puFa/testPuFaUrge', 'GET', '180', null, null, '22', '1', '2020-03-31 21:42:18', '2020-03-31 21:43:51', '0');
INSERT INTO `sys_menu` VALUES ('18023', '浦发案件手动抓取', null, null, '/admin/puFa/runPuFaCase', 'GET', '180', null, null, '23', '1', '2020-04-02 22:14:44', null, '0');
INSERT INTO `sys_menu` VALUES ('18031', '获取证件分页', 'caseBaseIdcardPage', null, '/admin//caseBaseIdcard/caseBaseIdcardPage', 'GET', '1803', null, null, '1', '1', '2019-07-11 14:13:21', '2019-07-19 23:15:11', '0');
INSERT INTO `sys_menu` VALUES ('18032', '导出证件模板', 'caseBaseIdcard_export', null, '/admin/caseBaseIdcard/export', 'GET', '1803', null, null, '2', '1', '2019-07-19 23:02:17', '2019-07-19 23:52:27', '0');
INSERT INTO `sys_menu` VALUES ('18033', '导入证件', 'caseBaseIdcard_import', null, '/admin/caseBaseIdcard/import', 'POST', '1803', null, null, '3', '1', '2019-07-19 23:02:48', '2019-07-19 23:53:14', '0');
INSERT INTO `sys_menu` VALUES ('18041', '获取地址分页', 'caseBaseAddressPage', null, '/admin/caseBaseAddress/caseBaseAddressPage', 'GET', '1804', null, null, '1', '1', '2019-07-11 14:33:26', '2019-07-11 14:34:08', '0');
INSERT INTO `sys_menu` VALUES ('18042', '导出地址模板', 'caseBaseAddress_export', null, '/admin/caseBaseAddress/export', 'GET', '1804', null, null, '2', '1', '2019-07-19 23:18:13', '2019-07-19 23:53:59', '0');
INSERT INTO `sys_menu` VALUES ('18043', '导入地址', 'caseBaseAddress_import', null, '/admin/caseBaseAddress/import', 'POST', '1804', null, null, '3', '1', '2019-07-19 23:21:41', '2019-07-19 23:21:55', '0');
INSERT INTO `sys_menu` VALUES ('18044', '地址处理', 'caseBaseAddress_handleType', null, '/admin/caseBaseAddress/handle', 'POST', '1804', null, null, '4', '1', '2019-07-20 23:39:57', '2019-07-20 23:40:51', '0');
INSERT INTO `sys_menu` VALUES ('18051', '获取号码列表', 'caseBasePhonePage', null, '/admin/caseBasePhone/caseBasePhonePage', 'GET', '1805', null, null, '1', '1', '2019-07-11 14:34:58', null, '0');
INSERT INTO `sys_menu` VALUES ('18052', '导出号码模板', 'caseBasePhone_export', null, '/admin/caseBasePhone/export', 'GET', '1805', null, null, '2', '1', '2019-07-19 23:29:22', '2019-07-19 23:55:01', '0');
INSERT INTO `sys_menu` VALUES ('18053', '导入号码', 'caseBasePhone_import', null, '/admin/caseBasePhone/import', 'POST', '1805', null, null, '3', '1', '2019-07-19 23:29:46', '2019-07-19 23:55:32', '0');
INSERT INTO `sys_menu` VALUES ('18054', '号码处理', 'caseBasePhone_handleType', null, '/admin/caseBasePhone/handle', 'POST', '1805', null, null, '4', '1', '2019-07-20 17:37:44', '2019-07-20 17:38:39', '0');
INSERT INTO `sys_menu` VALUES ('18055', '添加号码', 'case_base_phone_add', null, '/admin/caseBasePhone/add', 'POST', '1805', null, null, '5', '1', '2019-12-29 19:55:08', null, '0');
INSERT INTO `sys_menu` VALUES ('18056', '修改电话', 'case_base_phone_update', null, '/admin/caseBasePhone/update', 'POST', '1805', null, null, '6', '1', '2019-12-29 19:55:48', null, '0');
INSERT INTO `sys_menu` VALUES ('18057', '为工单根据电话号码获取个案信息', 'case_phone_for_workorder', null, '/admin/caseBasePhone/getForWorkOrder', 'GET', '1805', null, null, '7', '1', '2020-01-13 16:54:25', '2020-01-13 16:55:38', '0');
INSERT INTO `sys_menu` VALUES ('18058', '案件详情号码列表', null, null, '/admin/caseBasePhone/caseBasePhoneQueryList', 'GET', '1805', null, null, '8', '1', '2020-04-03 22:16:14', null, '0');
INSERT INTO `sys_menu` VALUES ('18061', '备注列表', 'remark_list', null, '/admin/caseRemark/**', 'GET', '1806', null, null, '1', '1', '2019-08-26 13:55:35', null, '0');
INSERT INTO `sys_menu` VALUES ('18062', 'excel模板下载', 'case_remark_export', null, '/admin/caseRemark/export', 'GET', '1806', null, null, '2', '1', '2019-09-02 22:48:09', null, '0');
INSERT INTO `sys_menu` VALUES ('18063', 'excel模板导入', 'case_remark_import', null, '/admin/caseRemark/import', 'POST', '1806', null, null, '3', '1', '2019-09-02 22:48:56', '2019-09-02 22:49:15', '0');
INSERT INTO `sys_menu` VALUES ('18064', '删除备注', 'case_remark_delete', null, '/admin/caseRemark/**', 'DELETE', '1806', null, null, '4', '1', '2019-09-02 22:50:29', null, '0');
INSERT INTO `sys_menu` VALUES ('18065', '批量删除备注', 'remark_batch_del', null, '/admin/caseRemark/batchDel', 'DELETE', '1806', null, null, '5', '1', '2019-09-25 01:23:54', null, '0');
INSERT INTO `sys_menu` VALUES ('19051', '补录配置列表', null, null, '/admin/caseUrgeSupplyConfigInfo/page', 'GET', '1905', null, null, '1', '1', '2019-10-06 14:32:01', '2019-10-06 14:33:38', '0');
INSERT INTO `sys_menu` VALUES ('19052', '新增', 'urge_supply_add', null, '/admin/caseUrgeSupplyConfigInfo', 'POST', '1905', null, null, '2', '1', '2019-10-06 15:20:55', null, '0');
INSERT INTO `sys_menu` VALUES ('19053', '启用', 'urge_supply_trunon', null, '/admin/caseUrgeSupplyConfigInfo/turnOn/*', 'POST', '1905', null, null, '3', '1', '2019-10-06 15:22:23', null, '0');
INSERT INTO `sys_menu` VALUES ('19054', '停用', 'urge_supply_trunoff', null, '/admin/caseUrgeSupplyConfigInfo/turnOff/*', 'POST', '1905', null, null, '4', '1', '2019-10-06 15:23:25', null, '0');
INSERT INTO `sys_menu` VALUES ('19055', '删除', 'urge_supply_del', null, '/admin/caseUrgeSupplyConfigInfo/*', 'DELETE', '1905', null, null, '5', '1', '2019-10-06 15:24:03', '2019-10-07 17:19:29', '0');
INSERT INTO `sys_menu` VALUES ('19056', '编辑', 'urge_supply_upd', null, '/admin/caseUrgeSupplyConfigInfo', 'PUT', '1905', null, null, '6', '1', '2019-10-06 15:24:44', null, '0');
INSERT INTO `sys_menu` VALUES ('19057', '通过ID查询', 'urge_supply_byId', null, '/admin/caseUrgeSupplyConfigInfo/*', 'GET', '1905', null, null, '7', '1', '2019-10-06 15:25:31', null, '0');
INSERT INTO `sys_menu` VALUES ('19091', '测试工作台-工单系统', 'desk-getUserInfo', null, '/desk/demo/getUserInfo', 'GET', '1', null, null, '19', '1', '2020-03-27 18:40:20', null, '0');
INSERT INTO `sys_menu` VALUES ('19101', '案件减免记录列表', 'ass_cut_list_page', null, '/admin/caseCutdown/audit/*', 'GET', '191', null, null, '1', '1', '2019-06-09 22:00:43', null, '0');
INSERT INTO `sys_menu` VALUES ('19102', '审核通过', 'cutdown_audit_pass_btn', null, '/admin/caseCutdown/audit/pass', 'PUT', '191', null, null, '1', '1', '2019-06-09 22:01:47', null, '0');
INSERT INTO `sys_menu` VALUES ('19103', '审核失败', 'cutdown_audit_fail_btn', null, '/admin/caseCutdown/audit/fail', 'PUT', '191', null, null, '1', '1', '2019-06-09 22:02:56', null, '0');
INSERT INTO `sys_menu` VALUES ('19125', '本人催记', 'urge_info_self', null, '/admin/caseUrgeInfo/page/self', 'GET', '1901', null, null, '25', '1', '2019-09-13 22:05:41', '2019-09-14 09:57:22', '1');
INSERT INTO `sys_menu` VALUES ('19201', '报备申请通过', 'report_auditpass_btn', null, '/admin/reportCase/audit/pass', 'PUT', '192', null, null, '1', '1', '2019-06-14 21:19:46', null, '0');
INSERT INTO `sys_menu` VALUES ('19202', '报备记录列表', 'rm_reportCase_page', null, '/admin/reportCase/**', 'GET', '192', null, null, '1', '1', '2019-06-14 21:18:21', null, '0');
INSERT INTO `sys_menu` VALUES ('19203', '报备审核失败', 'report_audit_fail', null, '/admin/reportCase/audit/fail', 'PUT', '192', null, null, '1', '1', '2019-06-14 21:20:44', null, '0');
INSERT INTO `sys_menu` VALUES ('19501', '工单模板管理', 'workorder_template_management', 'workTempManagement', null, 'GET', '195', 'icon-xiangmubaobei', 'views/workOrderManagement/workTempManagement/index', '10', '0', '2019-09-11 22:41:42', '2019-09-17 22:08:55', '0');
INSERT INTO `sys_menu` VALUES ('19521', '分页查询', null, null, '/admin/caseWorkOrderFullInfo/page', 'GET', '1952', null, null, '1', '1', '2020-01-01 16:17:25', '2020-01-01 16:30:50', '0');
INSERT INTO `sys_menu` VALUES ('19522', '新增', null, null, '/admin/caseWorkOrderFullInfo', 'POST', '1952', null, null, '2', '1', '2020-01-01 16:18:00', null, '0');
INSERT INTO `sys_menu` VALUES ('19523', '更新', null, null, '/admin/caseWorkOrderFullInfo', 'PUT', '1952', null, null, '3', '1', '2020-01-01 16:18:29', null, '0');
INSERT INTO `sys_menu` VALUES ('19524', '审批', null, null, '/admin/caseWorkOrderFullInfo/workOrderStatus', 'POST', '1952', null, null, '4', '1', '2020-01-08 16:48:04', null, '0');
INSERT INTO `sys_menu` VALUES ('19525', '工单回复保存更新图日', null, null, '/admin/caseWorkOrderFullInfo/reply/save', 'POST', '1952', null, null, '5', '1', '2020-01-17 22:33:32', null, '0');
INSERT INTO `sys_menu` VALUES ('19526', '工单回复分页查询', null, null, '/admin/caseWorkOrderFullInfo/reply/page', 'GET', '1952', null, null, '6', '1', '2020-01-17 22:34:29', null, '0');
INSERT INTO `sys_menu` VALUES ('19527', '工单导入', null, null, '/admin/caseWorkOrderFullInfo/import', 'POST', '1952', null, null, '7', '1', '2020-01-18 12:01:11', null, '0');
INSERT INTO `sys_menu` VALUES ('19528', '工单导出', null, null, '/admin/caseWorkOrderExport/export', 'GET', '1952', null, null, '8', '1', '2020-01-21 14:30:57', '2020-02-23 15:53:43', '0');
INSERT INTO `sys_menu` VALUES ('19529', '工单详情', null, null, '/admin/caseWorkOrderFullInfo/detail/*', 'GET', '1952', null, null, '9', '1', '2020-02-23 11:31:39', null, '0');
INSERT INTO `sys_menu` VALUES ('19541', '查询', null, null, '/admin/caseWorkOrderTypeInfo/page', 'GET', '1954', null, null, '1', '1', '2020-02-18 12:04:48', '2020-02-18 12:05:02', '0');
INSERT INTO `sys_menu` VALUES ('19542', '添加工单类型', null, null, '/admin/caseWorkOrderTypeInfo', 'POST', '1954', null, null, '2', '1', '2020-02-18 12:05:49', null, '0');
INSERT INTO `sys_menu` VALUES ('19543', '修改工单类型', null, null, '/admin/caseWorkOrderTypeInfo', 'PUT', '1954', null, null, '1', '1', '2020-02-18 12:06:11', null, '0');
INSERT INTO `sys_menu` VALUES ('19544', '工单类型下拉选项', null, null, '/admin/caseWorkOrderTypeInfo/list', 'GET', '1954', null, null, '4', '1', '2020-02-18 17:37:16', null, '0');
INSERT INTO `sys_menu` VALUES ('19545', '工单类型下拉选项2', null, null, '/admin/caseWorkOrderTypeInfo/list2', 'GET', '1954', null, null, '5', '1', '2020-02-24 14:49:10', '2020-02-24 14:58:00', '1');
INSERT INTO `sys_menu` VALUES ('19551', '工单回复模板列表', null, null, '/admin/caseWorkOrderReplayTemplateInfo/list', 'GET', '1955', null, null, '1', '1', '2020-02-19 12:27:49', null, '0');
INSERT INTO `sys_menu` VALUES ('19552', '添加工单回复模板', null, null, '/admin/caseWorkOrderReplayTemplateInfo', 'POST', '1955', null, null, '2', '1', '2020-02-19 12:28:39', null, '0');
INSERT INTO `sys_menu` VALUES ('19553', '修改工单回复模板', null, null, '/admin/caseWorkOrderReplayTemplateInfo', 'PUT', '1955', null, null, '3', '1', '2020-02-19 12:29:12', null, '0');
INSERT INTO `sys_menu` VALUES ('19554', '删除工单回复模板', null, null, '/admin/caseWorkOrderReplayTemplateInfo/*', 'DELETE', '1955', null, null, '4', '1', '2020-02-19 12:29:47', '2020-02-19 12:30:08', '0');
INSERT INTO `sys_menu` VALUES ('19555', '查询工单类型意见', null, null, '/admin/caseWorkOrderReplayTemplateInfo/list2', 'GET', '1955', null, null, '5', '1', '2020-02-24 14:59:09', null, '0');
INSERT INTO `sys_menu` VALUES ('19561', '工单统计', null, null, '/admin/caseWorkOrderFullInfo/countStatus', 'GET', '1956', null, null, '1', '1', '2020-02-22 19:16:43', null, '0');
INSERT INTO `sys_menu` VALUES ('20001', '语音识别', null, 'speechRecognition', null, 'GET', '200', 'icon-anjianguanli1', 'views/qualityInspection/speechRecognition/index', '1', '0', '2019-08-10 10:43:45', '2019-08-18 18:02:47', '0');
INSERT INTO `sys_menu` VALUES ('20002', '录音管理', null, 'recordMange', null, 'GET', '200', 'icon-yonghuguanli', 'views/qualityInspection/recordMange/recordMange', '2', '0', '2019-08-10 10:45:54', '2019-08-18 22:37:05', '0');
INSERT INTO `sys_menu` VALUES ('20003', '质检类型管理', 'quality_type_management', 'qualityType', null, 'GET', '200', 'icon-anjianguanli1', 'views/qualityInspection/qualityType/index', '3', '0', '2020-03-14 00:35:04', '2020-03-14 00:40:33', '0');
INSERT INTO `sys_menu` VALUES ('20004', '差错类型配置', 'error_type_config', 'errorType', null, 'GET', '200', 'icon-anjianguanli1', 'views/qualityInspection/errorType/index', '4', '0', '2020-03-14 00:39:34', '2020-03-14 00:40:19', '0');
INSERT INTO `sys_menu` VALUES ('20005', '差错配置', 'error_config', 'errorConfig', null, 'GET', '200', 'icon-anjianguanli1', 'views/qualityInspection/errorConfig/index', '5', '0', '2020-03-14 00:41:52', '2020-03-14 00:42:01', '0');
INSERT INTO `sys_menu` VALUES ('20006', '质检任务管理', 'quality_task_management', 'qualityTask', null, 'GET', '200', null, 'views/qualityInspection/qualityTask/index', '6', '0', '2020-04-09 07:41:15', '2020-04-09 07:41:58', '0');
INSERT INTO `sys_menu` VALUES ('20007', '质检工作台', 'quality_work_bench', 'qualityWorkBench', null, 'GET', '200', null, 'views/qualityInspection/qualityWorkBench/index', '7', '0', '2020-04-10 00:02:12', '2020-04-10 00:02:54', '0');
INSERT INTO `sys_menu` VALUES ('20008', '申诉原因配置', 'appeal_reason', 'appealReason', null, 'GET', '200', null, 'views/qualityInspection/appealReason/index', '8', '0', '2020-04-15 01:51:34', '2020-04-15 01:52:08', '0');
INSERT INTO `sys_menu` VALUES ('20009', '申述管理', 'appeal_manage', 'appealManage', null, 'GET', '200', null, 'views/qualityInspection/appealManage/index', '9', '0', '2020-04-15 01:52:47', '2020-04-15 01:53:10', '0');
INSERT INTO `sys_menu` VALUES ('20010', '我的申诉记录', 'my_appeal_management', 'myAppeal', null, 'GET', '200', null, 'views/qualityInspection/myAppeal/index', '10', '0', '2020-04-15 22:22:24', null, '0');
INSERT INTO `sys_menu` VALUES ('20011', '我的质检工作台', 'my_quality_work_bench', 'myQualityWorkBench', null, 'GET', '200', null, 'views/qualityInspection/myQualityWorkBench/index', '11', '0', '2020-04-15 22:22:48', '2020-04-15 22:23:22', '0');
INSERT INTO `sys_menu` VALUES ('20101', '外访申请列表', 'visit_base_info_list', null, '/admin/visitBaseInfo/visitBaseInfoPage', 'GET', '201', null, null, '1', '1', '2019-12-23 11:51:53', '2019-12-23 15:49:36', '0');
INSERT INTO `sys_menu` VALUES ('20102', '我的外访申请列表', 'my_visit_base_info_list', null, '/admin/visitBaseInfo/myVisitBaseInfoPage', 'GET', '201', null, null, '2', '1', '2019-12-23 15:53:02', null, '0');
INSERT INTO `sys_menu` VALUES ('20103', '保存外访', 'visit_base_info_add', null, '/admin/visitBaseInfo', 'POST', '201', null, null, '3', '1', '2019-12-23 20:21:30', '2019-12-27 10:19:54', '0');
INSERT INTO `sys_menu` VALUES ('20104', '外访审核', 'visit_base_info_audit', null, '/admin/visitBaseInfo/audit', 'POST', '201', null, null, '4', '1', '2019-12-23 20:22:28', null, '0');
INSERT INTO `sys_menu` VALUES ('20301', '外访批次列表', 'visit_batch_list', null, '/admin/visitBatch/visitBatchPage', 'GET', '203', null, null, '1', '1', '2019-12-23 20:23:47', null, '0');
INSERT INTO `sys_menu` VALUES ('20302', '根据个案和催收区域获取所有外访批次', 'visit_batch_get_list', null, '/admin/visitBatch/visitBatchList', 'GET', '203', null, null, '2', '1', '2019-12-23 20:26:50', '2019-12-23 20:27:24', '0');
INSERT INTO `sys_menu` VALUES ('20303', '保存外访批次', 'visit_batch_add', null, '/admin/visitBatch', 'POST', '203', null, null, '3', '1', '2019-12-23 20:28:16', '2019-12-27 10:20:09', '0');
INSERT INTO `sys_menu` VALUES ('20304', '修改外访批次', 'visit_batch_edit', null, '/admin/visitBatch', 'PUT', '203', null, null, '4', '1', '2019-12-23 20:29:13', null, '0');
INSERT INTO `sys_menu` VALUES ('20305', '外访批次审核', 'visit_batch_audit', null, '/admin/visitBatch/audit', 'POST', '203', null, null, '5', '1', '2019-12-23 20:30:02', null, '0');
INSERT INTO `sys_menu` VALUES ('22021', '查询', null, null, '/admin/caseHandGroupInfo/page', 'GET', '2202', null, null, '1', '1', '2020-03-11 12:42:01', null, '0');
INSERT INTO `sys_menu` VALUES ('22022', '添加', null, null, '/admin/caseHandGroupInfo', 'POST', '2202', null, null, '2', '1', '2020-03-11 12:43:23', null, '0');
INSERT INTO `sys_menu` VALUES ('22023', '修改', null, null, '/admin/caseHandGroupInfo', 'PUT', '2202', null, null, '3', '1', '2020-03-11 12:44:04', null, '0');
INSERT INTO `sys_menu` VALUES ('22024', '下拉选项', null, null, '/admin/caseHandGroupInfo/list', 'GET', '2202', null, null, '4', '1', '2020-03-11 12:45:28', null, '0');
INSERT INTO `sys_menu` VALUES ('22025', '删除', null, null, '/admin/caseHandGroupInfo/*', 'DELETE', '2202', null, null, '5', '1', '2020-03-11 12:50:03', '2020-03-11 12:50:30', '0');
INSERT INTO `sys_menu` VALUES ('22026', '获取单条数据', null, null, '/admin/caseHandGroupInfo/*', 'GET', '2202', null, null, '6', '1', '2020-03-11 12:51:08', null, '0');
INSERT INTO `sys_menu` VALUES ('22031', '查询', null, null, '/admin/materialTypeInfo/page', 'GET', '2203', null, null, '1', '1', '2020-03-13 20:58:13', '2020-03-13 21:02:21', '0');
INSERT INTO `sys_menu` VALUES ('22032', '添加', null, null, '/admin/materialTypeInfo', 'POST', '2203', null, null, '2', '1', '2020-03-13 20:58:54', '2020-03-13 21:02:34', '0');
INSERT INTO `sys_menu` VALUES ('22033', '修改', null, null, '/admin/materialTypeInfo', 'PUT', '2203', null, null, '3', '1', '2020-03-13 20:59:09', '2020-03-13 21:02:43', '0');
INSERT INTO `sys_menu` VALUES ('22034', '删除', null, null, '/admin/materialTypeInfo/*', 'DELETE', '2203', null, null, '4', '1', '2020-03-13 21:00:45', '2020-03-13 21:03:06', '0');
INSERT INTO `sys_menu` VALUES ('22035', '获取单条数据', null, null, '/admin/materialTypeInfo/*', 'GET', '2203', null, null, '5', '1', '2020-03-13 21:01:11', '2020-03-13 21:03:15', '0');
INSERT INTO `sys_menu` VALUES ('22036', '获取下拉列表', null, null, '/admin/materialTypeInfo/list', 'GET', '2203', null, null, '6', '1', '2020-03-13 21:01:29', '2020-03-13 21:03:24', '0');
INSERT INTO `sys_menu` VALUES ('22041', '查询', null, null, '/admin/materialBaseInfo/page', 'GET', '2204', null, null, '1', '1', '2020-03-13 21:04:31', null, '0');
INSERT INTO `sys_menu` VALUES ('22042', '添加', null, null, '/admin/materialBaseInfo', 'POST', '2204', null, null, '2', '1', '2020-03-13 21:04:57', null, '0');
INSERT INTO `sys_menu` VALUES ('22043', '修改', null, null, '/admin/materialBaseInfo', 'PUT', '2204', null, null, '3', '1', '2020-03-13 21:05:20', null, '0');
INSERT INTO `sys_menu` VALUES ('22044', '删除', null, null, '/admin/materialBaseInfo/*', 'DELETE', '2204', null, null, '4', '1', '2020-03-13 21:05:39', null, '0');
INSERT INTO `sys_menu` VALUES ('22045', '获取单条数据', null, null, '/admin/materialBaseInfo/*', 'GET', '2204', null, null, '5', '1', '2020-03-13 21:06:03', null, '0');
INSERT INTO `sys_menu` VALUES ('22051', '添加催收区域', null, null, '/admin/loansCaseCollection', 'POST', '2205', null, null, '1', '1', '2020-04-01 21:29:14', null, '0');
INSERT INTO `sys_menu` VALUES ('22052', '修改催收区域', null, null, '/admin/loansCaseCollection', 'PUT', '2205', null, null, '2', '1', '2020-04-01 21:39:54', null, '0');
INSERT INTO `sys_menu` VALUES ('22053', '获取分页数据', null, null, '/admin/loansCaseCollection/loansCaseCollectionPage', 'GET', '2205', null, null, '3', '1', '2020-04-01 21:40:56', null, '0');
INSERT INTO `sys_menu` VALUES ('22054', '更新有效性', null, null, '/admin/loansCaseCollection/updateState', 'POST', '2205', null, null, '4', '1', '2020-04-01 21:41:58', null, '0');
INSERT INTO `sys_menu` VALUES ('23011', '获取报表', null, null, '/admin/partyAStatement/query', 'POST', '2301', null, null, '1', '1', '2020-02-23 15:28:43', null, '0');
INSERT INTO `sys_menu` VALUES ('23012', '导出报表', null, null, '/admin/partyAStatement/export', 'POST', '2301', null, null, '2', '1', '2020-02-23 15:29:23', null, '0');
INSERT INTO `sys_menu` VALUES ('23013', '根据委案方获取案件批次号', null, null, '/admin/loansCaseBatch/getByPrincipalId', 'GET', '2301', null, null, '3', '1', '2020-02-23 15:31:27', null, '0');
INSERT INTO `sys_menu` VALUES ('23014', '根据案件批次id获取逾期手别和逾期阶段的值列表', null, null, '/admin/loansCaseBatch/getFieldListByBatchId', 'GET', '2301', null, null, '4', '1', '2020-02-23 15:32:36', null, '0');
INSERT INTO `sys_menu` VALUES ('24209', '查询', null, null, '/admin//lableTypeInfo/lableTypeInfoPage', 'GET', '242', null, null, '1', '1', '2020-03-23 23:51:52', null, '0');
INSERT INTO `sys_menu` VALUES ('26011', '所有工单类型查询', null, null, '/desk/taskType/listAll', 'GET', '2601', null, null, '1', '1', '2020-04-23 18:18:56', '2020-04-24 10:21:15', '0');
INSERT INTO `sys_menu` VALUES ('26012', '工单类型列表查询', null, null, '/desk/taskType/list', 'GET', '2601', null, null, '2', '1', '2020-04-23 18:19:48', '2020-04-24 10:20:06', '0');
INSERT INTO `sys_menu` VALUES ('26013', '新增工单类型', null, null, '/desk/taskType/add', 'POST', '2601', null, null, '3', '1', '2020-04-23 18:21:53', '2020-04-24 16:40:07', '0');
INSERT INTO `sys_menu` VALUES ('26014', '查看工单类型详情', null, null, '/desk/taskType/detail/**', 'GET', '2601', null, null, '4', '1', '2020-04-23 18:22:47', '2020-04-24 16:40:12', '0');
INSERT INTO `sys_menu` VALUES ('26015', '修改工单类型', null, null, '/desk/taskType/update', 'POST', '2601', null, null, '5', '1', '2020-04-23 18:23:20', '2020-04-24 16:40:19', '0');
INSERT INTO `sys_menu` VALUES ('26016', '修改工单类型状态', null, null, '/desk/taskType/updateStatus', 'POST', '2601', null, null, '6', '1', '2020-04-23 18:23:50', '2020-04-24 16:40:26', '0');
INSERT INTO `sys_menu` VALUES ('26017', '批量删除工单类型', null, null, '/desk/taskType/delete', 'DELETE', '2601', null, null, '7', '1', '2020-04-23 18:24:19', '2020-04-24 16:40:32', '0');
INSERT INTO `sys_menu` VALUES ('26021', '获取问题分类列表', null, null, '/desk/question/list', 'GET', '2602', null, null, '1', '1', '2020-04-24 18:32:36', null, '0');
INSERT INTO `sys_menu` VALUES ('26022', '获取问题分类详情', null, null, '/desk/question/detail/**', 'GET', '2602', null, null, '2', '1', '2020-04-24 18:33:17', null, '0');
INSERT INTO `sys_menu` VALUES ('26023', '新增问题分类', null, null, '/desk/question/add', 'POST', '2602', null, null, '3', '1', '2020-04-24 18:33:44', null, '0');
INSERT INTO `sys_menu` VALUES ('26024', '修改问题分类', null, null, '/desk/question/update', 'POST', '2602', null, null, '4', '1', '2020-04-24 18:34:10', null, '0');
INSERT INTO `sys_menu` VALUES ('26025', '修改问题分类状态', null, null, '/desk/question/updateStatus', 'POST', '2602', null, null, '5', '1', '2020-04-24 18:34:37', null, '0');
INSERT INTO `sys_menu` VALUES ('26026', '删除问题分类', null, null, '/desk/question/delete', 'DELETE', '2602', null, null, '6', '1', '2020-04-24 18:35:00', null, '0');
INSERT INTO `sys_menu` VALUES ('26027', '获取全部问题分类', null, null, '/desk/question/listAll', 'GET', '2602', null, null, '7', '1', '2020-04-25 12:35:03', null, '0');
INSERT INTO `sys_menu` VALUES ('26031', '获取人员配置列表', null, null, '/desk/personConfig/list', 'GET', '2603', null, null, '1', '1', '2020-04-26 11:19:45', null, '0');
INSERT INTO `sys_menu` VALUES ('26032', '更新人员配置', null, null, '/desk/personConfig/addOrUpdate', 'POST', '2603', null, null, '2', '1', '2020-04-26 11:20:11', null, '0');
INSERT INTO `sys_menu` VALUES ('26033', '修改人员配置状态', null, null, '/desk/personConfig/updateStatus', 'POST', '2603', null, null, '3', '1', '2020-04-26 11:20:32', null, '0');
INSERT INTO `sys_menu` VALUES ('26034', '查询人员配置详情', null, null, '/desk/personConfig/detail/**', 'GET', '2603', null, null, '4', '1', '2020-04-26 11:20:54', null, '0');
INSERT INTO `sys_menu` VALUES ('26041', '获取座位片区列表', null, null, '/desk/seat/list', 'GET', '2604', null, null, '1', '1', '2020-04-26 10:43:47', null, '0');
INSERT INTO `sys_menu` VALUES ('26042', '查询分公司列表', null, null, '/desk/company/list', 'GET', '2604', null, null, '2', '1', '2020-04-26 10:44:13', null, '0');
INSERT INTO `sys_menu` VALUES ('26043', '新增座位片区', null, null, '/desk/seat/add', 'POST', '2604', null, null, '1', '1', '2020-04-26 10:44:37', null, '0');
INSERT INTO `sys_menu` VALUES ('26044', '修改座位片区', null, null, '/desk/seat/update', 'POST', '2604', null, null, '4', '1', '2020-04-26 10:44:55', null, '0');
INSERT INTO `sys_menu` VALUES ('26045', '修改座位片区状态', null, null, '/desk/seat/updateStatus', 'POST', '2604', null, null, '5', '1', '2020-04-26 10:45:21', null, '0');
INSERT INTO `sys_menu` VALUES ('26046', '查询座位片区详情', null, null, '/desk/seat/detail/**', 'GET', '2604', null, null, '6', '1', '2020-04-26 10:45:47', null, '0');
INSERT INTO `sys_menu` VALUES ('26047', '删除座位片区', null, null, '/desk/seat/delete', 'DELETE', '2604', null, null, '7', '1', '2020-04-26 10:46:07', null, '0');
INSERT INTO `sys_menu` VALUES ('26051', '获取工单提示语列表', null, null, '/desk/taskTip/list', 'GET', '2605', null, null, '1', '1', '2020-04-25 14:15:47', null, '0');
INSERT INTO `sys_menu` VALUES ('26052', '更新工单提示语', null, null, '/desk/taskTip/addOrUpdate', 'POST', '2605', null, null, '2', '1', '2020-04-25 14:16:27', null, '0');
INSERT INTO `sys_menu` VALUES ('28011', '上传工单附件', null, null, '/desk/task/uploadFile', 'POST', '2801', null, null, '1', '1', '2020-04-27 17:03:38', '2020-04-29 14:24:43', '0');
INSERT INTO `sys_menu` VALUES ('28012', '新增工单', null, null, '/desk/task/add', 'POST', '2801', null, null, '2', '1', '2020-04-27 17:04:13', null, '0');
INSERT INTO `sys_menu` VALUES ('28013', '获取工单类型所有分类及所有问题分类', null, null, '/desk/taskType/listAllWithQuestions', 'GET', '2801', null, null, '3', '1', '2020-05-02 14:56:07', null, '0');
INSERT INTO `sys_menu` VALUES ('28014', '获取人员配置信息详情', null, null, '/desk/personConfig/detail/**/**', 'GET', '2801', null, null, '4', '1', '2020-05-05 12:08:52', null, '0');
INSERT INTO `sys_menu` VALUES ('28021', '获取我的工单列表', null, null, '/desk/task/list', 'GET', '2802', null, null, '1', '1', '2020-04-26 18:24:30', null, '0');
INSERT INTO `sys_menu` VALUES ('28022', '获取工单详情', null, null, '/desk/task/detail/**', 'GET', '2802', null, null, '2', '1', '2020-04-26 18:25:13', null, '0');
INSERT INTO `sys_menu` VALUES ('28023', '回复工单内容', null, null, '/desk/task/answer', 'POST', '2802', null, null, '3', '1', '2020-04-26 18:26:27', null, '0');
INSERT INTO `sys_menu` VALUES ('28024', '新增工单', null, null, '/desk/task/add', 'POST', '2802', null, null, '4', '1', '2020-04-26 18:26:49', null, '0');
INSERT INTO `sys_menu` VALUES ('28025', '修改工单状态', null, null, '/desk/task/updateProgress', 'POST', '2802', null, null, '5', '1', '2020-04-26 18:28:16', null, '0');
INSERT INTO `sys_menu` VALUES ('28026', '关闭工单', null, null, '/desk/task/closed', 'POST', '2802', null, null, '6', '1', '2020-04-29 18:20:25', null, '0');
INSERT INTO `sys_menu` VALUES ('28027', '确认工单', null, null, '/desk/task/confirm', 'POST', '2802', null, null, '7', '1', '2020-04-29 18:21:38', null, '0');
INSERT INTO `sys_menu` VALUES ('28028', '获取评分', null, null, '/desk/degree/getDegree', 'POST', '2802', null, null, '8', '1', '2020-04-29 18:23:01', null, '0');
INSERT INTO `sys_menu` VALUES ('28029', '新增评分', null, null, '/desk/degree/add', 'POST', '2802', null, null, '9', '1', '2020-04-29 18:23:25', null, '0');
INSERT INTO `sys_menu` VALUES ('101110', '案件批次删除', 'loan-casebatch-delete', null, '/admin/loansCaseBatch/**', 'DELETE', '1011', null, null, '8', '1', '2019-03-06 05:10:05', '2019-03-06 05:12:01', '0');
INSERT INTO `sys_menu` VALUES ('101111', '导入案件', 'import-case-flie', null, '/admin/case/import', 'POST', '1011', null, null, '10', '1', '2019-03-13 14:45:33', '2019-03-13 14:45:48', '0');
INSERT INTO `sys_menu` VALUES ('101112', '案件导入任务信息获取', 'getExcelImportTask', null, '/admin/excelImportTask/**', 'GET', '1011', null, null, '9', '1', '2019-05-04 04:07:26', '2019-05-04 04:10:06', '0');
INSERT INTO `sys_menu` VALUES ('101113', '覆盖更新', 'cover-import-case-flie', null, '/admin/case/coverImport', 'POST', '1011', null, null, '13', '1', '2019-07-28 18:00:37', '2019-07-28 18:01:05', '0');
INSERT INTO `sys_menu` VALUES ('101114', '导出案件', 'case_export', null, '/admin/case/export', 'POST', '1011', null, null, '14', '1', '2019-09-24 23:48:14', null, '0');
INSERT INTO `sys_menu` VALUES ('101115', '浦发同步单个证件号数据', 'pufa_sync_certno', null, '/admin/pufaInfo/syncPufaData/*', 'GET', '1011', null, null, '15', '1', '2020-03-31 23:41:53', '2020-04-05 02:51:55', '0');
INSERT INTO `sys_menu` VALUES ('101116', '异步拉取浦发数据', 'pufa_async', null, '/admin/pufaInfo/asyncPufaData', 'GET', '1011', null, null, '16', '1', '2020-04-04 16:56:31', null, '0');
INSERT INTO `sys_menu` VALUES ('101117', '多线程拉取浦发数据', 'pufa_asnync_thread', null, '/admin/pufaInfo/asyncPufaData/*', 'GET', '1011', null, null, '17', '1', '2020-04-04 16:57:52', '2020-04-05 02:52:00', '0');
INSERT INTO `sys_menu` VALUES ('101118', '浦发手动触发退案', null, null, '/admin/pufaInfo/autoWithdraw', 'GET', '1011', null, null, '18', '1', '2020-05-04 17:55:24', null, '0');
INSERT INTO `sys_menu` VALUES ('101311', '根据模板id获取配置字段列表', 'excel_tmp_list_by_tmpid', null, '/admin/loanExcelTmpConfig/loanExcelTmpConfigDTOList/*', 'GET', '1013', null, null, '1', '1', '2019-03-10 14:25:37', null, '0');
INSERT INTO `sys_menu` VALUES ('101312', '自定义模板配置字段添加', 'batch-add-tmp-config', null, '/admin/loanExcelTmpConfig/batchAddTmpConfig/*', 'POST', '1013', null, null, '9', '1', '2019-03-12 13:02:02', '2019-03-12 14:11:56', '0');
INSERT INTO `sys_menu` VALUES ('101315', '通用银行模板配置字段查看', 'bankLoanFieldList', null, '/admin/bankLoanField/bankLoanFieldList', 'GET', '1013', null, null, '6', '1', '2019-06-07 22:38:15', '2019-06-07 22:39:45', '0');
INSERT INTO `sys_menu` VALUES ('101317', '广发银行模板全量字段', 'guangfaLoanFieldResult', null, '/admin/guangfaLoanField/guangfaLoanFieldResult', 'GET', '1013', null, null, '9', '1', '2019-06-27 22:52:12', null, '0');
INSERT INTO `sys_menu` VALUES ('101318', '下载模板', 'export_Template', null, '/admin/loanExcelTemplate/export/**', 'GET', '1013', null, null, '18', '1', '2019-07-13 12:30:43', '2019-07-13 12:31:02', '0');
INSERT INTO `sys_menu` VALUES ('101319', '农行模版全量字段', 'agriculturalLoanFieldResult', null, '/admin/agriculturalLoanField/agriculturalLoanFieldResult', 'GET', '1013', null, null, '19', '1', '2020-05-05 22:31:09', '2020-05-06 09:47:35', '0');
INSERT INTO `sys_menu` VALUES ('101710', '案件分配记录列表', 'case_allot_list', '1', '/admin/caseAllotRecord/list/**', 'GET', '1017', null, '1', '1', '1', '2019-03-27 06:37:24', null, '0');
INSERT INTO `sys_menu` VALUES ('101711', '删除案件', 'batch-delete-case', null, '/admin//case/batchDelCase', 'DELETE', '1017', null, null, '9', '1', '2019-04-07 13:02:55', '2019-04-07 13:03:30', '0');
INSERT INTO `sys_menu` VALUES ('101712', '待分配案件列表', 'caseAssignmentRelPage', null, '/admin/caseAssignment/caseAssignmentPage', 'GET', '1017', null, null, '8', '1', '2019-04-08 12:39:21', '2019-04-10 15:03:40', '0');
INSERT INTO `sys_menu` VALUES ('101717', '添加到待分配列表', 'add_case_assignment', '1', '/admin/caseAssignment/addCaseAssignmentRel', 'PUT', '1017', '1', '1', '1', '1', '2019-04-07 15:25:09', null, '0');
INSERT INTO `sys_menu` VALUES ('101718', '添加到待分配列表-批量', 'batch_add_assign', null, '/admin/caseAssignment/addCaseAssignmentRelBatch/**', 'GET', '1017', null, null, '1', '1', '2019-04-08 14:39:10', '2019-04-09 14:29:59', '0');
INSERT INTO `sys_menu` VALUES ('101719', '批量配置案归组ID', 'batch_toRedploy', null, '/admin/caseDept/toRedeployBatch/**', 'GET', '1017', null, null, '1', '1', '2019-04-10 13:02:17', null, '0');
INSERT INTO `sys_menu` VALUES ('101720', '开始自动分案预览', 'case-auto-assign', null, '/admin/case/autoAssign', 'POST', '1017', null, null, '15', '1', '2019-04-17 14:59:23', null, '0');
INSERT INTO `sys_menu` VALUES ('101721', '案件可分配或不可分配标记接口', null, null, '/admin/case/markCaseCanAssign/**', 'POST', '1017', null, null, '11', '1', '2019-04-18 15:17:24', '2019-04-18 15:18:53', '0');
INSERT INTO `sys_menu` VALUES ('101723', '不可分案列表', 'getCannotAssignCasePage', null, '/admin/case/getCannotAssignCasePage', 'POST', '1017', null, null, '13', '1', '2019-04-21 13:58:17', '2019-04-21 13:58:27', '0');
INSERT INTO `sys_menu` VALUES ('101724', '开始分案流程', 'caseAssignStartAuto', null, '/admin/caseAssignBaseInfo/start/AUTO', 'POST', '1017', null, null, '13', '1', '2019-04-21 15:11:52', null, '0');
INSERT INTO `sys_menu` VALUES ('101725', '查询当前用户分案结果', 'getAssignResultByAssignNo', null, '/admin/caseAssignResult/getAssignResultByAssignNo', 'GET', '1017', null, null, '14', '1', '2019-04-22 14:45:22', '2019-06-17 21:17:13', '0');
INSERT INTO `sys_menu` VALUES ('101726', '进入，开始分案流程', 'caseAssignNext', null, '/admin/caseAssignBaseInfo/next/AUTO', 'POST', '1017', null, null, '15', '1', '2019-04-22 14:49:30', null, '0');
INSERT INTO `sys_menu` VALUES ('101727', '放弃分案结果', 'cancelAssignResult', null, '/admin/case/cancelAssignResult', 'POST', '1017', null, null, '17', '1', '2019-04-24 14:41:39', null, '0');
INSERT INTO `sys_menu` VALUES ('101728', '案件手动分配', 'manualAssignCase', null, '/admin/case/manualAssign', 'POST', '1017', null, null, '20', '1', '2019-05-04 06:34:24', '2019-05-04 06:40:53', '0');
INSERT INTO `sys_menu` VALUES ('101729', '案件退案', 'PostCaseWithdraw', null, '/admin/caseWithdraw', 'POST', '1017', null, null, '29', '1', '2019-05-04 13:40:48', null, '0');
INSERT INTO `sys_menu` VALUES ('101730', '确认分案结果', 'confirmAssignResult ', null, '/admin/case/confirmAssignResult', 'POST', '1017', null, null, '30', '1', '2019-05-20 15:11:26', '2019-05-20 15:15:20', '0');
INSERT INTO `sys_menu` VALUES ('101732', '案归组树加载', 'caseDept-tree', null, '/admin/caseDept/tree', 'GET', '1017', null, null, '33', '1', '2019-06-20 21:30:25', null, '0');
INSERT INTO `sys_menu` VALUES ('101733', '重新分案', 'case_retry_assign', null, '/admin/caseAllotRecord/retryAssign', 'POST', '1017', null, null, '33', '1', '2019-08-31 21:06:37', '2019-08-31 21:07:38', '0');
INSERT INTO `sys_menu` VALUES ('101734', '撤回分案', 'case_withdrawAllot', null, '/admin/caseAllotRecord/withdrawAllot', 'POST', '1017', null, null, '34', '1', '2019-09-03 23:41:55', '2019-09-03 23:43:51', '0');
INSERT INTO `sys_menu` VALUES ('101735', '通过委案方获取案件批次列表', 'case_batch_by_principal', null, '/admin/loansCaseBatch/getByPrincipalId', 'GET', '1017', null, null, '35', '1', '2019-11-03 00:47:06', null, '0');
INSERT INTO `sys_menu` VALUES ('101736', '恢复上任业务员查询', null, null, '/admin/caseAllotRecord/restoreExAssign', 'POST', '1017', null, null, '36', '1', '2020-03-11 14:23:07', null, '0');
INSERT INTO `sys_menu` VALUES ('101737', '恢复上任业务员', null, null, '/admin/caseAllotRecord/restoreExQuery', 'POST', '1017', null, null, '37', '1', '2020-03-11 14:23:44', null, '0');
INSERT INTO `sys_menu` VALUES ('101901', '获取列表', 'task_result_list', null, '/admin/taskAllRecord/taskAllRecordPage', 'GET', '1019', null, null, '1', '1', '2019-09-08 01:29:55', null, '0');
INSERT INTO `sys_menu` VALUES ('104122', '查询条件缓存', 'formQuery_cache', null, '/admin/caseCachePage/cache', 'POST', '1401', null, null, '1', '1', '2019-09-24 21:03:26', '2019-09-24 21:09:48', '0');
INSERT INTO `sys_menu` VALUES ('121110', '获取电催地址列表', 'caseBaseAddressList', null, '/admin/caseBaseAddress/caseBaseAddressList', 'GET', '1211', null, null, '10', '1', '2019-07-11 14:20:26', null, '0');
INSERT INTO `sys_menu` VALUES ('121111', '获取电催号码分页', 'caseBasePhonePage', null, '/admin/caseBasePhone/caseBasePhonePage', 'GET', '1211', null, null, '11', '1', '2019-07-11 14:21:46', '2019-07-11 14:25:44', '0');
INSERT INTO `sys_menu` VALUES ('121112', '获取电催证件分页', 'caseBaseIdcardPage', null, '/admin/caseBaseIdcard/caseBaseIdcardPage', 'GET', '1211', null, null, '12', '1', '2019-07-11 14:22:09', '2019-07-11 14:26:50', '0');
INSERT INTO `sys_menu` VALUES ('121113', '获取电催地址分页', 'caseBaseAddressPage', null, '/admin/caseBaseAddress/caseBaseAddressPage', 'GET', '1211', null, null, '13', '1', '2019-07-11 14:22:40', '2019-07-11 14:27:38', '0');
INSERT INTO `sys_menu` VALUES ('121114', '号码图谱', 'caseBasePhoneMap', null, '/admin/caseBasePhone/caseBasePhoneMap', 'GET', '1211', null, null, '14', '1', '2019-07-11 14:23:56', '2019-07-11 14:28:23', '0');
INSERT INTO `sys_menu` VALUES ('121115', '证件图谱', 'caseBaseIdcardMap', null, '/admin/caseBaseIdcard/caseBaseIdcardMap', 'GET', '1211', null, null, '15', '1', '2019-07-11 14:24:18', '2019-07-11 14:29:05', '0');
INSERT INTO `sys_menu` VALUES ('121116', '地址图谱', 'caseBaseAddressMap', null, '/admin/caseBaseAddress/caseBaseAddressMap', 'GET', '1211', null, null, '16', '1', '2019-07-11 14:24:34', '2019-07-11 14:29:49', '0');
INSERT INTO `sys_menu` VALUES ('121117', '测试录音选择', 'ly-xz', null, '/admin/callCenterRecordingTranslate/translate', 'POST', '1211', null, null, '17', '1', '2019-07-31 16:23:04', null, '0');
INSERT INTO `sys_menu` VALUES ('121118', '获取指定号码当前业务员的联系方式列表', 'collection_user_phone', null, '/admin/caseBasePhone/caseCollectionUserPhonePage', 'GET', '1211', null, null, '17', '1', '2019-09-23 22:24:51', null, '0');
INSERT INTO `sys_menu` VALUES ('121119', '获取催记需要信息接口', 'case_for_urge', null, '/admin/case/caseForUrge/**', 'GET', '1211', null, null, '19', '1', '2019-09-26 12:42:03', null, '0');
INSERT INTO `sys_menu` VALUES ('121125', '共债详情', 'caseDebt', null, '/admin/case/caseDebt/*', 'GET', '1211', null, null, '25', '1', '2019-09-29 15:01:49', null, '0');
INSERT INTO `sys_menu` VALUES ('140120', '退回至我的案件-待还款/部分还款', 'withdrawCase_btn', null, '/admin/myCase/withdrawCase', 'PUT', '1401', null, null, '1', '1', '2019-06-02 07:13:52', null, '0');
INSERT INTO `sys_menu` VALUES ('140121', '退回至减免案件', 'mycase_sendBackCutdown_btn', null, '/admin/myCase/sendBackCutdown', 'PUT', '1401', null, null, '1', '1', '2019-06-02 11:49:07', null, '0');
INSERT INTO `sys_menu` VALUES ('140122', '未还款案件列表统计', null, null, '/admin/myCase/noRepayPage2', 'GET', '1401', null, null, '1', '1', '2020-02-15 12:20:06', '2020-02-15 21:30:32', '0');
INSERT INTO `sys_menu` VALUES ('140203', '部分还款案件列表统计', '', null, '/admin/myCase/partRepayPage2', 'GET', '1402', null, null, '1', '1', '2020-02-15 12:20:56', '2020-02-15 21:29:20', '0');
INSERT INTO `sys_menu` VALUES ('140301', '减免案件列表', 'cut_down_list', null, '/admin/myCase/cutDownCase/**', 'GET', '1403', null, null, '1', '1', '2019-05-30 13:15:40', null, '0');
INSERT INTO `sys_menu` VALUES ('140302', '减免案件列表统计', null, null, '/admin/myCase/cutDownCase2', 'GET', '1403', null, null, '1', '1', '2020-02-15 12:22:46', '2020-02-15 21:30:45', '0');
INSERT INTO `sys_menu` VALUES ('140331', '留案案件列表', null, null, '/admin/myCase/leave', 'GET', '14033', null, null, '1', '1', '2020-03-22 20:20:35', '2020-03-22 20:27:05', '0');
INSERT INTO `sys_menu` VALUES ('140341', '获取停催案件列表', null, null, '/admin/myCase/stopUrgeCase', 'GET', '14034', null, null, '1', '1', '2020-03-10 20:52:51', null, '0');
INSERT INTO `sys_menu` VALUES ('145001', '预结清案件列表', 'preSettleCase_list', null, '/admin/myCase/preSettleCase/**', 'GET', '145', null, null, '1', '1', '2019-05-26 12:35:28', null, '0');
INSERT INTO `sys_menu` VALUES ('146001', '已结清案件列表', 'endCase_list', null, '/admin/myCase/endCase/**', 'GET', '146', null, null, '1', '1', '2019-05-26 12:36:09', null, '0');
INSERT INTO `sys_menu` VALUES ('150081', '查询', null, null, '/admin/caseBasePhone/callQuery', 'GET', '15008', null, null, '1', '1', '2020-03-02 20:56:15', null, '0');
INSERT INTO `sys_menu` VALUES ('150101', '停催案件列表', null, null, '/admin/deptCase/stopUrgeCase', 'GET', '15010', null, null, '1', '1', '2020-03-12 15:27:18', null, '0');
INSERT INTO `sys_menu` VALUES ('150301', '预结清案件列表', 'dept_preSettleCase_list', null, '/admin/deptCase/preSettleCase/**', 'GET', '1503', null, null, '1', '1', '2019-05-28 12:37:14', '2019-05-28 12:37:23', '0');
INSERT INTO `sys_menu` VALUES ('150302', '预结清案件列表统计', null, null, '/admin/deptCase/preSettleCase2', 'GET', '1503', null, null, '1', '1', '2020-02-15 12:47:47', null, '0');
INSERT INTO `sys_menu` VALUES ('150401', '已结清案件列表', 'dept_endCase_list', null, '/admin/deptCase/endCase/**', 'GET', '1504', null, null, '1', '1', '2019-06-02 07:22:36', null, '0');
INSERT INTO `sys_menu` VALUES ('150402', '已结清案件列表统计', null, null, '/admin/deptCase/endCase2', 'GET', '1504', null, null, '1', '1', '2020-02-15 12:48:15', null, '0');
INSERT INTO `sys_menu` VALUES ('150501', '报备案件列表', 'dept_reportCase_list', null, '/admin/deptCase/reportCase/**', 'GET', '1505', null, null, '1', '1', '2019-06-02 07:24:16', null, '0');
INSERT INTO `sys_menu` VALUES ('150502', '报备案件列表统计', null, null, '/admin/deptCase/reportCase2', 'GET', '1505', null, null, '1', '1', '2020-02-15 12:49:11', null, '0');
INSERT INTO `sys_menu` VALUES ('150601', '减免案件列表', 'dept_cutDownCase_list', null, '/admin/deptCase/cutDownCase/**', 'GET', '1506', null, null, '1', '1', '2019-06-02 07:24:47', null, '0');
INSERT INTO `sys_menu` VALUES ('150602', '减免案件列表统计', null, null, '/admin/deptCase/cutDownCase2', 'GET', '1506', null, null, '1', '1', '2020-02-15 12:48:42', null, '0');
INSERT INTO `sys_menu` VALUES ('160101', '承诺还款管理', 'case_promise_repay_list', null, '/admin/caseRepay/casePromiseRepayList', 'GET', '1601', null, null, '1', '1', '2019-06-30 16:38:37', '2019-06-30 16:39:54', '0');
INSERT INTO `sys_menu` VALUES ('160201', '登账还款列表', 'case_accounting_repay_list', null, '/admin/caseRepay/caseAccountingRepayList', 'GET', '1602', null, null, '1', '1', '2019-06-30 17:22:39', null, '0');
INSERT INTO `sys_menu` VALUES ('160202', '登账还款管理累计列表', 'case_acc_accounting_repay_list', null, '/admin/caseRepay/caseAccAccountingRepayList', 'GET', '1602', null, null, '2', '1', '2019-06-30 17:23:51', null, '0');
INSERT INTO `sys_menu` VALUES ('160301', '对账还款管理列表', 'case_reconciliation_repay_list', null, '/admin/caseRepay/caseReconciliationRepayList', 'GET', '1603', null, null, '1', '1', '2019-06-30 17:25:47', null, '0');
INSERT INTO `sys_menu` VALUES ('160302', '对账还款管理累计列表', 'case_acc_rec_repay_list', null, '/admin/totalRepayment/page', 'GET', '1603', null, null, '2', '1', '2019-06-30 17:28:29', '2019-06-30 17:34:34', '0');
INSERT INTO `sys_menu` VALUES ('160303', '下载模板', 'down_template', null, '/admin/caseRepay/downTemplate', 'GET', '1603', null, null, '3', '1', '2019-06-30 17:29:50', null, '0');
INSERT INTO `sys_menu` VALUES ('160304', '导入对账流水数据', 'import_rec_data', null, '/admin/caseRepay/import', 'POST', '1603', null, null, '4', '1', '2019-06-30 17:30:54', null, '0');
INSERT INTO `sys_menu` VALUES ('160305', '编辑还款管理', 'edit_repay', null, '/admin/caseReconciliationFullInfo', 'PUT', '1603', null, null, '5', '1', '2019-06-30 17:32:01', '2019-12-08 15:26:08', '0');
INSERT INTO `sys_menu` VALUES ('160306', '添加还款管理', 'add_repay', null, '/admin/caseRepay', 'POST', '1603', null, null, '6', '1', '2019-06-30 17:33:18', null, '0');
INSERT INTO `sys_menu` VALUES ('160307', '删除还款', 'del_repay', null, '/admin/caseReconciliationFullInfo', 'DELETE', '1603', null, null, '7', '1', '2019-06-30 17:34:07', '2019-12-08 13:25:22', '0');
INSERT INTO `sys_menu` VALUES ('160308', '通过id获取还款数据', 'case_repay_one', null, '/admin/caseRepay/caseRepayOne', 'GET', '1603', null, null, '8', '1', '2019-06-30 19:07:53', null, '0');
INSERT INTO `sys_menu` VALUES ('160309', '浦发接口GET', null, null, '/admin/puFa/execHandle', 'GET', '1603', null, null, '9', '1', '2020-01-04 20:31:51', '2020-01-08 17:37:54', '0');
INSERT INTO `sys_menu` VALUES ('160310', '浦发接口POST', null, null, '/admin/puFa/execHandle', 'POST', '1603', null, null, '10', '1', '2020-01-08 17:38:34', '2020-01-08 17:38:49', '0');
INSERT INTO `sys_menu` VALUES ('160311', '浦发推送催记测试接口', null, null, '/admin/puFa/test', 'GET', '1603', null, null, '11', '1', '2020-01-10 18:23:49', null, '0');
INSERT INTO `sys_menu` VALUES ('160312', '广发接口GET', null, null, '/admin/guangFa/execHandle', 'GET', '1603', null, null, '12', '1', '2020-01-20 14:28:59', null, '0');
INSERT INTO `sys_menu` VALUES ('160313', '广发接口POST', null, null, '/admin/guangFa/execHandle', 'POST', '1603', null, null, '13', '1', '2020-01-20 14:29:35', null, '0');
INSERT INTO `sys_menu` VALUES ('160401', '实际绩效回款额列表', 'fact_jixiao_list', null, '/admin/caseAccRepay/accRepayList', 'GET', '1604', null, null, '1', '1', '2019-07-14 11:14:52', '2019-07-14 11:15:17', '0');
INSERT INTO `sys_menu` VALUES ('160402', '通过id获取实际绩效回款额', 'fact_jixiao_one', null, '/admin/caseAccRepay/accRepayOne', 'GET', '1604', null, null, '2', '1', '2019-07-14 11:17:12', null, '0');
INSERT INTO `sys_menu` VALUES ('160403', '修改实际绩效还款额', 'update_fact_jixiao', null, '/admin/caseAccRepay', 'PUT', '1604', null, null, '3', '1', '2019-07-14 11:20:01', null, '0');
INSERT INTO `sys_menu` VALUES ('160404', '导出实际绩效回款额', 'export_fact_jixiao', null, '/admin/caseAccRepay/export', 'GET', '1604', null, null, '4', '1', '2019-07-14 11:21:16', '2019-07-19 22:23:31', '0');
INSERT INTO `sys_menu` VALUES ('160510', '分页查询配置信息表', 'reconciliatio_config_page', null, '/admin/caseReconciliationFullConfigInfo/page', 'GET', '1605', null, null, '10', '1', '2019-10-09 21:25:38', null, '0');
INSERT INTO `sys_menu` VALUES ('160511', '对账模板配置保存或更新', 'reconciliatio_config_save', null, '/admin/caseReconciliationFullConfigInfo', 'POST', '1605', null, null, '11', '1', '2019-10-09 21:26:19', null, '0');
INSERT INTO `sys_menu` VALUES ('160512', '对账模板系统配置列表', 'reconciliation_sys_template_list', null, '/admin/caseReconciliationSystemConfigInfo/list', 'GET', '1605', null, null, '12', '1', '2019-10-10 21:48:50', null, '0');
INSERT INTO `sys_menu` VALUES ('160513', '对账模板系统配置编辑', 'reconciliation_sys_template_upd', null, '/admin/caseReconciliationSystemConfigInfo', 'PUT', '1605', null, null, '13', '1', '2019-10-10 21:49:59', null, '0');
INSERT INTO `sys_menu` VALUES ('160514', '模块下载', null, null, '/admin/caseReconciliationFullInfo/getReconciliationTemplate', 'GET', '1605', null, null, '14', '1', '2019-10-15 09:53:07', null, '0');
INSERT INTO `sys_menu` VALUES ('160515', '导入', null, null, '/admin/caseReconciliationFullInfo/import', 'POST', '1605', null, null, '15', '1', '2019-10-15 16:45:17', null, '0');
INSERT INTO `sys_menu` VALUES ('160516', '导出', null, null, '/admin/caseReconciliationFullInfo/export', 'GET', '1605', null, null, '16', '1', '2019-10-15 16:46:12', '2019-10-15 17:03:46', '0');
INSERT INTO `sys_menu` VALUES ('160610', '对账单编辑', null, null, '/admin/caseReconciliationFullInfo', 'PUT', '1606', null, null, '10', '1', '2019-11-13 16:27:50', null, '0');
INSERT INTO `sys_menu` VALUES ('160611', '广发实时还款查询', 'gf_repayment_real_time', null, '/admin/caseReconciliationFullInfo/gf/repaymentRealTime', 'GET', '1608', null, null, '11', '1', '2019-12-01 13:47:34', '2020-01-06 14:41:15', '0');
INSERT INTO `sys_menu` VALUES ('180101', '委案方选择下拉框数据列表接口', null, null, '/admin/loansCaseDelegation/list', 'GET', '1801', null, null, '1', '1', '2019-08-11 11:36:45', '2019-08-11 11:38:06', '0');
INSERT INTO `sys_menu` VALUES ('180102', '项目类型数据接口', null, null, '/admin/loansCaseDelegation/getProjectType', 'GET', '1801', null, null, '1', '1', '2019-08-11 11:37:56', null, '0');
INSERT INTO `sys_menu` VALUES ('180141', '案件留案记录列表', null, null, '/admin/caseLeave/audit/*', 'GET', '18014', null, null, '1', '1', '2020-03-22 20:28:20', null, '0');
INSERT INTO `sys_menu` VALUES ('180142', '修改审核状态', null, null, '/admin/caseLeave/audit/*', 'PUT', '18014', null, null, '2', '1', '2020-03-22 20:29:28', null, '0');
INSERT INTO `sys_menu` VALUES ('180151', '案件停催记录列表', null, null, '/admin/caseStopUrge/audit/*', 'GET', '18015', null, null, '1', '1', '2020-03-12 15:51:10', null, '0');
INSERT INTO `sys_menu` VALUES ('180152', '修改审核状态', null, null, '/admin/caseStopUrge/audit/*', 'PUT', '18015', null, null, '2', '1', '2020-03-12 15:52:25', null, '0');
INSERT INTO `sys_menu` VALUES ('180161', '结清案件查询', null, null, '/admin/myCase/endCaseManage', 'GET', '18016', null, null, '1', '1', '2020-03-13 11:00:20', null, '0');
INSERT INTO `sys_menu` VALUES ('180162', '结清案件恢复状态', null, null, '/admin/myCase/restSettle', 'PUT', '18016', null, null, '2', '1', '2020-03-13 11:01:08', '2020-03-13 20:18:48', '0');
INSERT INTO `sys_menu` VALUES ('180163', '导入结清案件', null, null, '/admin/settleImport/import', 'POST', '18016', null, null, '3', '1', '2020-05-07 22:35:47', null, '0');
INSERT INTO `sys_menu` VALUES ('180171', '预结清案件查询', null, null, '/admin/myCase/preSettleCaseManage', 'GET', '18017', null, null, '1', '1', '2020-03-13 20:18:22', '2020-03-13 20:18:34', '0');
INSERT INTO `sys_menu` VALUES ('180172', '预结清案件恢复状态', null, null, '/admin/myCase/restPreSettle', 'PUT', '18017', null, null, '2', '1', '2020-03-13 20:19:12', null, '0');
INSERT INTO `sys_menu` VALUES ('180173', '预结清案件结清', null, null, '/admin/myCase/settle', 'PUT', '18017', null, null, '3', '1', '2020-03-15 11:43:48', null, '0');
INSERT INTO `sys_menu` VALUES ('180701', '浦发案件详情页标题行查询', null, null, '/admin/pufaInfo/title/*', 'GET', '1807', null, null, '1', '1', '2020-03-29 00:29:40', null, '0');
INSERT INTO `sys_menu` VALUES ('180702', '浦发案件详情页客户与逾期', null, null, '/admin/pufaInfo/customerAndOverdueInfo/*', 'GET', '1807', null, null, '1', '1', '2020-03-29 00:30:04', '2020-03-29 00:31:06', '0');
INSERT INTO `sys_menu` VALUES ('180703', '浦发案件详情页案件信息', null, null, '/admin/pufaInfo/caseInfo/*', 'GET', '1807', null, null, '1', '1', '2020-03-29 00:30:47', null, '0');
INSERT INTO `sys_menu` VALUES ('180704', '浦发案件详情页卡信息', null, null, '/admin/pufaInfo/bankcardInfo/*', 'GET', '1807', null, null, '1', '1', '2020-03-29 00:31:23', null, '0');
INSERT INTO `sys_menu` VALUES ('190101', '催记管理分页接口', 'urge_info_page', null, '/admin/caseUrgeInfo/page', 'GET', '1901', null, null, '1', '1', '2019-07-12 23:03:38', '2019-07-12 23:30:07', '0');
INSERT INTO `sys_menu` VALUES ('190102', '催记管理导出接口', 'urge_info_export', null, '/admin/caseUrgeInfo/export', 'GET', '1901', null, null, '2', '1', '2019-07-12 23:31:38', '2019-07-12 23:32:13', '0');
INSERT INTO `sys_menu` VALUES ('190103', '催记管理导入接口', 'urge_info_import', null, '/admin/caseUrgeInfo/import', 'POST', '1901', null, null, '3', '1', '2019-07-12 23:33:22', '2019-09-11 21:44:48', '0');
INSERT INTO `sys_menu` VALUES ('190104', '催记管理模板下载', 'urge_info_template', null, '/admin/caseUrgeInfo/getUrgeTemplate', 'GET', '1901', null, null, '4', '1', '2019-07-13 12:20:50', '2019-09-11 21:45:11', '0');
INSERT INTO `sys_menu` VALUES ('190105', '电催联系方式接口', null, null, '/admin/caseUrgeInfo/getMobileByCaseNumber', 'GET', '1901', null, null, '5', '1', '2019-07-29 00:13:20', '2019-09-11 21:45:23', '0');
INSERT INTO `sys_menu` VALUES ('190106', '电催申请拨号', null, null, '/admin/caseUrgeInfo/callCenter', 'POST', '1901', null, null, '6', '1', '2019-07-29 00:14:01', '2019-09-11 21:45:37', '0');
INSERT INTO `sys_menu` VALUES ('190107', '查询拨号状态接口', null, null, '/admin/caseUrgeInfo/getUrgeConnectStateByUUID', 'GET', '1901', null, null, '7', '1', '2019-07-29 00:14:49', '2019-07-29 00:20:47', '0');
INSERT INTO `sys_menu` VALUES ('190108', '提交电话催记接口', null, null, '/admin/caseUrgeInfo/commitPhoneUrge', 'POST', '1901', null, null, '8', '1', '2019-07-29 00:16:35', '2019-07-29 00:20:59', '0');
INSERT INTO `sys_menu` VALUES ('190109', '保存问卷配置接口', null, null, '/admin/caseCollectionQuestion/addQuestionConfig', 'POST', '1901', null, null, '9', '1', '2019-08-04 20:12:09', '2019-08-04 20:59:32', '0');
INSERT INTO `sys_menu` VALUES ('190110', '获取问卷配置', null, null, '/admin/caseCollectionQuestion/getQuestionConfig', 'GET', '1901', null, null, '10', '1', '2019-08-04 20:12:52', '2019-08-04 20:59:40', '0');
INSERT INTO `sys_menu` VALUES ('190111', '按模板ID查询模板', 'urgetemplate_serach_byid', null, '/admin/caseUrgeTemplateInfo/*', 'GET', '1903', null, null, '11', '1', '2019-09-11 22:17:07', '2019-09-12 08:58:26', '0');
INSERT INTO `sys_menu` VALUES ('190112', '分页查询模板', 'urgetemplate_serach_page', null, '/admin/caseUrgeTemplateInfo/page', 'GET', '1903', null, null, '12', '1', '2019-09-11 22:19:19', '2019-09-16 23:00:09', '0');
INSERT INTO `sys_menu` VALUES ('190113', '新增模板', 'urgetemplate_add', null, '/admin/caseUrgeTemplateInfo', 'POST', '1903', null, null, '13', '1', '2019-09-11 22:20:39', '2019-09-16 22:58:21', '0');
INSERT INTO `sys_menu` VALUES ('190114', '启用模板', 'urgetemplate_turnon', null, '/admin/caseUrgeTemplateInfo/turnOn/*', 'POST', '1903', null, null, '14', '1', '2019-09-11 22:21:53', '2019-09-17 22:40:48', '0');
INSERT INTO `sys_menu` VALUES ('190115', '禁用模板', 'urgetemplate_turnoff', null, '/admin/caseUrgeTemplateInfo/turnOff/*', 'POST', '1903', null, null, '15', '1', '2019-09-11 22:22:44', '2019-09-12 08:59:41', '0');
INSERT INTO `sys_menu` VALUES ('190116', '删除模板', 'urgetemplate_del', null, '/admin/caseUrgeTemplateInfo/*', 'DELETE', '1903', null, null, '16', '1', '2019-09-11 22:23:48', '2019-09-16 22:59:12', '0');
INSERT INTO `sys_menu` VALUES ('190117', '编辑模板', 'urgetemplate_upd', null, '/admin/caseUrgeTemplateInfo', 'PUT', '1903', null, null, '17', '1', '2019-09-11 22:24:33', '2019-09-16 22:58:48', '0');
INSERT INTO `sys_menu` VALUES ('190118', '配置模板', 'urgetemplate_config', null, '/admin/caseUrgeFullConfigInfo', 'POST', '1903', null, null, '18', '1', '2019-09-11 22:25:51', '2019-09-16 22:59:25', '0');
INSERT INTO `sys_menu` VALUES ('190119', '催记管理后台任务导入接口', 'urge_managent_task_import', null, '/admin/caseUrgeInfo/exportTask', 'POST', '1901', null, null, '19', '1', '2019-09-12 09:12:55', '2019-09-13 21:02:48', '1');
INSERT INTO `sys_menu` VALUES ('190120', '模板下载', 'workorder_template_download', null, '/admin/caseWorkOrderFullInfo/getWorkOrderTemplate', 'GET', '19501', null, null, '10', '1', '2019-09-13 11:05:24', '2019-09-18 18:22:13', '0');
INSERT INTO `sys_menu` VALUES ('190121', '近7日拨打量', 'urge_call_total_seven', null, '/admin/caseUrgeInfo/count/seven', 'GET', '1901', null, null, '21', '1', '2019-09-13 11:06:25', '2019-09-13 11:07:41', '0');
INSERT INTO `sys_menu` VALUES ('190122', '排行榜TOP3', 'urge_call_total_top', null, '/admin/caseUrgeInfo/top', 'GET', '1901', null, null, '22', '1', '2019-09-13 11:07:28', null, '0');
INSERT INTO `sys_menu` VALUES ('190123', '有效拨打总量', 'urge_call_total', null, '/admin/caseUrgeInfo/count', 'GET', '1901', null, null, '23', '1', '2019-09-13 20:29:25', '2019-09-13 20:29:56', '0');
INSERT INTO `sys_menu` VALUES ('190124', '本案催记', 'urge_info_current', null, '/admin/caseUrgeInfo/currentCaseUrge', 'GET', '1901', null, null, '24', '1', '2019-09-13 21:25:03', null, '0');
INSERT INTO `sys_menu` VALUES ('190125', '本人催记', 'urge_info_self', null, '/admin/caseUrgeInfo/page/self', 'GET', '1901', null, null, '25', '1', '2019-09-14 09:58:02', null, '0');
INSERT INTO `sys_menu` VALUES ('190126', '相关催记', 'urge_info_relation', null, '/admin/caseUrgeInfo/page/relation', 'GET', '1901', null, null, '26', '1', '2019-09-14 09:59:02', '2019-09-23 10:05:28', '0');
INSERT INTO `sys_menu` VALUES ('190128', '催记填写', 'urge_fill_save', null, '/admin/caseUrgeInfo/save', 'POST', '1901', null, null, '28', '1', '2019-09-22 10:59:27', null, '0');
INSERT INTO `sys_menu` VALUES ('190129', '今日有效拨打量', 'urge_call_total_today', null, '/admin/caseUrgeInfo/count/today', 'GET', '1901', null, null, '29', '1', '2019-09-23 10:41:59', null, '0');
INSERT INTO `sys_menu` VALUES ('190131', '统计当前工号近7日的有效催记量', null, null, '/admin/caseUrgeInfo/countUrgeSevenDay', 'GET', '1901', null, null, '53', '1', '2019-10-12 12:28:07', null, '0');
INSERT INTO `sys_menu` VALUES ('190153', '催记后台任务导出接口', null, null, '/admin/caseUrgeInfo/exportBig', 'GET', '1901', null, null, '53', '1', '2019-11-05 20:19:36', null, '0');
INSERT INTO `sys_menu` VALUES ('190158', '催记手动上传至广发', null, null, '/admin/guangFa/testGuangFaUrge', 'GET', '1901', null, null, '58', '1', '2020-05-07 17:07:37', null, '0');
INSERT INTO `sys_menu` VALUES ('190159', '失败催记手动上传至广发', null, null, '/admin/guangFa/testGuangFaFailUrge', 'GET', '1901', null, null, '59', '1', '2020-05-07 17:08:06', null, '0');
INSERT INTO `sys_menu` VALUES ('190201', '获取模板配置', 'urge_templateconfig_search', null, '/admin/caseUrgeFullConfigInfo/template/*', 'GET', '1903', null, null, '30', '1', '2019-08-04 16:15:40', '2019-09-17 23:04:03', '0');
INSERT INTO `sys_menu` VALUES ('190202', '获取问卷配置', '', null, '/admin/caseCollectionQuestion/getQuestionConfig', 'GET', '1902', null, null, '2', '0', '2019-08-04 16:16:24', '2019-08-04 20:02:51', '1');
INSERT INTO `sys_menu` VALUES ('190203', '题目删除接口', null, null, '/admin/caseCollectionQuestion', 'DELETE', '1902', null, null, '3', '1', '2019-08-04 16:17:10', '2019-08-04 20:00:41', '1');
INSERT INTO `sys_menu` VALUES ('190204', '题目答案逻辑跳转设置', null, null, '/admin/caseCollectionQuestion/updateAnswerNextQuestion ', 'PUT', '1902', null, null, '4', '1', '2019-08-04 16:20:41', '2019-08-04 20:00:44', '1');
INSERT INTO `sys_menu` VALUES ('190205', '逻辑设置中的下一题选择数据来源接口 ', null, null, '/admin/caseCollectionQuestion/getQuestionName ', 'GET', '1902', null, null, '5', '1', '2019-08-04 16:21:32', '2019-08-04 20:00:48', '1');
INSERT INTO `sys_menu` VALUES ('190210', '催记模板下载', 'urge_template_download', null, '/admin/caseUrgeInfo/getUrgeTemplate', 'GET', '1903', null, null, '35', '1', '2019-09-17 23:41:49', null, '0');
INSERT INTO `sys_menu` VALUES ('190601', '导出浦发催记推送失败记录', null, null, '/admin/puFa/exportFailUrgeRecord', 'GET', '1906', null, null, '1', '1', '2020-05-07 00:17:03', null, '0');
INSERT INTO `sys_menu` VALUES ('190602', '导出浦发催记推送失败的催记', null, null, '/admin/puFa/exportFailUrge', 'GET', '1906', null, null, '2', '1', '2020-05-07 00:17:25', null, '0');
INSERT INTO `sys_menu` VALUES ('190603', '分页查询推送记录', null, null, '/admin/puFa/page', 'GET', '1906', null, null, '3', '1', '2020-05-07 00:17:52', null, '0');
INSERT INTO `sys_menu` VALUES ('190604', '根据选定的催收码来重推', null, null, '/admin/puFa/sendRecordUrge', 'GET', '1906', null, null, '4', '1', '2020-05-07 00:18:17', null, '0');
INSERT INTO `sys_menu` VALUES ('190701', '导出广发催记推送失败记录', null, null, '/admin/guangFa/exportFailUrgeRecord', 'GET', '1907', null, null, '1', '1', '2020-05-07 17:23:52', null, '0');
INSERT INTO `sys_menu` VALUES ('190702', '导出广发催记推送失败的催记', null, null, '/admin/guangFa/exportFailUrge', 'GET', '1907', null, null, '2', '1', '2020-05-07 17:24:20', null, '0');
INSERT INTO `sys_menu` VALUES ('190703', '分页查询推送记录', null, null, '/admin/guangFa/page', 'GET', '1907', null, null, '3', '1', '2020-05-07 17:24:45', null, '0');
INSERT INTO `sys_menu` VALUES ('190704', '根据选定的催收码来重推', null, null, '/admin/guangFa/sendRecordUrge', 'GET', '1907', null, null, '4', '1', '2020-05-07 17:25:13', null, '0');
INSERT INTO `sys_menu` VALUES ('195001', '按模板ID查询模板', 'workorder_search_byid', null, '/admin/caseWorkOrderTemplateInfo/*', 'GET', '19501', null, null, '1', '1', '2019-09-11 22:43:54', '2019-09-12 09:00:12', '0');
INSERT INTO `sys_menu` VALUES ('195002', '分页查询模板', 'workorder_template_page', null, ' /admin/caseWorkOrderTemplateInfo/page', 'GET', '19501', null, null, '2', '1', '2019-09-12 09:02:58', null, '0');
INSERT INTO `sys_menu` VALUES ('195003', '新增模板', 'workorder_template_add', null, '/admin/caseWorkOrderTemplateInfo', 'POST', '19501', null, null, '3', '1', '2019-09-12 09:04:08', null, '0');
INSERT INTO `sys_menu` VALUES ('195004', '启用模板', 'workorder_template_turnon', null, '/admin/caseWorkOrderTemplateInfo/turnOn/*', 'POST', '19501', null, null, '4', '1', '2019-09-12 09:05:17', '2019-09-17 22:40:52', '0');
INSERT INTO `sys_menu` VALUES ('195005', '禁用模板', 'workorder_template_turnoff', null, '/admin/caseWorkOrderTemplateInfo/turnOff/*', 'POST', '19501', null, null, '5', '1', '2019-09-12 09:06:05', '2019-09-18 21:21:23', '0');
INSERT INTO `sys_menu` VALUES ('195006', '删除模板', 'workorder_template_del', null, '/admin/caseWorkOrderTemplateInfo/*', 'DELETE', '19501', null, null, '6', '1', '2019-09-12 09:07:14', null, '0');
INSERT INTO `sys_menu` VALUES ('195007', '编辑模板', 'workorder_template_upd', null, '/admin/caseWorkOrderTemplateInfo', 'PUT', '19501', null, null, '7', '1', '2019-09-12 09:08:21', null, '0');
INSERT INTO `sys_menu` VALUES ('195008', '配置模板', 'workorder_template_config', null, '/admin/caseWorkOrderFullConfigInfo', 'POST', '19501', null, null, '8', '1', '2019-09-12 09:09:18', '2019-09-19 21:55:10', '0');
INSERT INTO `sys_menu` VALUES ('195009', '获取模板配置', 'workorder_template_search', null, '/admin/caseWorkOrderFullConfigInfo/template/*', 'GET', '19501', null, null, '9', '1', '2019-09-17 23:50:41', null, '0');
INSERT INTO `sys_menu` VALUES ('196127', '获取表单数据', 'urge_formdata_get', null, '/admin/caseUrgeInfo/getUrgeFormData', 'GET', '1901', null, null, '27', '1', '2019-09-22 10:47:33', null, '0');
INSERT INTO `sys_menu` VALUES ('196128', '首页当前工号近7日的案件量', null, null, '/admin/caseUrgeInfo/countCaseSevenDay', 'GET', '1901', null, null, '50', '1', '2019-10-11 23:26:39', '2019-10-12 12:23:38', '0');
INSERT INTO `sys_menu` VALUES ('220101', '获取委案方配置列表', 'GET_COMMITTEE_LIST', null, '/admin/committeeConfig/committeeConfigPage', 'GET', '2201', null, null, '1', '1', '2019-08-31 14:47:11', '2019-08-31 16:05:46', '0');
INSERT INTO `sys_menu` VALUES ('220102', '获取委案方配置详情信息', 'GET_COMMITTEE_DETAIL', null, '/admin/committeeConfig/*', 'GET', '2201', null, null, '2', '1', '2019-08-31 14:48:33', null, '0');
INSERT INTO `sys_menu` VALUES ('220103', '添加委案方配置', 'ADD_COMMITTEE', null, '/admin/loansCaseDelegation', 'POST', '2201', null, null, '3', '1', '2019-08-31 14:49:15', '2019-09-16 21:14:24', '0');
INSERT INTO `sys_menu` VALUES ('220104', '更新委案方配置信息', 'EDIT_COMMITTEE', null, '/admin/loansCaseDelegation', 'PUT', '2201', null, null, '4', '1', '2019-08-31 14:50:06', '2019-09-16 21:14:35', '0');
INSERT INTO `sys_menu` VALUES ('220105', '删除委案方配置信息', 'DEL_COMMITTEE', null, '/admin/loansCaseDelegation/*', 'DELETE', '2201', null, null, '5', '1', '2019-08-31 14:51:58', '2020-03-20 11:28:24', '0');
INSERT INTO `sys_menu` VALUES ('220110', '获取逾期阶段配置表列表', 'GET_OVERDUE_LIST', null, '/admin/overdueConfig/overdueConfigPage', 'GET', '2201', null, null, '10', '1', '2019-08-31 16:17:55', null, '0');
INSERT INTO `sys_menu` VALUES ('220111', '获取逾期阶段配置表详情信息', 'GET_OVERDUE_DETAIL', null, '/admin/overdueConfig/*', 'GET', '2201', null, null, '11', '1', '2019-08-31 16:21:21', '2019-08-31 16:25:52', '0');
INSERT INTO `sys_menu` VALUES ('220112', '保存逾期阶段配置表信息', 'ADD_OVERDUE', null, '/admin/overdueConfig', 'POST', '2201', null, null, '12', '1', '2019-08-31 16:22:23', '2019-08-31 16:29:15', '0');
INSERT INTO `sys_menu` VALUES ('220114', '更新逾期阶段配置表信息', 'EDIT_OVERDUE', null, '/admin/overdueConfig', 'PUT', '2201', null, null, '14', '1', '2019-08-31 16:24:09', null, '0');
INSERT INTO `sys_menu` VALUES ('220115', '删除逾期阶段配置表信息', 'DEL_OVERDUE', null, '/admin/overdueConfig/*', 'DELETE', '2201', null, null, '15', '1', '2019-08-31 16:24:46', '2019-08-31 16:26:07', '0');
INSERT INTO `sys_menu` VALUES ('220120', '获取项目类别配置列表', 'GET_PROJECT_LIST', null, '/admin/projectTypeConfig/projectTypeConfigPage', 'GET', '2201', null, null, '20', '1', '2019-08-31 16:25:43', null, '0');
INSERT INTO `sys_menu` VALUES ('220121', '获取项目类别配置详情信息', 'GET_PROJECT_DETAIL', null, '/admin/projectTypeConfig/*', 'GET', '2201', null, null, '21', '1', '2019-08-31 16:26:57', null, '0');
INSERT INTO `sys_menu` VALUES ('220122', '保存项目类别配置信息', 'ADD_PROJECT', null, '/admin/projectTypeConfig', 'POST', '2201', null, null, '22', '1', '2019-08-31 16:27:33', null, '0');
INSERT INTO `sys_menu` VALUES ('220123', '更新项目类别配置信息', 'EDIT_PROJECT', null, '/admin/projectTypeConfig', 'PUT', '2201', null, null, '23', '1', '2019-08-31 16:28:17', null, '0');
INSERT INTO `sys_menu` VALUES ('220124', '删除项目类别配置信息', 'DEL_PROJECT', null, '/admin/projectTypeConfig/*', 'DELETE', '2201', null, null, '24', '1', '2019-08-31 16:28:55', null, '0');
INSERT INTO `sys_menu` VALUES ('220125', '更新逾期阶段有效性', null, null, '/admin/overdueConfig/updateOverdueStatus', 'POST', '2201', null, null, '1', '1', '2020-03-19 17:36:18', '2020-03-19 17:53:51', '0');
INSERT INTO `sys_menu` VALUES ('220126', '更新项目类别有效性', null, null, '/admin/projectTypeConfig/updateState', 'POST', '2201', null, null, '1', '1', '2020-03-19 17:55:01', null, '0');
INSERT INTO `sys_menu` VALUES ('230201', '案归组案件统计', null, null, '/admin/caseStatistics/caseDeptAllotStatistics', 'GET', '2302', null, null, '1', '1', '2020-04-14 15:50:44', null, '0');
INSERT INTO `sys_menu` VALUES ('230202', '业务员案件量详情', null, null, '/admin/caseStatistics/caseDeptAndUserAllotStatistics', 'GET', '2302', null, null, '2', '1', '2020-04-14 15:51:34', null, '0');
INSERT INTO `sys_menu` VALUES ('280211', '下载工单附件', null, null, '/desk/attachment/play/download/filecode/**', 'GET', '2802', null, null, '11', '1', '2020-05-07 15:33:29', null, '0');
INSERT INTO `sys_menu` VALUES ('1001301', '分页查询', null, null, '/admin/puFaUserManager/page', 'GET', '10013', null, null, '1', '1', '2020-04-16 08:01:48', null, '0');
INSERT INTO `sys_menu` VALUES ('1001302', '单条查询', null, null, '/admin/puFaUserManager/*', 'GET', '10013', null, null, '2', '1', '2020-04-16 08:02:18', null, '0');
INSERT INTO `sys_menu` VALUES ('1001303', '新增', null, null, '/admin/puFaUserManager', 'POST', '10013', null, null, '3', '1', '2020-04-16 08:02:40', null, '0');
INSERT INTO `sys_menu` VALUES ('1001304', '修改', null, null, '/admin/puFaUserManager', 'PUT', '10013', null, null, '4', '1', '2020-04-16 08:03:01', null, '0');
INSERT INTO `sys_menu` VALUES ('1001305', '单条删除', null, null, '/admin/puFaUserManager/*', 'DELETE', '10013', null, null, '5', '1', '2020-04-16 08:03:28', null, '0');
INSERT INTO `sys_menu` VALUES ('1001306', '批量删除', null, null, '/admin/puFaUserManager', 'DELETE', '10013', null, null, '6', '1', '2020-04-16 08:03:52', null, '0');
INSERT INTO `sys_menu` VALUES ('1450002', '预结清案件列表统计', null, null, '/admin/myCase/preSettleCase2', 'GET', '145', null, null, '1', '1', '2020-02-15 12:21:40', '2020-02-15 21:30:35', '0');
INSERT INTO `sys_menu` VALUES ('1460002', '已结清案件列表统计', null, null, '/admin/myCase/endCase2', 'GET', '146', null, null, '1', '1', '2020-02-15 12:22:12', '2020-02-15 21:30:39', '0');
INSERT INTO `sys_menu` VALUES ('1500701', '电催展示页中的稽核列表接口', null, null, '/admin/deptCase/getAuditReviewListByCaseNum', 'GET', '15007', null, null, '1', '1', '2019-07-21 16:02:25', null, '0');
INSERT INTO `sys_menu` VALUES ('1501001', '未还款案件列表', 'deptCase_list', null, '/admin/deptCase/noRepayPage/**', 'GET', '1501', null, null, '1', '1', '2019-05-27 12:24:34', null, '0');
INSERT INTO `sys_menu` VALUES ('1501002', '部分还款列表', 'dept_partRepayPage_list', null, '/admin/deptCase/partRepayPage/**', 'GET', '1502', null, null, '1', '1', '2019-05-28 12:36:20', '2019-05-28 12:37:34', '0');
INSERT INTO `sys_menu` VALUES ('1802101', '查询', 'bankcard_query', null, '/admin/caseBaseBankcard/caseBaseBankcardPage', 'GET', '18021', null, null, '1', '1', '2020-03-26 01:24:41', '2020-03-31 23:48:19', '0');
INSERT INTO `sys_menu` VALUES ('1802102', '模板下载', 'bankcard_template_export', null, '/admin/caseBaseBankcard/export', 'GET', '18021', null, null, '2', '1', '2020-03-26 01:25:12', '2020-03-31 23:49:08', '0');
INSERT INTO `sys_menu` VALUES ('1802103', '模板导入', null, null, '/admin/caseBaseBankcard/import', 'POST', '18021', null, null, '3', '1', '2020-03-26 01:25:39', null, '0');
INSERT INTO `sys_menu` VALUES ('1802104', '单条详情', null, null, '/admin/caseBaseBankcard/*', 'GET', '18021', null, null, '4', '1', '2020-03-26 01:26:06', null, '0');
INSERT INTO `sys_menu` VALUES ('1901129', '首页当前工号今日有效催记量', null, null, '/admin/caseUrgeInfo/countUrgeToday', 'GET', '1901', null, null, '51', '1', '2019-10-12 12:23:24', '2019-10-12 12:25:32', '0');
INSERT INTO `sys_menu` VALUES ('1901130', '统计当前工号今日的有效案件量', null, null, '/admin/caseUrgeInfo/countCaseToday', 'GET', '1901', null, null, '52', '1', '2019-10-12 12:26:40', null, '0');
INSERT INTO `sys_menu` VALUES ('1901150', '同步催记到案件', null, null, '/admin/caseUrgeInfo/synData', 'GET', '1901', null, null, '100', '1', '2019-10-15 21:13:18', null, '0');
INSERT INTO `sys_menu` VALUES ('1901151', '测试集合接口', null, null, '/admin/caseUrgeInfo/test', 'GET', '1901', null, null, '101', '1', '2019-10-19 20:45:14', '2019-10-19 20:50:58', '0');
INSERT INTO `sys_menu` VALUES ('1901152', '本组催记和案件量排名', null, null, '/admin/caseUrgeInfo/rankInCaseGroup', 'GET', '1901', null, null, '52', '1', '2019-10-24 21:50:34', null, '0');
INSERT INTO `sys_menu` VALUES ('1901153', '催记导出txt', null, null, '/admin/caseUrgeInfo/exportTxt', 'GET', '1901', null, null, '53', '1', '2019-12-02 21:59:01', null, '0');
INSERT INTO `sys_menu` VALUES ('1901154', '今日通话统计', null, null, '/admin/caseUrgeInfo/callRecords/countToday', 'GET', '1901', null, null, '1', '1', '2020-02-15 15:34:28', null, '0');
INSERT INTO `sys_menu` VALUES ('1901155', '催记案件列表', null, null, '/admin/caseUrgeInfo/getUrgeCaseInfo', 'GET', '1901', null, null, '1', '1', '2020-02-15 15:36:15', null, '0');
INSERT INTO `sys_menu` VALUES ('1901156', '催记手动上传至浦发', null, null, '/admin/puFa/testPuFaUrge', 'GET', '1901', null, null, '156', '1', '2020-05-07 00:03:04', null, '0');
INSERT INTO `sys_menu` VALUES ('1901157', '失败催记手动上传至浦发', null, null, '/admin/puFa/testPuFaFailUrge', 'GET', '1901', null, null, '157', '1', '2020-05-07 00:03:36', null, '0');
INSERT INTO `sys_menu` VALUES ('1901158', '导出浦发催记推送失败记录', null, null, '/admin/puFa/exportFailUrgeRecord', 'GET', '1901', null, null, '158', '1', '2020-05-07 00:07:28', '2020-05-07 17:06:47', '1');
INSERT INTO `sys_menu` VALUES ('1901159', '导出浦发催记推送失败的催记', null, null, '/admin/puFa/exportFailUrge', 'GET', '1901', null, null, '159', '1', '2020-05-07 00:07:52', '2020-05-07 17:06:54', '1');
INSERT INTO `sys_menu` VALUES ('1903211', '按类型查询模板列表', 'urge_tempate_list', null, '/admin/caseUrgeTemplateInfo/list', 'GET', '1903', null, null, '36', '1', '2019-09-25 22:48:51', '2019-09-25 22:50:00', '0');
INSERT INTO `sys_menu` VALUES ('1904001', '根据委案方查询列表', 'urge_fill_list', null, '/admin/caseUrgeFillManage/list', 'GET', '1904', null, null, '1', '1', '2019-09-21 19:53:04', null, '0');
INSERT INTO `sys_menu` VALUES ('1904002', '新增', 'urge_fill_add', null, '/admin/caseUrgeFillManage', 'POST', '1904', null, null, '2', '1', '2019-09-21 19:53:54', null, '0');
INSERT INTO `sys_menu` VALUES ('1904003', '修改', 'urge_fill_upd', null, '/admin/caseUrgeFillManage', 'PUT', '1904', null, null, '3', '1', '2019-09-21 19:54:38', null, '0');
INSERT INTO `sys_menu` VALUES ('1904004', '删除', 'urge_fill_del', null, '/admin/caseUrgeFillManage/*', 'DELETE', '1904', null, null, '4', '1', '2019-09-21 19:55:57', null, '0');
INSERT INTO `sys_menu` VALUES ('1904005', '获取下拉框值', 'urge_fill_select', null, '/admin/caseUrgeFillManage/select', 'GET', '1904', null, null, '5', '1', '2019-09-21 23:55:41', null, '0');
INSERT INTO `sys_menu` VALUES ('2000101', '获取呼叫中心录音文件列表', 'qtc_file_page', null, '/admin/qtcFileReord/qtcFileReordPage', 'GET', '20001', null, null, '1', '1', '2019-08-26 22:43:02', '2019-08-27 14:49:30', '0');
INSERT INTO `sys_menu` VALUES ('2000102', '语音转义', 'qtc_translate', null, '/admin/qtcFileReord/translate', 'POST', '20001', null, null, '2', '1', '2019-08-27 14:51:28', null, '0');
INSERT INTO `sys_menu` VALUES ('2000103', '获取普通上传录音文件列表', 'qtc_upload_page', null, '/admin/qtcFileReord/qtcUploadReordPage', 'GET', '20001', null, null, '3', '1', '2019-08-27 22:03:05', '2019-08-27 22:03:26', '0');
INSERT INTO `sys_menu` VALUES ('2000104', '上传普通录音文件', 'qtc_upload', null, '/admin/qtcFileReord/upload', 'POST', '20001', null, null, '4', '1', '2019-08-27 22:33:04', null, '0');
INSERT INTO `sys_menu` VALUES ('2000201', '录音列表', 'qtc_record_page', null, '/admin/qtcFileReord/qtcReordPage', 'GET', '20002', null, null, '1', '1', '2019-09-02 11:19:48', '2019-09-02 11:20:47', '0');
INSERT INTO `sys_menu` VALUES ('2000202', '更新录音', 'qtc_update', null, '/admin/qtcFileReord', 'PUT', '20002', null, null, '2', '1', '2019-09-02 11:23:48', '2019-09-02 11:36:58', '0');
INSERT INTO `sys_menu` VALUES ('2000203', '删除录音列表', 'qtc_delete', null, '/admin/qtcFileReord/**', 'DELETE', '20002', null, null, '3', '1', '2019-09-02 11:26:37', '2019-09-02 11:37:03', '0');
INSERT INTO `sys_menu` VALUES ('2000204', '批量删除录音', 'qtc_record_batch_delete', null, '/admin/qtcFileReord/delete', 'POST', '20002', null, null, '4', '1', '2019-09-05 23:27:48', '2019-09-05 23:28:17', '0');
INSERT INTO `sys_menu` VALUES ('2000205', '更改录音', 're_upload', null, '/admin/qtcFileReord/reUpload', 'POST', '20002', null, null, '5', '1', '2019-09-08 10:59:40', '2019-09-08 11:11:50', '0');
INSERT INTO `sys_menu` VALUES ('2000206', '批量导出', 'qtc_export', null, '/admin/qtcFileReord/export', 'POST', '20002', null, null, '6', '1', '2019-09-10 10:02:48', '2019-09-10 17:13:59', '0');
INSERT INTO `sys_menu` VALUES ('2000207', '更新质检状态', 'qtc_update_check', null, '/admin/qtcFileReord/editCheck', 'PUT', '20002', null, null, '7', '1', '2019-11-03 23:22:46', null, '0');
INSERT INTO `sys_menu` VALUES ('2000208', '更新审核状态', 'qtc_update_audit', null, '/admin/qtcFileReord/editAudit', 'PUT', '20002', null, null, '8', '1', '2019-11-03 23:23:43', null, '0');
INSERT INTO `sys_menu` VALUES ('2000209', '导出模板配置', null, null, '/admin/qtcExportTemplate/all', 'GET', '20002', null, null, '1', '1', '2019-11-20 23:18:38', '2019-11-20 23:21:47', '0');
INSERT INTO `sys_menu` VALUES ('2000210', '手动匹配催记', 'qtc_urge_match_manual', null, '/admin/qtcFileReord/manaul/**', 'GET', '20002', null, null, '10', '1', '2019-12-24 21:18:41', '2020-03-12 01:13:58', '0');
INSERT INTO `sys_menu` VALUES ('2000211', '半自动匹配催收码', 'qtc_urge_half_call', null, '/admin/qtcFileReord/halfManaul/**', 'GET', '20002', null, null, '11', '1', '2019-12-24 23:52:31', '2020-03-12 01:15:25', '0');
INSERT INTO `sys_menu` VALUES ('2000212', '手动同步录音已匹配催记', 'sync_matched_urge', null, '/admin/qtcFileReord/manualSyncMatchedUrge/**', 'GET', '20002', null, null, '12', '1', '2020-03-12 01:16:44', null, '0');
INSERT INTO `sys_menu` VALUES ('2000213', '查找问题录音', 'find_problem_qtc', null, '/admin/qtcFileReordProblem/findProblemQtc', 'GET', '2000211', null, null, '13', '1', '2020-03-07 23:15:11', '2020-03-12 01:17:02', '1');
INSERT INTO `sys_menu` VALUES ('2000214', '查找问题录音', 'find_problem_qtc', null, '/admin/qtcFileReordProblem/findProblemQtc', 'GET', '20002', null, null, '14', '1', '2020-03-12 01:20:08', null, '0');
INSERT INTO `sys_menu` VALUES ('2000301', '查询', null, null, '/admin/qtcQualityInspectionType/qtcQualityInspectionTypePage', 'GET', '20003', null, null, '1', '1', '2020-03-14 00:35:53', null, '0');
INSERT INTO `sys_menu` VALUES ('2000302', '添加', null, null, '/admin/qtcQualityInspectionType', 'POST', '20003', null, null, '2', '1', '2020-03-14 00:36:27', null, '0');
INSERT INTO `sys_menu` VALUES ('2000303', '修改', null, null, '/admin/qtcQualityInspectionType', 'PUT', '20003', null, null, '3', '1', '2020-03-14 00:36:52', null, '0');
INSERT INTO `sys_menu` VALUES ('2000304', '获取单条详情', null, null, '/admin/qtcQualityInspectionType/*', 'GET', '20003', null, null, '4', '1', '2020-03-14 00:37:38', null, '0');
INSERT INTO `sys_menu` VALUES ('2000305', '获取下拉列表', null, null, '/admin/qtcQualityEnum/qtcQualityEnumList', 'GET', '20003', null, null, '5', '1', '2020-03-14 00:38:19', null, '0');
INSERT INTO `sys_menu` VALUES ('2000306', '根据委案方获取列表', null, null, '/admin/qtcQualityInspectionType/findListByPrincipalId', 'GET', '20003', null, null, '6', '1', '2020-03-14 00:38:54', null, '0');
INSERT INTO `sys_menu` VALUES ('2000307', '修改有效性', null, null, '/admin/qtcQualityInspectionType/updateState', 'POST', '20003', null, null, '7', '1', '2020-03-18 23:17:11', null, '0');
INSERT INTO `sys_menu` VALUES ('2000401', '查询', null, null, '/admin/qtcQualityErrorType/qtcQualityErrorTypePage', 'GET', '20004', null, null, '1', '1', '2020-03-14 00:42:41', null, '0');
INSERT INTO `sys_menu` VALUES ('2000402', '添加', null, null, '/admin/qtcQualityErrorType', 'POST', '20004', null, null, '2', '1', '2020-03-14 00:43:06', null, '0');
INSERT INTO `sys_menu` VALUES ('2000403', '修改', null, null, '/admin/qtcQualityErrorType', 'PUT', '20004', null, null, '3', '1', '2020-03-14 00:43:24', null, '0');
INSERT INTO `sys_menu` VALUES ('2000404', '获取下拉列表', null, null, '/admin/qtcQualityErrorType/qtcQualityErrorTypeList', 'GET', '20004', null, null, '4', '1', '2020-03-14 00:43:48', '2020-03-18 23:34:56', '0');
INSERT INTO `sys_menu` VALUES ('2000405', '获取单条详情', null, null, '/admin/qtcQualityErrorType/*', 'GET', '20004', null, null, '5', '1', '2020-03-14 00:44:18', null, '0');
INSERT INTO `sys_menu` VALUES ('2000406', '修改有效性', null, null, '/admin/qtcQualityErrorType/updateState', 'POST', '20004', null, null, '6', '1', '2020-03-18 23:17:58', null, '0');
INSERT INTO `sys_menu` VALUES ('2000501', '查询', null, null, '/admin/qtcQualityError/qtcQualityErrorPage', 'GET', '20005', null, null, '1', '1', '2020-03-14 00:44:53', null, '0');
INSERT INTO `sys_menu` VALUES ('2000502', '添加', null, null, '/admin/qtcQualityError', 'POST', '20005', null, null, '2', '1', '2020-03-14 00:45:18', null, '0');
INSERT INTO `sys_menu` VALUES ('2000503', '修改', null, null, '/admin/qtcQualityError', 'PUT', '20005', null, null, '3', '1', '2020-03-14 00:45:35', null, '0');
INSERT INTO `sys_menu` VALUES ('2000504', '获取下拉列表', null, null, '/admin/qtcQualityError/qtcQualityErrorList', 'GET', '20005', null, null, '4', '1', '2020-03-14 00:45:54', '2020-03-18 23:35:24', '0');
INSERT INTO `sys_menu` VALUES ('2000505', '获取单条详情', null, null, '/admin/qtcQualityError/*', 'GET', '20005', null, null, '5', '1', '2020-03-14 00:46:16', null, '0');
INSERT INTO `sys_menu` VALUES ('2000506', '修改有效性', null, null, '/admin/qtcQualityError/updateState', 'POST', '20005', null, null, '6', '1', '2020-03-18 23:18:43', null, '0');
INSERT INTO `sys_menu` VALUES ('2000507', '查询布控点', null, null, '/admin/qtcQualityMonitor/qtcQualityMonitorPage', 'GET', '20005', null, null, '7', '1', '2020-03-18 23:24:39', '2020-03-18 23:36:07', '0');
INSERT INTO `sys_menu` VALUES ('2000508', '查看布控点下拉列表', null, null, '/admin/qtcQualityMonitor/qtcQualityMonitorList', 'GET', '20005', null, null, '8', '1', '2020-03-18 23:36:43', null, '0');
INSERT INTO `sys_menu` VALUES ('2000509', '添加布控点', null, null, '/admin/qtcQualityMonitor', 'POST', '20005', null, null, '9', '1', '2020-03-18 23:37:13', null, '0');
INSERT INTO `sys_menu` VALUES ('2000510', '修改布控点', null, null, '/admin/qtcQualityMonitor', 'PUT', '20005', null, null, '10', '1', '2020-03-18 23:37:41', null, '0');
INSERT INTO `sys_menu` VALUES ('2000511', '批量保存布控点', null, null, '/admin/qtcQualityMonitor/saveBatch', 'POST', '20005', null, null, '11', '1', '2020-03-18 23:38:26', null, '0');
INSERT INTO `sys_menu` VALUES ('2000512', '获取单条布控点详情', null, null, '/admin/qtcQualityMonitor/*', 'GET', '20005', null, null, '12', '1', '2020-03-18 23:38:59', null, '0');
INSERT INTO `sys_menu` VALUES ('2000513', '修改布控点有效性', null, null, '/admin/qtcQualityMonitor/updateState', 'POST', '20005', null, null, '13', '1', '2020-03-18 23:39:31', null, '0');
INSERT INTO `sys_menu` VALUES ('2000601', '质检任务查询', null, null, '/admin/qtcQualityTask/qtcQualityTaskPage', 'GET', '20006', null, null, '1', '1', '2020-04-09 07:43:23', null, '0');
INSERT INTO `sys_menu` VALUES ('2000602', '质检任务下拉查询', null, null, '/admin/qtcQualityTask/qtcQualityTaskList', 'GET', '20006', null, null, '2', '1', '2020-04-09 07:43:55', null, '0');
INSERT INTO `sys_menu` VALUES ('2000603', '新增', null, null, '/admin/qtcQualityTask', 'POST', '20006', null, null, '3', '1', '2020-04-09 07:44:26', null, '0');
INSERT INTO `sys_menu` VALUES ('2000604', '修改', null, null, '/admin/qtcQualityTask', 'PUT', '20006', null, null, '4', '1', '2020-04-09 07:44:49', null, '0');
INSERT INTO `sys_menu` VALUES ('2000605', '获取单条详情', null, null, '/admin/qtcQualityTask/*', 'GET', '20006', null, null, '5', '1', '2020-04-09 07:45:25', null, '0');
INSERT INTO `sys_menu` VALUES ('2000606', '质检内容统计', null, null, '/admin/qtcQualityTask/detail/*', 'GET', '20006', null, null, '6', '1', '2020-04-10 00:01:09', null, '0');
INSERT INTO `sys_menu` VALUES ('2000701', '质检工作台查询', null, null, '/admin/qtcQualityInfo/qtcQualityInfoPage', 'GET', '20007', null, null, '1', '1', '2020-04-10 00:10:05', null, '0');
INSERT INTO `sys_menu` VALUES ('2000702', '异步自动质检录音', null, null, '/admin/qtcQualityInfo/asyncRecord', 'GET', '20007', null, null, '2', '1', '2020-04-10 00:10:41', null, '0');
INSERT INTO `sys_menu` VALUES ('2000703', '获取质检详情页个案信息列表', null, null, '/admin/qtcQualityInfo/getCaseInfoList/*', 'GET', '20007', null, null, '3', '1', '2020-04-10 00:11:15', null, '0');
INSERT INTO `sys_menu` VALUES ('2000704', '保存催记与任务信息', null, null, '/admin/qtcQualityInfo/saveTask', 'POST', '20007', null, null, '4', '1', '2020-04-10 00:11:48', null, '0');
INSERT INTO `sys_menu` VALUES ('2000705', '自检单个录音', null, null, '/admin/qtcQualityInfo/syncRecord/*', 'GET', '20007', null, null, '5', '1', '2020-04-10 00:12:15', null, '0');
INSERT INTO `sys_menu` VALUES ('2000706', '获取质检详情页title行信息', null, null, '/admin/qtcQualityInfo/titleInfo/*', 'GET', '20007', null, null, '6', '1', '2020-04-10 00:12:36', null, '0');
INSERT INTO `sys_menu` VALUES ('2000707', '获取质检详情页质检信息', null, null, '/admin/qtcQualityInfo/getQualityBaseInfo/*', 'GET', '20007', null, null, '7', '1', '2020-04-10 23:56:35', null, '0');
INSERT INTO `sys_menu` VALUES ('2000708', '获取质检详情页催记列表', null, null, '/admin/qtcQualityInfo/getUrgeInfoList/*', 'GET', '20007', null, null, '8', '1', '2020-04-10 23:57:06', null, '0');
INSERT INTO `sys_menu` VALUES ('2000709', '我的质检工作台查询', null, null, '/admin/qtcQualityInfo/qtcMyQualityInfoPage', 'GET', '20007', null, null, '9', '1', '2020-04-15 00:26:09', '2020-04-15 00:26:54', '0');
INSERT INTO `sys_menu` VALUES ('2000710', '修改质检状态信息', null, null, '/admin/qtcQualityInfo/updateQualityInfoState', 'GET', '20007', null, null, '10', '1', '2020-04-15 00:26:44', null, '0');
INSERT INTO `sys_menu` VALUES ('2000711', '根据个案序列号获取质检详情页的号码列表接口', null, null, '/admin/caseBasePhone/getForQtc', 'GET', '20007', null, null, '11', '1', '2020-04-15 00:29:44', null, '0');
INSERT INTO `sys_menu` VALUES ('2000712', '质检详情页提供共债在案案件卡信息列表', null, null, '/admin/case/getDebtCaseForQtc/*', 'GET', '20007', null, null, '12', '1', '2020-04-15 00:59:15', null, '0');
INSERT INTO `sys_menu` VALUES ('2000713', '修改质检内容', null, null, '/admin/qtcQualityInfo/updateQualityContent', 'POST', '20007', null, null, '13', '1', '2020-04-18 01:12:59', null, '0');
INSERT INTO `sys_menu` VALUES ('2000714', '自动质检', null, null, '/admin/qtcQualityInfo/autoScore', 'POST', '20007', null, null, '14', '1', '2020-04-19 00:16:16', null, '0');
INSERT INTO `sys_menu` VALUES ('2000715', '批量保存催记与任务信息', null, null, '/admin/qtcQualityInfo/saveTaskBatch', 'POST', '20007', null, null, '15', '1', '2020-04-24 00:07:13', null, '0');
INSERT INTO `sys_menu` VALUES ('2000716', '质检缓存上一页下一页数据', null, null, '/admin/qtcCachePage/cache', 'POST', '20007', null, null, '16', '1', '2020-05-07 18:53:07', '2020-05-07 21:53:14', '0');
INSERT INTO `sys_menu` VALUES ('2000801', '申述原因分页', null, null, '/admin/qtcQualityAppealReason/qtcQualityAppealReasonPage', 'GET', '20008', null, null, '1', '1', '2020-04-15 01:53:42', null, '0');
INSERT INTO `sys_menu` VALUES ('2000802', '申述原因列表', null, null, '/admin/qtcQualityAppealReason/qtcQualityAppealReasonList', 'GET', '20008', null, null, '2', '1', '2020-04-15 01:54:02', null, '0');
INSERT INTO `sys_menu` VALUES ('2000803', '单个申述原因详情', null, null, '/admin/qtcQualityAppealReason/*', 'GET', '20008', null, null, '3', '1', '2020-04-15 01:54:27', null, '0');
INSERT INTO `sys_menu` VALUES ('2000804', '保存申述原因', null, null, '/admin/qtcQualityAppealReason', 'POST', '20008', null, null, '4', '1', '2020-04-15 01:54:58', null, '0');
INSERT INTO `sys_menu` VALUES ('2000805', '修改申述原因', null, null, '/admin/qtcQualityAppealReason', 'PUT', '20008', null, null, '5', '1', '2020-04-15 01:55:14', null, '0');
INSERT INTO `sys_menu` VALUES ('2000901', '质检申述记录分页', null, null, '/admin/qtcQualityAppeal/qtcQualityAppealPage', 'GET', '20009', null, null, '1', '1', '2020-04-15 01:55:42', null, '0');
INSERT INTO `sys_menu` VALUES ('2000902', '我的质检申述记录分页', null, null, '/admin/qtcQualityAppeal/qtcQualityMyAppealPage', 'GET', '20009', null, null, '2', '1', '2020-04-15 01:56:04', null, '0');
INSERT INTO `sys_menu` VALUES ('2000903', '再次申述', null, null, '/admin/qtcQualityAppeal/reAppeal', 'POST', '20009', null, null, '3', '1', '2020-04-15 01:56:34', '2020-04-18 00:12:29', '0');
INSERT INTO `sys_menu` VALUES ('2000904', '审核', null, null, '/admin/qtcQualityAppeal/audit', 'POST', '20009', null, null, '4', '1', '2020-04-15 01:56:58', '2020-04-15 14:23:01', '0');
INSERT INTO `sys_menu` VALUES ('2000905', '删除', null, null, '/admin/qtcQualityAppeal/*', 'DELETE', '20009', null, null, '5', '1', '2020-04-15 01:57:21', null, '0');
INSERT INTO `sys_menu` VALUES ('2000906', '申诉', null, null, '/admin/qtcQualityAppeal', 'POST', '20009', null, null, '6', '1', '2020-04-15 14:09:53', null, '0');
INSERT INTO `sys_menu` VALUES ('2000907', '单个质检申述记录', null, null, '/admin/qtcQualityAppeal/*', 'GET', '20009', null, null, '7', '1', '2020-04-15 14:10:27', null, '0');
INSERT INTO `sys_menu` VALUES ('2001101', '我的质检工作台统计', null, null, '/admin/qtcQualityInfo/myStat', 'GET', '20011', null, null, '1', '1', '2020-04-20 23:00:16', null, '0');
INSERT INTO `sys_menu` VALUES ('15010002', '未还款案件列表统计', null, null, '/admin/deptCase/noRepayPage2', 'GET', '1501', null, null, '1', '1', '2020-02-15 12:46:30', null, '0');
INSERT INTO `sys_menu` VALUES ('15020003', '部分还款案件列表统计', null, null, '/admin/deptCase/partRepayPage2', 'GET', '1502', null, null, '1', '1', '2020-02-15 12:47:04', null, '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `role_code` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `role_desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标识（0-正常,1-删除）',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_idx1_role_code` (`role_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'admin', 'ROLE_ADMIN', '超级管理员', '2017-10-29 23:45:51', '2018-04-22 19:40:29', '0');
INSERT INTO `sys_role` VALUES ('14', 'demo1', 'nihao', 'demo用户', '2018-04-20 15:14:32', '2018-04-22 07:35:22', '0');
INSERT INTO `sys_role` VALUES ('15', '测试海湾', 'hw001', '海湾角色表示', '2019-03-05 00:14:07', '2019-06-12 20:44:47', '1');
INSERT INTO `sys_role` VALUES ('16', 'testtg', '管理员测试', '管理员测试', '2019-03-24 13:52:25', '2019-03-24 14:11:35', '1');
INSERT INTO `sys_role` VALUES ('17', '广发一组', '广发一组', '广发一组', '2019-03-24 17:32:16', '2019-06-07 15:05:32', '1');
INSERT INTO `sys_role` VALUES ('20', '系统维护岗', 'manager-role', '对系统进行维护和管理类工作的角色。', '2019-03-29 20:20:49', '2019-03-29 20:22:02', '0');
INSERT INTO `sys_role` VALUES ('21', '123', '123', '123', '2019-03-29 20:22:57', '2019-03-29 20:23:06', '1');
INSERT INTO `sys_role` VALUES ('22', 'test', 'test', 'test修改', '2019-03-29 20:46:07', '2019-05-05 21:59:20', '1');
INSERT INTO `sys_role` VALUES ('23', '数据管理角色', 'data-role', '仅能操作数据管理的角色岗', '2019-05-05 21:58:44', '2019-05-06 09:14:42', '0');
INSERT INTO `sys_role` VALUES ('24', '业务员', 'cuishou-role', '仅能进行催收的角色岗位', '2019-05-15 22:32:47', '2019-05-15 22:40:49', '0');
INSERT INTO `sys_role` VALUES ('25', '广发专项一手主管', '广发专项一手主管', '前手事业部广发专项一手主管', '2019-06-05 21:06:44', '2019-06-05 21:09:39', '1');
INSERT INTO `sys_role` VALUES ('26', 'test11', 'test11231', 'test11231', '2019-06-07 15:10:42', '2019-06-07 15:12:04', '1');
INSERT INTO `sys_role` VALUES ('27', '广州分公司管理员', 'gz_admin', '广州分公司管理员', '2019-06-09 10:56:11', '2019-06-09 17:11:42', '0');
INSERT INTO `sys_role` VALUES ('28', 'gz_admin', 'gz_admin01', '广州管理员', '2019-06-09 17:14:03', null, '0');
INSERT INTO `sys_role` VALUES ('29', 'test0111', 'test0001', '111', '2019-06-10 20:42:02', null, '0');
INSERT INTO `sys_role` VALUES ('30', '业务人员', '业务人员', '业务人员', '2019-06-11 22:43:28', '2020-03-14 15:29:06', '1');
INSERT INTO `sys_role` VALUES ('31', '业务员', 'business', '进行业务操作的角色', '2019-06-12 21:12:17', '2020-03-14 15:30:42', '1');
INSERT INTO `sys_role` VALUES ('32', '业务组长', 'business-leader', '业务组长', '2019-06-12 21:14:22', null, '0');
INSERT INTO `sys_role` VALUES ('33', '业务主管', 'business-charge', '业务主管', '2019-06-12 21:16:12', null, '0');
INSERT INTO `sys_role` VALUES ('34', '城市经理', 'city-manager', '城市经理', '2019-06-12 21:16:39', null, '0');
INSERT INTO `sys_role` VALUES ('35', '数据员', 'data-clerk', '数据员', '2019-06-12 21:17:31', null, '0');
INSERT INTO `sys_role` VALUES ('36', '数据组长', 'data-leader', '数据组长', '2019-06-12 21:17:52', '2019-06-12 21:19:17', '0');
INSERT INTO `sys_role` VALUES ('37', '客服人员', 'platform-data', '平台数据员', '2019-06-12 21:18:20', '2020-03-14 15:18:35', '0');
INSERT INTO `sys_role` VALUES ('38', '客服部主管', 'platform-charge', '平台数据组长', '2019-06-12 21:18:49', '2019-06-12 21:19:33', '0');
INSERT INTO `sys_role` VALUES ('39', '品质专员', 'inspector', '品质专员', '2019-06-12 21:20:56', '2020-03-14 15:19:56', '0');
INSERT INTO `sys_role` VALUES ('40', '品质主管', 'quality-leader', '品质主管', '2019-06-12 21:21:58', '2020-03-14 15:20:23', '0');
INSERT INTO `sys_role` VALUES ('41', '总经理', 'president', '总经理', '2019-06-12 21:22:28', null, '0');
INSERT INTO `sys_role` VALUES ('42', '人事专员', 'human', '人事专员', '2019-06-12 21:23:27', '2020-03-14 15:20:52', '0');
INSERT INTO `sys_role` VALUES ('43', '运维管理员', 'operation', '运维管理员', '2019-06-12 21:24:00', null, '0');
INSERT INTO `sys_role` VALUES ('44', 'demo1', 'aaa', 'aaaa', '2019-08-07 07:33:20', null, '0');
INSERT INTO `sys_role` VALUES ('45', 'test0111', 'haha', 'ceshi', '2019-08-07 07:33:47', null, '0');
INSERT INTO `sys_role` VALUES ('46', 'test0111', 'test0111', 'aaa', '2019-08-07 07:34:35', null, '0');
INSERT INTO `sys_role` VALUES ('47', 'test0111', 'bbb', 'bbbb', '2019-12-08 23:23:16', null, '0');
INSERT INTO `sys_role` VALUES ('48', 'test0111', 'ccc', 'ccc', '2019-12-08 23:23:33', null, '0');
INSERT INTO `sys_role` VALUES ('49', 'test0111', 'ddd', 'ddd', '2019-12-08 23:24:56', '2020-03-14 15:27:24', '1');
INSERT INTO `sys_role` VALUES ('50', '测试业务员', 'testor', '测试业务员', '2020-03-14 14:41:17', null, '0');
INSERT INTO `sys_role` VALUES ('51', '见习品质专员', 'intership_inspector', '见习品质专员', '2020-03-14 14:48:10', null, '0');
INSERT INTO `sys_role` VALUES ('52', '呼叫中心管理员', 'callcenter', '坐席管理', '2020-03-14 15:04:52', null, '0');
INSERT INTO `sys_role` VALUES ('53', '坐席管理员', '坐席录音管理', '坐席管理', '2020-03-14 15:09:51', null, '0');
INSERT INTO `sys_role` VALUES ('54', '用户管理员', 'usercreator', '用户管理员', '2020-03-14 15:10:21', null, '0');
INSERT INTO `sys_role` VALUES ('55', '555', '555', '5522', '2020-04-19 19:58:37', null, '0');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` int(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='角色与部门对应关系   该表作废';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('15', '15', '10');
INSERT INTO `sys_role_dept` VALUES ('17', '16', '2');
INSERT INTO `sys_role_dept` VALUES ('18', '17', '10');
INSERT INTO `sys_role_dept` VALUES ('22', '20', '20');
INSERT INTO `sys_role_dept` VALUES ('23', '21', '4');
INSERT INTO `sys_role_dept` VALUES ('27', '22', '23');
INSERT INTO `sys_role_dept` VALUES ('29', '23', '20');
INSERT INTO `sys_role_dept` VALUES ('31', '24', '27');
INSERT INTO `sys_role_dept` VALUES ('32', '25', '40');
INSERT INTO `sys_role_dept` VALUES ('33', '14', '1');
INSERT INTO `sys_role_dept` VALUES ('34', '26', '19');
INSERT INTO `sys_role_dept` VALUES ('36', '1', '79');
INSERT INTO `sys_role_dept` VALUES ('37', '27', '28');
INSERT INTO `sys_role_dept` VALUES ('38', '28', '28');
INSERT INTO `sys_role_dept` VALUES ('39', '29', '80');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色菜单表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '21');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '23');
INSERT INTO `sys_role_menu` VALUES ('1', '24');
INSERT INTO `sys_role_menu` VALUES ('1', '25');
INSERT INTO `sys_role_menu` VALUES ('1', '31');
INSERT INTO `sys_role_menu` VALUES ('1', '32');
INSERT INTO `sys_role_menu` VALUES ('1', '33');
INSERT INTO `sys_role_menu` VALUES ('1', '34');
INSERT INTO `sys_role_menu` VALUES ('1', '41');
INSERT INTO `sys_role_menu` VALUES ('1', '42');
INSERT INTO `sys_role_menu` VALUES ('1', '43');
INSERT INTO `sys_role_menu` VALUES ('1', '44');
INSERT INTO `sys_role_menu` VALUES ('1', '45');
INSERT INTO `sys_role_menu` VALUES ('1', '51');
INSERT INTO `sys_role_menu` VALUES ('1', '52');
INSERT INTO `sys_role_menu` VALUES ('1', '61');
INSERT INTO `sys_role_menu` VALUES ('1', '62');
INSERT INTO `sys_role_menu` VALUES ('1', '63');
INSERT INTO `sys_role_menu` VALUES ('1', '64');
INSERT INTO `sys_role_menu` VALUES ('1', '71');
INSERT INTO `sys_role_menu` VALUES ('1', '72');
INSERT INTO `sys_role_menu` VALUES ('1', '73');
INSERT INTO `sys_role_menu` VALUES ('1', '74');
INSERT INTO `sys_role_menu` VALUES ('1', '78');
INSERT INTO `sys_role_menu` VALUES ('1', '100');
INSERT INTO `sys_role_menu` VALUES ('1', '101');
INSERT INTO `sys_role_menu` VALUES ('1', '102');
INSERT INTO `sys_role_menu` VALUES ('1', '103');
INSERT INTO `sys_role_menu` VALUES ('1', '104');
INSERT INTO `sys_role_menu` VALUES ('1', '105');
INSERT INTO `sys_role_menu` VALUES ('1', '109');
INSERT INTO `sys_role_menu` VALUES ('1', '110');
INSERT INTO `sys_role_menu` VALUES ('1', '111');
INSERT INTO `sys_role_menu` VALUES ('1', '112');
INSERT INTO `sys_role_menu` VALUES ('1', '113');
INSERT INTO `sys_role_menu` VALUES ('1', '114');
INSERT INTO `sys_role_menu` VALUES ('1', '121');
INSERT INTO `sys_role_menu` VALUES ('1', '130');
INSERT INTO `sys_role_menu` VALUES ('1', '140');
INSERT INTO `sys_role_menu` VALUES ('1', '144');
INSERT INTO `sys_role_menu` VALUES ('1', '145');
INSERT INTO `sys_role_menu` VALUES ('1', '146');
INSERT INTO `sys_role_menu` VALUES ('1', '150');
INSERT INTO `sys_role_menu` VALUES ('1', '160');
INSERT INTO `sys_role_menu` VALUES ('1', '180');
INSERT INTO `sys_role_menu` VALUES ('1', '190');
INSERT INTO `sys_role_menu` VALUES ('1', '191');
INSERT INTO `sys_role_menu` VALUES ('1', '192');
INSERT INTO `sys_role_menu` VALUES ('1', '195');
INSERT INTO `sys_role_menu` VALUES ('1', '200');
INSERT INTO `sys_role_menu` VALUES ('1', '201');
INSERT INTO `sys_role_menu` VALUES ('1', '202');
INSERT INTO `sys_role_menu` VALUES ('1', '203');
INSERT INTO `sys_role_menu` VALUES ('1', '204');
INSERT INTO `sys_role_menu` VALUES ('1', '205');
INSERT INTO `sys_role_menu` VALUES ('1', '210');
INSERT INTO `sys_role_menu` VALUES ('1', '220');
INSERT INTO `sys_role_menu` VALUES ('1', '230');
INSERT INTO `sys_role_menu` VALUES ('1', '240');
INSERT INTO `sys_role_menu` VALUES ('1', '241');
INSERT INTO `sys_role_menu` VALUES ('1', '242');
INSERT INTO `sys_role_menu` VALUES ('1', '243');
INSERT INTO `sys_role_menu` VALUES ('1', '260');
INSERT INTO `sys_role_menu` VALUES ('1', '270');
INSERT INTO `sys_role_menu` VALUES ('1', '280');
INSERT INTO `sys_role_menu` VALUES ('1', '290');
INSERT INTO `sys_role_menu` VALUES ('1', '1011');
INSERT INTO `sys_role_menu` VALUES ('1', '1012');
INSERT INTO `sys_role_menu` VALUES ('1', '1013');
INSERT INTO `sys_role_menu` VALUES ('1', '1015');
INSERT INTO `sys_role_menu` VALUES ('1', '1016');
INSERT INTO `sys_role_menu` VALUES ('1', '1017');
INSERT INTO `sys_role_menu` VALUES ('1', '1018');
INSERT INTO `sys_role_menu` VALUES ('1', '1019');
INSERT INTO `sys_role_menu` VALUES ('1', '1020');
INSERT INTO `sys_role_menu` VALUES ('1', '1021');
INSERT INTO `sys_role_menu` VALUES ('1', '1022');
INSERT INTO `sys_role_menu` VALUES ('1', '1023');
INSERT INTO `sys_role_menu` VALUES ('1', '1024');
INSERT INTO `sys_role_menu` VALUES ('1', '1025');
INSERT INTO `sys_role_menu` VALUES ('1', '1051');
INSERT INTO `sys_role_menu` VALUES ('1', '1052');
INSERT INTO `sys_role_menu` VALUES ('1', '1091');
INSERT INTO `sys_role_menu` VALUES ('1', '1092');
INSERT INTO `sys_role_menu` VALUES ('1', '1211');
INSERT INTO `sys_role_menu` VALUES ('1', '1212');
INSERT INTO `sys_role_menu` VALUES ('1', '1213');
INSERT INTO `sys_role_menu` VALUES ('1', '1214');
INSERT INTO `sys_role_menu` VALUES ('1', '1301');
INSERT INTO `sys_role_menu` VALUES ('1', '1304');
INSERT INTO `sys_role_menu` VALUES ('1', '1305');
INSERT INTO `sys_role_menu` VALUES ('1', '1306');
INSERT INTO `sys_role_menu` VALUES ('1', '1401');
INSERT INTO `sys_role_menu` VALUES ('1', '1402');
INSERT INTO `sys_role_menu` VALUES ('1', '1403');
INSERT INTO `sys_role_menu` VALUES ('1', '1405');
INSERT INTO `sys_role_menu` VALUES ('1', '1406');
INSERT INTO `sys_role_menu` VALUES ('1', '1408');
INSERT INTO `sys_role_menu` VALUES ('1', '1409');
INSERT INTO `sys_role_menu` VALUES ('1', '1501');
INSERT INTO `sys_role_menu` VALUES ('1', '1502');
INSERT INTO `sys_role_menu` VALUES ('1', '1503');
INSERT INTO `sys_role_menu` VALUES ('1', '1504');
INSERT INTO `sys_role_menu` VALUES ('1', '1505');
INSERT INTO `sys_role_menu` VALUES ('1', '1506');
INSERT INTO `sys_role_menu` VALUES ('1', '1509');
INSERT INTO `sys_role_menu` VALUES ('1', '1601');
INSERT INTO `sys_role_menu` VALUES ('1', '1602');
INSERT INTO `sys_role_menu` VALUES ('1', '1603');
INSERT INTO `sys_role_menu` VALUES ('1', '1604');
INSERT INTO `sys_role_menu` VALUES ('1', '1605');
INSERT INTO `sys_role_menu` VALUES ('1', '1606');
INSERT INTO `sys_role_menu` VALUES ('1', '1608');
INSERT INTO `sys_role_menu` VALUES ('1', '1609');
INSERT INTO `sys_role_menu` VALUES ('1', '1610');
INSERT INTO `sys_role_menu` VALUES ('1', '1611');
INSERT INTO `sys_role_menu` VALUES ('1', '1612');
INSERT INTO `sys_role_menu` VALUES ('1', '1801');
INSERT INTO `sys_role_menu` VALUES ('1', '1802');
INSERT INTO `sys_role_menu` VALUES ('1', '1803');
INSERT INTO `sys_role_menu` VALUES ('1', '1804');
INSERT INTO `sys_role_menu` VALUES ('1', '1805');
INSERT INTO `sys_role_menu` VALUES ('1', '1806');
INSERT INTO `sys_role_menu` VALUES ('1', '1807');
INSERT INTO `sys_role_menu` VALUES ('1', '1808');
INSERT INTO `sys_role_menu` VALUES ('1', '1809');
INSERT INTO `sys_role_menu` VALUES ('1', '1901');
INSERT INTO `sys_role_menu` VALUES ('1', '1902');
INSERT INTO `sys_role_menu` VALUES ('1', '1903');
INSERT INTO `sys_role_menu` VALUES ('1', '1904');
INSERT INTO `sys_role_menu` VALUES ('1', '1905');
INSERT INTO `sys_role_menu` VALUES ('1', '1906');
INSERT INTO `sys_role_menu` VALUES ('1', '1907');
INSERT INTO `sys_role_menu` VALUES ('1', '1952');
INSERT INTO `sys_role_menu` VALUES ('1', '1953');
INSERT INTO `sys_role_menu` VALUES ('1', '1954');
INSERT INTO `sys_role_menu` VALUES ('1', '1955');
INSERT INTO `sys_role_menu` VALUES ('1', '1956');
INSERT INTO `sys_role_menu` VALUES ('1', '1957');
INSERT INTO `sys_role_menu` VALUES ('1', '2051');
INSERT INTO `sys_role_menu` VALUES ('1', '2052');
INSERT INTO `sys_role_menu` VALUES ('1', '2053');
INSERT INTO `sys_role_menu` VALUES ('1', '2054');
INSERT INTO `sys_role_menu` VALUES ('1', '2101');
INSERT INTO `sys_role_menu` VALUES ('1', '2102');
INSERT INTO `sys_role_menu` VALUES ('1', '2103');
INSERT INTO `sys_role_menu` VALUES ('1', '2104');
INSERT INTO `sys_role_menu` VALUES ('1', '2105');
INSERT INTO `sys_role_menu` VALUES ('1', '2106');
INSERT INTO `sys_role_menu` VALUES ('1', '2107');
INSERT INTO `sys_role_menu` VALUES ('1', '2108');
INSERT INTO `sys_role_menu` VALUES ('1', '2201');
INSERT INTO `sys_role_menu` VALUES ('1', '2202');
INSERT INTO `sys_role_menu` VALUES ('1', '2203');
INSERT INTO `sys_role_menu` VALUES ('1', '2204');
INSERT INTO `sys_role_menu` VALUES ('1', '2205');
INSERT INTO `sys_role_menu` VALUES ('1', '2301');
INSERT INTO `sys_role_menu` VALUES ('1', '2302');
INSERT INTO `sys_role_menu` VALUES ('1', '2401');
INSERT INTO `sys_role_menu` VALUES ('1', '2402');
INSERT INTO `sys_role_menu` VALUES ('1', '2403');
INSERT INTO `sys_role_menu` VALUES ('1', '2404');
INSERT INTO `sys_role_menu` VALUES ('1', '2405');
INSERT INTO `sys_role_menu` VALUES ('1', '2406');
INSERT INTO `sys_role_menu` VALUES ('1', '2407');
INSERT INTO `sys_role_menu` VALUES ('1', '2408');
INSERT INTO `sys_role_menu` VALUES ('1', '2409');
INSERT INTO `sys_role_menu` VALUES ('1', '2410');
INSERT INTO `sys_role_menu` VALUES ('1', '2411');
INSERT INTO `sys_role_menu` VALUES ('1', '2412');
INSERT INTO `sys_role_menu` VALUES ('1', '2413');
INSERT INTO `sys_role_menu` VALUES ('1', '2414');
INSERT INTO `sys_role_menu` VALUES ('1', '2415');
INSERT INTO `sys_role_menu` VALUES ('1', '2416');
INSERT INTO `sys_role_menu` VALUES ('1', '2601');
INSERT INTO `sys_role_menu` VALUES ('1', '2602');
INSERT INTO `sys_role_menu` VALUES ('1', '2603');
INSERT INTO `sys_role_menu` VALUES ('1', '2604');
INSERT INTO `sys_role_menu` VALUES ('1', '2605');
INSERT INTO `sys_role_menu` VALUES ('1', '2701');
INSERT INTO `sys_role_menu` VALUES ('1', '2702');
INSERT INTO `sys_role_menu` VALUES ('1', '2703');
INSERT INTO `sys_role_menu` VALUES ('1', '2704');
INSERT INTO `sys_role_menu` VALUES ('1', '2705');
INSERT INTO `sys_role_menu` VALUES ('1', '2801');
INSERT INTO `sys_role_menu` VALUES ('1', '2802');
INSERT INTO `sys_role_menu` VALUES ('1', '2901');
INSERT INTO `sys_role_menu` VALUES ('1', '2902');
INSERT INTO `sys_role_menu` VALUES ('1', '10013');
INSERT INTO `sys_role_menu` VALUES ('1', '10112');
INSERT INTO `sys_role_menu` VALUES ('1', '10113');
INSERT INTO `sys_role_menu` VALUES ('1', '10114');
INSERT INTO `sys_role_menu` VALUES ('1', '10115');
INSERT INTO `sys_role_menu` VALUES ('1', '10118');
INSERT INTO `sys_role_menu` VALUES ('1', '10119');
INSERT INTO `sys_role_menu` VALUES ('1', '10121');
INSERT INTO `sys_role_menu` VALUES ('1', '10131');
INSERT INTO `sys_role_menu` VALUES ('1', '10132');
INSERT INTO `sys_role_menu` VALUES ('1', '10133');
INSERT INTO `sys_role_menu` VALUES ('1', '10134');
INSERT INTO `sys_role_menu` VALUES ('1', '10135');
INSERT INTO `sys_role_menu` VALUES ('1', '10136');
INSERT INTO `sys_role_menu` VALUES ('1', '10137');
INSERT INTO `sys_role_menu` VALUES ('1', '10138');
INSERT INTO `sys_role_menu` VALUES ('1', '10171');
INSERT INTO `sys_role_menu` VALUES ('1', '10172');
INSERT INTO `sys_role_menu` VALUES ('1', '10173');
INSERT INTO `sys_role_menu` VALUES ('1', '10177');
INSERT INTO `sys_role_menu` VALUES ('1', '10178');
INSERT INTO `sys_role_menu` VALUES ('1', '10181');
INSERT INTO `sys_role_menu` VALUES ('1', '10201');
INSERT INTO `sys_role_menu` VALUES ('1', '10202');
INSERT INTO `sys_role_menu` VALUES ('1', '10204');
INSERT INTO `sys_role_menu` VALUES ('1', '10205');
INSERT INTO `sys_role_menu` VALUES ('1', '10206');
INSERT INTO `sys_role_menu` VALUES ('1', '10211');
INSERT INTO `sys_role_menu` VALUES ('1', '10319');
INSERT INTO `sys_role_menu` VALUES ('1', '10512');
INSERT INTO `sys_role_menu` VALUES ('1', '10513');
INSERT INTO `sys_role_menu` VALUES ('1', '10517');
INSERT INTO `sys_role_menu` VALUES ('1', '10518');
INSERT INTO `sys_role_menu` VALUES ('1', '10519');
INSERT INTO `sys_role_menu` VALUES ('1', '10931');
INSERT INTO `sys_role_menu` VALUES ('1', '12111');
INSERT INTO `sys_role_menu` VALUES ('1', '12112');
INSERT INTO `sys_role_menu` VALUES ('1', '12113');
INSERT INTO `sys_role_menu` VALUES ('1', '12114');
INSERT INTO `sys_role_menu` VALUES ('1', '12115');
INSERT INTO `sys_role_menu` VALUES ('1', '12116');
INSERT INTO `sys_role_menu` VALUES ('1', '12117');
INSERT INTO `sys_role_menu` VALUES ('1', '12118');
INSERT INTO `sys_role_menu` VALUES ('1', '12119');
INSERT INTO `sys_role_menu` VALUES ('1', '12121');
INSERT INTO `sys_role_menu` VALUES ('1', '12122');
INSERT INTO `sys_role_menu` VALUES ('1', '12131');
INSERT INTO `sys_role_menu` VALUES ('1', '12132');
INSERT INTO `sys_role_menu` VALUES ('1', '12142');
INSERT INTO `sys_role_menu` VALUES ('1', '12143');
INSERT INTO `sys_role_menu` VALUES ('1', '12144');
INSERT INTO `sys_role_menu` VALUES ('1', '12145');
INSERT INTO `sys_role_menu` VALUES ('1', '12146');
INSERT INTO `sys_role_menu` VALUES ('1', '12147');
INSERT INTO `sys_role_menu` VALUES ('1', '13061');
INSERT INTO `sys_role_menu` VALUES ('1', '14001');
INSERT INTO `sys_role_menu` VALUES ('1', '14002');
INSERT INTO `sys_role_menu` VALUES ('1', '14010');
INSERT INTO `sys_role_menu` VALUES ('1', '14011');
INSERT INTO `sys_role_menu` VALUES ('1', '14012');
INSERT INTO `sys_role_menu` VALUES ('1', '14013');
INSERT INTO `sys_role_menu` VALUES ('1', '14014');
INSERT INTO `sys_role_menu` VALUES ('1', '14015');
INSERT INTO `sys_role_menu` VALUES ('1', '14016');
INSERT INTO `sys_role_menu` VALUES ('1', '14017');
INSERT INTO `sys_role_menu` VALUES ('1', '14018');
INSERT INTO `sys_role_menu` VALUES ('1', '14019');
INSERT INTO `sys_role_menu` VALUES ('1', '14030');
INSERT INTO `sys_role_menu` VALUES ('1', '14031');
INSERT INTO `sys_role_menu` VALUES ('1', '14032');
INSERT INTO `sys_role_menu` VALUES ('1', '14033');
INSERT INTO `sys_role_menu` VALUES ('1', '14034');
INSERT INTO `sys_role_menu` VALUES ('1', '14035');
INSERT INTO `sys_role_menu` VALUES ('1', '14036');
INSERT INTO `sys_role_menu` VALUES ('1', '14401');
INSERT INTO `sys_role_menu` VALUES ('1', '14402');
INSERT INTO `sys_role_menu` VALUES ('1', '15007');
INSERT INTO `sys_role_menu` VALUES ('1', '15008');
INSERT INTO `sys_role_menu` VALUES ('1', '15010');
INSERT INTO `sys_role_menu` VALUES ('1', '15091');
INSERT INTO `sys_role_menu` VALUES ('1', '16013');
INSERT INTO `sys_role_menu` VALUES ('1', '16014');
INSERT INTO `sys_role_menu` VALUES ('1', '16051');
INSERT INTO `sys_role_menu` VALUES ('1', '16052');
INSERT INTO `sys_role_menu` VALUES ('1', '16053');
INSERT INTO `sys_role_menu` VALUES ('1', '16054');
INSERT INTO `sys_role_menu` VALUES ('1', '16055');
INSERT INTO `sys_role_menu` VALUES ('1', '16056');
INSERT INTO `sys_role_menu` VALUES ('1', '16057');
INSERT INTO `sys_role_menu` VALUES ('1', '16058');
INSERT INTO `sys_role_menu` VALUES ('1', '16059');
INSERT INTO `sys_role_menu` VALUES ('1', '16061');
INSERT INTO `sys_role_menu` VALUES ('1', '16062');
INSERT INTO `sys_role_menu` VALUES ('1', '16063');
INSERT INTO `sys_role_menu` VALUES ('1', '16064');
INSERT INTO `sys_role_menu` VALUES ('1', '16065');
INSERT INTO `sys_role_menu` VALUES ('1', '16066');
INSERT INTO `sys_role_menu` VALUES ('1', '16067');
INSERT INTO `sys_role_menu` VALUES ('1', '16068');
INSERT INTO `sys_role_menu` VALUES ('1', '16069');
INSERT INTO `sys_role_menu` VALUES ('1', '16081');
INSERT INTO `sys_role_menu` VALUES ('1', '16121');
INSERT INTO `sys_role_menu` VALUES ('1', '18010');
INSERT INTO `sys_role_menu` VALUES ('1', '18011');
INSERT INTO `sys_role_menu` VALUES ('1', '18012');
INSERT INTO `sys_role_menu` VALUES ('1', '18013');
INSERT INTO `sys_role_menu` VALUES ('1', '18014');
INSERT INTO `sys_role_menu` VALUES ('1', '18015');
INSERT INTO `sys_role_menu` VALUES ('1', '18016');
INSERT INTO `sys_role_menu` VALUES ('1', '18017');
INSERT INTO `sys_role_menu` VALUES ('1', '18020');
INSERT INTO `sys_role_menu` VALUES ('1', '18021');
INSERT INTO `sys_role_menu` VALUES ('1', '18022');
INSERT INTO `sys_role_menu` VALUES ('1', '18023');
INSERT INTO `sys_role_menu` VALUES ('1', '18031');
INSERT INTO `sys_role_menu` VALUES ('1', '18032');
INSERT INTO `sys_role_menu` VALUES ('1', '18033');
INSERT INTO `sys_role_menu` VALUES ('1', '18041');
INSERT INTO `sys_role_menu` VALUES ('1', '18042');
INSERT INTO `sys_role_menu` VALUES ('1', '18043');
INSERT INTO `sys_role_menu` VALUES ('1', '18044');
INSERT INTO `sys_role_menu` VALUES ('1', '18051');
INSERT INTO `sys_role_menu` VALUES ('1', '18052');
INSERT INTO `sys_role_menu` VALUES ('1', '18053');
INSERT INTO `sys_role_menu` VALUES ('1', '18054');
INSERT INTO `sys_role_menu` VALUES ('1', '18055');
INSERT INTO `sys_role_menu` VALUES ('1', '18056');
INSERT INTO `sys_role_menu` VALUES ('1', '18057');
INSERT INTO `sys_role_menu` VALUES ('1', '18058');
INSERT INTO `sys_role_menu` VALUES ('1', '18061');
INSERT INTO `sys_role_menu` VALUES ('1', '18062');
INSERT INTO `sys_role_menu` VALUES ('1', '18063');
INSERT INTO `sys_role_menu` VALUES ('1', '18064');
INSERT INTO `sys_role_menu` VALUES ('1', '18065');
INSERT INTO `sys_role_menu` VALUES ('1', '19051');
INSERT INTO `sys_role_menu` VALUES ('1', '19052');
INSERT INTO `sys_role_menu` VALUES ('1', '19053');
INSERT INTO `sys_role_menu` VALUES ('1', '19054');
INSERT INTO `sys_role_menu` VALUES ('1', '19055');
INSERT INTO `sys_role_menu` VALUES ('1', '19056');
INSERT INTO `sys_role_menu` VALUES ('1', '19057');
INSERT INTO `sys_role_menu` VALUES ('1', '19091');
INSERT INTO `sys_role_menu` VALUES ('1', '19101');
INSERT INTO `sys_role_menu` VALUES ('1', '19102');
INSERT INTO `sys_role_menu` VALUES ('1', '19103');
INSERT INTO `sys_role_menu` VALUES ('1', '19201');
INSERT INTO `sys_role_menu` VALUES ('1', '19202');
INSERT INTO `sys_role_menu` VALUES ('1', '19203');
INSERT INTO `sys_role_menu` VALUES ('1', '19501');
INSERT INTO `sys_role_menu` VALUES ('1', '19521');
INSERT INTO `sys_role_menu` VALUES ('1', '19522');
INSERT INTO `sys_role_menu` VALUES ('1', '19523');
INSERT INTO `sys_role_menu` VALUES ('1', '19524');
INSERT INTO `sys_role_menu` VALUES ('1', '19525');
INSERT INTO `sys_role_menu` VALUES ('1', '19526');
INSERT INTO `sys_role_menu` VALUES ('1', '19527');
INSERT INTO `sys_role_menu` VALUES ('1', '19528');
INSERT INTO `sys_role_menu` VALUES ('1', '19529');
INSERT INTO `sys_role_menu` VALUES ('1', '19541');
INSERT INTO `sys_role_menu` VALUES ('1', '19542');
INSERT INTO `sys_role_menu` VALUES ('1', '19543');
INSERT INTO `sys_role_menu` VALUES ('1', '19544');
INSERT INTO `sys_role_menu` VALUES ('1', '19551');
INSERT INTO `sys_role_menu` VALUES ('1', '19552');
INSERT INTO `sys_role_menu` VALUES ('1', '19553');
INSERT INTO `sys_role_menu` VALUES ('1', '19554');
INSERT INTO `sys_role_menu` VALUES ('1', '19555');
INSERT INTO `sys_role_menu` VALUES ('1', '19561');
INSERT INTO `sys_role_menu` VALUES ('1', '20001');
INSERT INTO `sys_role_menu` VALUES ('1', '20002');
INSERT INTO `sys_role_menu` VALUES ('1', '20003');
INSERT INTO `sys_role_menu` VALUES ('1', '20004');
INSERT INTO `sys_role_menu` VALUES ('1', '20005');
INSERT INTO `sys_role_menu` VALUES ('1', '20006');
INSERT INTO `sys_role_menu` VALUES ('1', '20007');
INSERT INTO `sys_role_menu` VALUES ('1', '20008');
INSERT INTO `sys_role_menu` VALUES ('1', '20009');
INSERT INTO `sys_role_menu` VALUES ('1', '20010');
INSERT INTO `sys_role_menu` VALUES ('1', '20011');
INSERT INTO `sys_role_menu` VALUES ('1', '20101');
INSERT INTO `sys_role_menu` VALUES ('1', '20102');
INSERT INTO `sys_role_menu` VALUES ('1', '20103');
INSERT INTO `sys_role_menu` VALUES ('1', '20104');
INSERT INTO `sys_role_menu` VALUES ('1', '20301');
INSERT INTO `sys_role_menu` VALUES ('1', '20302');
INSERT INTO `sys_role_menu` VALUES ('1', '20303');
INSERT INTO `sys_role_menu` VALUES ('1', '20304');
INSERT INTO `sys_role_menu` VALUES ('1', '20305');
INSERT INTO `sys_role_menu` VALUES ('1', '22021');
INSERT INTO `sys_role_menu` VALUES ('1', '22022');
INSERT INTO `sys_role_menu` VALUES ('1', '22023');
INSERT INTO `sys_role_menu` VALUES ('1', '22024');
INSERT INTO `sys_role_menu` VALUES ('1', '22025');
INSERT INTO `sys_role_menu` VALUES ('1', '22026');
INSERT INTO `sys_role_menu` VALUES ('1', '22031');
INSERT INTO `sys_role_menu` VALUES ('1', '22032');
INSERT INTO `sys_role_menu` VALUES ('1', '22033');
INSERT INTO `sys_role_menu` VALUES ('1', '22034');
INSERT INTO `sys_role_menu` VALUES ('1', '22035');
INSERT INTO `sys_role_menu` VALUES ('1', '22036');
INSERT INTO `sys_role_menu` VALUES ('1', '22041');
INSERT INTO `sys_role_menu` VALUES ('1', '22042');
INSERT INTO `sys_role_menu` VALUES ('1', '22043');
INSERT INTO `sys_role_menu` VALUES ('1', '22044');
INSERT INTO `sys_role_menu` VALUES ('1', '22045');
INSERT INTO `sys_role_menu` VALUES ('1', '22051');
INSERT INTO `sys_role_menu` VALUES ('1', '22052');
INSERT INTO `sys_role_menu` VALUES ('1', '22053');
INSERT INTO `sys_role_menu` VALUES ('1', '22054');
INSERT INTO `sys_role_menu` VALUES ('1', '23011');
INSERT INTO `sys_role_menu` VALUES ('1', '23012');
INSERT INTO `sys_role_menu` VALUES ('1', '23013');
INSERT INTO `sys_role_menu` VALUES ('1', '23014');
INSERT INTO `sys_role_menu` VALUES ('1', '24209');
INSERT INTO `sys_role_menu` VALUES ('1', '26011');
INSERT INTO `sys_role_menu` VALUES ('1', '26012');
INSERT INTO `sys_role_menu` VALUES ('1', '26013');
INSERT INTO `sys_role_menu` VALUES ('1', '26014');
INSERT INTO `sys_role_menu` VALUES ('1', '26015');
INSERT INTO `sys_role_menu` VALUES ('1', '26016');
INSERT INTO `sys_role_menu` VALUES ('1', '26017');
INSERT INTO `sys_role_menu` VALUES ('1', '26021');
INSERT INTO `sys_role_menu` VALUES ('1', '26022');
INSERT INTO `sys_role_menu` VALUES ('1', '26023');
INSERT INTO `sys_role_menu` VALUES ('1', '26024');
INSERT INTO `sys_role_menu` VALUES ('1', '26025');
INSERT INTO `sys_role_menu` VALUES ('1', '26026');
INSERT INTO `sys_role_menu` VALUES ('1', '26027');
INSERT INTO `sys_role_menu` VALUES ('1', '26031');
INSERT INTO `sys_role_menu` VALUES ('1', '26032');
INSERT INTO `sys_role_menu` VALUES ('1', '26033');
INSERT INTO `sys_role_menu` VALUES ('1', '26034');
INSERT INTO `sys_role_menu` VALUES ('1', '26041');
INSERT INTO `sys_role_menu` VALUES ('1', '26042');
INSERT INTO `sys_role_menu` VALUES ('1', '26043');
INSERT INTO `sys_role_menu` VALUES ('1', '26044');
INSERT INTO `sys_role_menu` VALUES ('1', '26045');
INSERT INTO `sys_role_menu` VALUES ('1', '26046');
INSERT INTO `sys_role_menu` VALUES ('1', '26047');
INSERT INTO `sys_role_menu` VALUES ('1', '26051');
INSERT INTO `sys_role_menu` VALUES ('1', '26052');
INSERT INTO `sys_role_menu` VALUES ('1', '28011');
INSERT INTO `sys_role_menu` VALUES ('1', '28012');
INSERT INTO `sys_role_menu` VALUES ('1', '28013');
INSERT INTO `sys_role_menu` VALUES ('1', '28014');
INSERT INTO `sys_role_menu` VALUES ('1', '28021');
INSERT INTO `sys_role_menu` VALUES ('1', '28022');
INSERT INTO `sys_role_menu` VALUES ('1', '28023');
INSERT INTO `sys_role_menu` VALUES ('1', '28024');
INSERT INTO `sys_role_menu` VALUES ('1', '28025');
INSERT INTO `sys_role_menu` VALUES ('1', '28026');
INSERT INTO `sys_role_menu` VALUES ('1', '28027');
INSERT INTO `sys_role_menu` VALUES ('1', '28028');
INSERT INTO `sys_role_menu` VALUES ('1', '28029');
INSERT INTO `sys_role_menu` VALUES ('1', '101110');
INSERT INTO `sys_role_menu` VALUES ('1', '101111');
INSERT INTO `sys_role_menu` VALUES ('1', '101112');
INSERT INTO `sys_role_menu` VALUES ('1', '101113');
INSERT INTO `sys_role_menu` VALUES ('1', '101114');
INSERT INTO `sys_role_menu` VALUES ('1', '101115');
INSERT INTO `sys_role_menu` VALUES ('1', '101116');
INSERT INTO `sys_role_menu` VALUES ('1', '101117');
INSERT INTO `sys_role_menu` VALUES ('1', '101311');
INSERT INTO `sys_role_menu` VALUES ('1', '101312');
INSERT INTO `sys_role_menu` VALUES ('1', '101315');
INSERT INTO `sys_role_menu` VALUES ('1', '101317');
INSERT INTO `sys_role_menu` VALUES ('1', '101318');
INSERT INTO `sys_role_menu` VALUES ('1', '101319');
INSERT INTO `sys_role_menu` VALUES ('1', '101710');
INSERT INTO `sys_role_menu` VALUES ('1', '101711');
INSERT INTO `sys_role_menu` VALUES ('1', '101712');
INSERT INTO `sys_role_menu` VALUES ('1', '101717');
INSERT INTO `sys_role_menu` VALUES ('1', '101718');
INSERT INTO `sys_role_menu` VALUES ('1', '101719');
INSERT INTO `sys_role_menu` VALUES ('1', '101720');
INSERT INTO `sys_role_menu` VALUES ('1', '101721');
INSERT INTO `sys_role_menu` VALUES ('1', '101723');
INSERT INTO `sys_role_menu` VALUES ('1', '101724');
INSERT INTO `sys_role_menu` VALUES ('1', '101725');
INSERT INTO `sys_role_menu` VALUES ('1', '101726');
INSERT INTO `sys_role_menu` VALUES ('1', '101727');
INSERT INTO `sys_role_menu` VALUES ('1', '101728');
INSERT INTO `sys_role_menu` VALUES ('1', '101729');
INSERT INTO `sys_role_menu` VALUES ('1', '101730');
INSERT INTO `sys_role_menu` VALUES ('1', '101732');
INSERT INTO `sys_role_menu` VALUES ('1', '101733');
INSERT INTO `sys_role_menu` VALUES ('1', '101734');
INSERT INTO `sys_role_menu` VALUES ('1', '101735');
INSERT INTO `sys_role_menu` VALUES ('1', '101736');
INSERT INTO `sys_role_menu` VALUES ('1', '101737');
INSERT INTO `sys_role_menu` VALUES ('1', '101901');
INSERT INTO `sys_role_menu` VALUES ('1', '104122');
INSERT INTO `sys_role_menu` VALUES ('1', '121110');
INSERT INTO `sys_role_menu` VALUES ('1', '121111');
INSERT INTO `sys_role_menu` VALUES ('1', '121112');
INSERT INTO `sys_role_menu` VALUES ('1', '121113');
INSERT INTO `sys_role_menu` VALUES ('1', '121114');
INSERT INTO `sys_role_menu` VALUES ('1', '121115');
INSERT INTO `sys_role_menu` VALUES ('1', '121116');
INSERT INTO `sys_role_menu` VALUES ('1', '121117');
INSERT INTO `sys_role_menu` VALUES ('1', '121118');
INSERT INTO `sys_role_menu` VALUES ('1', '121119');
INSERT INTO `sys_role_menu` VALUES ('1', '140120');
INSERT INTO `sys_role_menu` VALUES ('1', '140121');
INSERT INTO `sys_role_menu` VALUES ('1', '140122');
INSERT INTO `sys_role_menu` VALUES ('1', '140203');
INSERT INTO `sys_role_menu` VALUES ('1', '140301');
INSERT INTO `sys_role_menu` VALUES ('1', '140302');
INSERT INTO `sys_role_menu` VALUES ('1', '140331');
INSERT INTO `sys_role_menu` VALUES ('1', '140341');
INSERT INTO `sys_role_menu` VALUES ('1', '145001');
INSERT INTO `sys_role_menu` VALUES ('1', '146001');
INSERT INTO `sys_role_menu` VALUES ('1', '150081');
INSERT INTO `sys_role_menu` VALUES ('1', '150101');
INSERT INTO `sys_role_menu` VALUES ('1', '150301');
INSERT INTO `sys_role_menu` VALUES ('1', '150302');
INSERT INTO `sys_role_menu` VALUES ('1', '150401');
INSERT INTO `sys_role_menu` VALUES ('1', '150402');
INSERT INTO `sys_role_menu` VALUES ('1', '150501');
INSERT INTO `sys_role_menu` VALUES ('1', '150502');
INSERT INTO `sys_role_menu` VALUES ('1', '150601');
INSERT INTO `sys_role_menu` VALUES ('1', '150602');
INSERT INTO `sys_role_menu` VALUES ('1', '160101');
INSERT INTO `sys_role_menu` VALUES ('1', '160201');
INSERT INTO `sys_role_menu` VALUES ('1', '160202');
INSERT INTO `sys_role_menu` VALUES ('1', '160301');
INSERT INTO `sys_role_menu` VALUES ('1', '160302');
INSERT INTO `sys_role_menu` VALUES ('1', '160303');
INSERT INTO `sys_role_menu` VALUES ('1', '160304');
INSERT INTO `sys_role_menu` VALUES ('1', '160305');
INSERT INTO `sys_role_menu` VALUES ('1', '160306');
INSERT INTO `sys_role_menu` VALUES ('1', '160307');
INSERT INTO `sys_role_menu` VALUES ('1', '160308');
INSERT INTO `sys_role_menu` VALUES ('1', '160309');
INSERT INTO `sys_role_menu` VALUES ('1', '160310');
INSERT INTO `sys_role_menu` VALUES ('1', '160311');
INSERT INTO `sys_role_menu` VALUES ('1', '160312');
INSERT INTO `sys_role_menu` VALUES ('1', '160313');
INSERT INTO `sys_role_menu` VALUES ('1', '160401');
INSERT INTO `sys_role_menu` VALUES ('1', '160402');
INSERT INTO `sys_role_menu` VALUES ('1', '160403');
INSERT INTO `sys_role_menu` VALUES ('1', '160404');
INSERT INTO `sys_role_menu` VALUES ('1', '160510');
INSERT INTO `sys_role_menu` VALUES ('1', '160511');
INSERT INTO `sys_role_menu` VALUES ('1', '160512');
INSERT INTO `sys_role_menu` VALUES ('1', '160513');
INSERT INTO `sys_role_menu` VALUES ('1', '160514');
INSERT INTO `sys_role_menu` VALUES ('1', '160515');
INSERT INTO `sys_role_menu` VALUES ('1', '160516');
INSERT INTO `sys_role_menu` VALUES ('1', '160610');
INSERT INTO `sys_role_menu` VALUES ('1', '160611');
INSERT INTO `sys_role_menu` VALUES ('1', '180101');
INSERT INTO `sys_role_menu` VALUES ('1', '180102');
INSERT INTO `sys_role_menu` VALUES ('1', '180141');
INSERT INTO `sys_role_menu` VALUES ('1', '180142');
INSERT INTO `sys_role_menu` VALUES ('1', '180151');
INSERT INTO `sys_role_menu` VALUES ('1', '180152');
INSERT INTO `sys_role_menu` VALUES ('1', '180161');
INSERT INTO `sys_role_menu` VALUES ('1', '180162');
INSERT INTO `sys_role_menu` VALUES ('1', '180163');
INSERT INTO `sys_role_menu` VALUES ('1', '180171');
INSERT INTO `sys_role_menu` VALUES ('1', '180172');
INSERT INTO `sys_role_menu` VALUES ('1', '180173');
INSERT INTO `sys_role_menu` VALUES ('1', '180701');
INSERT INTO `sys_role_menu` VALUES ('1', '180702');
INSERT INTO `sys_role_menu` VALUES ('1', '180703');
INSERT INTO `sys_role_menu` VALUES ('1', '180704');
INSERT INTO `sys_role_menu` VALUES ('1', '190101');
INSERT INTO `sys_role_menu` VALUES ('1', '190102');
INSERT INTO `sys_role_menu` VALUES ('1', '190103');
INSERT INTO `sys_role_menu` VALUES ('1', '190104');
INSERT INTO `sys_role_menu` VALUES ('1', '190105');
INSERT INTO `sys_role_menu` VALUES ('1', '190106');
INSERT INTO `sys_role_menu` VALUES ('1', '190107');
INSERT INTO `sys_role_menu` VALUES ('1', '190108');
INSERT INTO `sys_role_menu` VALUES ('1', '190109');
INSERT INTO `sys_role_menu` VALUES ('1', '190110');
INSERT INTO `sys_role_menu` VALUES ('1', '190111');
INSERT INTO `sys_role_menu` VALUES ('1', '190112');
INSERT INTO `sys_role_menu` VALUES ('1', '190113');
INSERT INTO `sys_role_menu` VALUES ('1', '190114');
INSERT INTO `sys_role_menu` VALUES ('1', '190115');
INSERT INTO `sys_role_menu` VALUES ('1', '190116');
INSERT INTO `sys_role_menu` VALUES ('1', '190117');
INSERT INTO `sys_role_menu` VALUES ('1', '190118');
INSERT INTO `sys_role_menu` VALUES ('1', '190120');
INSERT INTO `sys_role_menu` VALUES ('1', '190121');
INSERT INTO `sys_role_menu` VALUES ('1', '190122');
INSERT INTO `sys_role_menu` VALUES ('1', '190123');
INSERT INTO `sys_role_menu` VALUES ('1', '190124');
INSERT INTO `sys_role_menu` VALUES ('1', '190125');
INSERT INTO `sys_role_menu` VALUES ('1', '190126');
INSERT INTO `sys_role_menu` VALUES ('1', '190128');
INSERT INTO `sys_role_menu` VALUES ('1', '190129');
INSERT INTO `sys_role_menu` VALUES ('1', '190131');
INSERT INTO `sys_role_menu` VALUES ('1', '190153');
INSERT INTO `sys_role_menu` VALUES ('1', '190158');
INSERT INTO `sys_role_menu` VALUES ('1', '190159');
INSERT INTO `sys_role_menu` VALUES ('1', '190201');
INSERT INTO `sys_role_menu` VALUES ('1', '190210');
INSERT INTO `sys_role_menu` VALUES ('1', '190601');
INSERT INTO `sys_role_menu` VALUES ('1', '190602');
INSERT INTO `sys_role_menu` VALUES ('1', '190603');
INSERT INTO `sys_role_menu` VALUES ('1', '190604');
INSERT INTO `sys_role_menu` VALUES ('1', '190701');
INSERT INTO `sys_role_menu` VALUES ('1', '190702');
INSERT INTO `sys_role_menu` VALUES ('1', '190703');
INSERT INTO `sys_role_menu` VALUES ('1', '190704');
INSERT INTO `sys_role_menu` VALUES ('1', '195001');
INSERT INTO `sys_role_menu` VALUES ('1', '195002');
INSERT INTO `sys_role_menu` VALUES ('1', '195003');
INSERT INTO `sys_role_menu` VALUES ('1', '195004');
INSERT INTO `sys_role_menu` VALUES ('1', '195005');
INSERT INTO `sys_role_menu` VALUES ('1', '195006');
INSERT INTO `sys_role_menu` VALUES ('1', '195007');
INSERT INTO `sys_role_menu` VALUES ('1', '195008');
INSERT INTO `sys_role_menu` VALUES ('1', '195009');
INSERT INTO `sys_role_menu` VALUES ('1', '196127');
INSERT INTO `sys_role_menu` VALUES ('1', '196128');
INSERT INTO `sys_role_menu` VALUES ('1', '220101');
INSERT INTO `sys_role_menu` VALUES ('1', '220102');
INSERT INTO `sys_role_menu` VALUES ('1', '220103');
INSERT INTO `sys_role_menu` VALUES ('1', '220104');
INSERT INTO `sys_role_menu` VALUES ('1', '220105');
INSERT INTO `sys_role_menu` VALUES ('1', '220110');
INSERT INTO `sys_role_menu` VALUES ('1', '220111');
INSERT INTO `sys_role_menu` VALUES ('1', '220112');
INSERT INTO `sys_role_menu` VALUES ('1', '220114');
INSERT INTO `sys_role_menu` VALUES ('1', '220115');
INSERT INTO `sys_role_menu` VALUES ('1', '220120');
INSERT INTO `sys_role_menu` VALUES ('1', '220121');
INSERT INTO `sys_role_menu` VALUES ('1', '220122');
INSERT INTO `sys_role_menu` VALUES ('1', '220123');
INSERT INTO `sys_role_menu` VALUES ('1', '220124');
INSERT INTO `sys_role_menu` VALUES ('1', '220125');
INSERT INTO `sys_role_menu` VALUES ('1', '220126');
INSERT INTO `sys_role_menu` VALUES ('1', '230201');
INSERT INTO `sys_role_menu` VALUES ('1', '230202');
INSERT INTO `sys_role_menu` VALUES ('1', '280211');
INSERT INTO `sys_role_menu` VALUES ('1', '1001301');
INSERT INTO `sys_role_menu` VALUES ('1', '1001302');
INSERT INTO `sys_role_menu` VALUES ('1', '1001303');
INSERT INTO `sys_role_menu` VALUES ('1', '1001304');
INSERT INTO `sys_role_menu` VALUES ('1', '1001305');
INSERT INTO `sys_role_menu` VALUES ('1', '1001306');
INSERT INTO `sys_role_menu` VALUES ('1', '1450002');
INSERT INTO `sys_role_menu` VALUES ('1', '1460002');
INSERT INTO `sys_role_menu` VALUES ('1', '1500701');
INSERT INTO `sys_role_menu` VALUES ('1', '1501001');
INSERT INTO `sys_role_menu` VALUES ('1', '1501002');
INSERT INTO `sys_role_menu` VALUES ('1', '1802101');
INSERT INTO `sys_role_menu` VALUES ('1', '1802102');
INSERT INTO `sys_role_menu` VALUES ('1', '1802103');
INSERT INTO `sys_role_menu` VALUES ('1', '1802104');
INSERT INTO `sys_role_menu` VALUES ('1', '1901129');
INSERT INTO `sys_role_menu` VALUES ('1', '1901130');
INSERT INTO `sys_role_menu` VALUES ('1', '1901150');
INSERT INTO `sys_role_menu` VALUES ('1', '1901151');
INSERT INTO `sys_role_menu` VALUES ('1', '1901152');
INSERT INTO `sys_role_menu` VALUES ('1', '1901153');
INSERT INTO `sys_role_menu` VALUES ('1', '1901154');
INSERT INTO `sys_role_menu` VALUES ('1', '1901155');
INSERT INTO `sys_role_menu` VALUES ('1', '1901156');
INSERT INTO `sys_role_menu` VALUES ('1', '1901157');
INSERT INTO `sys_role_menu` VALUES ('1', '1903211');
INSERT INTO `sys_role_menu` VALUES ('1', '1904001');
INSERT INTO `sys_role_menu` VALUES ('1', '1904002');
INSERT INTO `sys_role_menu` VALUES ('1', '1904003');
INSERT INTO `sys_role_menu` VALUES ('1', '1904004');
INSERT INTO `sys_role_menu` VALUES ('1', '1904005');
INSERT INTO `sys_role_menu` VALUES ('1', '2000101');
INSERT INTO `sys_role_menu` VALUES ('1', '2000102');
INSERT INTO `sys_role_menu` VALUES ('1', '2000103');
INSERT INTO `sys_role_menu` VALUES ('1', '2000104');
INSERT INTO `sys_role_menu` VALUES ('1', '2000201');
INSERT INTO `sys_role_menu` VALUES ('1', '2000202');
INSERT INTO `sys_role_menu` VALUES ('1', '2000203');
INSERT INTO `sys_role_menu` VALUES ('1', '2000204');
INSERT INTO `sys_role_menu` VALUES ('1', '2000205');
INSERT INTO `sys_role_menu` VALUES ('1', '2000206');
INSERT INTO `sys_role_menu` VALUES ('1', '2000207');
INSERT INTO `sys_role_menu` VALUES ('1', '2000208');
INSERT INTO `sys_role_menu` VALUES ('1', '2000209');
INSERT INTO `sys_role_menu` VALUES ('1', '2000210');
INSERT INTO `sys_role_menu` VALUES ('1', '2000211');
INSERT INTO `sys_role_menu` VALUES ('1', '2000301');
INSERT INTO `sys_role_menu` VALUES ('1', '2000302');
INSERT INTO `sys_role_menu` VALUES ('1', '2000303');
INSERT INTO `sys_role_menu` VALUES ('1', '2000304');
INSERT INTO `sys_role_menu` VALUES ('1', '2000305');
INSERT INTO `sys_role_menu` VALUES ('1', '2000306');
INSERT INTO `sys_role_menu` VALUES ('1', '2000307');
INSERT INTO `sys_role_menu` VALUES ('1', '2000401');
INSERT INTO `sys_role_menu` VALUES ('1', '2000402');
INSERT INTO `sys_role_menu` VALUES ('1', '2000403');
INSERT INTO `sys_role_menu` VALUES ('1', '2000404');
INSERT INTO `sys_role_menu` VALUES ('1', '2000405');
INSERT INTO `sys_role_menu` VALUES ('1', '2000406');
INSERT INTO `sys_role_menu` VALUES ('1', '2000501');
INSERT INTO `sys_role_menu` VALUES ('1', '2000502');
INSERT INTO `sys_role_menu` VALUES ('1', '2000503');
INSERT INTO `sys_role_menu` VALUES ('1', '2000504');
INSERT INTO `sys_role_menu` VALUES ('1', '2000505');
INSERT INTO `sys_role_menu` VALUES ('1', '2000506');
INSERT INTO `sys_role_menu` VALUES ('1', '2000507');
INSERT INTO `sys_role_menu` VALUES ('1', '2000508');
INSERT INTO `sys_role_menu` VALUES ('1', '2000509');
INSERT INTO `sys_role_menu` VALUES ('1', '2000510');
INSERT INTO `sys_role_menu` VALUES ('1', '2000511');
INSERT INTO `sys_role_menu` VALUES ('1', '2000512');
INSERT INTO `sys_role_menu` VALUES ('1', '2000513');
INSERT INTO `sys_role_menu` VALUES ('1', '2000601');
INSERT INTO `sys_role_menu` VALUES ('1', '2000602');
INSERT INTO `sys_role_menu` VALUES ('1', '2000603');
INSERT INTO `sys_role_menu` VALUES ('1', '2000604');
INSERT INTO `sys_role_menu` VALUES ('1', '2000605');
INSERT INTO `sys_role_menu` VALUES ('1', '2000606');
INSERT INTO `sys_role_menu` VALUES ('1', '2000701');
INSERT INTO `sys_role_menu` VALUES ('1', '2000702');
INSERT INTO `sys_role_menu` VALUES ('1', '2000703');
INSERT INTO `sys_role_menu` VALUES ('1', '2000704');
INSERT INTO `sys_role_menu` VALUES ('1', '2000705');
INSERT INTO `sys_role_menu` VALUES ('1', '2000706');
INSERT INTO `sys_role_menu` VALUES ('1', '2000707');
INSERT INTO `sys_role_menu` VALUES ('1', '2000708');
INSERT INTO `sys_role_menu` VALUES ('1', '2000709');
INSERT INTO `sys_role_menu` VALUES ('1', '2000710');
INSERT INTO `sys_role_menu` VALUES ('1', '2000711');
INSERT INTO `sys_role_menu` VALUES ('1', '2000712');
INSERT INTO `sys_role_menu` VALUES ('1', '2000713');
INSERT INTO `sys_role_menu` VALUES ('1', '2000714');
INSERT INTO `sys_role_menu` VALUES ('1', '2000715');
INSERT INTO `sys_role_menu` VALUES ('1', '2000716');
INSERT INTO `sys_role_menu` VALUES ('1', '2000801');
INSERT INTO `sys_role_menu` VALUES ('1', '2000802');
INSERT INTO `sys_role_menu` VALUES ('1', '2000803');
INSERT INTO `sys_role_menu` VALUES ('1', '2000804');
INSERT INTO `sys_role_menu` VALUES ('1', '2000805');
INSERT INTO `sys_role_menu` VALUES ('1', '2000901');
INSERT INTO `sys_role_menu` VALUES ('1', '2000902');
INSERT INTO `sys_role_menu` VALUES ('1', '2000903');
INSERT INTO `sys_role_menu` VALUES ('1', '2000904');
INSERT INTO `sys_role_menu` VALUES ('1', '2000905');
INSERT INTO `sys_role_menu` VALUES ('1', '2000906');
INSERT INTO `sys_role_menu` VALUES ('1', '2000907');
INSERT INTO `sys_role_menu` VALUES ('1', '2001101');
INSERT INTO `sys_role_menu` VALUES ('1', '15010002');
INSERT INTO `sys_role_menu` VALUES ('1', '15020003');
INSERT INTO `sys_role_menu` VALUES ('14', '1');
INSERT INTO `sys_role_menu` VALUES ('14', '2');
INSERT INTO `sys_role_menu` VALUES ('14', '3');
INSERT INTO `sys_role_menu` VALUES ('14', '4');
INSERT INTO `sys_role_menu` VALUES ('14', '5');
INSERT INTO `sys_role_menu` VALUES ('14', '6');
INSERT INTO `sys_role_menu` VALUES ('14', '7');
INSERT INTO `sys_role_menu` VALUES ('14', '8');
INSERT INTO `sys_role_menu` VALUES ('14', '9');
INSERT INTO `sys_role_menu` VALUES ('14', '11');
INSERT INTO `sys_role_menu` VALUES ('14', '12');
INSERT INTO `sys_role_menu` VALUES ('14', '13');
INSERT INTO `sys_role_menu` VALUES ('14', '14');
INSERT INTO `sys_role_menu` VALUES ('14', '15');
INSERT INTO `sys_role_menu` VALUES ('14', '21');
INSERT INTO `sys_role_menu` VALUES ('14', '31');
INSERT INTO `sys_role_menu` VALUES ('14', '41');
INSERT INTO `sys_role_menu` VALUES ('14', '51');
INSERT INTO `sys_role_menu` VALUES ('14', '61');
INSERT INTO `sys_role_menu` VALUES ('14', '71');
INSERT INTO `sys_role_menu` VALUES ('14', '10112');
INSERT INTO `sys_role_menu` VALUES ('15', '1');
INSERT INTO `sys_role_menu` VALUES ('15', '2');
INSERT INTO `sys_role_menu` VALUES ('15', '4');
INSERT INTO `sys_role_menu` VALUES ('15', '5');
INSERT INTO `sys_role_menu` VALUES ('15', '7');
INSERT INTO `sys_role_menu` VALUES ('15', '21');
INSERT INTO `sys_role_menu` VALUES ('15', '41');
INSERT INTO `sys_role_menu` VALUES ('15', '51');
INSERT INTO `sys_role_menu` VALUES ('15', '71');
INSERT INTO `sys_role_menu` VALUES ('15', '100');
INSERT INTO `sys_role_menu` VALUES ('15', '101');
INSERT INTO `sys_role_menu` VALUES ('15', '102');
INSERT INTO `sys_role_menu` VALUES ('15', '105');
INSERT INTO `sys_role_menu` VALUES ('15', '130');
INSERT INTO `sys_role_menu` VALUES ('15', '1011');
INSERT INTO `sys_role_menu` VALUES ('15', '1012');
INSERT INTO `sys_role_menu` VALUES ('15', '1013');
INSERT INTO `sys_role_menu` VALUES ('15', '1017');
INSERT INTO `sys_role_menu` VALUES ('15', '1051');
INSERT INTO `sys_role_menu` VALUES ('15', '1052');
INSERT INTO `sys_role_menu` VALUES ('15', '1301');
INSERT INTO `sys_role_menu` VALUES ('15', '10112');
INSERT INTO `sys_role_menu` VALUES ('15', '10113');
INSERT INTO `sys_role_menu` VALUES ('15', '10115');
INSERT INTO `sys_role_menu` VALUES ('15', '10118');
INSERT INTO `sys_role_menu` VALUES ('15', '10119');
INSERT INTO `sys_role_menu` VALUES ('15', '10121');
INSERT INTO `sys_role_menu` VALUES ('15', '10131');
INSERT INTO `sys_role_menu` VALUES ('15', '10132');
INSERT INTO `sys_role_menu` VALUES ('15', '10133');
INSERT INTO `sys_role_menu` VALUES ('15', '10136');
INSERT INTO `sys_role_menu` VALUES ('15', '10137');
INSERT INTO `sys_role_menu` VALUES ('15', '10171');
INSERT INTO `sys_role_menu` VALUES ('15', '10172');
INSERT INTO `sys_role_menu` VALUES ('15', '10173');
INSERT INTO `sys_role_menu` VALUES ('15', '10177');
INSERT INTO `sys_role_menu` VALUES ('15', '10178');
INSERT INTO `sys_role_menu` VALUES ('15', '10512');
INSERT INTO `sys_role_menu` VALUES ('15', '10513');
INSERT INTO `sys_role_menu` VALUES ('15', '10517');
INSERT INTO `sys_role_menu` VALUES ('15', '101110');
INSERT INTO `sys_role_menu` VALUES ('15', '101710');
INSERT INTO `sys_role_menu` VALUES ('16', '105');
INSERT INTO `sys_role_menu` VALUES ('16', '1051');
INSERT INTO `sys_role_menu` VALUES ('16', '1052');
INSERT INTO `sys_role_menu` VALUES ('16', '10511');
INSERT INTO `sys_role_menu` VALUES ('20', '1');
INSERT INTO `sys_role_menu` VALUES ('20', '2');
INSERT INTO `sys_role_menu` VALUES ('20', '3');
INSERT INTO `sys_role_menu` VALUES ('20', '4');
INSERT INTO `sys_role_menu` VALUES ('20', '5');
INSERT INTO `sys_role_menu` VALUES ('20', '6');
INSERT INTO `sys_role_menu` VALUES ('20', '7');
INSERT INTO `sys_role_menu` VALUES ('20', '21');
INSERT INTO `sys_role_menu` VALUES ('20', '22');
INSERT INTO `sys_role_menu` VALUES ('20', '23');
INSERT INTO `sys_role_menu` VALUES ('20', '24');
INSERT INTO `sys_role_menu` VALUES ('20', '31');
INSERT INTO `sys_role_menu` VALUES ('20', '32');
INSERT INTO `sys_role_menu` VALUES ('20', '33');
INSERT INTO `sys_role_menu` VALUES ('20', '34');
INSERT INTO `sys_role_menu` VALUES ('20', '41');
INSERT INTO `sys_role_menu` VALUES ('20', '42');
INSERT INTO `sys_role_menu` VALUES ('20', '43');
INSERT INTO `sys_role_menu` VALUES ('20', '44');
INSERT INTO `sys_role_menu` VALUES ('20', '45');
INSERT INTO `sys_role_menu` VALUES ('20', '51');
INSERT INTO `sys_role_menu` VALUES ('20', '52');
INSERT INTO `sys_role_menu` VALUES ('20', '61');
INSERT INTO `sys_role_menu` VALUES ('20', '62');
INSERT INTO `sys_role_menu` VALUES ('20', '63');
INSERT INTO `sys_role_menu` VALUES ('20', '64');
INSERT INTO `sys_role_menu` VALUES ('20', '71');
INSERT INTO `sys_role_menu` VALUES ('20', '72');
INSERT INTO `sys_role_menu` VALUES ('20', '73');
INSERT INTO `sys_role_menu` VALUES ('20', '74');
INSERT INTO `sys_role_menu` VALUES ('20', '100');
INSERT INTO `sys_role_menu` VALUES ('20', '101');
INSERT INTO `sys_role_menu` VALUES ('20', '102');
INSERT INTO `sys_role_menu` VALUES ('20', '103');
INSERT INTO `sys_role_menu` VALUES ('20', '104');
INSERT INTO `sys_role_menu` VALUES ('20', '110');
INSERT INTO `sys_role_menu` VALUES ('20', '111');
INSERT INTO `sys_role_menu` VALUES ('20', '112');
INSERT INTO `sys_role_menu` VALUES ('20', '113');
INSERT INTO `sys_role_menu` VALUES ('20', '114');
INSERT INTO `sys_role_menu` VALUES ('20', '1011');
INSERT INTO `sys_role_menu` VALUES ('20', '1012');
INSERT INTO `sys_role_menu` VALUES ('20', '1013');
INSERT INTO `sys_role_menu` VALUES ('20', '1015');
INSERT INTO `sys_role_menu` VALUES ('20', '1016');
INSERT INTO `sys_role_menu` VALUES ('20', '1017');
INSERT INTO `sys_role_menu` VALUES ('20', '10112');
INSERT INTO `sys_role_menu` VALUES ('20', '10113');
INSERT INTO `sys_role_menu` VALUES ('20', '10115');
INSERT INTO `sys_role_menu` VALUES ('20', '10118');
INSERT INTO `sys_role_menu` VALUES ('20', '10119');
INSERT INTO `sys_role_menu` VALUES ('20', '10121');
INSERT INTO `sys_role_menu` VALUES ('20', '10131');
INSERT INTO `sys_role_menu` VALUES ('20', '10132');
INSERT INTO `sys_role_menu` VALUES ('20', '10133');
INSERT INTO `sys_role_menu` VALUES ('20', '10134');
INSERT INTO `sys_role_menu` VALUES ('20', '10135');
INSERT INTO `sys_role_menu` VALUES ('20', '10136');
INSERT INTO `sys_role_menu` VALUES ('20', '10137');
INSERT INTO `sys_role_menu` VALUES ('20', '10171');
INSERT INTO `sys_role_menu` VALUES ('20', '10172');
INSERT INTO `sys_role_menu` VALUES ('20', '10173');
INSERT INTO `sys_role_menu` VALUES ('20', '10177');
INSERT INTO `sys_role_menu` VALUES ('20', '10178');
INSERT INTO `sys_role_menu` VALUES ('20', '101110');
INSERT INTO `sys_role_menu` VALUES ('20', '101111');
INSERT INTO `sys_role_menu` VALUES ('20', '101311');
INSERT INTO `sys_role_menu` VALUES ('20', '101312');
INSERT INTO `sys_role_menu` VALUES ('20', '101710');
INSERT INTO `sys_role_menu` VALUES ('22', '1');
INSERT INTO `sys_role_menu` VALUES ('22', '6');
INSERT INTO `sys_role_menu` VALUES ('22', '61');
INSERT INTO `sys_role_menu` VALUES ('22', '62');
INSERT INTO `sys_role_menu` VALUES ('22', '63');
INSERT INTO `sys_role_menu` VALUES ('22', '64');
INSERT INTO `sys_role_menu` VALUES ('22', '101');
INSERT INTO `sys_role_menu` VALUES ('22', '1011');
INSERT INTO `sys_role_menu` VALUES ('22', '1012');
INSERT INTO `sys_role_menu` VALUES ('22', '1013');
INSERT INTO `sys_role_menu` VALUES ('22', '1015');
INSERT INTO `sys_role_menu` VALUES ('22', '1016');
INSERT INTO `sys_role_menu` VALUES ('22', '1017');
INSERT INTO `sys_role_menu` VALUES ('22', '10112');
INSERT INTO `sys_role_menu` VALUES ('22', '10113');
INSERT INTO `sys_role_menu` VALUES ('22', '10115');
INSERT INTO `sys_role_menu` VALUES ('22', '10118');
INSERT INTO `sys_role_menu` VALUES ('22', '10119');
INSERT INTO `sys_role_menu` VALUES ('22', '10121');
INSERT INTO `sys_role_menu` VALUES ('22', '10131');
INSERT INTO `sys_role_menu` VALUES ('22', '10132');
INSERT INTO `sys_role_menu` VALUES ('22', '10133');
INSERT INTO `sys_role_menu` VALUES ('22', '10134');
INSERT INTO `sys_role_menu` VALUES ('22', '10135');
INSERT INTO `sys_role_menu` VALUES ('22', '10136');
INSERT INTO `sys_role_menu` VALUES ('22', '10137');
INSERT INTO `sys_role_menu` VALUES ('22', '10171');
INSERT INTO `sys_role_menu` VALUES ('22', '10172');
INSERT INTO `sys_role_menu` VALUES ('22', '10173');
INSERT INTO `sys_role_menu` VALUES ('22', '10177');
INSERT INTO `sys_role_menu` VALUES ('22', '10178');
INSERT INTO `sys_role_menu` VALUES ('22', '101110');
INSERT INTO `sys_role_menu` VALUES ('22', '101111');
INSERT INTO `sys_role_menu` VALUES ('22', '101311');
INSERT INTO `sys_role_menu` VALUES ('22', '101312');
INSERT INTO `sys_role_menu` VALUES ('22', '101710');
INSERT INTO `sys_role_menu` VALUES ('23', '1');
INSERT INTO `sys_role_menu` VALUES ('23', '2');
INSERT INTO `sys_role_menu` VALUES ('23', '4');
INSERT INTO `sys_role_menu` VALUES ('23', '21');
INSERT INTO `sys_role_menu` VALUES ('23', '22');
INSERT INTO `sys_role_menu` VALUES ('23', '23');
INSERT INTO `sys_role_menu` VALUES ('23', '24');
INSERT INTO `sys_role_menu` VALUES ('23', '25');
INSERT INTO `sys_role_menu` VALUES ('23', '31');
INSERT INTO `sys_role_menu` VALUES ('23', '41');
INSERT INTO `sys_role_menu` VALUES ('23', '51');
INSERT INTO `sys_role_menu` VALUES ('23', '61');
INSERT INTO `sys_role_menu` VALUES ('23', '71');
INSERT INTO `sys_role_menu` VALUES ('23', '101');
INSERT INTO `sys_role_menu` VALUES ('23', '121');
INSERT INTO `sys_role_menu` VALUES ('23', '140');
INSERT INTO `sys_role_menu` VALUES ('23', '144');
INSERT INTO `sys_role_menu` VALUES ('23', '145');
INSERT INTO `sys_role_menu` VALUES ('23', '146');
INSERT INTO `sys_role_menu` VALUES ('23', '150');
INSERT INTO `sys_role_menu` VALUES ('23', '160');
INSERT INTO `sys_role_menu` VALUES ('23', '180');
INSERT INTO `sys_role_menu` VALUES ('23', '190');
INSERT INTO `sys_role_menu` VALUES ('23', '195');
INSERT INTO `sys_role_menu` VALUES ('23', '200');
INSERT INTO `sys_role_menu` VALUES ('23', '220');
INSERT INTO `sys_role_menu` VALUES ('23', '230');
INSERT INTO `sys_role_menu` VALUES ('23', '260');
INSERT INTO `sys_role_menu` VALUES ('23', '1011');
INSERT INTO `sys_role_menu` VALUES ('23', '1013');
INSERT INTO `sys_role_menu` VALUES ('23', '1017');
INSERT INTO `sys_role_menu` VALUES ('23', '1018');
INSERT INTO `sys_role_menu` VALUES ('23', '1019');
INSERT INTO `sys_role_menu` VALUES ('23', '1021');
INSERT INTO `sys_role_menu` VALUES ('23', '1023');
INSERT INTO `sys_role_menu` VALUES ('23', '1211');
INSERT INTO `sys_role_menu` VALUES ('23', '1212');
INSERT INTO `sys_role_menu` VALUES ('23', '1214');
INSERT INTO `sys_role_menu` VALUES ('23', '1401');
INSERT INTO `sys_role_menu` VALUES ('23', '1402');
INSERT INTO `sys_role_menu` VALUES ('23', '1403');
INSERT INTO `sys_role_menu` VALUES ('23', '1405');
INSERT INTO `sys_role_menu` VALUES ('23', '1406');
INSERT INTO `sys_role_menu` VALUES ('23', '1408');
INSERT INTO `sys_role_menu` VALUES ('23', '1409');
INSERT INTO `sys_role_menu` VALUES ('23', '1501');
INSERT INTO `sys_role_menu` VALUES ('23', '1502');
INSERT INTO `sys_role_menu` VALUES ('23', '1503');
INSERT INTO `sys_role_menu` VALUES ('23', '1504');
INSERT INTO `sys_role_menu` VALUES ('23', '1505');
INSERT INTO `sys_role_menu` VALUES ('23', '1506');
INSERT INTO `sys_role_menu` VALUES ('23', '1601');
INSERT INTO `sys_role_menu` VALUES ('23', '1602');
INSERT INTO `sys_role_menu` VALUES ('23', '1603');
INSERT INTO `sys_role_menu` VALUES ('23', '1604');
INSERT INTO `sys_role_menu` VALUES ('23', '1605');
INSERT INTO `sys_role_menu` VALUES ('23', '1606');
INSERT INTO `sys_role_menu` VALUES ('23', '1608');
INSERT INTO `sys_role_menu` VALUES ('23', '1609');
INSERT INTO `sys_role_menu` VALUES ('23', '1610');
INSERT INTO `sys_role_menu` VALUES ('23', '1611');
INSERT INTO `sys_role_menu` VALUES ('23', '1612');
INSERT INTO `sys_role_menu` VALUES ('23', '1801');
INSERT INTO `sys_role_menu` VALUES ('23', '1802');
INSERT INTO `sys_role_menu` VALUES ('23', '1803');
INSERT INTO `sys_role_menu` VALUES ('23', '1804');
INSERT INTO `sys_role_menu` VALUES ('23', '1805');
INSERT INTO `sys_role_menu` VALUES ('23', '1806');
INSERT INTO `sys_role_menu` VALUES ('23', '1807');
INSERT INTO `sys_role_menu` VALUES ('23', '1808');
INSERT INTO `sys_role_menu` VALUES ('23', '1809');
INSERT INTO `sys_role_menu` VALUES ('23', '1901');
INSERT INTO `sys_role_menu` VALUES ('23', '1903');
INSERT INTO `sys_role_menu` VALUES ('23', '1904');
INSERT INTO `sys_role_menu` VALUES ('23', '1905');
INSERT INTO `sys_role_menu` VALUES ('23', '1952');
INSERT INTO `sys_role_menu` VALUES ('23', '1953');
INSERT INTO `sys_role_menu` VALUES ('23', '1954');
INSERT INTO `sys_role_menu` VALUES ('23', '1955');
INSERT INTO `sys_role_menu` VALUES ('23', '1956');
INSERT INTO `sys_role_menu` VALUES ('23', '2201');
INSERT INTO `sys_role_menu` VALUES ('23', '2301');
INSERT INTO `sys_role_menu` VALUES ('23', '2604');
INSERT INTO `sys_role_menu` VALUES ('23', '10112');
INSERT INTO `sys_role_menu` VALUES ('23', '10113');
INSERT INTO `sys_role_menu` VALUES ('23', '10114');
INSERT INTO `sys_role_menu` VALUES ('23', '10115');
INSERT INTO `sys_role_menu` VALUES ('23', '10118');
INSERT INTO `sys_role_menu` VALUES ('23', '10119');
INSERT INTO `sys_role_menu` VALUES ('23', '10121');
INSERT INTO `sys_role_menu` VALUES ('23', '10131');
INSERT INTO `sys_role_menu` VALUES ('23', '10132');
INSERT INTO `sys_role_menu` VALUES ('23', '10133');
INSERT INTO `sys_role_menu` VALUES ('23', '10134');
INSERT INTO `sys_role_menu` VALUES ('23', '10135');
INSERT INTO `sys_role_menu` VALUES ('23', '10136');
INSERT INTO `sys_role_menu` VALUES ('23', '10137');
INSERT INTO `sys_role_menu` VALUES ('23', '10138');
INSERT INTO `sys_role_menu` VALUES ('23', '10171');
INSERT INTO `sys_role_menu` VALUES ('23', '10172');
INSERT INTO `sys_role_menu` VALUES ('23', '10173');
INSERT INTO `sys_role_menu` VALUES ('23', '10177');
INSERT INTO `sys_role_menu` VALUES ('23', '10178');
INSERT INTO `sys_role_menu` VALUES ('23', '10181');
INSERT INTO `sys_role_menu` VALUES ('23', '10201');
INSERT INTO `sys_role_menu` VALUES ('23', '10202');
INSERT INTO `sys_role_menu` VALUES ('23', '10204');
INSERT INTO `sys_role_menu` VALUES ('23', '10205');
INSERT INTO `sys_role_menu` VALUES ('23', '10206');
INSERT INTO `sys_role_menu` VALUES ('23', '10211');
INSERT INTO `sys_role_menu` VALUES ('23', '10319');
INSERT INTO `sys_role_menu` VALUES ('23', '10931');
INSERT INTO `sys_role_menu` VALUES ('23', '12111');
INSERT INTO `sys_role_menu` VALUES ('23', '12112');
INSERT INTO `sys_role_menu` VALUES ('23', '12113');
INSERT INTO `sys_role_menu` VALUES ('23', '12114');
INSERT INTO `sys_role_menu` VALUES ('23', '12115');
INSERT INTO `sys_role_menu` VALUES ('23', '12116');
INSERT INTO `sys_role_menu` VALUES ('23', '12117');
INSERT INTO `sys_role_menu` VALUES ('23', '12118');
INSERT INTO `sys_role_menu` VALUES ('23', '12119');
INSERT INTO `sys_role_menu` VALUES ('23', '12121');
INSERT INTO `sys_role_menu` VALUES ('23', '12122');
INSERT INTO `sys_role_menu` VALUES ('23', '12142');
INSERT INTO `sys_role_menu` VALUES ('23', '12143');
INSERT INTO `sys_role_menu` VALUES ('23', '12144');
INSERT INTO `sys_role_menu` VALUES ('23', '12145');
INSERT INTO `sys_role_menu` VALUES ('23', '12146');
INSERT INTO `sys_role_menu` VALUES ('23', '12147');
INSERT INTO `sys_role_menu` VALUES ('23', '14001');
INSERT INTO `sys_role_menu` VALUES ('23', '14002');
INSERT INTO `sys_role_menu` VALUES ('23', '14010');
INSERT INTO `sys_role_menu` VALUES ('23', '14011');
INSERT INTO `sys_role_menu` VALUES ('23', '14012');
INSERT INTO `sys_role_menu` VALUES ('23', '14013');
INSERT INTO `sys_role_menu` VALUES ('23', '14014');
INSERT INTO `sys_role_menu` VALUES ('23', '14015');
INSERT INTO `sys_role_menu` VALUES ('23', '14016');
INSERT INTO `sys_role_menu` VALUES ('23', '14017');
INSERT INTO `sys_role_menu` VALUES ('23', '14018');
INSERT INTO `sys_role_menu` VALUES ('23', '14019');
INSERT INTO `sys_role_menu` VALUES ('23', '14030');
INSERT INTO `sys_role_menu` VALUES ('23', '14031');
INSERT INTO `sys_role_menu` VALUES ('23', '14032');
INSERT INTO `sys_role_menu` VALUES ('23', '14401');
INSERT INTO `sys_role_menu` VALUES ('23', '14402');
INSERT INTO `sys_role_menu` VALUES ('23', '15007');
INSERT INTO `sys_role_menu` VALUES ('23', '15008');
INSERT INTO `sys_role_menu` VALUES ('23', '16013');
INSERT INTO `sys_role_menu` VALUES ('23', '16014');
INSERT INTO `sys_role_menu` VALUES ('23', '16051');
INSERT INTO `sys_role_menu` VALUES ('23', '16052');
INSERT INTO `sys_role_menu` VALUES ('23', '16053');
INSERT INTO `sys_role_menu` VALUES ('23', '16054');
INSERT INTO `sys_role_menu` VALUES ('23', '16055');
INSERT INTO `sys_role_menu` VALUES ('23', '16056');
INSERT INTO `sys_role_menu` VALUES ('23', '16057');
INSERT INTO `sys_role_menu` VALUES ('23', '16058');
INSERT INTO `sys_role_menu` VALUES ('23', '16059');
INSERT INTO `sys_role_menu` VALUES ('23', '16061');
INSERT INTO `sys_role_menu` VALUES ('23', '16062');
INSERT INTO `sys_role_menu` VALUES ('23', '16063');
INSERT INTO `sys_role_menu` VALUES ('23', '16064');
INSERT INTO `sys_role_menu` VALUES ('23', '16065');
INSERT INTO `sys_role_menu` VALUES ('23', '16066');
INSERT INTO `sys_role_menu` VALUES ('23', '16067');
INSERT INTO `sys_role_menu` VALUES ('23', '16068');
INSERT INTO `sys_role_menu` VALUES ('23', '16069');
INSERT INTO `sys_role_menu` VALUES ('23', '16081');
INSERT INTO `sys_role_menu` VALUES ('23', '18010');
INSERT INTO `sys_role_menu` VALUES ('23', '18011');
INSERT INTO `sys_role_menu` VALUES ('23', '18012');
INSERT INTO `sys_role_menu` VALUES ('23', '18013');
INSERT INTO `sys_role_menu` VALUES ('23', '18031');
INSERT INTO `sys_role_menu` VALUES ('23', '18032');
INSERT INTO `sys_role_menu` VALUES ('23', '18033');
INSERT INTO `sys_role_menu` VALUES ('23', '18041');
INSERT INTO `sys_role_menu` VALUES ('23', '18042');
INSERT INTO `sys_role_menu` VALUES ('23', '18043');
INSERT INTO `sys_role_menu` VALUES ('23', '18044');
INSERT INTO `sys_role_menu` VALUES ('23', '18051');
INSERT INTO `sys_role_menu` VALUES ('23', '18052');
INSERT INTO `sys_role_menu` VALUES ('23', '18053');
INSERT INTO `sys_role_menu` VALUES ('23', '18054');
INSERT INTO `sys_role_menu` VALUES ('23', '18055');
INSERT INTO `sys_role_menu` VALUES ('23', '18056');
INSERT INTO `sys_role_menu` VALUES ('23', '18057');
INSERT INTO `sys_role_menu` VALUES ('23', '18061');
INSERT INTO `sys_role_menu` VALUES ('23', '18062');
INSERT INTO `sys_role_menu` VALUES ('23', '18063');
INSERT INTO `sys_role_menu` VALUES ('23', '18064');
INSERT INTO `sys_role_menu` VALUES ('23', '18065');
INSERT INTO `sys_role_menu` VALUES ('23', '19051');
INSERT INTO `sys_role_menu` VALUES ('23', '19052');
INSERT INTO `sys_role_menu` VALUES ('23', '19053');
INSERT INTO `sys_role_menu` VALUES ('23', '19054');
INSERT INTO `sys_role_menu` VALUES ('23', '19055');
INSERT INTO `sys_role_menu` VALUES ('23', '19056');
INSERT INTO `sys_role_menu` VALUES ('23', '19057');
INSERT INTO `sys_role_menu` VALUES ('23', '19501');
INSERT INTO `sys_role_menu` VALUES ('23', '19521');
INSERT INTO `sys_role_menu` VALUES ('23', '19522');
INSERT INTO `sys_role_menu` VALUES ('23', '19523');
INSERT INTO `sys_role_menu` VALUES ('23', '19524');
INSERT INTO `sys_role_menu` VALUES ('23', '19525');
INSERT INTO `sys_role_menu` VALUES ('23', '19526');
INSERT INTO `sys_role_menu` VALUES ('23', '19527');
INSERT INTO `sys_role_menu` VALUES ('23', '19528');
INSERT INTO `sys_role_menu` VALUES ('23', '19529');
INSERT INTO `sys_role_menu` VALUES ('23', '19541');
INSERT INTO `sys_role_menu` VALUES ('23', '19542');
INSERT INTO `sys_role_menu` VALUES ('23', '19543');
INSERT INTO `sys_role_menu` VALUES ('23', '19544');
INSERT INTO `sys_role_menu` VALUES ('23', '19551');
INSERT INTO `sys_role_menu` VALUES ('23', '19552');
INSERT INTO `sys_role_menu` VALUES ('23', '19553');
INSERT INTO `sys_role_menu` VALUES ('23', '19554');
INSERT INTO `sys_role_menu` VALUES ('23', '19555');
INSERT INTO `sys_role_menu` VALUES ('23', '19561');
INSERT INTO `sys_role_menu` VALUES ('23', '20001');
INSERT INTO `sys_role_menu` VALUES ('23', '20002');
INSERT INTO `sys_role_menu` VALUES ('23', '23011');
INSERT INTO `sys_role_menu` VALUES ('23', '23012');
INSERT INTO `sys_role_menu` VALUES ('23', '23013');
INSERT INTO `sys_role_menu` VALUES ('23', '23014');
INSERT INTO `sys_role_menu` VALUES ('23', '26041');
INSERT INTO `sys_role_menu` VALUES ('23', '26042');
INSERT INTO `sys_role_menu` VALUES ('23', '26043');
INSERT INTO `sys_role_menu` VALUES ('23', '26044');
INSERT INTO `sys_role_menu` VALUES ('23', '26045');
INSERT INTO `sys_role_menu` VALUES ('23', '26046');
INSERT INTO `sys_role_menu` VALUES ('23', '26047');
INSERT INTO `sys_role_menu` VALUES ('23', '101110');
INSERT INTO `sys_role_menu` VALUES ('23', '101111');
INSERT INTO `sys_role_menu` VALUES ('23', '101112');
INSERT INTO `sys_role_menu` VALUES ('23', '101113');
INSERT INTO `sys_role_menu` VALUES ('23', '101114');
INSERT INTO `sys_role_menu` VALUES ('23', '101311');
INSERT INTO `sys_role_menu` VALUES ('23', '101312');
INSERT INTO `sys_role_menu` VALUES ('23', '101315');
INSERT INTO `sys_role_menu` VALUES ('23', '101317');
INSERT INTO `sys_role_menu` VALUES ('23', '101318');
INSERT INTO `sys_role_menu` VALUES ('23', '101710');
INSERT INTO `sys_role_menu` VALUES ('23', '101711');
INSERT INTO `sys_role_menu` VALUES ('23', '101712');
INSERT INTO `sys_role_menu` VALUES ('23', '101717');
INSERT INTO `sys_role_menu` VALUES ('23', '101718');
INSERT INTO `sys_role_menu` VALUES ('23', '101719');
INSERT INTO `sys_role_menu` VALUES ('23', '101720');
INSERT INTO `sys_role_menu` VALUES ('23', '101721');
INSERT INTO `sys_role_menu` VALUES ('23', '101723');
INSERT INTO `sys_role_menu` VALUES ('23', '101724');
INSERT INTO `sys_role_menu` VALUES ('23', '101725');
INSERT INTO `sys_role_menu` VALUES ('23', '101726');
INSERT INTO `sys_role_menu` VALUES ('23', '101727');
INSERT INTO `sys_role_menu` VALUES ('23', '101728');
INSERT INTO `sys_role_menu` VALUES ('23', '101729');
INSERT INTO `sys_role_menu` VALUES ('23', '101730');
INSERT INTO `sys_role_menu` VALUES ('23', '101732');
INSERT INTO `sys_role_menu` VALUES ('23', '101733');
INSERT INTO `sys_role_menu` VALUES ('23', '101734');
INSERT INTO `sys_role_menu` VALUES ('23', '101735');
INSERT INTO `sys_role_menu` VALUES ('23', '101901');
INSERT INTO `sys_role_menu` VALUES ('23', '104122');
INSERT INTO `sys_role_menu` VALUES ('23', '121110');
INSERT INTO `sys_role_menu` VALUES ('23', '121111');
INSERT INTO `sys_role_menu` VALUES ('23', '121112');
INSERT INTO `sys_role_menu` VALUES ('23', '121113');
INSERT INTO `sys_role_menu` VALUES ('23', '121114');
INSERT INTO `sys_role_menu` VALUES ('23', '121115');
INSERT INTO `sys_role_menu` VALUES ('23', '121116');
INSERT INTO `sys_role_menu` VALUES ('23', '121117');
INSERT INTO `sys_role_menu` VALUES ('23', '121118');
INSERT INTO `sys_role_menu` VALUES ('23', '121119');
INSERT INTO `sys_role_menu` VALUES ('23', '121125');
INSERT INTO `sys_role_menu` VALUES ('23', '140120');
INSERT INTO `sys_role_menu` VALUES ('23', '140121');
INSERT INTO `sys_role_menu` VALUES ('23', '140122');
INSERT INTO `sys_role_menu` VALUES ('23', '140203');
INSERT INTO `sys_role_menu` VALUES ('23', '140301');
INSERT INTO `sys_role_menu` VALUES ('23', '140302');
INSERT INTO `sys_role_menu` VALUES ('23', '145001');
INSERT INTO `sys_role_menu` VALUES ('23', '146001');
INSERT INTO `sys_role_menu` VALUES ('23', '150081');
INSERT INTO `sys_role_menu` VALUES ('23', '150301');
INSERT INTO `sys_role_menu` VALUES ('23', '150302');
INSERT INTO `sys_role_menu` VALUES ('23', '150401');
INSERT INTO `sys_role_menu` VALUES ('23', '150402');
INSERT INTO `sys_role_menu` VALUES ('23', '150501');
INSERT INTO `sys_role_menu` VALUES ('23', '150502');
INSERT INTO `sys_role_menu` VALUES ('23', '150601');
INSERT INTO `sys_role_menu` VALUES ('23', '150602');
INSERT INTO `sys_role_menu` VALUES ('23', '160101');
INSERT INTO `sys_role_menu` VALUES ('23', '160201');
INSERT INTO `sys_role_menu` VALUES ('23', '160202');
INSERT INTO `sys_role_menu` VALUES ('23', '160301');
INSERT INTO `sys_role_menu` VALUES ('23', '160302');
INSERT INTO `sys_role_menu` VALUES ('23', '160303');
INSERT INTO `sys_role_menu` VALUES ('23', '160304');
INSERT INTO `sys_role_menu` VALUES ('23', '160305');
INSERT INTO `sys_role_menu` VALUES ('23', '160306');
INSERT INTO `sys_role_menu` VALUES ('23', '160307');
INSERT INTO `sys_role_menu` VALUES ('23', '160308');
INSERT INTO `sys_role_menu` VALUES ('23', '160312');
INSERT INTO `sys_role_menu` VALUES ('23', '160313');
INSERT INTO `sys_role_menu` VALUES ('23', '160401');
INSERT INTO `sys_role_menu` VALUES ('23', '160402');
INSERT INTO `sys_role_menu` VALUES ('23', '160403');
INSERT INTO `sys_role_menu` VALUES ('23', '160404');
INSERT INTO `sys_role_menu` VALUES ('23', '160510');
INSERT INTO `sys_role_menu` VALUES ('23', '160511');
INSERT INTO `sys_role_menu` VALUES ('23', '160512');
INSERT INTO `sys_role_menu` VALUES ('23', '160513');
INSERT INTO `sys_role_menu` VALUES ('23', '160514');
INSERT INTO `sys_role_menu` VALUES ('23', '160515');
INSERT INTO `sys_role_menu` VALUES ('23', '160516');
INSERT INTO `sys_role_menu` VALUES ('23', '160610');
INSERT INTO `sys_role_menu` VALUES ('23', '160611');
INSERT INTO `sys_role_menu` VALUES ('23', '180101');
INSERT INTO `sys_role_menu` VALUES ('23', '180102');
INSERT INTO `sys_role_menu` VALUES ('23', '190101');
INSERT INTO `sys_role_menu` VALUES ('23', '190102');
INSERT INTO `sys_role_menu` VALUES ('23', '190103');
INSERT INTO `sys_role_menu` VALUES ('23', '190104');
INSERT INTO `sys_role_menu` VALUES ('23', '190105');
INSERT INTO `sys_role_menu` VALUES ('23', '190106');
INSERT INTO `sys_role_menu` VALUES ('23', '190107');
INSERT INTO `sys_role_menu` VALUES ('23', '190108');
INSERT INTO `sys_role_menu` VALUES ('23', '190109');
INSERT INTO `sys_role_menu` VALUES ('23', '190110');
INSERT INTO `sys_role_menu` VALUES ('23', '190111');
INSERT INTO `sys_role_menu` VALUES ('23', '190112');
INSERT INTO `sys_role_menu` VALUES ('23', '190113');
INSERT INTO `sys_role_menu` VALUES ('23', '190114');
INSERT INTO `sys_role_menu` VALUES ('23', '190115');
INSERT INTO `sys_role_menu` VALUES ('23', '190116');
INSERT INTO `sys_role_menu` VALUES ('23', '190117');
INSERT INTO `sys_role_menu` VALUES ('23', '190118');
INSERT INTO `sys_role_menu` VALUES ('23', '190120');
INSERT INTO `sys_role_menu` VALUES ('23', '190121');
INSERT INTO `sys_role_menu` VALUES ('23', '190122');
INSERT INTO `sys_role_menu` VALUES ('23', '190123');
INSERT INTO `sys_role_menu` VALUES ('23', '190124');
INSERT INTO `sys_role_menu` VALUES ('23', '190125');
INSERT INTO `sys_role_menu` VALUES ('23', '190126');
INSERT INTO `sys_role_menu` VALUES ('23', '190128');
INSERT INTO `sys_role_menu` VALUES ('23', '190129');
INSERT INTO `sys_role_menu` VALUES ('23', '190131');
INSERT INTO `sys_role_menu` VALUES ('23', '190153');
INSERT INTO `sys_role_menu` VALUES ('23', '190201');
INSERT INTO `sys_role_menu` VALUES ('23', '190210');
INSERT INTO `sys_role_menu` VALUES ('23', '195001');
INSERT INTO `sys_role_menu` VALUES ('23', '195002');
INSERT INTO `sys_role_menu` VALUES ('23', '195003');
INSERT INTO `sys_role_menu` VALUES ('23', '195004');
INSERT INTO `sys_role_menu` VALUES ('23', '195005');
INSERT INTO `sys_role_menu` VALUES ('23', '195006');
INSERT INTO `sys_role_menu` VALUES ('23', '195007');
INSERT INTO `sys_role_menu` VALUES ('23', '195008');
INSERT INTO `sys_role_menu` VALUES ('23', '195009');
INSERT INTO `sys_role_menu` VALUES ('23', '196127');
INSERT INTO `sys_role_menu` VALUES ('23', '196128');
INSERT INTO `sys_role_menu` VALUES ('23', '220101');
INSERT INTO `sys_role_menu` VALUES ('23', '220102');
INSERT INTO `sys_role_menu` VALUES ('23', '220103');
INSERT INTO `sys_role_menu` VALUES ('23', '220104');
INSERT INTO `sys_role_menu` VALUES ('23', '220105');
INSERT INTO `sys_role_menu` VALUES ('23', '220110');
INSERT INTO `sys_role_menu` VALUES ('23', '220111');
INSERT INTO `sys_role_menu` VALUES ('23', '220112');
INSERT INTO `sys_role_menu` VALUES ('23', '220114');
INSERT INTO `sys_role_menu` VALUES ('23', '220115');
INSERT INTO `sys_role_menu` VALUES ('23', '220120');
INSERT INTO `sys_role_menu` VALUES ('23', '220121');
INSERT INTO `sys_role_menu` VALUES ('23', '220122');
INSERT INTO `sys_role_menu` VALUES ('23', '220123');
INSERT INTO `sys_role_menu` VALUES ('23', '220124');
INSERT INTO `sys_role_menu` VALUES ('23', '1450002');
INSERT INTO `sys_role_menu` VALUES ('23', '1460002');
INSERT INTO `sys_role_menu` VALUES ('23', '1500701');
INSERT INTO `sys_role_menu` VALUES ('23', '1501001');
INSERT INTO `sys_role_menu` VALUES ('23', '1501002');
INSERT INTO `sys_role_menu` VALUES ('23', '1901129');
INSERT INTO `sys_role_menu` VALUES ('23', '1901130');
INSERT INTO `sys_role_menu` VALUES ('23', '1901150');
INSERT INTO `sys_role_menu` VALUES ('23', '1901152');
INSERT INTO `sys_role_menu` VALUES ('23', '1901153');
INSERT INTO `sys_role_menu` VALUES ('23', '1901154');
INSERT INTO `sys_role_menu` VALUES ('23', '1901155');
INSERT INTO `sys_role_menu` VALUES ('23', '1903211');
INSERT INTO `sys_role_menu` VALUES ('23', '1904001');
INSERT INTO `sys_role_menu` VALUES ('23', '1904002');
INSERT INTO `sys_role_menu` VALUES ('23', '1904003');
INSERT INTO `sys_role_menu` VALUES ('23', '1904004');
INSERT INTO `sys_role_menu` VALUES ('23', '1904005');
INSERT INTO `sys_role_menu` VALUES ('23', '2000101');
INSERT INTO `sys_role_menu` VALUES ('23', '2000102');
INSERT INTO `sys_role_menu` VALUES ('23', '2000103');
INSERT INTO `sys_role_menu` VALUES ('23', '2000104');
INSERT INTO `sys_role_menu` VALUES ('23', '2000201');
INSERT INTO `sys_role_menu` VALUES ('23', '2000202');
INSERT INTO `sys_role_menu` VALUES ('23', '2000203');
INSERT INTO `sys_role_menu` VALUES ('23', '2000204');
INSERT INTO `sys_role_menu` VALUES ('23', '2000205');
INSERT INTO `sys_role_menu` VALUES ('23', '2000206');
INSERT INTO `sys_role_menu` VALUES ('23', '2000207');
INSERT INTO `sys_role_menu` VALUES ('23', '2000208');
INSERT INTO `sys_role_menu` VALUES ('23', '2000209');
INSERT INTO `sys_role_menu` VALUES ('23', '15010002');
INSERT INTO `sys_role_menu` VALUES ('23', '15020003');
INSERT INTO `sys_role_menu` VALUES ('24', '21');
INSERT INTO `sys_role_menu` VALUES ('24', '23');
INSERT INTO `sys_role_menu` VALUES ('24', '25');
INSERT INTO `sys_role_menu` VALUES ('24', '61');
INSERT INTO `sys_role_menu` VALUES ('24', '71');
INSERT INTO `sys_role_menu` VALUES ('24', '121');
INSERT INTO `sys_role_menu` VALUES ('24', '130');
INSERT INTO `sys_role_menu` VALUES ('24', '140');
INSERT INTO `sys_role_menu` VALUES ('24', '144');
INSERT INTO `sys_role_menu` VALUES ('24', '145');
INSERT INTO `sys_role_menu` VALUES ('24', '146');
INSERT INTO `sys_role_menu` VALUES ('24', '160');
INSERT INTO `sys_role_menu` VALUES ('24', '195');
INSERT INTO `sys_role_menu` VALUES ('24', '260');
INSERT INTO `sys_role_menu` VALUES ('24', '270');
INSERT INTO `sys_role_menu` VALUES ('24', '280');
INSERT INTO `sys_role_menu` VALUES ('24', '1019');
INSERT INTO `sys_role_menu` VALUES ('24', '1211');
INSERT INTO `sys_role_menu` VALUES ('24', '1213');
INSERT INTO `sys_role_menu` VALUES ('24', '1305');
INSERT INTO `sys_role_menu` VALUES ('24', '1401');
INSERT INTO `sys_role_menu` VALUES ('24', '1402');
INSERT INTO `sys_role_menu` VALUES ('24', '1403');
INSERT INTO `sys_role_menu` VALUES ('24', '1405');
INSERT INTO `sys_role_menu` VALUES ('24', '1406');
INSERT INTO `sys_role_menu` VALUES ('24', '1408');
INSERT INTO `sys_role_menu` VALUES ('24', '1409');
INSERT INTO `sys_role_menu` VALUES ('24', '1609');
INSERT INTO `sys_role_menu` VALUES ('24', '1612');
INSERT INTO `sys_role_menu` VALUES ('24', '1953');
INSERT INTO `sys_role_menu` VALUES ('24', '1956');
INSERT INTO `sys_role_menu` VALUES ('24', '2202');
INSERT INTO `sys_role_menu` VALUES ('24', '2414');
INSERT INTO `sys_role_menu` VALUES ('24', '2601');
INSERT INTO `sys_role_menu` VALUES ('24', '2602');
INSERT INTO `sys_role_menu` VALUES ('24', '2603');
INSERT INTO `sys_role_menu` VALUES ('24', '2604');
INSERT INTO `sys_role_menu` VALUES ('24', '2605');
INSERT INTO `sys_role_menu` VALUES ('24', '2701');
INSERT INTO `sys_role_menu` VALUES ('24', '2702');
INSERT INTO `sys_role_menu` VALUES ('24', '2703');
INSERT INTO `sys_role_menu` VALUES ('24', '2704');
INSERT INTO `sys_role_menu` VALUES ('24', '2705');
INSERT INTO `sys_role_menu` VALUES ('24', '2801');
INSERT INTO `sys_role_menu` VALUES ('24', '2802');
INSERT INTO `sys_role_menu` VALUES ('24', '10115');
INSERT INTO `sys_role_menu` VALUES ('24', '10118');
INSERT INTO `sys_role_menu` VALUES ('24', '10121');
INSERT INTO `sys_role_menu` VALUES ('24', '10171');
INSERT INTO `sys_role_menu` VALUES ('24', '10177');
INSERT INTO `sys_role_menu` VALUES ('24', '10512');
INSERT INTO `sys_role_menu` VALUES ('24', '10513');
INSERT INTO `sys_role_menu` VALUES ('24', '10517');
INSERT INTO `sys_role_menu` VALUES ('24', '10518');
INSERT INTO `sys_role_menu` VALUES ('24', '10519');
INSERT INTO `sys_role_menu` VALUES ('24', '12111');
INSERT INTO `sys_role_menu` VALUES ('24', '12112');
INSERT INTO `sys_role_menu` VALUES ('24', '12113');
INSERT INTO `sys_role_menu` VALUES ('24', '12114');
INSERT INTO `sys_role_menu` VALUES ('24', '12115');
INSERT INTO `sys_role_menu` VALUES ('24', '12116');
INSERT INTO `sys_role_menu` VALUES ('24', '12117');
INSERT INTO `sys_role_menu` VALUES ('24', '12118');
INSERT INTO `sys_role_menu` VALUES ('24', '12119');
INSERT INTO `sys_role_menu` VALUES ('24', '12121');
INSERT INTO `sys_role_menu` VALUES ('24', '12122');
INSERT INTO `sys_role_menu` VALUES ('24', '12131');
INSERT INTO `sys_role_menu` VALUES ('24', '12132');
INSERT INTO `sys_role_menu` VALUES ('24', '12147');
INSERT INTO `sys_role_menu` VALUES ('24', '14001');
INSERT INTO `sys_role_menu` VALUES ('24', '14002');
INSERT INTO `sys_role_menu` VALUES ('24', '14010');
INSERT INTO `sys_role_menu` VALUES ('24', '14011');
INSERT INTO `sys_role_menu` VALUES ('24', '14012');
INSERT INTO `sys_role_menu` VALUES ('24', '14014');
INSERT INTO `sys_role_menu` VALUES ('24', '14015');
INSERT INTO `sys_role_menu` VALUES ('24', '14016');
INSERT INTO `sys_role_menu` VALUES ('24', '14017');
INSERT INTO `sys_role_menu` VALUES ('24', '14018');
INSERT INTO `sys_role_menu` VALUES ('24', '14019');
INSERT INTO `sys_role_menu` VALUES ('24', '14030');
INSERT INTO `sys_role_menu` VALUES ('24', '14031');
INSERT INTO `sys_role_menu` VALUES ('24', '14032');
INSERT INTO `sys_role_menu` VALUES ('24', '14401');
INSERT INTO `sys_role_menu` VALUES ('24', '14402');
INSERT INTO `sys_role_menu` VALUES ('24', '16051');
INSERT INTO `sys_role_menu` VALUES ('24', '16052');
INSERT INTO `sys_role_menu` VALUES ('24', '16053');
INSERT INTO `sys_role_menu` VALUES ('24', '16059');
INSERT INTO `sys_role_menu` VALUES ('24', '16068');
INSERT INTO `sys_role_menu` VALUES ('24', '16069');
INSERT INTO `sys_role_menu` VALUES ('24', '16121');
INSERT INTO `sys_role_menu` VALUES ('24', '18031');
INSERT INTO `sys_role_menu` VALUES ('24', '18041');
INSERT INTO `sys_role_menu` VALUES ('24', '18044');
INSERT INTO `sys_role_menu` VALUES ('24', '18051');
INSERT INTO `sys_role_menu` VALUES ('24', '18054');
INSERT INTO `sys_role_menu` VALUES ('24', '18055');
INSERT INTO `sys_role_menu` VALUES ('24', '18057');
INSERT INTO `sys_role_menu` VALUES ('24', '18058');
INSERT INTO `sys_role_menu` VALUES ('24', '19051');
INSERT INTO `sys_role_menu` VALUES ('24', '19057');
INSERT INTO `sys_role_menu` VALUES ('24', '19521');
INSERT INTO `sys_role_menu` VALUES ('24', '19523');
INSERT INTO `sys_role_menu` VALUES ('24', '19525');
INSERT INTO `sys_role_menu` VALUES ('24', '19526');
INSERT INTO `sys_role_menu` VALUES ('24', '19528');
INSERT INTO `sys_role_menu` VALUES ('24', '19529');
INSERT INTO `sys_role_menu` VALUES ('24', '19541');
INSERT INTO `sys_role_menu` VALUES ('24', '19544');
INSERT INTO `sys_role_menu` VALUES ('24', '19551');
INSERT INTO `sys_role_menu` VALUES ('24', '19555');
INSERT INTO `sys_role_menu` VALUES ('24', '19561');
INSERT INTO `sys_role_menu` VALUES ('24', '20302');
INSERT INTO `sys_role_menu` VALUES ('24', '22024');
INSERT INTO `sys_role_menu` VALUES ('24', '26011');
INSERT INTO `sys_role_menu` VALUES ('24', '26012');
INSERT INTO `sys_role_menu` VALUES ('24', '26013');
INSERT INTO `sys_role_menu` VALUES ('24', '26014');
INSERT INTO `sys_role_menu` VALUES ('24', '26015');
INSERT INTO `sys_role_menu` VALUES ('24', '26016');
INSERT INTO `sys_role_menu` VALUES ('24', '26017');
INSERT INTO `sys_role_menu` VALUES ('24', '26021');
INSERT INTO `sys_role_menu` VALUES ('24', '26022');
INSERT INTO `sys_role_menu` VALUES ('24', '26023');
INSERT INTO `sys_role_menu` VALUES ('24', '26024');
INSERT INTO `sys_role_menu` VALUES ('24', '26025');
INSERT INTO `sys_role_menu` VALUES ('24', '26026');
INSERT INTO `sys_role_menu` VALUES ('24', '26027');
INSERT INTO `sys_role_menu` VALUES ('24', '26031');
INSERT INTO `sys_role_menu` VALUES ('24', '26032');
INSERT INTO `sys_role_menu` VALUES ('24', '26033');
INSERT INTO `sys_role_menu` VALUES ('24', '26034');
INSERT INTO `sys_role_menu` VALUES ('24', '26041');
INSERT INTO `sys_role_menu` VALUES ('24', '26042');
INSERT INTO `sys_role_menu` VALUES ('24', '26043');
INSERT INTO `sys_role_menu` VALUES ('24', '26044');
INSERT INTO `sys_role_menu` VALUES ('24', '26045');
INSERT INTO `sys_role_menu` VALUES ('24', '26046');
INSERT INTO `sys_role_menu` VALUES ('24', '26047');
INSERT INTO `sys_role_menu` VALUES ('24', '26051');
INSERT INTO `sys_role_menu` VALUES ('24', '26052');
INSERT INTO `sys_role_menu` VALUES ('24', '28011');
INSERT INTO `sys_role_menu` VALUES ('24', '28012');
INSERT INTO `sys_role_menu` VALUES ('24', '28013');
INSERT INTO `sys_role_menu` VALUES ('24', '28014');
INSERT INTO `sys_role_menu` VALUES ('24', '28021');
INSERT INTO `sys_role_menu` VALUES ('24', '28022');
INSERT INTO `sys_role_menu` VALUES ('24', '28023');
INSERT INTO `sys_role_menu` VALUES ('24', '28024');
INSERT INTO `sys_role_menu` VALUES ('24', '28025');
INSERT INTO `sys_role_menu` VALUES ('24', '28026');
INSERT INTO `sys_role_menu` VALUES ('24', '28027');
INSERT INTO `sys_role_menu` VALUES ('24', '28028');
INSERT INTO `sys_role_menu` VALUES ('24', '28029');
INSERT INTO `sys_role_menu` VALUES ('24', '101112');
INSERT INTO `sys_role_menu` VALUES ('24', '101732');
INSERT INTO `sys_role_menu` VALUES ('24', '101735');
INSERT INTO `sys_role_menu` VALUES ('24', '101901');
INSERT INTO `sys_role_menu` VALUES ('24', '104122');
INSERT INTO `sys_role_menu` VALUES ('24', '121110');
INSERT INTO `sys_role_menu` VALUES ('24', '121111');
INSERT INTO `sys_role_menu` VALUES ('24', '121112');
INSERT INTO `sys_role_menu` VALUES ('24', '121113');
INSERT INTO `sys_role_menu` VALUES ('24', '121114');
INSERT INTO `sys_role_menu` VALUES ('24', '121115');
INSERT INTO `sys_role_menu` VALUES ('24', '121116');
INSERT INTO `sys_role_menu` VALUES ('24', '121117');
INSERT INTO `sys_role_menu` VALUES ('24', '121118');
INSERT INTO `sys_role_menu` VALUES ('24', '121119');
INSERT INTO `sys_role_menu` VALUES ('24', '121125');
INSERT INTO `sys_role_menu` VALUES ('24', '140120');
INSERT INTO `sys_role_menu` VALUES ('24', '140121');
INSERT INTO `sys_role_menu` VALUES ('24', '140122');
INSERT INTO `sys_role_menu` VALUES ('24', '140203');
INSERT INTO `sys_role_menu` VALUES ('24', '140301');
INSERT INTO `sys_role_menu` VALUES ('24', '140302');
INSERT INTO `sys_role_menu` VALUES ('24', '145001');
INSERT INTO `sys_role_menu` VALUES ('24', '146001');
INSERT INTO `sys_role_menu` VALUES ('24', '160101');
INSERT INTO `sys_role_menu` VALUES ('24', '160202');
INSERT INTO `sys_role_menu` VALUES ('24', '160301');
INSERT INTO `sys_role_menu` VALUES ('24', '160302');
INSERT INTO `sys_role_menu` VALUES ('24', '160308');
INSERT INTO `sys_role_menu` VALUES ('24', '160312');
INSERT INTO `sys_role_menu` VALUES ('24', '160313');
INSERT INTO `sys_role_menu` VALUES ('24', '160510');
INSERT INTO `sys_role_menu` VALUES ('24', '160512');
INSERT INTO `sys_role_menu` VALUES ('24', '160610');
INSERT INTO `sys_role_menu` VALUES ('24', '180101');
INSERT INTO `sys_role_menu` VALUES ('24', '180102');
INSERT INTO `sys_role_menu` VALUES ('24', '180701');
INSERT INTO `sys_role_menu` VALUES ('24', '180702');
INSERT INTO `sys_role_menu` VALUES ('24', '180703');
INSERT INTO `sys_role_menu` VALUES ('24', '180704');
INSERT INTO `sys_role_menu` VALUES ('24', '190101');
INSERT INTO `sys_role_menu` VALUES ('24', '190105');
INSERT INTO `sys_role_menu` VALUES ('24', '190106');
INSERT INTO `sys_role_menu` VALUES ('24', '190107');
INSERT INTO `sys_role_menu` VALUES ('24', '190108');
INSERT INTO `sys_role_menu` VALUES ('24', '190109');
INSERT INTO `sys_role_menu` VALUES ('24', '190110');
INSERT INTO `sys_role_menu` VALUES ('24', '190111');
INSERT INTO `sys_role_menu` VALUES ('24', '190120');
INSERT INTO `sys_role_menu` VALUES ('24', '190121');
INSERT INTO `sys_role_menu` VALUES ('24', '190122');
INSERT INTO `sys_role_menu` VALUES ('24', '190123');
INSERT INTO `sys_role_menu` VALUES ('24', '190124');
INSERT INTO `sys_role_menu` VALUES ('24', '190125');
INSERT INTO `sys_role_menu` VALUES ('24', '190126');
INSERT INTO `sys_role_menu` VALUES ('24', '190128');
INSERT INTO `sys_role_menu` VALUES ('24', '190129');
INSERT INTO `sys_role_menu` VALUES ('24', '190131');
INSERT INTO `sys_role_menu` VALUES ('24', '190153');
INSERT INTO `sys_role_menu` VALUES ('24', '190201');
INSERT INTO `sys_role_menu` VALUES ('24', '190210');
INSERT INTO `sys_role_menu` VALUES ('24', '195001');
INSERT INTO `sys_role_menu` VALUES ('24', '195002');
INSERT INTO `sys_role_menu` VALUES ('24', '195009');
INSERT INTO `sys_role_menu` VALUES ('24', '196127');
INSERT INTO `sys_role_menu` VALUES ('24', '196128');
INSERT INTO `sys_role_menu` VALUES ('24', '220101');
INSERT INTO `sys_role_menu` VALUES ('24', '220102');
INSERT INTO `sys_role_menu` VALUES ('24', '220110');
INSERT INTO `sys_role_menu` VALUES ('24', '220111');
INSERT INTO `sys_role_menu` VALUES ('24', '220120');
INSERT INTO `sys_role_menu` VALUES ('24', '220121');
INSERT INTO `sys_role_menu` VALUES ('24', '1450002');
INSERT INTO `sys_role_menu` VALUES ('24', '1460002');
INSERT INTO `sys_role_menu` VALUES ('24', '1500701');
INSERT INTO `sys_role_menu` VALUES ('24', '1901129');
INSERT INTO `sys_role_menu` VALUES ('24', '1901130');
INSERT INTO `sys_role_menu` VALUES ('24', '1901150');
INSERT INTO `sys_role_menu` VALUES ('24', '1901152');
INSERT INTO `sys_role_menu` VALUES ('24', '1901153');
INSERT INTO `sys_role_menu` VALUES ('24', '1901154');
INSERT INTO `sys_role_menu` VALUES ('24', '1901155');
INSERT INTO `sys_role_menu` VALUES ('24', '1903211');
INSERT INTO `sys_role_menu` VALUES ('24', '1904001');
INSERT INTO `sys_role_menu` VALUES ('24', '1904005');
INSERT INTO `sys_role_menu` VALUES ('24', '2000101');
INSERT INTO `sys_role_menu` VALUES ('24', '2000103');
INSERT INTO `sys_role_menu` VALUES ('24', '2000201');
INSERT INTO `sys_role_menu` VALUES ('27', '1');
INSERT INTO `sys_role_menu` VALUES ('27', '2');
INSERT INTO `sys_role_menu` VALUES ('27', '3');
INSERT INTO `sys_role_menu` VALUES ('27', '4');
INSERT INTO `sys_role_menu` VALUES ('27', '5');
INSERT INTO `sys_role_menu` VALUES ('27', '6');
INSERT INTO `sys_role_menu` VALUES ('27', '7');
INSERT INTO `sys_role_menu` VALUES ('27', '21');
INSERT INTO `sys_role_menu` VALUES ('27', '22');
INSERT INTO `sys_role_menu` VALUES ('27', '23');
INSERT INTO `sys_role_menu` VALUES ('27', '24');
INSERT INTO `sys_role_menu` VALUES ('27', '31');
INSERT INTO `sys_role_menu` VALUES ('27', '32');
INSERT INTO `sys_role_menu` VALUES ('27', '33');
INSERT INTO `sys_role_menu` VALUES ('27', '34');
INSERT INTO `sys_role_menu` VALUES ('27', '41');
INSERT INTO `sys_role_menu` VALUES ('27', '42');
INSERT INTO `sys_role_menu` VALUES ('27', '43');
INSERT INTO `sys_role_menu` VALUES ('27', '44');
INSERT INTO `sys_role_menu` VALUES ('27', '45');
INSERT INTO `sys_role_menu` VALUES ('27', '51');
INSERT INTO `sys_role_menu` VALUES ('27', '52');
INSERT INTO `sys_role_menu` VALUES ('27', '61');
INSERT INTO `sys_role_menu` VALUES ('27', '62');
INSERT INTO `sys_role_menu` VALUES ('27', '63');
INSERT INTO `sys_role_menu` VALUES ('27', '64');
INSERT INTO `sys_role_menu` VALUES ('27', '71');
INSERT INTO `sys_role_menu` VALUES ('27', '72');
INSERT INTO `sys_role_menu` VALUES ('27', '73');
INSERT INTO `sys_role_menu` VALUES ('27', '74');
INSERT INTO `sys_role_menu` VALUES ('27', '100');
INSERT INTO `sys_role_menu` VALUES ('27', '102');
INSERT INTO `sys_role_menu` VALUES ('27', '103');
INSERT INTO `sys_role_menu` VALUES ('27', '104');
INSERT INTO `sys_role_menu` VALUES ('27', '110');
INSERT INTO `sys_role_menu` VALUES ('27', '111');
INSERT INTO `sys_role_menu` VALUES ('27', '112');
INSERT INTO `sys_role_menu` VALUES ('27', '113');
INSERT INTO `sys_role_menu` VALUES ('27', '114');
INSERT INTO `sys_role_menu` VALUES ('28', '1');
INSERT INTO `sys_role_menu` VALUES ('28', '2');
INSERT INTO `sys_role_menu` VALUES ('28', '3');
INSERT INTO `sys_role_menu` VALUES ('28', '4');
INSERT INTO `sys_role_menu` VALUES ('28', '5');
INSERT INTO `sys_role_menu` VALUES ('28', '6');
INSERT INTO `sys_role_menu` VALUES ('28', '7');
INSERT INTO `sys_role_menu` VALUES ('28', '8');
INSERT INTO `sys_role_menu` VALUES ('28', '9');
INSERT INTO `sys_role_menu` VALUES ('28', '11');
INSERT INTO `sys_role_menu` VALUES ('28', '12');
INSERT INTO `sys_role_menu` VALUES ('28', '13');
INSERT INTO `sys_role_menu` VALUES ('28', '14');
INSERT INTO `sys_role_menu` VALUES ('28', '15');
INSERT INTO `sys_role_menu` VALUES ('28', '19');
INSERT INTO `sys_role_menu` VALUES ('28', '20');
INSERT INTO `sys_role_menu` VALUES ('28', '21');
INSERT INTO `sys_role_menu` VALUES ('28', '22');
INSERT INTO `sys_role_menu` VALUES ('28', '23');
INSERT INTO `sys_role_menu` VALUES ('28', '24');
INSERT INTO `sys_role_menu` VALUES ('28', '31');
INSERT INTO `sys_role_menu` VALUES ('28', '32');
INSERT INTO `sys_role_menu` VALUES ('28', '33');
INSERT INTO `sys_role_menu` VALUES ('28', '34');
INSERT INTO `sys_role_menu` VALUES ('28', '41');
INSERT INTO `sys_role_menu` VALUES ('28', '42');
INSERT INTO `sys_role_menu` VALUES ('28', '43');
INSERT INTO `sys_role_menu` VALUES ('28', '44');
INSERT INTO `sys_role_menu` VALUES ('28', '45');
INSERT INTO `sys_role_menu` VALUES ('28', '51');
INSERT INTO `sys_role_menu` VALUES ('28', '52');
INSERT INTO `sys_role_menu` VALUES ('28', '61');
INSERT INTO `sys_role_menu` VALUES ('28', '62');
INSERT INTO `sys_role_menu` VALUES ('28', '63');
INSERT INTO `sys_role_menu` VALUES ('28', '64');
INSERT INTO `sys_role_menu` VALUES ('28', '71');
INSERT INTO `sys_role_menu` VALUES ('28', '72');
INSERT INTO `sys_role_menu` VALUES ('28', '73');
INSERT INTO `sys_role_menu` VALUES ('28', '74');
INSERT INTO `sys_role_menu` VALUES ('28', '100');
INSERT INTO `sys_role_menu` VALUES ('28', '101');
INSERT INTO `sys_role_menu` VALUES ('28', '102');
INSERT INTO `sys_role_menu` VALUES ('28', '103');
INSERT INTO `sys_role_menu` VALUES ('28', '104');
INSERT INTO `sys_role_menu` VALUES ('28', '105');
INSERT INTO `sys_role_menu` VALUES ('28', '109');
INSERT INTO `sys_role_menu` VALUES ('28', '110');
INSERT INTO `sys_role_menu` VALUES ('28', '111');
INSERT INTO `sys_role_menu` VALUES ('28', '112');
INSERT INTO `sys_role_menu` VALUES ('28', '113');
INSERT INTO `sys_role_menu` VALUES ('28', '114');
INSERT INTO `sys_role_menu` VALUES ('28', '121');
INSERT INTO `sys_role_menu` VALUES ('28', '130');
INSERT INTO `sys_role_menu` VALUES ('28', '140');
INSERT INTO `sys_role_menu` VALUES ('28', '144');
INSERT INTO `sys_role_menu` VALUES ('28', '145');
INSERT INTO `sys_role_menu` VALUES ('28', '146');
INSERT INTO `sys_role_menu` VALUES ('28', '150');
INSERT INTO `sys_role_menu` VALUES ('28', '160');
INSERT INTO `sys_role_menu` VALUES ('28', '191');
INSERT INTO `sys_role_menu` VALUES ('28', '192');
INSERT INTO `sys_role_menu` VALUES ('28', '201');
INSERT INTO `sys_role_menu` VALUES ('28', '202');
INSERT INTO `sys_role_menu` VALUES ('28', '1011');
INSERT INTO `sys_role_menu` VALUES ('28', '1012');
INSERT INTO `sys_role_menu` VALUES ('28', '1013');
INSERT INTO `sys_role_menu` VALUES ('28', '1015');
INSERT INTO `sys_role_menu` VALUES ('28', '1016');
INSERT INTO `sys_role_menu` VALUES ('28', '1017');
INSERT INTO `sys_role_menu` VALUES ('28', '1018');
INSERT INTO `sys_role_menu` VALUES ('28', '1051');
INSERT INTO `sys_role_menu` VALUES ('28', '1052');
INSERT INTO `sys_role_menu` VALUES ('28', '1091');
INSERT INTO `sys_role_menu` VALUES ('28', '1092');
INSERT INTO `sys_role_menu` VALUES ('28', '1211');
INSERT INTO `sys_role_menu` VALUES ('28', '1212');
INSERT INTO `sys_role_menu` VALUES ('28', '1301');
INSERT INTO `sys_role_menu` VALUES ('28', '1401');
INSERT INTO `sys_role_menu` VALUES ('28', '1402');
INSERT INTO `sys_role_menu` VALUES ('28', '1403');
INSERT INTO `sys_role_menu` VALUES ('28', '1405');
INSERT INTO `sys_role_menu` VALUES ('28', '1406');
INSERT INTO `sys_role_menu` VALUES ('28', '1501');
INSERT INTO `sys_role_menu` VALUES ('28', '1502');
INSERT INTO `sys_role_menu` VALUES ('28', '1503');
INSERT INTO `sys_role_menu` VALUES ('28', '1504');
INSERT INTO `sys_role_menu` VALUES ('28', '1505');
INSERT INTO `sys_role_menu` VALUES ('28', '1506');
INSERT INTO `sys_role_menu` VALUES ('28', '1601');
INSERT INTO `sys_role_menu` VALUES ('28', '10112');
INSERT INTO `sys_role_menu` VALUES ('28', '10113');
INSERT INTO `sys_role_menu` VALUES ('28', '10114');
INSERT INTO `sys_role_menu` VALUES ('28', '10115');
INSERT INTO `sys_role_menu` VALUES ('28', '10118');
INSERT INTO `sys_role_menu` VALUES ('28', '10119');
INSERT INTO `sys_role_menu` VALUES ('28', '10121');
INSERT INTO `sys_role_menu` VALUES ('28', '10131');
INSERT INTO `sys_role_menu` VALUES ('28', '10132');
INSERT INTO `sys_role_menu` VALUES ('28', '10133');
INSERT INTO `sys_role_menu` VALUES ('28', '10134');
INSERT INTO `sys_role_menu` VALUES ('28', '10135');
INSERT INTO `sys_role_menu` VALUES ('28', '10136');
INSERT INTO `sys_role_menu` VALUES ('28', '10137');
INSERT INTO `sys_role_menu` VALUES ('28', '10171');
INSERT INTO `sys_role_menu` VALUES ('28', '10172');
INSERT INTO `sys_role_menu` VALUES ('28', '10173');
INSERT INTO `sys_role_menu` VALUES ('28', '10177');
INSERT INTO `sys_role_menu` VALUES ('28', '10178');
INSERT INTO `sys_role_menu` VALUES ('28', '10512');
INSERT INTO `sys_role_menu` VALUES ('28', '10513');
INSERT INTO `sys_role_menu` VALUES ('28', '10517');
INSERT INTO `sys_role_menu` VALUES ('28', '10518');
INSERT INTO `sys_role_menu` VALUES ('28', '10519');
INSERT INTO `sys_role_menu` VALUES ('28', '12111');
INSERT INTO `sys_role_menu` VALUES ('28', '12112');
INSERT INTO `sys_role_menu` VALUES ('28', '12113');
INSERT INTO `sys_role_menu` VALUES ('28', '12114');
INSERT INTO `sys_role_menu` VALUES ('28', '12115');
INSERT INTO `sys_role_menu` VALUES ('28', '12116');
INSERT INTO `sys_role_menu` VALUES ('28', '12117');
INSERT INTO `sys_role_menu` VALUES ('28', '12121');
INSERT INTO `sys_role_menu` VALUES ('28', '12122');
INSERT INTO `sys_role_menu` VALUES ('28', '14001');
INSERT INTO `sys_role_menu` VALUES ('28', '14002');
INSERT INTO `sys_role_menu` VALUES ('28', '14011');
INSERT INTO `sys_role_menu` VALUES ('28', '14012');
INSERT INTO `sys_role_menu` VALUES ('28', '14013');
INSERT INTO `sys_role_menu` VALUES ('28', '14014');
INSERT INTO `sys_role_menu` VALUES ('28', '14015');
INSERT INTO `sys_role_menu` VALUES ('28', '14016');
INSERT INTO `sys_role_menu` VALUES ('28', '14017');
INSERT INTO `sys_role_menu` VALUES ('28', '14018');
INSERT INTO `sys_role_menu` VALUES ('28', '14019');
INSERT INTO `sys_role_menu` VALUES ('28', '14401');
INSERT INTO `sys_role_menu` VALUES ('28', '15007');
INSERT INTO `sys_role_menu` VALUES ('28', '101110');
INSERT INTO `sys_role_menu` VALUES ('28', '101111');
INSERT INTO `sys_role_menu` VALUES ('28', '101112');
INSERT INTO `sys_role_menu` VALUES ('28', '101311');
INSERT INTO `sys_role_menu` VALUES ('28', '101312');
INSERT INTO `sys_role_menu` VALUES ('28', '101315');
INSERT INTO `sys_role_menu` VALUES ('28', '101710');
INSERT INTO `sys_role_menu` VALUES ('28', '101711');
INSERT INTO `sys_role_menu` VALUES ('28', '101712');
INSERT INTO `sys_role_menu` VALUES ('28', '101717');
INSERT INTO `sys_role_menu` VALUES ('28', '101718');
INSERT INTO `sys_role_menu` VALUES ('28', '101719');
INSERT INTO `sys_role_menu` VALUES ('28', '101720');
INSERT INTO `sys_role_menu` VALUES ('28', '101721');
INSERT INTO `sys_role_menu` VALUES ('28', '101723');
INSERT INTO `sys_role_menu` VALUES ('28', '101724');
INSERT INTO `sys_role_menu` VALUES ('28', '101725');
INSERT INTO `sys_role_menu` VALUES ('28', '101726');
INSERT INTO `sys_role_menu` VALUES ('28', '101727');
INSERT INTO `sys_role_menu` VALUES ('28', '101728');
INSERT INTO `sys_role_menu` VALUES ('28', '101729');
INSERT INTO `sys_role_menu` VALUES ('28', '101730');
INSERT INTO `sys_role_menu` VALUES ('28', '140120');
INSERT INTO `sys_role_menu` VALUES ('28', '140121');
INSERT INTO `sys_role_menu` VALUES ('28', '140301');
INSERT INTO `sys_role_menu` VALUES ('28', '145001');
INSERT INTO `sys_role_menu` VALUES ('28', '146001');
INSERT INTO `sys_role_menu` VALUES ('28', '150301');
INSERT INTO `sys_role_menu` VALUES ('28', '150401');
INSERT INTO `sys_role_menu` VALUES ('28', '150501');
INSERT INTO `sys_role_menu` VALUES ('28', '150601');
INSERT INTO `sys_role_menu` VALUES ('28', '1501001');
INSERT INTO `sys_role_menu` VALUES ('28', '1501002');
INSERT INTO `sys_role_menu` VALUES ('30', '1');
INSERT INTO `sys_role_menu` VALUES ('30', '6');
INSERT INTO `sys_role_menu` VALUES ('30', '61');
INSERT INTO `sys_role_menu` VALUES ('30', '140');
INSERT INTO `sys_role_menu` VALUES ('30', '144');
INSERT INTO `sys_role_menu` VALUES ('30', '145');
INSERT INTO `sys_role_menu` VALUES ('30', '146');
INSERT INTO `sys_role_menu` VALUES ('30', '1401');
INSERT INTO `sys_role_menu` VALUES ('30', '1402');
INSERT INTO `sys_role_menu` VALUES ('30', '1403');
INSERT INTO `sys_role_menu` VALUES ('30', '1405');
INSERT INTO `sys_role_menu` VALUES ('30', '1406');
INSERT INTO `sys_role_menu` VALUES ('30', '1901');
INSERT INTO `sys_role_menu` VALUES ('30', '14001');
INSERT INTO `sys_role_menu` VALUES ('30', '14002');
INSERT INTO `sys_role_menu` VALUES ('30', '14011');
INSERT INTO `sys_role_menu` VALUES ('30', '14012');
INSERT INTO `sys_role_menu` VALUES ('30', '14013');
INSERT INTO `sys_role_menu` VALUES ('30', '14014');
INSERT INTO `sys_role_menu` VALUES ('30', '14015');
INSERT INTO `sys_role_menu` VALUES ('30', '14016');
INSERT INTO `sys_role_menu` VALUES ('30', '14017');
INSERT INTO `sys_role_menu` VALUES ('30', '14018');
INSERT INTO `sys_role_menu` VALUES ('30', '14019');
INSERT INTO `sys_role_menu` VALUES ('30', '14401');
INSERT INTO `sys_role_menu` VALUES ('30', '140120');
INSERT INTO `sys_role_menu` VALUES ('30', '140121');
INSERT INTO `sys_role_menu` VALUES ('30', '140301');
INSERT INTO `sys_role_menu` VALUES ('30', '145001');
INSERT INTO `sys_role_menu` VALUES ('30', '146001');
INSERT INTO `sys_role_menu` VALUES ('30', '150301');
INSERT INTO `sys_role_menu` VALUES ('30', '150401');
INSERT INTO `sys_role_menu` VALUES ('30', '150501');
INSERT INTO `sys_role_menu` VALUES ('30', '150601');
INSERT INTO `sys_role_menu` VALUES ('30', '190101');
INSERT INTO `sys_role_menu` VALUES ('30', '190102');
INSERT INTO `sys_role_menu` VALUES ('30', '190103');
INSERT INTO `sys_role_menu` VALUES ('30', '190104');
INSERT INTO `sys_role_menu` VALUES ('30', '190105');
INSERT INTO `sys_role_menu` VALUES ('30', '190106');
INSERT INTO `sys_role_menu` VALUES ('30', '190107');
INSERT INTO `sys_role_menu` VALUES ('30', '190108');
INSERT INTO `sys_role_menu` VALUES ('30', '190109');
INSERT INTO `sys_role_menu` VALUES ('30', '190110');
INSERT INTO `sys_role_menu` VALUES ('30', '1501001');
INSERT INTO `sys_role_menu` VALUES ('30', '1501002');
INSERT INTO `sys_role_menu` VALUES ('31', '6');
INSERT INTO `sys_role_menu` VALUES ('31', '61');
INSERT INTO `sys_role_menu` VALUES ('31', '101');
INSERT INTO `sys_role_menu` VALUES ('31', '105');
INSERT INTO `sys_role_menu` VALUES ('31', '140');
INSERT INTO `sys_role_menu` VALUES ('31', '144');
INSERT INTO `sys_role_menu` VALUES ('31', '145');
INSERT INTO `sys_role_menu` VALUES ('31', '146');
INSERT INTO `sys_role_menu` VALUES ('31', '150');
INSERT INTO `sys_role_menu` VALUES ('31', '190');
INSERT INTO `sys_role_menu` VALUES ('31', '1011');
INSERT INTO `sys_role_menu` VALUES ('31', '1051');
INSERT INTO `sys_role_menu` VALUES ('31', '1052');
INSERT INTO `sys_role_menu` VALUES ('31', '1211');
INSERT INTO `sys_role_menu` VALUES ('31', '1212');
INSERT INTO `sys_role_menu` VALUES ('31', '1401');
INSERT INTO `sys_role_menu` VALUES ('31', '1402');
INSERT INTO `sys_role_menu` VALUES ('31', '1403');
INSERT INTO `sys_role_menu` VALUES ('31', '1405');
INSERT INTO `sys_role_menu` VALUES ('31', '1406');
INSERT INTO `sys_role_menu` VALUES ('31', '1408');
INSERT INTO `sys_role_menu` VALUES ('31', '1501');
INSERT INTO `sys_role_menu` VALUES ('31', '1502');
INSERT INTO `sys_role_menu` VALUES ('31', '1503');
INSERT INTO `sys_role_menu` VALUES ('31', '1504');
INSERT INTO `sys_role_menu` VALUES ('31', '1505');
INSERT INTO `sys_role_menu` VALUES ('31', '1506');
INSERT INTO `sys_role_menu` VALUES ('31', '1901');
INSERT INTO `sys_role_menu` VALUES ('31', '10115');
INSERT INTO `sys_role_menu` VALUES ('31', '10118');
INSERT INTO `sys_role_menu` VALUES ('31', '10512');
INSERT INTO `sys_role_menu` VALUES ('31', '10513');
INSERT INTO `sys_role_menu` VALUES ('31', '10517');
INSERT INTO `sys_role_menu` VALUES ('31', '10518');
INSERT INTO `sys_role_menu` VALUES ('31', '10519');
INSERT INTO `sys_role_menu` VALUES ('31', '12118');
INSERT INTO `sys_role_menu` VALUES ('31', '12119');
INSERT INTO `sys_role_menu` VALUES ('31', '12121');
INSERT INTO `sys_role_menu` VALUES ('31', '12122');
INSERT INTO `sys_role_menu` VALUES ('31', '14001');
INSERT INTO `sys_role_menu` VALUES ('31', '14002');
INSERT INTO `sys_role_menu` VALUES ('31', '14011');
INSERT INTO `sys_role_menu` VALUES ('31', '14012');
INSERT INTO `sys_role_menu` VALUES ('31', '14013');
INSERT INTO `sys_role_menu` VALUES ('31', '14014');
INSERT INTO `sys_role_menu` VALUES ('31', '14015');
INSERT INTO `sys_role_menu` VALUES ('31', '14016');
INSERT INTO `sys_role_menu` VALUES ('31', '14017');
INSERT INTO `sys_role_menu` VALUES ('31', '14018');
INSERT INTO `sys_role_menu` VALUES ('31', '14019');
INSERT INTO `sys_role_menu` VALUES ('31', '14401');
INSERT INTO `sys_role_menu` VALUES ('31', '14402');
INSERT INTO `sys_role_menu` VALUES ('31', '15007');
INSERT INTO `sys_role_menu` VALUES ('31', '18031');
INSERT INTO `sys_role_menu` VALUES ('31', '18032');
INSERT INTO `sys_role_menu` VALUES ('31', '18033');
INSERT INTO `sys_role_menu` VALUES ('31', '18054');
INSERT INTO `sys_role_menu` VALUES ('31', '104122');
INSERT INTO `sys_role_menu` VALUES ('31', '121110');
INSERT INTO `sys_role_menu` VALUES ('31', '121111');
INSERT INTO `sys_role_menu` VALUES ('31', '121113');
INSERT INTO `sys_role_menu` VALUES ('31', '121114');
INSERT INTO `sys_role_menu` VALUES ('31', '121115');
INSERT INTO `sys_role_menu` VALUES ('31', '121116');
INSERT INTO `sys_role_menu` VALUES ('31', '140120');
INSERT INTO `sys_role_menu` VALUES ('31', '140121');
INSERT INTO `sys_role_menu` VALUES ('31', '140122');
INSERT INTO `sys_role_menu` VALUES ('31', '140203');
INSERT INTO `sys_role_menu` VALUES ('31', '140301');
INSERT INTO `sys_role_menu` VALUES ('31', '140302');
INSERT INTO `sys_role_menu` VALUES ('31', '145001');
INSERT INTO `sys_role_menu` VALUES ('31', '146001');
INSERT INTO `sys_role_menu` VALUES ('31', '150301');
INSERT INTO `sys_role_menu` VALUES ('31', '150302');
INSERT INTO `sys_role_menu` VALUES ('31', '150401');
INSERT INTO `sys_role_menu` VALUES ('31', '150402');
INSERT INTO `sys_role_menu` VALUES ('31', '150501');
INSERT INTO `sys_role_menu` VALUES ('31', '150502');
INSERT INTO `sys_role_menu` VALUES ('31', '150601');
INSERT INTO `sys_role_menu` VALUES ('31', '150602');
INSERT INTO `sys_role_menu` VALUES ('31', '190101');
INSERT INTO `sys_role_menu` VALUES ('31', '190102');
INSERT INTO `sys_role_menu` VALUES ('31', '190103');
INSERT INTO `sys_role_menu` VALUES ('31', '190104');
INSERT INTO `sys_role_menu` VALUES ('31', '190105');
INSERT INTO `sys_role_menu` VALUES ('31', '190106');
INSERT INTO `sys_role_menu` VALUES ('31', '190107');
INSERT INTO `sys_role_menu` VALUES ('31', '190108');
INSERT INTO `sys_role_menu` VALUES ('31', '190109');
INSERT INTO `sys_role_menu` VALUES ('31', '190110');
INSERT INTO `sys_role_menu` VALUES ('31', '1450002');
INSERT INTO `sys_role_menu` VALUES ('31', '1460002');
INSERT INTO `sys_role_menu` VALUES ('31', '1500701');
INSERT INTO `sys_role_menu` VALUES ('31', '1501001');
INSERT INTO `sys_role_menu` VALUES ('31', '1501002');
INSERT INTO `sys_role_menu` VALUES ('31', '15010002');
INSERT INTO `sys_role_menu` VALUES ('31', '15020003');
INSERT INTO `sys_role_menu` VALUES ('32', '19');
INSERT INTO `sys_role_menu` VALUES ('32', '21');
INSERT INTO `sys_role_menu` VALUES ('32', '31');
INSERT INTO `sys_role_menu` VALUES ('32', '41');
INSERT INTO `sys_role_menu` VALUES ('32', '61');
INSERT INTO `sys_role_menu` VALUES ('32', '71');
INSERT INTO `sys_role_menu` VALUES ('32', '101');
INSERT INTO `sys_role_menu` VALUES ('32', '130');
INSERT INTO `sys_role_menu` VALUES ('32', '140');
INSERT INTO `sys_role_menu` VALUES ('32', '144');
INSERT INTO `sys_role_menu` VALUES ('32', '145');
INSERT INTO `sys_role_menu` VALUES ('32', '146');
INSERT INTO `sys_role_menu` VALUES ('32', '150');
INSERT INTO `sys_role_menu` VALUES ('32', '160');
INSERT INTO `sys_role_menu` VALUES ('32', '180');
INSERT INTO `sys_role_menu` VALUES ('32', '191');
INSERT INTO `sys_role_menu` VALUES ('32', '192');
INSERT INTO `sys_role_menu` VALUES ('32', '195');
INSERT INTO `sys_role_menu` VALUES ('32', '1019');
INSERT INTO `sys_role_menu` VALUES ('32', '1211');
INSERT INTO `sys_role_menu` VALUES ('32', '1212');
INSERT INTO `sys_role_menu` VALUES ('32', '1213');
INSERT INTO `sys_role_menu` VALUES ('32', '1306');
INSERT INTO `sys_role_menu` VALUES ('32', '1401');
INSERT INTO `sys_role_menu` VALUES ('32', '1402');
INSERT INTO `sys_role_menu` VALUES ('32', '1403');
INSERT INTO `sys_role_menu` VALUES ('32', '1405');
INSERT INTO `sys_role_menu` VALUES ('32', '1406');
INSERT INTO `sys_role_menu` VALUES ('32', '1408');
INSERT INTO `sys_role_menu` VALUES ('32', '1409');
INSERT INTO `sys_role_menu` VALUES ('32', '1501');
INSERT INTO `sys_role_menu` VALUES ('32', '1502');
INSERT INTO `sys_role_menu` VALUES ('32', '1503');
INSERT INTO `sys_role_menu` VALUES ('32', '1504');
INSERT INTO `sys_role_menu` VALUES ('32', '1505');
INSERT INTO `sys_role_menu` VALUES ('32', '1506');
INSERT INTO `sys_role_menu` VALUES ('32', '1609');
INSERT INTO `sys_role_menu` VALUES ('32', '1612');
INSERT INTO `sys_role_menu` VALUES ('32', '1801');
INSERT INTO `sys_role_menu` VALUES ('32', '1802');
INSERT INTO `sys_role_menu` VALUES ('32', '1901');
INSERT INTO `sys_role_menu` VALUES ('32', '1902');
INSERT INTO `sys_role_menu` VALUES ('32', '1956');
INSERT INTO `sys_role_menu` VALUES ('32', '10115');
INSERT INTO `sys_role_menu` VALUES ('32', '10118');
INSERT INTO `sys_role_menu` VALUES ('32', '10171');
INSERT INTO `sys_role_menu` VALUES ('32', '10512');
INSERT INTO `sys_role_menu` VALUES ('32', '10513');
INSERT INTO `sys_role_menu` VALUES ('32', '10517');
INSERT INTO `sys_role_menu` VALUES ('32', '10518');
INSERT INTO `sys_role_menu` VALUES ('32', '10519');
INSERT INTO `sys_role_menu` VALUES ('32', '12111');
INSERT INTO `sys_role_menu` VALUES ('32', '12112');
INSERT INTO `sys_role_menu` VALUES ('32', '12113');
INSERT INTO `sys_role_menu` VALUES ('32', '12114');
INSERT INTO `sys_role_menu` VALUES ('32', '12115');
INSERT INTO `sys_role_menu` VALUES ('32', '12116');
INSERT INTO `sys_role_menu` VALUES ('32', '12117');
INSERT INTO `sys_role_menu` VALUES ('32', '12118');
INSERT INTO `sys_role_menu` VALUES ('32', '12119');
INSERT INTO `sys_role_menu` VALUES ('32', '12121');
INSERT INTO `sys_role_menu` VALUES ('32', '12122');
INSERT INTO `sys_role_menu` VALUES ('32', '12131');
INSERT INTO `sys_role_menu` VALUES ('32', '12132');
INSERT INTO `sys_role_menu` VALUES ('32', '12142');
INSERT INTO `sys_role_menu` VALUES ('32', '12143');
INSERT INTO `sys_role_menu` VALUES ('32', '12147');
INSERT INTO `sys_role_menu` VALUES ('32', '14001');
INSERT INTO `sys_role_menu` VALUES ('32', '14002');
INSERT INTO `sys_role_menu` VALUES ('32', '14010');
INSERT INTO `sys_role_menu` VALUES ('32', '14011');
INSERT INTO `sys_role_menu` VALUES ('32', '14012');
INSERT INTO `sys_role_menu` VALUES ('32', '14014');
INSERT INTO `sys_role_menu` VALUES ('32', '14015');
INSERT INTO `sys_role_menu` VALUES ('32', '14016');
INSERT INTO `sys_role_menu` VALUES ('32', '14017');
INSERT INTO `sys_role_menu` VALUES ('32', '14018');
INSERT INTO `sys_role_menu` VALUES ('32', '14019');
INSERT INTO `sys_role_menu` VALUES ('32', '14030');
INSERT INTO `sys_role_menu` VALUES ('32', '14031');
INSERT INTO `sys_role_menu` VALUES ('32', '14032');
INSERT INTO `sys_role_menu` VALUES ('32', '14401');
INSERT INTO `sys_role_menu` VALUES ('32', '14402');
INSERT INTO `sys_role_menu` VALUES ('32', '15007');
INSERT INTO `sys_role_menu` VALUES ('32', '16061');
INSERT INTO `sys_role_menu` VALUES ('32', '16062');
INSERT INTO `sys_role_menu` VALUES ('32', '16068');
INSERT INTO `sys_role_menu` VALUES ('32', '16069');
INSERT INTO `sys_role_menu` VALUES ('32', '16121');
INSERT INTO `sys_role_menu` VALUES ('32', '18031');
INSERT INTO `sys_role_menu` VALUES ('32', '18041');
INSERT INTO `sys_role_menu` VALUES ('32', '18042');
INSERT INTO `sys_role_menu` VALUES ('32', '18044');
INSERT INTO `sys_role_menu` VALUES ('32', '18051');
INSERT INTO `sys_role_menu` VALUES ('32', '18052');
INSERT INTO `sys_role_menu` VALUES ('32', '18054');
INSERT INTO `sys_role_menu` VALUES ('32', '18055');
INSERT INTO `sys_role_menu` VALUES ('32', '18057');
INSERT INTO `sys_role_menu` VALUES ('32', '18061');
INSERT INTO `sys_role_menu` VALUES ('32', '18062');
INSERT INTO `sys_role_menu` VALUES ('32', '18063');
INSERT INTO `sys_role_menu` VALUES ('32', '18064');
INSERT INTO `sys_role_menu` VALUES ('32', '18065');
INSERT INTO `sys_role_menu` VALUES ('32', '19101');
INSERT INTO `sys_role_menu` VALUES ('32', '19202');
INSERT INTO `sys_role_menu` VALUES ('32', '19521');
INSERT INTO `sys_role_menu` VALUES ('32', '19525');
INSERT INTO `sys_role_menu` VALUES ('32', '19561');
INSERT INTO `sys_role_menu` VALUES ('32', '101732');
INSERT INTO `sys_role_menu` VALUES ('32', '101901');
INSERT INTO `sys_role_menu` VALUES ('32', '104122');
INSERT INTO `sys_role_menu` VALUES ('32', '121110');
INSERT INTO `sys_role_menu` VALUES ('32', '121111');
INSERT INTO `sys_role_menu` VALUES ('32', '121112');
INSERT INTO `sys_role_menu` VALUES ('32', '121113');
INSERT INTO `sys_role_menu` VALUES ('32', '121114');
INSERT INTO `sys_role_menu` VALUES ('32', '121115');
INSERT INTO `sys_role_menu` VALUES ('32', '121116');
INSERT INTO `sys_role_menu` VALUES ('32', '121117');
INSERT INTO `sys_role_menu` VALUES ('32', '121118');
INSERT INTO `sys_role_menu` VALUES ('32', '121119');
INSERT INTO `sys_role_menu` VALUES ('32', '121125');
INSERT INTO `sys_role_menu` VALUES ('32', '140120');
INSERT INTO `sys_role_menu` VALUES ('32', '140121');
INSERT INTO `sys_role_menu` VALUES ('32', '140203');
INSERT INTO `sys_role_menu` VALUES ('32', '140301');
INSERT INTO `sys_role_menu` VALUES ('32', '140302');
INSERT INTO `sys_role_menu` VALUES ('32', '145001');
INSERT INTO `sys_role_menu` VALUES ('32', '146001');
INSERT INTO `sys_role_menu` VALUES ('32', '150301');
INSERT INTO `sys_role_menu` VALUES ('32', '150302');
INSERT INTO `sys_role_menu` VALUES ('32', '150401');
INSERT INTO `sys_role_menu` VALUES ('32', '150402');
INSERT INTO `sys_role_menu` VALUES ('32', '150501');
INSERT INTO `sys_role_menu` VALUES ('32', '150502');
INSERT INTO `sys_role_menu` VALUES ('32', '150601');
INSERT INTO `sys_role_menu` VALUES ('32', '150602');
INSERT INTO `sys_role_menu` VALUES ('32', '160201');
INSERT INTO `sys_role_menu` VALUES ('32', '160202');
INSERT INTO `sys_role_menu` VALUES ('32', '160301');
INSERT INTO `sys_role_menu` VALUES ('32', '160302');
INSERT INTO `sys_role_menu` VALUES ('32', '160308');
INSERT INTO `sys_role_menu` VALUES ('32', '160312');
INSERT INTO `sys_role_menu` VALUES ('32', '160313');
INSERT INTO `sys_role_menu` VALUES ('32', '160402');
INSERT INTO `sys_role_menu` VALUES ('32', '160514');
INSERT INTO `sys_role_menu` VALUES ('32', '160515');
INSERT INTO `sys_role_menu` VALUES ('32', '160516');
INSERT INTO `sys_role_menu` VALUES ('32', '160610');
INSERT INTO `sys_role_menu` VALUES ('32', '180101');
INSERT INTO `sys_role_menu` VALUES ('32', '180102');
INSERT INTO `sys_role_menu` VALUES ('32', '190101');
INSERT INTO `sys_role_menu` VALUES ('32', '190105');
INSERT INTO `sys_role_menu` VALUES ('32', '190106');
INSERT INTO `sys_role_menu` VALUES ('32', '190107');
INSERT INTO `sys_role_menu` VALUES ('32', '190108');
INSERT INTO `sys_role_menu` VALUES ('32', '190109');
INSERT INTO `sys_role_menu` VALUES ('32', '190110');
INSERT INTO `sys_role_menu` VALUES ('32', '190111');
INSERT INTO `sys_role_menu` VALUES ('32', '190112');
INSERT INTO `sys_role_menu` VALUES ('32', '190121');
INSERT INTO `sys_role_menu` VALUES ('32', '190122');
INSERT INTO `sys_role_menu` VALUES ('32', '190123');
INSERT INTO `sys_role_menu` VALUES ('32', '190124');
INSERT INTO `sys_role_menu` VALUES ('32', '190125');
INSERT INTO `sys_role_menu` VALUES ('32', '190126');
INSERT INTO `sys_role_menu` VALUES ('32', '190128');
INSERT INTO `sys_role_menu` VALUES ('32', '190129');
INSERT INTO `sys_role_menu` VALUES ('32', '190131');
INSERT INTO `sys_role_menu` VALUES ('32', '190153');
INSERT INTO `sys_role_menu` VALUES ('32', '196127');
INSERT INTO `sys_role_menu` VALUES ('32', '196128');
INSERT INTO `sys_role_menu` VALUES ('32', '220101');
INSERT INTO `sys_role_menu` VALUES ('32', '220102');
INSERT INTO `sys_role_menu` VALUES ('32', '220110');
INSERT INTO `sys_role_menu` VALUES ('32', '220111');
INSERT INTO `sys_role_menu` VALUES ('32', '220120');
INSERT INTO `sys_role_menu` VALUES ('32', '220121');
INSERT INTO `sys_role_menu` VALUES ('32', '1450002');
INSERT INTO `sys_role_menu` VALUES ('32', '1460002');
INSERT INTO `sys_role_menu` VALUES ('32', '1500701');
INSERT INTO `sys_role_menu` VALUES ('32', '1501001');
INSERT INTO `sys_role_menu` VALUES ('32', '1501002');
INSERT INTO `sys_role_menu` VALUES ('32', '1901129');
INSERT INTO `sys_role_menu` VALUES ('32', '1901130');
INSERT INTO `sys_role_menu` VALUES ('32', '1901150');
INSERT INTO `sys_role_menu` VALUES ('32', '1901152');
INSERT INTO `sys_role_menu` VALUES ('32', '1901154');
INSERT INTO `sys_role_menu` VALUES ('32', '1901155');
INSERT INTO `sys_role_menu` VALUES ('32', '1903211');
INSERT INTO `sys_role_menu` VALUES ('32', '1904001');
INSERT INTO `sys_role_menu` VALUES ('32', '1904005');
INSERT INTO `sys_role_menu` VALUES ('32', '15010002');
INSERT INTO `sys_role_menu` VALUES ('32', '15020003');
INSERT INTO `sys_role_menu` VALUES ('33', '19');
INSERT INTO `sys_role_menu` VALUES ('33', '21');
INSERT INTO `sys_role_menu` VALUES ('33', '31');
INSERT INTO `sys_role_menu` VALUES ('33', '41');
INSERT INTO `sys_role_menu` VALUES ('33', '51');
INSERT INTO `sys_role_menu` VALUES ('33', '61');
INSERT INTO `sys_role_menu` VALUES ('33', '71');
INSERT INTO `sys_role_menu` VALUES ('33', '105');
INSERT INTO `sys_role_menu` VALUES ('33', '130');
INSERT INTO `sys_role_menu` VALUES ('33', '140');
INSERT INTO `sys_role_menu` VALUES ('33', '144');
INSERT INTO `sys_role_menu` VALUES ('33', '145');
INSERT INTO `sys_role_menu` VALUES ('33', '146');
INSERT INTO `sys_role_menu` VALUES ('33', '150');
INSERT INTO `sys_role_menu` VALUES ('33', '180');
INSERT INTO `sys_role_menu` VALUES ('33', '191');
INSERT INTO `sys_role_menu` VALUES ('33', '192');
INSERT INTO `sys_role_menu` VALUES ('33', '195');
INSERT INTO `sys_role_menu` VALUES ('33', '1019');
INSERT INTO `sys_role_menu` VALUES ('33', '1051');
INSERT INTO `sys_role_menu` VALUES ('33', '1211');
INSERT INTO `sys_role_menu` VALUES ('33', '1212');
INSERT INTO `sys_role_menu` VALUES ('33', '1213');
INSERT INTO `sys_role_menu` VALUES ('33', '1305');
INSERT INTO `sys_role_menu` VALUES ('33', '1401');
INSERT INTO `sys_role_menu` VALUES ('33', '1402');
INSERT INTO `sys_role_menu` VALUES ('33', '1403');
INSERT INTO `sys_role_menu` VALUES ('33', '1405');
INSERT INTO `sys_role_menu` VALUES ('33', '1406');
INSERT INTO `sys_role_menu` VALUES ('33', '1408');
INSERT INTO `sys_role_menu` VALUES ('33', '1409');
INSERT INTO `sys_role_menu` VALUES ('33', '1501');
INSERT INTO `sys_role_menu` VALUES ('33', '1502');
INSERT INTO `sys_role_menu` VALUES ('33', '1503');
INSERT INTO `sys_role_menu` VALUES ('33', '1504');
INSERT INTO `sys_role_menu` VALUES ('33', '1505');
INSERT INTO `sys_role_menu` VALUES ('33', '1506');
INSERT INTO `sys_role_menu` VALUES ('33', '1609');
INSERT INTO `sys_role_menu` VALUES ('33', '1801');
INSERT INTO `sys_role_menu` VALUES ('33', '1802');
INSERT INTO `sys_role_menu` VALUES ('33', '1901');
INSERT INTO `sys_role_menu` VALUES ('33', '1956');
INSERT INTO `sys_role_menu` VALUES ('33', '10115');
INSERT INTO `sys_role_menu` VALUES ('33', '10118');
INSERT INTO `sys_role_menu` VALUES ('33', '10512');
INSERT INTO `sys_role_menu` VALUES ('33', '12111');
INSERT INTO `sys_role_menu` VALUES ('33', '12112');
INSERT INTO `sys_role_menu` VALUES ('33', '12113');
INSERT INTO `sys_role_menu` VALUES ('33', '12114');
INSERT INTO `sys_role_menu` VALUES ('33', '12115');
INSERT INTO `sys_role_menu` VALUES ('33', '12116');
INSERT INTO `sys_role_menu` VALUES ('33', '12117');
INSERT INTO `sys_role_menu` VALUES ('33', '12118');
INSERT INTO `sys_role_menu` VALUES ('33', '12119');
INSERT INTO `sys_role_menu` VALUES ('33', '12121');
INSERT INTO `sys_role_menu` VALUES ('33', '12122');
INSERT INTO `sys_role_menu` VALUES ('33', '12131');
INSERT INTO `sys_role_menu` VALUES ('33', '12132');
INSERT INTO `sys_role_menu` VALUES ('33', '12142');
INSERT INTO `sys_role_menu` VALUES ('33', '12143');
INSERT INTO `sys_role_menu` VALUES ('33', '12147');
INSERT INTO `sys_role_menu` VALUES ('33', '14001');
INSERT INTO `sys_role_menu` VALUES ('33', '14002');
INSERT INTO `sys_role_menu` VALUES ('33', '14010');
INSERT INTO `sys_role_menu` VALUES ('33', '14011');
INSERT INTO `sys_role_menu` VALUES ('33', '14012');
INSERT INTO `sys_role_menu` VALUES ('33', '14014');
INSERT INTO `sys_role_menu` VALUES ('33', '14015');
INSERT INTO `sys_role_menu` VALUES ('33', '14016');
INSERT INTO `sys_role_menu` VALUES ('33', '14017');
INSERT INTO `sys_role_menu` VALUES ('33', '14018');
INSERT INTO `sys_role_menu` VALUES ('33', '14019');
INSERT INTO `sys_role_menu` VALUES ('33', '14030');
INSERT INTO `sys_role_menu` VALUES ('33', '14031');
INSERT INTO `sys_role_menu` VALUES ('33', '14032');
INSERT INTO `sys_role_menu` VALUES ('33', '14401');
INSERT INTO `sys_role_menu` VALUES ('33', '14402');
INSERT INTO `sys_role_menu` VALUES ('33', '15007');
INSERT INTO `sys_role_menu` VALUES ('33', '16052');
INSERT INTO `sys_role_menu` VALUES ('33', '16068');
INSERT INTO `sys_role_menu` VALUES ('33', '16069');
INSERT INTO `sys_role_menu` VALUES ('33', '18051');
INSERT INTO `sys_role_menu` VALUES ('33', '18054');
INSERT INTO `sys_role_menu` VALUES ('33', '18055');
INSERT INTO `sys_role_menu` VALUES ('33', '18057');
INSERT INTO `sys_role_menu` VALUES ('33', '19101');
INSERT INTO `sys_role_menu` VALUES ('33', '19102');
INSERT INTO `sys_role_menu` VALUES ('33', '19103');
INSERT INTO `sys_role_menu` VALUES ('33', '19201');
INSERT INTO `sys_role_menu` VALUES ('33', '19202');
INSERT INTO `sys_role_menu` VALUES ('33', '19203');
INSERT INTO `sys_role_menu` VALUES ('33', '19521');
INSERT INTO `sys_role_menu` VALUES ('33', '19522');
INSERT INTO `sys_role_menu` VALUES ('33', '19523');
INSERT INTO `sys_role_menu` VALUES ('33', '19525');
INSERT INTO `sys_role_menu` VALUES ('33', '19526');
INSERT INTO `sys_role_menu` VALUES ('33', '19561');
INSERT INTO `sys_role_menu` VALUES ('33', '101735');
INSERT INTO `sys_role_menu` VALUES ('33', '101901');
INSERT INTO `sys_role_menu` VALUES ('33', '104122');
INSERT INTO `sys_role_menu` VALUES ('33', '121110');
INSERT INTO `sys_role_menu` VALUES ('33', '121111');
INSERT INTO `sys_role_menu` VALUES ('33', '121112');
INSERT INTO `sys_role_menu` VALUES ('33', '121113');
INSERT INTO `sys_role_menu` VALUES ('33', '121114');
INSERT INTO `sys_role_menu` VALUES ('33', '121115');
INSERT INTO `sys_role_menu` VALUES ('33', '121116');
INSERT INTO `sys_role_menu` VALUES ('33', '121117');
INSERT INTO `sys_role_menu` VALUES ('33', '121118');
INSERT INTO `sys_role_menu` VALUES ('33', '121119');
INSERT INTO `sys_role_menu` VALUES ('33', '121125');
INSERT INTO `sys_role_menu` VALUES ('33', '140120');
INSERT INTO `sys_role_menu` VALUES ('33', '140121');
INSERT INTO `sys_role_menu` VALUES ('33', '140122');
INSERT INTO `sys_role_menu` VALUES ('33', '140203');
INSERT INTO `sys_role_menu` VALUES ('33', '140301');
INSERT INTO `sys_role_menu` VALUES ('33', '140302');
INSERT INTO `sys_role_menu` VALUES ('33', '145001');
INSERT INTO `sys_role_menu` VALUES ('33', '146001');
INSERT INTO `sys_role_menu` VALUES ('33', '150301');
INSERT INTO `sys_role_menu` VALUES ('33', '150302');
INSERT INTO `sys_role_menu` VALUES ('33', '150401');
INSERT INTO `sys_role_menu` VALUES ('33', '150402');
INSERT INTO `sys_role_menu` VALUES ('33', '150501');
INSERT INTO `sys_role_menu` VALUES ('33', '150502');
INSERT INTO `sys_role_menu` VALUES ('33', '150601');
INSERT INTO `sys_role_menu` VALUES ('33', '150602');
INSERT INTO `sys_role_menu` VALUES ('33', '160101');
INSERT INTO `sys_role_menu` VALUES ('33', '160201');
INSERT INTO `sys_role_menu` VALUES ('33', '160202');
INSERT INTO `sys_role_menu` VALUES ('33', '160308');
INSERT INTO `sys_role_menu` VALUES ('33', '160312');
INSERT INTO `sys_role_menu` VALUES ('33', '160313');
INSERT INTO `sys_role_menu` VALUES ('33', '160401');
INSERT INTO `sys_role_menu` VALUES ('33', '160402');
INSERT INTO `sys_role_menu` VALUES ('33', '160403');
INSERT INTO `sys_role_menu` VALUES ('33', '160404');
INSERT INTO `sys_role_menu` VALUES ('33', '160514');
INSERT INTO `sys_role_menu` VALUES ('33', '160515');
INSERT INTO `sys_role_menu` VALUES ('33', '160516');
INSERT INTO `sys_role_menu` VALUES ('33', '160610');
INSERT INTO `sys_role_menu` VALUES ('33', '180101');
INSERT INTO `sys_role_menu` VALUES ('33', '180102');
INSERT INTO `sys_role_menu` VALUES ('33', '190104');
INSERT INTO `sys_role_menu` VALUES ('33', '190105');
INSERT INTO `sys_role_menu` VALUES ('33', '190106');
INSERT INTO `sys_role_menu` VALUES ('33', '190107');
INSERT INTO `sys_role_menu` VALUES ('33', '190108');
INSERT INTO `sys_role_menu` VALUES ('33', '190109');
INSERT INTO `sys_role_menu` VALUES ('33', '190110');
INSERT INTO `sys_role_menu` VALUES ('33', '190111');
INSERT INTO `sys_role_menu` VALUES ('33', '190121');
INSERT INTO `sys_role_menu` VALUES ('33', '190122');
INSERT INTO `sys_role_menu` VALUES ('33', '190123');
INSERT INTO `sys_role_menu` VALUES ('33', '190124');
INSERT INTO `sys_role_menu` VALUES ('33', '190125');
INSERT INTO `sys_role_menu` VALUES ('33', '190126');
INSERT INTO `sys_role_menu` VALUES ('33', '190128');
INSERT INTO `sys_role_menu` VALUES ('33', '190129');
INSERT INTO `sys_role_menu` VALUES ('33', '190131');
INSERT INTO `sys_role_menu` VALUES ('33', '190153');
INSERT INTO `sys_role_menu` VALUES ('33', '195001');
INSERT INTO `sys_role_menu` VALUES ('33', '195009');
INSERT INTO `sys_role_menu` VALUES ('33', '196127');
INSERT INTO `sys_role_menu` VALUES ('33', '196128');
INSERT INTO `sys_role_menu` VALUES ('33', '220101');
INSERT INTO `sys_role_menu` VALUES ('33', '220102');
INSERT INTO `sys_role_menu` VALUES ('33', '220110');
INSERT INTO `sys_role_menu` VALUES ('33', '220111');
INSERT INTO `sys_role_menu` VALUES ('33', '220120');
INSERT INTO `sys_role_menu` VALUES ('33', '220121');
INSERT INTO `sys_role_menu` VALUES ('33', '1450002');
INSERT INTO `sys_role_menu` VALUES ('33', '1460002');
INSERT INTO `sys_role_menu` VALUES ('33', '1500701');
INSERT INTO `sys_role_menu` VALUES ('33', '1501001');
INSERT INTO `sys_role_menu` VALUES ('33', '1501002');
INSERT INTO `sys_role_menu` VALUES ('33', '1901129');
INSERT INTO `sys_role_menu` VALUES ('33', '1901130');
INSERT INTO `sys_role_menu` VALUES ('33', '1901150');
INSERT INTO `sys_role_menu` VALUES ('33', '1901152');
INSERT INTO `sys_role_menu` VALUES ('33', '1901154');
INSERT INTO `sys_role_menu` VALUES ('33', '1901155');
INSERT INTO `sys_role_menu` VALUES ('33', '1903211');
INSERT INTO `sys_role_menu` VALUES ('33', '1904001');
INSERT INTO `sys_role_menu` VALUES ('33', '1904004');
INSERT INTO `sys_role_menu` VALUES ('33', '1904005');
INSERT INTO `sys_role_menu` VALUES ('33', '15010002');
INSERT INTO `sys_role_menu` VALUES ('33', '15020003');
INSERT INTO `sys_role_menu` VALUES ('34', '19');
INSERT INTO `sys_role_menu` VALUES ('34', '31');
INSERT INTO `sys_role_menu` VALUES ('34', '41');
INSERT INTO `sys_role_menu` VALUES ('34', '61');
INSERT INTO `sys_role_menu` VALUES ('34', '71');
INSERT INTO `sys_role_menu` VALUES ('34', '101');
INSERT INTO `sys_role_menu` VALUES ('34', '130');
INSERT INTO `sys_role_menu` VALUES ('34', '140');
INSERT INTO `sys_role_menu` VALUES ('34', '144');
INSERT INTO `sys_role_menu` VALUES ('34', '145');
INSERT INTO `sys_role_menu` VALUES ('34', '146');
INSERT INTO `sys_role_menu` VALUES ('34', '150');
INSERT INTO `sys_role_menu` VALUES ('34', '160');
INSERT INTO `sys_role_menu` VALUES ('34', '180');
INSERT INTO `sys_role_menu` VALUES ('34', '190');
INSERT INTO `sys_role_menu` VALUES ('34', '191');
INSERT INTO `sys_role_menu` VALUES ('34', '192');
INSERT INTO `sys_role_menu` VALUES ('34', '195');
INSERT INTO `sys_role_menu` VALUES ('34', '200');
INSERT INTO `sys_role_menu` VALUES ('34', '1019');
INSERT INTO `sys_role_menu` VALUES ('34', '1211');
INSERT INTO `sys_role_menu` VALUES ('34', '1212');
INSERT INTO `sys_role_menu` VALUES ('34', '1213');
INSERT INTO `sys_role_menu` VALUES ('34', '1305');
INSERT INTO `sys_role_menu` VALUES ('34', '1401');
INSERT INTO `sys_role_menu` VALUES ('34', '1402');
INSERT INTO `sys_role_menu` VALUES ('34', '1403');
INSERT INTO `sys_role_menu` VALUES ('34', '1405');
INSERT INTO `sys_role_menu` VALUES ('34', '1406');
INSERT INTO `sys_role_menu` VALUES ('34', '1408');
INSERT INTO `sys_role_menu` VALUES ('34', '1409');
INSERT INTO `sys_role_menu` VALUES ('34', '1501');
INSERT INTO `sys_role_menu` VALUES ('34', '1502');
INSERT INTO `sys_role_menu` VALUES ('34', '1503');
INSERT INTO `sys_role_menu` VALUES ('34', '1504');
INSERT INTO `sys_role_menu` VALUES ('34', '1505');
INSERT INTO `sys_role_menu` VALUES ('34', '1506');
INSERT INTO `sys_role_menu` VALUES ('34', '1601');
INSERT INTO `sys_role_menu` VALUES ('34', '1602');
INSERT INTO `sys_role_menu` VALUES ('34', '1603');
INSERT INTO `sys_role_menu` VALUES ('34', '1604');
INSERT INTO `sys_role_menu` VALUES ('34', '1609');
INSERT INTO `sys_role_menu` VALUES ('34', '1612');
INSERT INTO `sys_role_menu` VALUES ('34', '1801');
INSERT INTO `sys_role_menu` VALUES ('34', '1802');
INSERT INTO `sys_role_menu` VALUES ('34', '1901');
INSERT INTO `sys_role_menu` VALUES ('34', '1956');
INSERT INTO `sys_role_menu` VALUES ('34', '10115');
INSERT INTO `sys_role_menu` VALUES ('34', '10118');
INSERT INTO `sys_role_menu` VALUES ('34', '10131');
INSERT INTO `sys_role_menu` VALUES ('34', '10132');
INSERT INTO `sys_role_menu` VALUES ('34', '10133');
INSERT INTO `sys_role_menu` VALUES ('34', '10134');
INSERT INTO `sys_role_menu` VALUES ('34', '10135');
INSERT INTO `sys_role_menu` VALUES ('34', '10136');
INSERT INTO `sys_role_menu` VALUES ('34', '10137');
INSERT INTO `sys_role_menu` VALUES ('34', '10138');
INSERT INTO `sys_role_menu` VALUES ('34', '10319');
INSERT INTO `sys_role_menu` VALUES ('34', '10512');
INSERT INTO `sys_role_menu` VALUES ('34', '10513');
INSERT INTO `sys_role_menu` VALUES ('34', '10517');
INSERT INTO `sys_role_menu` VALUES ('34', '10518');
INSERT INTO `sys_role_menu` VALUES ('34', '10519');
INSERT INTO `sys_role_menu` VALUES ('34', '12111');
INSERT INTO `sys_role_menu` VALUES ('34', '12112');
INSERT INTO `sys_role_menu` VALUES ('34', '12113');
INSERT INTO `sys_role_menu` VALUES ('34', '12114');
INSERT INTO `sys_role_menu` VALUES ('34', '12115');
INSERT INTO `sys_role_menu` VALUES ('34', '12116');
INSERT INTO `sys_role_menu` VALUES ('34', '12117');
INSERT INTO `sys_role_menu` VALUES ('34', '12118');
INSERT INTO `sys_role_menu` VALUES ('34', '12119');
INSERT INTO `sys_role_menu` VALUES ('34', '12121');
INSERT INTO `sys_role_menu` VALUES ('34', '12122');
INSERT INTO `sys_role_menu` VALUES ('34', '12131');
INSERT INTO `sys_role_menu` VALUES ('34', '12132');
INSERT INTO `sys_role_menu` VALUES ('34', '12142');
INSERT INTO `sys_role_menu` VALUES ('34', '12143');
INSERT INTO `sys_role_menu` VALUES ('34', '12147');
INSERT INTO `sys_role_menu` VALUES ('34', '14001');
INSERT INTO `sys_role_menu` VALUES ('34', '14002');
INSERT INTO `sys_role_menu` VALUES ('34', '14010');
INSERT INTO `sys_role_menu` VALUES ('34', '14011');
INSERT INTO `sys_role_menu` VALUES ('34', '14012');
INSERT INTO `sys_role_menu` VALUES ('34', '14014');
INSERT INTO `sys_role_menu` VALUES ('34', '14015');
INSERT INTO `sys_role_menu` VALUES ('34', '14016');
INSERT INTO `sys_role_menu` VALUES ('34', '14017');
INSERT INTO `sys_role_menu` VALUES ('34', '14018');
INSERT INTO `sys_role_menu` VALUES ('34', '14019');
INSERT INTO `sys_role_menu` VALUES ('34', '14030');
INSERT INTO `sys_role_menu` VALUES ('34', '14031');
INSERT INTO `sys_role_menu` VALUES ('34', '14032');
INSERT INTO `sys_role_menu` VALUES ('34', '14401');
INSERT INTO `sys_role_menu` VALUES ('34', '14402');
INSERT INTO `sys_role_menu` VALUES ('34', '15007');
INSERT INTO `sys_role_menu` VALUES ('34', '16051');
INSERT INTO `sys_role_menu` VALUES ('34', '16052');
INSERT INTO `sys_role_menu` VALUES ('34', '16053');
INSERT INTO `sys_role_menu` VALUES ('34', '16054');
INSERT INTO `sys_role_menu` VALUES ('34', '16055');
INSERT INTO `sys_role_menu` VALUES ('34', '16056');
INSERT INTO `sys_role_menu` VALUES ('34', '16057');
INSERT INTO `sys_role_menu` VALUES ('34', '16058');
INSERT INTO `sys_role_menu` VALUES ('34', '16059');
INSERT INTO `sys_role_menu` VALUES ('34', '16061');
INSERT INTO `sys_role_menu` VALUES ('34', '16068');
INSERT INTO `sys_role_menu` VALUES ('34', '16121');
INSERT INTO `sys_role_menu` VALUES ('34', '18051');
INSERT INTO `sys_role_menu` VALUES ('34', '18052');
INSERT INTO `sys_role_menu` VALUES ('34', '18054');
INSERT INTO `sys_role_menu` VALUES ('34', '18055');
INSERT INTO `sys_role_menu` VALUES ('34', '18056');
INSERT INTO `sys_role_menu` VALUES ('34', '18057');
INSERT INTO `sys_role_menu` VALUES ('34', '19101');
INSERT INTO `sys_role_menu` VALUES ('34', '19102');
INSERT INTO `sys_role_menu` VALUES ('34', '19103');
INSERT INTO `sys_role_menu` VALUES ('34', '19201');
INSERT INTO `sys_role_menu` VALUES ('34', '19202');
INSERT INTO `sys_role_menu` VALUES ('34', '19203');
INSERT INTO `sys_role_menu` VALUES ('34', '19525');
INSERT INTO `sys_role_menu` VALUES ('34', '19561');
INSERT INTO `sys_role_menu` VALUES ('34', '20002');
INSERT INTO `sys_role_menu` VALUES ('34', '101112');
INSERT INTO `sys_role_menu` VALUES ('34', '101311');
INSERT INTO `sys_role_menu` VALUES ('34', '101312');
INSERT INTO `sys_role_menu` VALUES ('34', '101315');
INSERT INTO `sys_role_menu` VALUES ('34', '101317');
INSERT INTO `sys_role_menu` VALUES ('34', '101318');
INSERT INTO `sys_role_menu` VALUES ('34', '101732');
INSERT INTO `sys_role_menu` VALUES ('34', '101901');
INSERT INTO `sys_role_menu` VALUES ('34', '104122');
INSERT INTO `sys_role_menu` VALUES ('34', '121110');
INSERT INTO `sys_role_menu` VALUES ('34', '121111');
INSERT INTO `sys_role_menu` VALUES ('34', '121112');
INSERT INTO `sys_role_menu` VALUES ('34', '121113');
INSERT INTO `sys_role_menu` VALUES ('34', '121114');
INSERT INTO `sys_role_menu` VALUES ('34', '121115');
INSERT INTO `sys_role_menu` VALUES ('34', '121116');
INSERT INTO `sys_role_menu` VALUES ('34', '121117');
INSERT INTO `sys_role_menu` VALUES ('34', '121118');
INSERT INTO `sys_role_menu` VALUES ('34', '121119');
INSERT INTO `sys_role_menu` VALUES ('34', '121125');
INSERT INTO `sys_role_menu` VALUES ('34', '140120');
INSERT INTO `sys_role_menu` VALUES ('34', '140121');
INSERT INTO `sys_role_menu` VALUES ('34', '140122');
INSERT INTO `sys_role_menu` VALUES ('34', '140203');
INSERT INTO `sys_role_menu` VALUES ('34', '140301');
INSERT INTO `sys_role_menu` VALUES ('34', '140302');
INSERT INTO `sys_role_menu` VALUES ('34', '145001');
INSERT INTO `sys_role_menu` VALUES ('34', '146001');
INSERT INTO `sys_role_menu` VALUES ('34', '150301');
INSERT INTO `sys_role_menu` VALUES ('34', '150302');
INSERT INTO `sys_role_menu` VALUES ('34', '150401');
INSERT INTO `sys_role_menu` VALUES ('34', '150402');
INSERT INTO `sys_role_menu` VALUES ('34', '150501');
INSERT INTO `sys_role_menu` VALUES ('34', '150502');
INSERT INTO `sys_role_menu` VALUES ('34', '150601');
INSERT INTO `sys_role_menu` VALUES ('34', '150602');
INSERT INTO `sys_role_menu` VALUES ('34', '160101');
INSERT INTO `sys_role_menu` VALUES ('34', '160201');
INSERT INTO `sys_role_menu` VALUES ('34', '160202');
INSERT INTO `sys_role_menu` VALUES ('34', '160301');
INSERT INTO `sys_role_menu` VALUES ('34', '160302');
INSERT INTO `sys_role_menu` VALUES ('34', '160308');
INSERT INTO `sys_role_menu` VALUES ('34', '160312');
INSERT INTO `sys_role_menu` VALUES ('34', '160313');
INSERT INTO `sys_role_menu` VALUES ('34', '160401');
INSERT INTO `sys_role_menu` VALUES ('34', '160402');
INSERT INTO `sys_role_menu` VALUES ('34', '160403');
INSERT INTO `sys_role_menu` VALUES ('34', '160404');
INSERT INTO `sys_role_menu` VALUES ('34', '160510');
INSERT INTO `sys_role_menu` VALUES ('34', '160511');
INSERT INTO `sys_role_menu` VALUES ('34', '160512');
INSERT INTO `sys_role_menu` VALUES ('34', '160513');
INSERT INTO `sys_role_menu` VALUES ('34', '160514');
INSERT INTO `sys_role_menu` VALUES ('34', '160515');
INSERT INTO `sys_role_menu` VALUES ('34', '160516');
INSERT INTO `sys_role_menu` VALUES ('34', '160610');
INSERT INTO `sys_role_menu` VALUES ('34', '180101');
INSERT INTO `sys_role_menu` VALUES ('34', '180102');
INSERT INTO `sys_role_menu` VALUES ('34', '190101');
INSERT INTO `sys_role_menu` VALUES ('34', '190102');
INSERT INTO `sys_role_menu` VALUES ('34', '190105');
INSERT INTO `sys_role_menu` VALUES ('34', '190106');
INSERT INTO `sys_role_menu` VALUES ('34', '190107');
INSERT INTO `sys_role_menu` VALUES ('34', '190108');
INSERT INTO `sys_role_menu` VALUES ('34', '190109');
INSERT INTO `sys_role_menu` VALUES ('34', '190110');
INSERT INTO `sys_role_menu` VALUES ('34', '190111');
INSERT INTO `sys_role_menu` VALUES ('34', '190112');
INSERT INTO `sys_role_menu` VALUES ('34', '190121');
INSERT INTO `sys_role_menu` VALUES ('34', '190122');
INSERT INTO `sys_role_menu` VALUES ('34', '190123');
INSERT INTO `sys_role_menu` VALUES ('34', '190124');
INSERT INTO `sys_role_menu` VALUES ('34', '190125');
INSERT INTO `sys_role_menu` VALUES ('34', '190126');
INSERT INTO `sys_role_menu` VALUES ('34', '190128');
INSERT INTO `sys_role_menu` VALUES ('34', '190129');
INSERT INTO `sys_role_menu` VALUES ('34', '190131');
INSERT INTO `sys_role_menu` VALUES ('34', '190153');
INSERT INTO `sys_role_menu` VALUES ('34', '190210');
INSERT INTO `sys_role_menu` VALUES ('34', '196127');
INSERT INTO `sys_role_menu` VALUES ('34', '196128');
INSERT INTO `sys_role_menu` VALUES ('34', '220101');
INSERT INTO `sys_role_menu` VALUES ('34', '220102');
INSERT INTO `sys_role_menu` VALUES ('34', '220110');
INSERT INTO `sys_role_menu` VALUES ('34', '220111');
INSERT INTO `sys_role_menu` VALUES ('34', '220120');
INSERT INTO `sys_role_menu` VALUES ('34', '220121');
INSERT INTO `sys_role_menu` VALUES ('34', '1450002');
INSERT INTO `sys_role_menu` VALUES ('34', '1460002');
INSERT INTO `sys_role_menu` VALUES ('34', '1500701');
INSERT INTO `sys_role_menu` VALUES ('34', '1501001');
INSERT INTO `sys_role_menu` VALUES ('34', '1501002');
INSERT INTO `sys_role_menu` VALUES ('34', '1901129');
INSERT INTO `sys_role_menu` VALUES ('34', '1901130');
INSERT INTO `sys_role_menu` VALUES ('34', '1901150');
INSERT INTO `sys_role_menu` VALUES ('34', '1901152');
INSERT INTO `sys_role_menu` VALUES ('34', '1901153');
INSERT INTO `sys_role_menu` VALUES ('34', '1901154');
INSERT INTO `sys_role_menu` VALUES ('34', '1901155');
INSERT INTO `sys_role_menu` VALUES ('34', '1903211');
INSERT INTO `sys_role_menu` VALUES ('34', '1904001');
INSERT INTO `sys_role_menu` VALUES ('34', '1904005');
INSERT INTO `sys_role_menu` VALUES ('34', '2000101');
INSERT INTO `sys_role_menu` VALUES ('34', '2000201');
INSERT INTO `sys_role_menu` VALUES ('34', '2000202');
INSERT INTO `sys_role_menu` VALUES ('34', '2000203');
INSERT INTO `sys_role_menu` VALUES ('34', '2000206');
INSERT INTO `sys_role_menu` VALUES ('34', '2000209');
INSERT INTO `sys_role_menu` VALUES ('34', '2000210');
INSERT INTO `sys_role_menu` VALUES ('34', '2000211');
INSERT INTO `sys_role_menu` VALUES ('34', '2000212');
INSERT INTO `sys_role_menu` VALUES ('34', '15010002');
INSERT INTO `sys_role_menu` VALUES ('34', '15020003');
INSERT INTO `sys_role_menu` VALUES ('35', '21');
INSERT INTO `sys_role_menu` VALUES ('35', '41');
INSERT INTO `sys_role_menu` VALUES ('35', '51');
INSERT INTO `sys_role_menu` VALUES ('35', '61');
INSERT INTO `sys_role_menu` VALUES ('35', '71');
INSERT INTO `sys_role_menu` VALUES ('35', '72');
INSERT INTO `sys_role_menu` VALUES ('35', '73');
INSERT INTO `sys_role_menu` VALUES ('35', '74');
INSERT INTO `sys_role_menu` VALUES ('35', '101');
INSERT INTO `sys_role_menu` VALUES ('35', '160');
INSERT INTO `sys_role_menu` VALUES ('35', '180');
INSERT INTO `sys_role_menu` VALUES ('35', '190');
INSERT INTO `sys_role_menu` VALUES ('35', '200');
INSERT INTO `sys_role_menu` VALUES ('35', '230');
INSERT INTO `sys_role_menu` VALUES ('35', '1011');
INSERT INTO `sys_role_menu` VALUES ('35', '1017');
INSERT INTO `sys_role_menu` VALUES ('35', '1018');
INSERT INTO `sys_role_menu` VALUES ('35', '1019');
INSERT INTO `sys_role_menu` VALUES ('35', '1022');
INSERT INTO `sys_role_menu` VALUES ('35', '1024');
INSERT INTO `sys_role_menu` VALUES ('35', '1025');
INSERT INTO `sys_role_menu` VALUES ('35', '1405');
INSERT INTO `sys_role_menu` VALUES ('35', '1406');
INSERT INTO `sys_role_menu` VALUES ('35', '1408');
INSERT INTO `sys_role_menu` VALUES ('35', '1409');
INSERT INTO `sys_role_menu` VALUES ('35', '1603');
INSERT INTO `sys_role_menu` VALUES ('35', '1606');
INSERT INTO `sys_role_menu` VALUES ('35', '1609');
INSERT INTO `sys_role_menu` VALUES ('35', '1610');
INSERT INTO `sys_role_menu` VALUES ('35', '1611');
INSERT INTO `sys_role_menu` VALUES ('35', '1612');
INSERT INTO `sys_role_menu` VALUES ('35', '1801');
INSERT INTO `sys_role_menu` VALUES ('35', '1802');
INSERT INTO `sys_role_menu` VALUES ('35', '1807');
INSERT INTO `sys_role_menu` VALUES ('35', '1808');
INSERT INTO `sys_role_menu` VALUES ('35', '1809');
INSERT INTO `sys_role_menu` VALUES ('35', '1901');
INSERT INTO `sys_role_menu` VALUES ('35', '2301');
INSERT INTO `sys_role_menu` VALUES ('35', '2302');
INSERT INTO `sys_role_menu` VALUES ('35', '10114');
INSERT INTO `sys_role_menu` VALUES ('35', '10115');
INSERT INTO `sys_role_menu` VALUES ('35', '10118');
INSERT INTO `sys_role_menu` VALUES ('35', '10121');
INSERT INTO `sys_role_menu` VALUES ('35', '10131');
INSERT INTO `sys_role_menu` VALUES ('35', '10136');
INSERT INTO `sys_role_menu` VALUES ('35', '10137');
INSERT INTO `sys_role_menu` VALUES ('35', '10171');
INSERT INTO `sys_role_menu` VALUES ('35', '10172');
INSERT INTO `sys_role_menu` VALUES ('35', '10177');
INSERT INTO `sys_role_menu` VALUES ('35', '10181');
INSERT INTO `sys_role_menu` VALUES ('35', '12111');
INSERT INTO `sys_role_menu` VALUES ('35', '12112');
INSERT INTO `sys_role_menu` VALUES ('35', '12113');
INSERT INTO `sys_role_menu` VALUES ('35', '12114');
INSERT INTO `sys_role_menu` VALUES ('35', '12115');
INSERT INTO `sys_role_menu` VALUES ('35', '12116');
INSERT INTO `sys_role_menu` VALUES ('35', '12117');
INSERT INTO `sys_role_menu` VALUES ('35', '12118');
INSERT INTO `sys_role_menu` VALUES ('35', '12119');
INSERT INTO `sys_role_menu` VALUES ('35', '14010');
INSERT INTO `sys_role_menu` VALUES ('35', '14030');
INSERT INTO `sys_role_menu` VALUES ('35', '14031');
INSERT INTO `sys_role_menu` VALUES ('35', '16051');
INSERT INTO `sys_role_menu` VALUES ('35', '16052');
INSERT INTO `sys_role_menu` VALUES ('35', '16053');
INSERT INTO `sys_role_menu` VALUES ('35', '16059');
INSERT INTO `sys_role_menu` VALUES ('35', '16061');
INSERT INTO `sys_role_menu` VALUES ('35', '16062');
INSERT INTO `sys_role_menu` VALUES ('35', '16066');
INSERT INTO `sys_role_menu` VALUES ('35', '16067');
INSERT INTO `sys_role_menu` VALUES ('35', '16068');
INSERT INTO `sys_role_menu` VALUES ('35', '16069');
INSERT INTO `sys_role_menu` VALUES ('35', '16121');
INSERT INTO `sys_role_menu` VALUES ('35', '18010');
INSERT INTO `sys_role_menu` VALUES ('35', '18011');
INSERT INTO `sys_role_menu` VALUES ('35', '18012');
INSERT INTO `sys_role_menu` VALUES ('35', '18013');
INSERT INTO `sys_role_menu` VALUES ('35', '19529');
INSERT INTO `sys_role_menu` VALUES ('35', '20002');
INSERT INTO `sys_role_menu` VALUES ('35', '23011');
INSERT INTO `sys_role_menu` VALUES ('35', '23012');
INSERT INTO `sys_role_menu` VALUES ('35', '23013');
INSERT INTO `sys_role_menu` VALUES ('35', '23014');
INSERT INTO `sys_role_menu` VALUES ('35', '101112');
INSERT INTO `sys_role_menu` VALUES ('35', '101114');
INSERT INTO `sys_role_menu` VALUES ('35', '101311');
INSERT INTO `sys_role_menu` VALUES ('35', '101315');
INSERT INTO `sys_role_menu` VALUES ('35', '101710');
INSERT INTO `sys_role_menu` VALUES ('35', '101712');
INSERT INTO `sys_role_menu` VALUES ('35', '101717');
INSERT INTO `sys_role_menu` VALUES ('35', '101718');
INSERT INTO `sys_role_menu` VALUES ('35', '101719');
INSERT INTO `sys_role_menu` VALUES ('35', '101720');
INSERT INTO `sys_role_menu` VALUES ('35', '101721');
INSERT INTO `sys_role_menu` VALUES ('35', '101723');
INSERT INTO `sys_role_menu` VALUES ('35', '101724');
INSERT INTO `sys_role_menu` VALUES ('35', '101725');
INSERT INTO `sys_role_menu` VALUES ('35', '101726');
INSERT INTO `sys_role_menu` VALUES ('35', '101727');
INSERT INTO `sys_role_menu` VALUES ('35', '101728');
INSERT INTO `sys_role_menu` VALUES ('35', '101729');
INSERT INTO `sys_role_menu` VALUES ('35', '101730');
INSERT INTO `sys_role_menu` VALUES ('35', '101732');
INSERT INTO `sys_role_menu` VALUES ('35', '101735');
INSERT INTO `sys_role_menu` VALUES ('35', '101901');
INSERT INTO `sys_role_menu` VALUES ('35', '121110');
INSERT INTO `sys_role_menu` VALUES ('35', '121111');
INSERT INTO `sys_role_menu` VALUES ('35', '121112');
INSERT INTO `sys_role_menu` VALUES ('35', '121113');
INSERT INTO `sys_role_menu` VALUES ('35', '121114');
INSERT INTO `sys_role_menu` VALUES ('35', '121115');
INSERT INTO `sys_role_menu` VALUES ('35', '121116');
INSERT INTO `sys_role_menu` VALUES ('35', '121117');
INSERT INTO `sys_role_menu` VALUES ('35', '121118');
INSERT INTO `sys_role_menu` VALUES ('35', '121119');
INSERT INTO `sys_role_menu` VALUES ('35', '121125');
INSERT INTO `sys_role_menu` VALUES ('35', '160301');
INSERT INTO `sys_role_menu` VALUES ('35', '160302');
INSERT INTO `sys_role_menu` VALUES ('35', '160303');
INSERT INTO `sys_role_menu` VALUES ('35', '160308');
INSERT INTO `sys_role_menu` VALUES ('35', '160309');
INSERT INTO `sys_role_menu` VALUES ('35', '160310');
INSERT INTO `sys_role_menu` VALUES ('35', '160311');
INSERT INTO `sys_role_menu` VALUES ('35', '160312');
INSERT INTO `sys_role_menu` VALUES ('35', '160313');
INSERT INTO `sys_role_menu` VALUES ('35', '160510');
INSERT INTO `sys_role_menu` VALUES ('35', '160512');
INSERT INTO `sys_role_menu` VALUES ('35', '160513');
INSERT INTO `sys_role_menu` VALUES ('35', '160514');
INSERT INTO `sys_role_menu` VALUES ('35', '160515');
INSERT INTO `sys_role_menu` VALUES ('35', '160516');
INSERT INTO `sys_role_menu` VALUES ('35', '180101');
INSERT INTO `sys_role_menu` VALUES ('35', '180102');
INSERT INTO `sys_role_menu` VALUES ('35', '190101');
INSERT INTO `sys_role_menu` VALUES ('35', '190102');
INSERT INTO `sys_role_menu` VALUES ('35', '190103');
INSERT INTO `sys_role_menu` VALUES ('35', '190104');
INSERT INTO `sys_role_menu` VALUES ('35', '190105');
INSERT INTO `sys_role_menu` VALUES ('35', '190106');
INSERT INTO `sys_role_menu` VALUES ('35', '190107');
INSERT INTO `sys_role_menu` VALUES ('35', '190108');
INSERT INTO `sys_role_menu` VALUES ('35', '190109');
INSERT INTO `sys_role_menu` VALUES ('35', '190110');
INSERT INTO `sys_role_menu` VALUES ('35', '190111');
INSERT INTO `sys_role_menu` VALUES ('35', '190121');
INSERT INTO `sys_role_menu` VALUES ('35', '190122');
INSERT INTO `sys_role_menu` VALUES ('35', '190123');
INSERT INTO `sys_role_menu` VALUES ('35', '190124');
INSERT INTO `sys_role_menu` VALUES ('35', '190125');
INSERT INTO `sys_role_menu` VALUES ('35', '190126');
INSERT INTO `sys_role_menu` VALUES ('35', '190128');
INSERT INTO `sys_role_menu` VALUES ('35', '190129');
INSERT INTO `sys_role_menu` VALUES ('35', '190131');
INSERT INTO `sys_role_menu` VALUES ('35', '190153');
INSERT INTO `sys_role_menu` VALUES ('35', '190201');
INSERT INTO `sys_role_menu` VALUES ('35', '196127');
INSERT INTO `sys_role_menu` VALUES ('35', '196128');
INSERT INTO `sys_role_menu` VALUES ('35', '220101');
INSERT INTO `sys_role_menu` VALUES ('35', '220102');
INSERT INTO `sys_role_menu` VALUES ('35', '220110');
INSERT INTO `sys_role_menu` VALUES ('35', '220111');
INSERT INTO `sys_role_menu` VALUES ('35', '220120');
INSERT INTO `sys_role_menu` VALUES ('35', '220121');
INSERT INTO `sys_role_menu` VALUES ('35', '230201');
INSERT INTO `sys_role_menu` VALUES ('35', '230202');
INSERT INTO `sys_role_menu` VALUES ('35', '1901129');
INSERT INTO `sys_role_menu` VALUES ('35', '1901130');
INSERT INTO `sys_role_menu` VALUES ('35', '1901150');
INSERT INTO `sys_role_menu` VALUES ('35', '1901152');
INSERT INTO `sys_role_menu` VALUES ('35', '1901153');
INSERT INTO `sys_role_menu` VALUES ('35', '1901154');
INSERT INTO `sys_role_menu` VALUES ('35', '1901155');
INSERT INTO `sys_role_menu` VALUES ('35', '1903211');
INSERT INTO `sys_role_menu` VALUES ('35', '1904001');
INSERT INTO `sys_role_menu` VALUES ('35', '2000101');
INSERT INTO `sys_role_menu` VALUES ('35', '2000103');
INSERT INTO `sys_role_menu` VALUES ('35', '2000104');
INSERT INTO `sys_role_menu` VALUES ('35', '2000201');
INSERT INTO `sys_role_menu` VALUES ('35', '2000202');
INSERT INTO `sys_role_menu` VALUES ('35', '2000203');
INSERT INTO `sys_role_menu` VALUES ('35', '2000205');
INSERT INTO `sys_role_menu` VALUES ('35', '2000206');
INSERT INTO `sys_role_menu` VALUES ('35', '2000209');
INSERT INTO `sys_role_menu` VALUES ('35', '2000210');
INSERT INTO `sys_role_menu` VALUES ('35', '2000211');
INSERT INTO `sys_role_menu` VALUES ('35', '2000212');
INSERT INTO `sys_role_menu` VALUES ('36', '2');
INSERT INTO `sys_role_menu` VALUES ('36', '4');
INSERT INTO `sys_role_menu` VALUES ('36', '7');
INSERT INTO `sys_role_menu` VALUES ('36', '21');
INSERT INTO `sys_role_menu` VALUES ('36', '41');
INSERT INTO `sys_role_menu` VALUES ('36', '61');
INSERT INTO `sys_role_menu` VALUES ('36', '71');
INSERT INTO `sys_role_menu` VALUES ('36', '72');
INSERT INTO `sys_role_menu` VALUES ('36', '73');
INSERT INTO `sys_role_menu` VALUES ('36', '74');
INSERT INTO `sys_role_menu` VALUES ('36', '101');
INSERT INTO `sys_role_menu` VALUES ('36', '160');
INSERT INTO `sys_role_menu` VALUES ('36', '180');
INSERT INTO `sys_role_menu` VALUES ('36', '190');
INSERT INTO `sys_role_menu` VALUES ('36', '200');
INSERT INTO `sys_role_menu` VALUES ('36', '1011');
INSERT INTO `sys_role_menu` VALUES ('36', '1013');
INSERT INTO `sys_role_menu` VALUES ('36', '1017');
INSERT INTO `sys_role_menu` VALUES ('36', '1018');
INSERT INTO `sys_role_menu` VALUES ('36', '1019');
INSERT INTO `sys_role_menu` VALUES ('36', '1022');
INSERT INTO `sys_role_menu` VALUES ('36', '1024');
INSERT INTO `sys_role_menu` VALUES ('36', '1025');
INSERT INTO `sys_role_menu` VALUES ('36', '1405');
INSERT INTO `sys_role_menu` VALUES ('36', '1406');
INSERT INTO `sys_role_menu` VALUES ('36', '1408');
INSERT INTO `sys_role_menu` VALUES ('36', '1409');
INSERT INTO `sys_role_menu` VALUES ('36', '1603');
INSERT INTO `sys_role_menu` VALUES ('36', '1606');
INSERT INTO `sys_role_menu` VALUES ('36', '1609');
INSERT INTO `sys_role_menu` VALUES ('36', '1610');
INSERT INTO `sys_role_menu` VALUES ('36', '1611');
INSERT INTO `sys_role_menu` VALUES ('36', '1612');
INSERT INTO `sys_role_menu` VALUES ('36', '1801');
INSERT INTO `sys_role_menu` VALUES ('36', '1802');
INSERT INTO `sys_role_menu` VALUES ('36', '1803');
INSERT INTO `sys_role_menu` VALUES ('36', '1804');
INSERT INTO `sys_role_menu` VALUES ('36', '1805');
INSERT INTO `sys_role_menu` VALUES ('36', '1807');
INSERT INTO `sys_role_menu` VALUES ('36', '1808');
INSERT INTO `sys_role_menu` VALUES ('36', '1809');
INSERT INTO `sys_role_menu` VALUES ('36', '1901');
INSERT INTO `sys_role_menu` VALUES ('36', '10114');
INSERT INTO `sys_role_menu` VALUES ('36', '10115');
INSERT INTO `sys_role_menu` VALUES ('36', '10118');
INSERT INTO `sys_role_menu` VALUES ('36', '10121');
INSERT INTO `sys_role_menu` VALUES ('36', '10131');
INSERT INTO `sys_role_menu` VALUES ('36', '10136');
INSERT INTO `sys_role_menu` VALUES ('36', '10137');
INSERT INTO `sys_role_menu` VALUES ('36', '10171');
INSERT INTO `sys_role_menu` VALUES ('36', '10172');
INSERT INTO `sys_role_menu` VALUES ('36', '10177');
INSERT INTO `sys_role_menu` VALUES ('36', '10181');
INSERT INTO `sys_role_menu` VALUES ('36', '12111');
INSERT INTO `sys_role_menu` VALUES ('36', '12112');
INSERT INTO `sys_role_menu` VALUES ('36', '12113');
INSERT INTO `sys_role_menu` VALUES ('36', '12114');
INSERT INTO `sys_role_menu` VALUES ('36', '12115');
INSERT INTO `sys_role_menu` VALUES ('36', '12116');
INSERT INTO `sys_role_menu` VALUES ('36', '12117');
INSERT INTO `sys_role_menu` VALUES ('36', '12118');
INSERT INTO `sys_role_menu` VALUES ('36', '12119');
INSERT INTO `sys_role_menu` VALUES ('36', '14010');
INSERT INTO `sys_role_menu` VALUES ('36', '14030');
INSERT INTO `sys_role_menu` VALUES ('36', '14031');
INSERT INTO `sys_role_menu` VALUES ('36', '16051');
INSERT INTO `sys_role_menu` VALUES ('36', '16052');
INSERT INTO `sys_role_menu` VALUES ('36', '16053');
INSERT INTO `sys_role_menu` VALUES ('36', '16059');
INSERT INTO `sys_role_menu` VALUES ('36', '16061');
INSERT INTO `sys_role_menu` VALUES ('36', '16062');
INSERT INTO `sys_role_menu` VALUES ('36', '16066');
INSERT INTO `sys_role_menu` VALUES ('36', '16067');
INSERT INTO `sys_role_menu` VALUES ('36', '16068');
INSERT INTO `sys_role_menu` VALUES ('36', '16069');
INSERT INTO `sys_role_menu` VALUES ('36', '18010');
INSERT INTO `sys_role_menu` VALUES ('36', '18011');
INSERT INTO `sys_role_menu` VALUES ('36', '18012');
INSERT INTO `sys_role_menu` VALUES ('36', '18013');
INSERT INTO `sys_role_menu` VALUES ('36', '18031');
INSERT INTO `sys_role_menu` VALUES ('36', '18032');
INSERT INTO `sys_role_menu` VALUES ('36', '18041');
INSERT INTO `sys_role_menu` VALUES ('36', '18042');
INSERT INTO `sys_role_menu` VALUES ('36', '18044');
INSERT INTO `sys_role_menu` VALUES ('36', '18051');
INSERT INTO `sys_role_menu` VALUES ('36', '18052');
INSERT INTO `sys_role_menu` VALUES ('36', '18054');
INSERT INTO `sys_role_menu` VALUES ('36', '18057');
INSERT INTO `sys_role_menu` VALUES ('36', '19529');
INSERT INTO `sys_role_menu` VALUES ('36', '20002');
INSERT INTO `sys_role_menu` VALUES ('36', '101112');
INSERT INTO `sys_role_menu` VALUES ('36', '101114');
INSERT INTO `sys_role_menu` VALUES ('36', '101311');
INSERT INTO `sys_role_menu` VALUES ('36', '101315');
INSERT INTO `sys_role_menu` VALUES ('36', '101710');
INSERT INTO `sys_role_menu` VALUES ('36', '101712');
INSERT INTO `sys_role_menu` VALUES ('36', '101717');
INSERT INTO `sys_role_menu` VALUES ('36', '101718');
INSERT INTO `sys_role_menu` VALUES ('36', '101719');
INSERT INTO `sys_role_menu` VALUES ('36', '101720');
INSERT INTO `sys_role_menu` VALUES ('36', '101721');
INSERT INTO `sys_role_menu` VALUES ('36', '101723');
INSERT INTO `sys_role_menu` VALUES ('36', '101724');
INSERT INTO `sys_role_menu` VALUES ('36', '101725');
INSERT INTO `sys_role_menu` VALUES ('36', '101726');
INSERT INTO `sys_role_menu` VALUES ('36', '101727');
INSERT INTO `sys_role_menu` VALUES ('36', '101728');
INSERT INTO `sys_role_menu` VALUES ('36', '101729');
INSERT INTO `sys_role_menu` VALUES ('36', '101730');
INSERT INTO `sys_role_menu` VALUES ('36', '101732');
INSERT INTO `sys_role_menu` VALUES ('36', '101735');
INSERT INTO `sys_role_menu` VALUES ('36', '101901');
INSERT INTO `sys_role_menu` VALUES ('36', '121110');
INSERT INTO `sys_role_menu` VALUES ('36', '121111');
INSERT INTO `sys_role_menu` VALUES ('36', '121112');
INSERT INTO `sys_role_menu` VALUES ('36', '121113');
INSERT INTO `sys_role_menu` VALUES ('36', '121114');
INSERT INTO `sys_role_menu` VALUES ('36', '121115');
INSERT INTO `sys_role_menu` VALUES ('36', '121116');
INSERT INTO `sys_role_menu` VALUES ('36', '121117');
INSERT INTO `sys_role_menu` VALUES ('36', '121118');
INSERT INTO `sys_role_menu` VALUES ('36', '121119');
INSERT INTO `sys_role_menu` VALUES ('36', '121125');
INSERT INTO `sys_role_menu` VALUES ('36', '160301');
INSERT INTO `sys_role_menu` VALUES ('36', '160302');
INSERT INTO `sys_role_menu` VALUES ('36', '160303');
INSERT INTO `sys_role_menu` VALUES ('36', '160308');
INSERT INTO `sys_role_menu` VALUES ('36', '160309');
INSERT INTO `sys_role_menu` VALUES ('36', '160310');
INSERT INTO `sys_role_menu` VALUES ('36', '160311');
INSERT INTO `sys_role_menu` VALUES ('36', '160312');
INSERT INTO `sys_role_menu` VALUES ('36', '160313');
INSERT INTO `sys_role_menu` VALUES ('36', '160510');
INSERT INTO `sys_role_menu` VALUES ('36', '160512');
INSERT INTO `sys_role_menu` VALUES ('36', '160513');
INSERT INTO `sys_role_menu` VALUES ('36', '160514');
INSERT INTO `sys_role_menu` VALUES ('36', '160515');
INSERT INTO `sys_role_menu` VALUES ('36', '160516');
INSERT INTO `sys_role_menu` VALUES ('36', '180101');
INSERT INTO `sys_role_menu` VALUES ('36', '180102');
INSERT INTO `sys_role_menu` VALUES ('36', '190101');
INSERT INTO `sys_role_menu` VALUES ('36', '190102');
INSERT INTO `sys_role_menu` VALUES ('36', '190103');
INSERT INTO `sys_role_menu` VALUES ('36', '190104');
INSERT INTO `sys_role_menu` VALUES ('36', '190105');
INSERT INTO `sys_role_menu` VALUES ('36', '190106');
INSERT INTO `sys_role_menu` VALUES ('36', '190107');
INSERT INTO `sys_role_menu` VALUES ('36', '190108');
INSERT INTO `sys_role_menu` VALUES ('36', '190109');
INSERT INTO `sys_role_menu` VALUES ('36', '190110');
INSERT INTO `sys_role_menu` VALUES ('36', '190111');
INSERT INTO `sys_role_menu` VALUES ('36', '190121');
INSERT INTO `sys_role_menu` VALUES ('36', '190122');
INSERT INTO `sys_role_menu` VALUES ('36', '190123');
INSERT INTO `sys_role_menu` VALUES ('36', '190124');
INSERT INTO `sys_role_menu` VALUES ('36', '190125');
INSERT INTO `sys_role_menu` VALUES ('36', '190126');
INSERT INTO `sys_role_menu` VALUES ('36', '190128');
INSERT INTO `sys_role_menu` VALUES ('36', '190129');
INSERT INTO `sys_role_menu` VALUES ('36', '190131');
INSERT INTO `sys_role_menu` VALUES ('36', '190153');
INSERT INTO `sys_role_menu` VALUES ('36', '190201');
INSERT INTO `sys_role_menu` VALUES ('36', '196127');
INSERT INTO `sys_role_menu` VALUES ('36', '196128');
INSERT INTO `sys_role_menu` VALUES ('36', '220101');
INSERT INTO `sys_role_menu` VALUES ('36', '220102');
INSERT INTO `sys_role_menu` VALUES ('36', '220110');
INSERT INTO `sys_role_menu` VALUES ('36', '220111');
INSERT INTO `sys_role_menu` VALUES ('36', '220120');
INSERT INTO `sys_role_menu` VALUES ('36', '220121');
INSERT INTO `sys_role_menu` VALUES ('36', '1901129');
INSERT INTO `sys_role_menu` VALUES ('36', '1901130');
INSERT INTO `sys_role_menu` VALUES ('36', '1901150');
INSERT INTO `sys_role_menu` VALUES ('36', '1901152');
INSERT INTO `sys_role_menu` VALUES ('36', '1901153');
INSERT INTO `sys_role_menu` VALUES ('36', '1901154');
INSERT INTO `sys_role_menu` VALUES ('36', '1901155');
INSERT INTO `sys_role_menu` VALUES ('36', '1903211');
INSERT INTO `sys_role_menu` VALUES ('36', '1904001');
INSERT INTO `sys_role_menu` VALUES ('36', '2000101');
INSERT INTO `sys_role_menu` VALUES ('36', '2000103');
INSERT INTO `sys_role_menu` VALUES ('36', '2000104');
INSERT INTO `sys_role_menu` VALUES ('36', '2000201');
INSERT INTO `sys_role_menu` VALUES ('36', '2000202');
INSERT INTO `sys_role_menu` VALUES ('36', '2000203');
INSERT INTO `sys_role_menu` VALUES ('36', '2000205');
INSERT INTO `sys_role_menu` VALUES ('36', '2000206');
INSERT INTO `sys_role_menu` VALUES ('36', '2000209');
INSERT INTO `sys_role_menu` VALUES ('36', '2000210');
INSERT INTO `sys_role_menu` VALUES ('36', '2000211');
INSERT INTO `sys_role_menu` VALUES ('36', '2000212');
INSERT INTO `sys_role_menu` VALUES ('37', '1');
INSERT INTO `sys_role_menu` VALUES ('37', '2');
INSERT INTO `sys_role_menu` VALUES ('37', '3');
INSERT INTO `sys_role_menu` VALUES ('37', '4');
INSERT INTO `sys_role_menu` VALUES ('37', '6');
INSERT INTO `sys_role_menu` VALUES ('37', '7');
INSERT INTO `sys_role_menu` VALUES ('37', '21');
INSERT INTO `sys_role_menu` VALUES ('37', '31');
INSERT INTO `sys_role_menu` VALUES ('37', '41');
INSERT INTO `sys_role_menu` VALUES ('37', '61');
INSERT INTO `sys_role_menu` VALUES ('37', '71');
INSERT INTO `sys_role_menu` VALUES ('37', '101');
INSERT INTO `sys_role_menu` VALUES ('37', '160');
INSERT INTO `sys_role_menu` VALUES ('37', '190');
INSERT INTO `sys_role_menu` VALUES ('37', '200');
INSERT INTO `sys_role_menu` VALUES ('37', '290');
INSERT INTO `sys_role_menu` VALUES ('37', '1011');
INSERT INTO `sys_role_menu` VALUES ('37', '1013');
INSERT INTO `sys_role_menu` VALUES ('37', '1019');
INSERT INTO `sys_role_menu` VALUES ('37', '1601');
INSERT INTO `sys_role_menu` VALUES ('37', '1602');
INSERT INTO `sys_role_menu` VALUES ('37', '1603');
INSERT INTO `sys_role_menu` VALUES ('37', '1604');
INSERT INTO `sys_role_menu` VALUES ('37', '1606');
INSERT INTO `sys_role_menu` VALUES ('37', '1612');
INSERT INTO `sys_role_menu` VALUES ('37', '1901');
INSERT INTO `sys_role_menu` VALUES ('37', '1952');
INSERT INTO `sys_role_menu` VALUES ('37', '2901');
INSERT INTO `sys_role_menu` VALUES ('37', '2902');
INSERT INTO `sys_role_menu` VALUES ('37', '10115');
INSERT INTO `sys_role_menu` VALUES ('37', '10118');
INSERT INTO `sys_role_menu` VALUES ('37', '10121');
INSERT INTO `sys_role_menu` VALUES ('37', '10137');
INSERT INTO `sys_role_menu` VALUES ('37', '10171');
INSERT INTO `sys_role_menu` VALUES ('37', '16051');
INSERT INTO `sys_role_menu` VALUES ('37', '16052');
INSERT INTO `sys_role_menu` VALUES ('37', '16053');
INSERT INTO `sys_role_menu` VALUES ('37', '16054');
INSERT INTO `sys_role_menu` VALUES ('37', '16055');
INSERT INTO `sys_role_menu` VALUES ('37', '16056');
INSERT INTO `sys_role_menu` VALUES ('37', '16057');
INSERT INTO `sys_role_menu` VALUES ('37', '16058');
INSERT INTO `sys_role_menu` VALUES ('37', '16059');
INSERT INTO `sys_role_menu` VALUES ('37', '16061');
INSERT INTO `sys_role_menu` VALUES ('37', '16062');
INSERT INTO `sys_role_menu` VALUES ('37', '16063');
INSERT INTO `sys_role_menu` VALUES ('37', '16064');
INSERT INTO `sys_role_menu` VALUES ('37', '16065');
INSERT INTO `sys_role_menu` VALUES ('37', '16066');
INSERT INTO `sys_role_menu` VALUES ('37', '16067');
INSERT INTO `sys_role_menu` VALUES ('37', '16068');
INSERT INTO `sys_role_menu` VALUES ('37', '16069');
INSERT INTO `sys_role_menu` VALUES ('37', '16121');
INSERT INTO `sys_role_menu` VALUES ('37', '19521');
INSERT INTO `sys_role_menu` VALUES ('37', '19522');
INSERT INTO `sys_role_menu` VALUES ('37', '19523');
INSERT INTO `sys_role_menu` VALUES ('37', '19524');
INSERT INTO `sys_role_menu` VALUES ('37', '19525');
INSERT INTO `sys_role_menu` VALUES ('37', '19526');
INSERT INTO `sys_role_menu` VALUES ('37', '19527');
INSERT INTO `sys_role_menu` VALUES ('37', '19528');
INSERT INTO `sys_role_menu` VALUES ('37', '19529');
INSERT INTO `sys_role_menu` VALUES ('37', '101112');
INSERT INTO `sys_role_menu` VALUES ('37', '101113');
INSERT INTO `sys_role_menu` VALUES ('37', '101114');
INSERT INTO `sys_role_menu` VALUES ('37', '101311');
INSERT INTO `sys_role_menu` VALUES ('37', '101721');
INSERT INTO `sys_role_menu` VALUES ('37', '101723');
INSERT INTO `sys_role_menu` VALUES ('37', '101732');
INSERT INTO `sys_role_menu` VALUES ('37', '101735');
INSERT INTO `sys_role_menu` VALUES ('37', '101901');
INSERT INTO `sys_role_menu` VALUES ('37', '160101');
INSERT INTO `sys_role_menu` VALUES ('37', '160201');
INSERT INTO `sys_role_menu` VALUES ('37', '160202');
INSERT INTO `sys_role_menu` VALUES ('37', '160301');
INSERT INTO `sys_role_menu` VALUES ('37', '160302');
INSERT INTO `sys_role_menu` VALUES ('37', '160303');
INSERT INTO `sys_role_menu` VALUES ('37', '160304');
INSERT INTO `sys_role_menu` VALUES ('37', '160305');
INSERT INTO `sys_role_menu` VALUES ('37', '160306');
INSERT INTO `sys_role_menu` VALUES ('37', '160307');
INSERT INTO `sys_role_menu` VALUES ('37', '160308');
INSERT INTO `sys_role_menu` VALUES ('37', '160312');
INSERT INTO `sys_role_menu` VALUES ('37', '160313');
INSERT INTO `sys_role_menu` VALUES ('37', '160401');
INSERT INTO `sys_role_menu` VALUES ('37', '160402');
INSERT INTO `sys_role_menu` VALUES ('37', '160403');
INSERT INTO `sys_role_menu` VALUES ('37', '160404');
INSERT INTO `sys_role_menu` VALUES ('37', '160510');
INSERT INTO `sys_role_menu` VALUES ('37', '160511');
INSERT INTO `sys_role_menu` VALUES ('37', '160512');
INSERT INTO `sys_role_menu` VALUES ('37', '160513');
INSERT INTO `sys_role_menu` VALUES ('37', '160514');
INSERT INTO `sys_role_menu` VALUES ('37', '160515');
INSERT INTO `sys_role_menu` VALUES ('37', '160516');
INSERT INTO `sys_role_menu` VALUES ('37', '160610');
INSERT INTO `sys_role_menu` VALUES ('37', '190101');
INSERT INTO `sys_role_menu` VALUES ('37', '190102');
INSERT INTO `sys_role_menu` VALUES ('37', '190103');
INSERT INTO `sys_role_menu` VALUES ('37', '190104');
INSERT INTO `sys_role_menu` VALUES ('37', '190111');
INSERT INTO `sys_role_menu` VALUES ('37', '190201');
INSERT INTO `sys_role_menu` VALUES ('37', '196127');
INSERT INTO `sys_role_menu` VALUES ('37', '1901153');
INSERT INTO `sys_role_menu` VALUES ('37', '1903211');
INSERT INTO `sys_role_menu` VALUES ('37', '2000201');
INSERT INTO `sys_role_menu` VALUES ('37', '2000206');
INSERT INTO `sys_role_menu` VALUES ('37', '2000209');
INSERT INTO `sys_role_menu` VALUES ('38', '21');
INSERT INTO `sys_role_menu` VALUES ('38', '31');
INSERT INTO `sys_role_menu` VALUES ('38', '41');
INSERT INTO `sys_role_menu` VALUES ('38', '61');
INSERT INTO `sys_role_menu` VALUES ('38', '71');
INSERT INTO `sys_role_menu` VALUES ('38', '101');
INSERT INTO `sys_role_menu` VALUES ('38', '160');
INSERT INTO `sys_role_menu` VALUES ('38', '190');
INSERT INTO `sys_role_menu` VALUES ('38', '200');
INSERT INTO `sys_role_menu` VALUES ('38', '1011');
INSERT INTO `sys_role_menu` VALUES ('38', '1013');
INSERT INTO `sys_role_menu` VALUES ('38', '1017');
INSERT INTO `sys_role_menu` VALUES ('38', '1019');
INSERT INTO `sys_role_menu` VALUES ('38', '1601');
INSERT INTO `sys_role_menu` VALUES ('38', '1602');
INSERT INTO `sys_role_menu` VALUES ('38', '1603');
INSERT INTO `sys_role_menu` VALUES ('38', '1604');
INSERT INTO `sys_role_menu` VALUES ('38', '1606');
INSERT INTO `sys_role_menu` VALUES ('38', '1612');
INSERT INTO `sys_role_menu` VALUES ('38', '1901');
INSERT INTO `sys_role_menu` VALUES ('38', '1952');
INSERT INTO `sys_role_menu` VALUES ('38', '10115');
INSERT INTO `sys_role_menu` VALUES ('38', '10118');
INSERT INTO `sys_role_menu` VALUES ('38', '10121');
INSERT INTO `sys_role_menu` VALUES ('38', '10137');
INSERT INTO `sys_role_menu` VALUES ('38', '10171');
INSERT INTO `sys_role_menu` VALUES ('38', '16051');
INSERT INTO `sys_role_menu` VALUES ('38', '16052');
INSERT INTO `sys_role_menu` VALUES ('38', '16053');
INSERT INTO `sys_role_menu` VALUES ('38', '16054');
INSERT INTO `sys_role_menu` VALUES ('38', '16055');
INSERT INTO `sys_role_menu` VALUES ('38', '16056');
INSERT INTO `sys_role_menu` VALUES ('38', '16057');
INSERT INTO `sys_role_menu` VALUES ('38', '16058');
INSERT INTO `sys_role_menu` VALUES ('38', '16059');
INSERT INTO `sys_role_menu` VALUES ('38', '16061');
INSERT INTO `sys_role_menu` VALUES ('38', '16062');
INSERT INTO `sys_role_menu` VALUES ('38', '16063');
INSERT INTO `sys_role_menu` VALUES ('38', '16064');
INSERT INTO `sys_role_menu` VALUES ('38', '16065');
INSERT INTO `sys_role_menu` VALUES ('38', '16066');
INSERT INTO `sys_role_menu` VALUES ('38', '16067');
INSERT INTO `sys_role_menu` VALUES ('38', '16068');
INSERT INTO `sys_role_menu` VALUES ('38', '16069');
INSERT INTO `sys_role_menu` VALUES ('38', '16121');
INSERT INTO `sys_role_menu` VALUES ('38', '19521');
INSERT INTO `sys_role_menu` VALUES ('38', '19522');
INSERT INTO `sys_role_menu` VALUES ('38', '19523');
INSERT INTO `sys_role_menu` VALUES ('38', '19524');
INSERT INTO `sys_role_menu` VALUES ('38', '19525');
INSERT INTO `sys_role_menu` VALUES ('38', '19526');
INSERT INTO `sys_role_menu` VALUES ('38', '19527');
INSERT INTO `sys_role_menu` VALUES ('38', '19528');
INSERT INTO `sys_role_menu` VALUES ('38', '19529');
INSERT INTO `sys_role_menu` VALUES ('38', '20002');
INSERT INTO `sys_role_menu` VALUES ('38', '101112');
INSERT INTO `sys_role_menu` VALUES ('38', '101113');
INSERT INTO `sys_role_menu` VALUES ('38', '101114');
INSERT INTO `sys_role_menu` VALUES ('38', '101311');
INSERT INTO `sys_role_menu` VALUES ('38', '101721');
INSERT INTO `sys_role_menu` VALUES ('38', '101723');
INSERT INTO `sys_role_menu` VALUES ('38', '101732');
INSERT INTO `sys_role_menu` VALUES ('38', '101735');
INSERT INTO `sys_role_menu` VALUES ('38', '101901');
INSERT INTO `sys_role_menu` VALUES ('38', '160101');
INSERT INTO `sys_role_menu` VALUES ('38', '160201');
INSERT INTO `sys_role_menu` VALUES ('38', '160202');
INSERT INTO `sys_role_menu` VALUES ('38', '160301');
INSERT INTO `sys_role_menu` VALUES ('38', '160302');
INSERT INTO `sys_role_menu` VALUES ('38', '160303');
INSERT INTO `sys_role_menu` VALUES ('38', '160304');
INSERT INTO `sys_role_menu` VALUES ('38', '160305');
INSERT INTO `sys_role_menu` VALUES ('38', '160306');
INSERT INTO `sys_role_menu` VALUES ('38', '160307');
INSERT INTO `sys_role_menu` VALUES ('38', '160308');
INSERT INTO `sys_role_menu` VALUES ('38', '160312');
INSERT INTO `sys_role_menu` VALUES ('38', '160313');
INSERT INTO `sys_role_menu` VALUES ('38', '160401');
INSERT INTO `sys_role_menu` VALUES ('38', '160402');
INSERT INTO `sys_role_menu` VALUES ('38', '160403');
INSERT INTO `sys_role_menu` VALUES ('38', '160404');
INSERT INTO `sys_role_menu` VALUES ('38', '160510');
INSERT INTO `sys_role_menu` VALUES ('38', '160511');
INSERT INTO `sys_role_menu` VALUES ('38', '160512');
INSERT INTO `sys_role_menu` VALUES ('38', '160513');
INSERT INTO `sys_role_menu` VALUES ('38', '160514');
INSERT INTO `sys_role_menu` VALUES ('38', '160515');
INSERT INTO `sys_role_menu` VALUES ('38', '160516');
INSERT INTO `sys_role_menu` VALUES ('38', '160610');
INSERT INTO `sys_role_menu` VALUES ('38', '190101');
INSERT INTO `sys_role_menu` VALUES ('38', '190102');
INSERT INTO `sys_role_menu` VALUES ('38', '190103');
INSERT INTO `sys_role_menu` VALUES ('38', '190104');
INSERT INTO `sys_role_menu` VALUES ('38', '190111');
INSERT INTO `sys_role_menu` VALUES ('38', '190201');
INSERT INTO `sys_role_menu` VALUES ('38', '196127');
INSERT INTO `sys_role_menu` VALUES ('38', '1901153');
INSERT INTO `sys_role_menu` VALUES ('38', '1903211');
INSERT INTO `sys_role_menu` VALUES ('38', '2000201');
INSERT INTO `sys_role_menu` VALUES ('38', '2000206');
INSERT INTO `sys_role_menu` VALUES ('38', '2000209');
INSERT INTO `sys_role_menu` VALUES ('39', '61');
INSERT INTO `sys_role_menu` VALUES ('39', '71');
INSERT INTO `sys_role_menu` VALUES ('39', '101');
INSERT INTO `sys_role_menu` VALUES ('39', '190');
INSERT INTO `sys_role_menu` VALUES ('39', '200');
INSERT INTO `sys_role_menu` VALUES ('39', '1019');
INSERT INTO `sys_role_menu` VALUES ('39', '1211');
INSERT INTO `sys_role_menu` VALUES ('39', '1901');
INSERT INTO `sys_role_menu` VALUES ('39', '1952');
INSERT INTO `sys_role_menu` VALUES ('39', '12117');
INSERT INTO `sys_role_menu` VALUES ('39', '12118');
INSERT INTO `sys_role_menu` VALUES ('39', '12119');
INSERT INTO `sys_role_menu` VALUES ('39', '19521');
INSERT INTO `sys_role_menu` VALUES ('39', '19525');
INSERT INTO `sys_role_menu` VALUES ('39', '19526');
INSERT INTO `sys_role_menu` VALUES ('39', '19527');
INSERT INTO `sys_role_menu` VALUES ('39', '19528');
INSERT INTO `sys_role_menu` VALUES ('39', '19529');
INSERT INTO `sys_role_menu` VALUES ('39', '20001');
INSERT INTO `sys_role_menu` VALUES ('39', '20002');
INSERT INTO `sys_role_menu` VALUES ('39', '101901');
INSERT INTO `sys_role_menu` VALUES ('39', '121110');
INSERT INTO `sys_role_menu` VALUES ('39', '121111');
INSERT INTO `sys_role_menu` VALUES ('39', '121112');
INSERT INTO `sys_role_menu` VALUES ('39', '121113');
INSERT INTO `sys_role_menu` VALUES ('39', '121114');
INSERT INTO `sys_role_menu` VALUES ('39', '121115');
INSERT INTO `sys_role_menu` VALUES ('39', '121116');
INSERT INTO `sys_role_menu` VALUES ('39', '121117');
INSERT INTO `sys_role_menu` VALUES ('39', '121118');
INSERT INTO `sys_role_menu` VALUES ('39', '121119');
INSERT INTO `sys_role_menu` VALUES ('39', '121125');
INSERT INTO `sys_role_menu` VALUES ('39', '160312');
INSERT INTO `sys_role_menu` VALUES ('39', '160313');
INSERT INTO `sys_role_menu` VALUES ('39', '180101');
INSERT INTO `sys_role_menu` VALUES ('39', '190101');
INSERT INTO `sys_role_menu` VALUES ('39', '190104');
INSERT INTO `sys_role_menu` VALUES ('39', '190105');
INSERT INTO `sys_role_menu` VALUES ('39', '190106');
INSERT INTO `sys_role_menu` VALUES ('39', '190107');
INSERT INTO `sys_role_menu` VALUES ('39', '190108');
INSERT INTO `sys_role_menu` VALUES ('39', '190109');
INSERT INTO `sys_role_menu` VALUES ('39', '190110');
INSERT INTO `sys_role_menu` VALUES ('39', '190121');
INSERT INTO `sys_role_menu` VALUES ('39', '190122');
INSERT INTO `sys_role_menu` VALUES ('39', '190123');
INSERT INTO `sys_role_menu` VALUES ('39', '190124');
INSERT INTO `sys_role_menu` VALUES ('39', '190125');
INSERT INTO `sys_role_menu` VALUES ('39', '190126');
INSERT INTO `sys_role_menu` VALUES ('39', '190128');
INSERT INTO `sys_role_menu` VALUES ('39', '190129');
INSERT INTO `sys_role_menu` VALUES ('39', '190131');
INSERT INTO `sys_role_menu` VALUES ('39', '190153');
INSERT INTO `sys_role_menu` VALUES ('39', '196127');
INSERT INTO `sys_role_menu` VALUES ('39', '196128');
INSERT INTO `sys_role_menu` VALUES ('39', '1901129');
INSERT INTO `sys_role_menu` VALUES ('39', '1901130');
INSERT INTO `sys_role_menu` VALUES ('39', '1901150');
INSERT INTO `sys_role_menu` VALUES ('39', '1901152');
INSERT INTO `sys_role_menu` VALUES ('39', '2000101');
INSERT INTO `sys_role_menu` VALUES ('39', '2000102');
INSERT INTO `sys_role_menu` VALUES ('39', '2000103');
INSERT INTO `sys_role_menu` VALUES ('39', '2000104');
INSERT INTO `sys_role_menu` VALUES ('39', '2000201');
INSERT INTO `sys_role_menu` VALUES ('39', '2000202');
INSERT INTO `sys_role_menu` VALUES ('39', '2000203');
INSERT INTO `sys_role_menu` VALUES ('39', '2000204');
INSERT INTO `sys_role_menu` VALUES ('39', '2000205');
INSERT INTO `sys_role_menu` VALUES ('39', '2000206');
INSERT INTO `sys_role_menu` VALUES ('39', '2000207');
INSERT INTO `sys_role_menu` VALUES ('39', '2000208');
INSERT INTO `sys_role_menu` VALUES ('39', '2000209');
INSERT INTO `sys_role_menu` VALUES ('40', '101');
INSERT INTO `sys_role_menu` VALUES ('40', '190');
INSERT INTO `sys_role_menu` VALUES ('40', '200');
INSERT INTO `sys_role_menu` VALUES ('40', '210');
INSERT INTO `sys_role_menu` VALUES ('40', '1019');
INSERT INTO `sys_role_menu` VALUES ('40', '1901');
INSERT INTO `sys_role_menu` VALUES ('40', '1952');
INSERT INTO `sys_role_menu` VALUES ('40', '19521');
INSERT INTO `sys_role_menu` VALUES ('40', '19525');
INSERT INTO `sys_role_menu` VALUES ('40', '19526');
INSERT INTO `sys_role_menu` VALUES ('40', '19527');
INSERT INTO `sys_role_menu` VALUES ('40', '19528');
INSERT INTO `sys_role_menu` VALUES ('40', '19529');
INSERT INTO `sys_role_menu` VALUES ('40', '20001');
INSERT INTO `sys_role_menu` VALUES ('40', '20002');
INSERT INTO `sys_role_menu` VALUES ('40', '101901');
INSERT INTO `sys_role_menu` VALUES ('40', '160312');
INSERT INTO `sys_role_menu` VALUES ('40', '160313');
INSERT INTO `sys_role_menu` VALUES ('40', '190101');
INSERT INTO `sys_role_menu` VALUES ('40', '190104');
INSERT INTO `sys_role_menu` VALUES ('40', '190105');
INSERT INTO `sys_role_menu` VALUES ('40', '190106');
INSERT INTO `sys_role_menu` VALUES ('40', '190107');
INSERT INTO `sys_role_menu` VALUES ('40', '190108');
INSERT INTO `sys_role_menu` VALUES ('40', '190109');
INSERT INTO `sys_role_menu` VALUES ('40', '190110');
INSERT INTO `sys_role_menu` VALUES ('40', '190121');
INSERT INTO `sys_role_menu` VALUES ('40', '190122');
INSERT INTO `sys_role_menu` VALUES ('40', '190123');
INSERT INTO `sys_role_menu` VALUES ('40', '190124');
INSERT INTO `sys_role_menu` VALUES ('40', '190125');
INSERT INTO `sys_role_menu` VALUES ('40', '190126');
INSERT INTO `sys_role_menu` VALUES ('40', '190128');
INSERT INTO `sys_role_menu` VALUES ('40', '190129');
INSERT INTO `sys_role_menu` VALUES ('40', '190131');
INSERT INTO `sys_role_menu` VALUES ('40', '190153');
INSERT INTO `sys_role_menu` VALUES ('40', '196127');
INSERT INTO `sys_role_menu` VALUES ('40', '196128');
INSERT INTO `sys_role_menu` VALUES ('40', '1901129');
INSERT INTO `sys_role_menu` VALUES ('40', '1901130');
INSERT INTO `sys_role_menu` VALUES ('40', '1901150');
INSERT INTO `sys_role_menu` VALUES ('40', '2000101');
INSERT INTO `sys_role_menu` VALUES ('40', '2000102');
INSERT INTO `sys_role_menu` VALUES ('40', '2000103');
INSERT INTO `sys_role_menu` VALUES ('40', '2000104');
INSERT INTO `sys_role_menu` VALUES ('40', '2000201');
INSERT INTO `sys_role_menu` VALUES ('40', '2000202');
INSERT INTO `sys_role_menu` VALUES ('40', '2000203');
INSERT INTO `sys_role_menu` VALUES ('40', '2000204');
INSERT INTO `sys_role_menu` VALUES ('40', '2000205');
INSERT INTO `sys_role_menu` VALUES ('40', '2000206');
INSERT INTO `sys_role_menu` VALUES ('40', '2000207');
INSERT INTO `sys_role_menu` VALUES ('40', '2000208');
INSERT INTO `sys_role_menu` VALUES ('40', '2000209');
INSERT INTO `sys_role_menu` VALUES ('41', '130');
INSERT INTO `sys_role_menu` VALUES ('41', '1301');
INSERT INTO `sys_role_menu` VALUES ('42', '1');
INSERT INTO `sys_role_menu` VALUES ('42', '2');
INSERT INTO `sys_role_menu` VALUES ('42', '21');
INSERT INTO `sys_role_menu` VALUES ('43', '1');
INSERT INTO `sys_role_menu` VALUES ('43', '2');
INSERT INTO `sys_role_menu` VALUES ('43', '3');
INSERT INTO `sys_role_menu` VALUES ('43', '4');
INSERT INTO `sys_role_menu` VALUES ('43', '5');
INSERT INTO `sys_role_menu` VALUES ('43', '6');
INSERT INTO `sys_role_menu` VALUES ('43', '7');
INSERT INTO `sys_role_menu` VALUES ('43', '8');
INSERT INTO `sys_role_menu` VALUES ('43', '9');
INSERT INTO `sys_role_menu` VALUES ('43', '11');
INSERT INTO `sys_role_menu` VALUES ('43', '12');
INSERT INTO `sys_role_menu` VALUES ('43', '13');
INSERT INTO `sys_role_menu` VALUES ('43', '14');
INSERT INTO `sys_role_menu` VALUES ('43', '15');
INSERT INTO `sys_role_menu` VALUES ('43', '21');
INSERT INTO `sys_role_menu` VALUES ('43', '22');
INSERT INTO `sys_role_menu` VALUES ('43', '23');
INSERT INTO `sys_role_menu` VALUES ('43', '24');
INSERT INTO `sys_role_menu` VALUES ('43', '31');
INSERT INTO `sys_role_menu` VALUES ('43', '32');
INSERT INTO `sys_role_menu` VALUES ('43', '33');
INSERT INTO `sys_role_menu` VALUES ('43', '34');
INSERT INTO `sys_role_menu` VALUES ('43', '41');
INSERT INTO `sys_role_menu` VALUES ('43', '51');
INSERT INTO `sys_role_menu` VALUES ('43', '52');
INSERT INTO `sys_role_menu` VALUES ('43', '61');
INSERT INTO `sys_role_menu` VALUES ('43', '62');
INSERT INTO `sys_role_menu` VALUES ('43', '63');
INSERT INTO `sys_role_menu` VALUES ('43', '64');
INSERT INTO `sys_role_menu` VALUES ('43', '71');
INSERT INTO `sys_role_menu` VALUES ('43', '72');
INSERT INTO `sys_role_menu` VALUES ('43', '73');
INSERT INTO `sys_role_menu` VALUES ('43', '74');
INSERT INTO `sys_role_menu` VALUES ('43', '100');
INSERT INTO `sys_role_menu` VALUES ('43', '102');
INSERT INTO `sys_role_menu` VALUES ('43', '103');
INSERT INTO `sys_role_menu` VALUES ('43', '104');
INSERT INTO `sys_role_menu` VALUES ('43', '110');
INSERT INTO `sys_role_menu` VALUES ('43', '111');
INSERT INTO `sys_role_menu` VALUES ('43', '112');
INSERT INTO `sys_role_menu` VALUES ('43', '113');
INSERT INTO `sys_role_menu` VALUES ('43', '114');
INSERT INTO `sys_role_menu` VALUES ('50', '1');
INSERT INTO `sys_role_menu` VALUES ('50', '3');
INSERT INTO `sys_role_menu` VALUES ('50', '4');
INSERT INTO `sys_role_menu` VALUES ('50', '31');
INSERT INTO `sys_role_menu` VALUES ('50', '32');
INSERT INTO `sys_role_menu` VALUES ('50', '33');
INSERT INTO `sys_role_menu` VALUES ('50', '34');
INSERT INTO `sys_role_menu` VALUES ('50', '41');
INSERT INTO `sys_role_menu` VALUES ('50', '45');
INSERT INTO `sys_role_menu` VALUES ('50', '140');
INSERT INTO `sys_role_menu` VALUES ('50', '144');
INSERT INTO `sys_role_menu` VALUES ('50', '145');
INSERT INTO `sys_role_menu` VALUES ('50', '146');
INSERT INTO `sys_role_menu` VALUES ('50', '150');
INSERT INTO `sys_role_menu` VALUES ('50', '200');
INSERT INTO `sys_role_menu` VALUES ('50', '1211');
INSERT INTO `sys_role_menu` VALUES ('50', '1212');
INSERT INTO `sys_role_menu` VALUES ('50', '1401');
INSERT INTO `sys_role_menu` VALUES ('50', '1402');
INSERT INTO `sys_role_menu` VALUES ('50', '1403');
INSERT INTO `sys_role_menu` VALUES ('50', '1405');
INSERT INTO `sys_role_menu` VALUES ('50', '1406');
INSERT INTO `sys_role_menu` VALUES ('50', '1408');
INSERT INTO `sys_role_menu` VALUES ('50', '1409');
INSERT INTO `sys_role_menu` VALUES ('50', '1501');
INSERT INTO `sys_role_menu` VALUES ('50', '1502');
INSERT INTO `sys_role_menu` VALUES ('50', '1503');
INSERT INTO `sys_role_menu` VALUES ('50', '1504');
INSERT INTO `sys_role_menu` VALUES ('50', '1505');
INSERT INTO `sys_role_menu` VALUES ('50', '1506');
INSERT INTO `sys_role_menu` VALUES ('50', '12121');
INSERT INTO `sys_role_menu` VALUES ('50', '12122');
INSERT INTO `sys_role_menu` VALUES ('50', '14001');
INSERT INTO `sys_role_menu` VALUES ('50', '14010');
INSERT INTO `sys_role_menu` VALUES ('50', '14011');
INSERT INTO `sys_role_menu` VALUES ('50', '14012');
INSERT INTO `sys_role_menu` VALUES ('50', '14030');
INSERT INTO `sys_role_menu` VALUES ('50', '14401');
INSERT INTO `sys_role_menu` VALUES ('50', '15007');
INSERT INTO `sys_role_menu` VALUES ('50', '20001');
INSERT INTO `sys_role_menu` VALUES ('50', '20002');
INSERT INTO `sys_role_menu` VALUES ('50', '145001');
INSERT INTO `sys_role_menu` VALUES ('50', '146001');
INSERT INTO `sys_role_menu` VALUES ('50', '150301');
INSERT INTO `sys_role_menu` VALUES ('50', '150401');
INSERT INTO `sys_role_menu` VALUES ('50', '150501');
INSERT INTO `sys_role_menu` VALUES ('50', '150601');
INSERT INTO `sys_role_menu` VALUES ('50', '1500701');
INSERT INTO `sys_role_menu` VALUES ('50', '1501001');
INSERT INTO `sys_role_menu` VALUES ('50', '1501002');
INSERT INTO `sys_role_menu` VALUES ('50', '2000101');
INSERT INTO `sys_role_menu` VALUES ('50', '2000102');
INSERT INTO `sys_role_menu` VALUES ('50', '2000103');
INSERT INTO `sys_role_menu` VALUES ('50', '2000104');
INSERT INTO `sys_role_menu` VALUES ('50', '2000201');
INSERT INTO `sys_role_menu` VALUES ('50', '2000202');
INSERT INTO `sys_role_menu` VALUES ('50', '2000203');
INSERT INTO `sys_role_menu` VALUES ('50', '2000204');
INSERT INTO `sys_role_menu` VALUES ('50', '2000205');
INSERT INTO `sys_role_menu` VALUES ('50', '2000209');
INSERT INTO `sys_role_menu` VALUES ('50', '2000210');
INSERT INTO `sys_role_menu` VALUES ('50', '2000211');
INSERT INTO `sys_role_menu` VALUES ('51', '61');
INSERT INTO `sys_role_menu` VALUES ('51', '71');
INSERT INTO `sys_role_menu` VALUES ('51', '190');
INSERT INTO `sys_role_menu` VALUES ('51', '200');
INSERT INTO `sys_role_menu` VALUES ('51', '1901');
INSERT INTO `sys_role_menu` VALUES ('51', '10118');
INSERT INTO `sys_role_menu` VALUES ('51', '20001');
INSERT INTO `sys_role_menu` VALUES ('51', '20002');
INSERT INTO `sys_role_menu` VALUES ('51', '180101');
INSERT INTO `sys_role_menu` VALUES ('51', '190101');
INSERT INTO `sys_role_menu` VALUES ('51', '190104');
INSERT INTO `sys_role_menu` VALUES ('51', '190105');
INSERT INTO `sys_role_menu` VALUES ('51', '190106');
INSERT INTO `sys_role_menu` VALUES ('51', '190107');
INSERT INTO `sys_role_menu` VALUES ('51', '190108');
INSERT INTO `sys_role_menu` VALUES ('51', '190109');
INSERT INTO `sys_role_menu` VALUES ('51', '190110');
INSERT INTO `sys_role_menu` VALUES ('51', '190121');
INSERT INTO `sys_role_menu` VALUES ('51', '190122');
INSERT INTO `sys_role_menu` VALUES ('51', '190123');
INSERT INTO `sys_role_menu` VALUES ('51', '190124');
INSERT INTO `sys_role_menu` VALUES ('51', '190125');
INSERT INTO `sys_role_menu` VALUES ('51', '190129');
INSERT INTO `sys_role_menu` VALUES ('51', '190131');
INSERT INTO `sys_role_menu` VALUES ('51', '190153');
INSERT INTO `sys_role_menu` VALUES ('51', '196127');
INSERT INTO `sys_role_menu` VALUES ('51', '196128');
INSERT INTO `sys_role_menu` VALUES ('51', '220101');
INSERT INTO `sys_role_menu` VALUES ('51', '220102');
INSERT INTO `sys_role_menu` VALUES ('51', '220110');
INSERT INTO `sys_role_menu` VALUES ('51', '220111');
INSERT INTO `sys_role_menu` VALUES ('51', '220120');
INSERT INTO `sys_role_menu` VALUES ('51', '220121');
INSERT INTO `sys_role_menu` VALUES ('51', '1901129');
INSERT INTO `sys_role_menu` VALUES ('51', '1901130');
INSERT INTO `sys_role_menu` VALUES ('51', '1901150');
INSERT INTO `sys_role_menu` VALUES ('51', '1904001');
INSERT INTO `sys_role_menu` VALUES ('51', '2000101');
INSERT INTO `sys_role_menu` VALUES ('51', '2000102');
INSERT INTO `sys_role_menu` VALUES ('51', '2000103');
INSERT INTO `sys_role_menu` VALUES ('51', '2000104');
INSERT INTO `sys_role_menu` VALUES ('51', '2000201');
INSERT INTO `sys_role_menu` VALUES ('51', '2000202');
INSERT INTO `sys_role_menu` VALUES ('51', '2000203');
INSERT INTO `sys_role_menu` VALUES ('51', '2000204');
INSERT INTO `sys_role_menu` VALUES ('51', '2000205');
INSERT INTO `sys_role_menu` VALUES ('51', '2000206');
INSERT INTO `sys_role_menu` VALUES ('51', '2000207');
INSERT INTO `sys_role_menu` VALUES ('51', '2000208');
INSERT INTO `sys_role_menu` VALUES ('51', '2000209');
INSERT INTO `sys_role_menu` VALUES ('52', '21');
INSERT INTO `sys_role_menu` VALUES ('52', '31');
INSERT INTO `sys_role_menu` VALUES ('52', '41');
INSERT INTO `sys_role_menu` VALUES ('52', '51');
INSERT INTO `sys_role_menu` VALUES ('52', '61');
INSERT INTO `sys_role_menu` VALUES ('52', '71');
INSERT INTO `sys_role_menu` VALUES ('52', '104');
INSERT INTO `sys_role_menu` VALUES ('52', '111');
INSERT INTO `sys_role_menu` VALUES ('52', '121');
INSERT INTO `sys_role_menu` VALUES ('52', '200');
INSERT INTO `sys_role_menu` VALUES ('52', '1213');
INSERT INTO `sys_role_menu` VALUES ('52', '1214');
INSERT INTO `sys_role_menu` VALUES ('52', '10118');
INSERT INTO `sys_role_menu` VALUES ('52', '12131');
INSERT INTO `sys_role_menu` VALUES ('52', '12132');
INSERT INTO `sys_role_menu` VALUES ('52', '12142');
INSERT INTO `sys_role_menu` VALUES ('52', '12143');
INSERT INTO `sys_role_menu` VALUES ('52', '12144');
INSERT INTO `sys_role_menu` VALUES ('52', '12145');
INSERT INTO `sys_role_menu` VALUES ('52', '12146');
INSERT INTO `sys_role_menu` VALUES ('52', '12147');
INSERT INTO `sys_role_menu` VALUES ('52', '14030');
INSERT INTO `sys_role_menu` VALUES ('52', '20002');
INSERT INTO `sys_role_menu` VALUES ('52', '190131');
INSERT INTO `sys_role_menu` VALUES ('52', '196128');
INSERT INTO `sys_role_menu` VALUES ('52', '220101');
INSERT INTO `sys_role_menu` VALUES ('52', '220102');
INSERT INTO `sys_role_menu` VALUES ('52', '220110');
INSERT INTO `sys_role_menu` VALUES ('52', '220111');
INSERT INTO `sys_role_menu` VALUES ('52', '220120');
INSERT INTO `sys_role_menu` VALUES ('52', '220121');
INSERT INTO `sys_role_menu` VALUES ('52', '1901129');
INSERT INTO `sys_role_menu` VALUES ('52', '1901130');
INSERT INTO `sys_role_menu` VALUES ('52', '2000201');
INSERT INTO `sys_role_menu` VALUES ('52', '2000209');
INSERT INTO `sys_role_menu` VALUES ('52', '2000210');
INSERT INTO `sys_role_menu` VALUES ('52', '2000211');
INSERT INTO `sys_role_menu` VALUES ('53', '21');
INSERT INTO `sys_role_menu` VALUES ('53', '25');
INSERT INTO `sys_role_menu` VALUES ('53', '31');
INSERT INTO `sys_role_menu` VALUES ('53', '41');
INSERT INTO `sys_role_menu` VALUES ('53', '51');
INSERT INTO `sys_role_menu` VALUES ('53', '61');
INSERT INTO `sys_role_menu` VALUES ('53', '71');
INSERT INTO `sys_role_menu` VALUES ('53', '104');
INSERT INTO `sys_role_menu` VALUES ('53', '111');
INSERT INTO `sys_role_menu` VALUES ('53', '121');
INSERT INTO `sys_role_menu` VALUES ('53', '200');
INSERT INTO `sys_role_menu` VALUES ('53', '210');
INSERT INTO `sys_role_menu` VALUES ('53', '1213');
INSERT INTO `sys_role_menu` VALUES ('53', '1214');
INSERT INTO `sys_role_menu` VALUES ('53', '2101');
INSERT INTO `sys_role_menu` VALUES ('53', '2102');
INSERT INTO `sys_role_menu` VALUES ('53', '2103');
INSERT INTO `sys_role_menu` VALUES ('53', '2104');
INSERT INTO `sys_role_menu` VALUES ('53', '2105');
INSERT INTO `sys_role_menu` VALUES ('53', '2106');
INSERT INTO `sys_role_menu` VALUES ('53', '2107');
INSERT INTO `sys_role_menu` VALUES ('53', '2108');
INSERT INTO `sys_role_menu` VALUES ('53', '10171');
INSERT INTO `sys_role_menu` VALUES ('53', '10172');
INSERT INTO `sys_role_menu` VALUES ('53', '10177');
INSERT INTO `sys_role_menu` VALUES ('53', '12131');
INSERT INTO `sys_role_menu` VALUES ('53', '12132');
INSERT INTO `sys_role_menu` VALUES ('53', '12142');
INSERT INTO `sys_role_menu` VALUES ('53', '12143');
INSERT INTO `sys_role_menu` VALUES ('53', '12144');
INSERT INTO `sys_role_menu` VALUES ('53', '12145');
INSERT INTO `sys_role_menu` VALUES ('53', '12146');
INSERT INTO `sys_role_menu` VALUES ('53', '12147');
INSERT INTO `sys_role_menu` VALUES ('53', '20002');
INSERT INTO `sys_role_menu` VALUES ('53', '101710');
INSERT INTO `sys_role_menu` VALUES ('53', '101718');
INSERT INTO `sys_role_menu` VALUES ('53', '101719');
INSERT INTO `sys_role_menu` VALUES ('53', '101732');
INSERT INTO `sys_role_menu` VALUES ('53', '101735');
INSERT INTO `sys_role_menu` VALUES ('53', '220101');
INSERT INTO `sys_role_menu` VALUES ('53', '220102');
INSERT INTO `sys_role_menu` VALUES ('53', '220110');
INSERT INTO `sys_role_menu` VALUES ('53', '220111');
INSERT INTO `sys_role_menu` VALUES ('53', '220120');
INSERT INTO `sys_role_menu` VALUES ('53', '220121');
INSERT INTO `sys_role_menu` VALUES ('53', '2000201');
INSERT INTO `sys_role_menu` VALUES ('53', '2000202');
INSERT INTO `sys_role_menu` VALUES ('53', '2000209');
INSERT INTO `sys_role_menu` VALUES ('53', '2000210');
INSERT INTO `sys_role_menu` VALUES ('53', '2000211');
INSERT INTO `sys_role_menu` VALUES ('54', '1');
INSERT INTO `sys_role_menu` VALUES ('54', '2');
INSERT INTO `sys_role_menu` VALUES ('54', '21');
INSERT INTO `sys_role_menu` VALUES ('54', '22');
INSERT INTO `sys_role_menu` VALUES ('54', '23');
INSERT INTO `sys_role_menu` VALUES ('54', '25');
INSERT INTO `sys_role_menu` VALUES ('54', '41');
INSERT INTO `sys_role_menu` VALUES ('54', '61');
INSERT INTO `sys_role_menu` VALUES ('54', '71');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '随机盐',
  `phone` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '简介',
  `avatar` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '0-正常，1-删除',
  `employee_number` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '工号',
  `real_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '真实姓名',
  `cert_no` varchar(18) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '身份证',
  `employment_date` date DEFAULT NULL COMMENT '入职时间',
  `leave_date` date DEFAULT NULL COMMENT '离职时间',
  `employment_state` int(2) DEFAULT '0' COMMENT '在职状态:0-在职,1-已离职',
  `pass_match` int(2) DEFAULT '0' COMMENT '密码是否符合规则:0-符合,1-不符合',
  `pass_expired_date` datetime DEFAULT NULL COMMENT '密码过期时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_idx1_username` (`username`) USING BTREE,
  UNIQUE KEY `user_idx2_phone` (`phone`) USING BTREE,
  UNIQUE KEY `index_employee_number` (`employee_number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '$2a$10$toZiBsxfcCOoib3bfWSzXei64a78J/Gj0cHYTLiPyLp.t./fxPNLC', null, '17761216236', null, '79', '2018-04-20 15:15:18', '2020-04-21 19:16:28', '0', '101', null, null, null, null, '0', '0', '2020-07-20 00:00:00');
INSERT INTO `sys_user` VALUES ('5', 'zhangxin', '$2a$10$p5Dcpumjzaz0A.p4KyHM5egM9nF.ulKPpWfF.BBqZxn0gc8FUJ/.e', null, '17790271690', null, '10', '2019-03-05 00:15:11', '2020-04-20 19:15:58', '0', '105', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('6', 'test', '$2a$10$vg5QNHhCknAqevx9vM2s5esllJEzF/pa8VZXtFYHhhOhUcCw/GWyS', null, '18283614346', null, '2', '2019-03-24 13:54:01', '2020-04-20 19:15:58', '0', '106', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('9', 'test.liu', '$2a$10$JLQgoiokMVR57dJKknq23.2A5TwplH6c1F1Jmb8rrrp7q735r3TNC', null, '1d345622416', null, '23', '2019-03-29 20:46:56', '2020-04-20 19:15:58', '0', '109', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('18', 'lily', '$2a$10$dsaJOaqWoaNgXzJ1k3Zf/.zCIysG60KBPw7VoEE0rC6grFGdr2USC', null, '12364672085', null, '23', '2019-03-29 20:56:27', '2020-04-20 19:15:58', '0', '118', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('27', '123', '$2a$10$igIZFfWOOndfZ2cQ1hSMGOtlL1rgnnYMsWB68JZV1B6WH1.3qRige', null, '12345789438', null, '23', '2019-03-31 18:22:54', '2020-04-20 19:15:58', '0', '127', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('32', '张鑫11', '$2a$10$OusS7XXYPVA.1dLqkLeDaeQy5uQFY33K41i01.OG/vig3HyPEMAKy', null, '17761216238', null, '10', '2019-05-05 22:17:12', '2020-04-20 19:15:58', '0', '132', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('39', 'liuzx001', '$2a$10$fA0Yn5AmfNyfg3622Lk2q.TXP1UqOv5KLEv6m/pBaqc/U.zpp3GvG', null, '12345678934', null, '20', '2019-05-06 10:26:24', '2020-04-20 19:15:58', '0', '139', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('40', 'liuzx001-A1', '$2a$10$0MYahzIAbi6.zuQclOPGIe3rfb9232/1p.wJh606O5lq9kI1jWe5.', null, '12345678901', null, '20', '2019-05-13 21:19:24', '2020-04-20 19:15:58', '0', '140', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('41', 'liuzx002', '$2a$10$Cv2fFQ3qScmrYzY2UUsA5.jZsMB51u0F5Z0xdFqxBn4FGNg9LxglC', null, '12345678903', null, '27', '2019-05-16 20:57:01', '2020-04-20 19:15:58', '0', '141', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('42', 'lij001', '$2a$10$j0eywWAoMiKPVzl.TuYmV.hdZc./3wPdctFFwYlNyT2/ZZyFhwOTe', null, '13438331246', null, '20', '2019-06-05 18:52:09', '2020-04-20 19:15:58', '0', '14222', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('44', 'lij002', '$2a$10$fc48fm.SY45eH/0t3XDx3OW4sI.vscqpoDqxEKxZ23jpQpWrHn7Rq', null, '13438331247', null, '27', '2019-06-06 20:59:07', '2020-04-20 19:15:58', '0', '144', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('52', 'test222', '$2a$10$7Rfh1XTX7e9JdUkxUqMBb.9hBabNiX.xXtGflm9pyPdxMJRi36w0a', null, '18380448468', null, '1', '2019-06-07 22:14:10', '2020-04-20 19:15:58', '0', '152', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('53', 'admin1', '$2a$10$TGJXxWKke/5Anhm1vIBx9OYBbCtYUrcb2qu0NcdFRDECvFYEic3kG', null, '16676726378', null, '28', '2019-06-09 13:20:40', '2020-04-20 19:15:58', '0', '153', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('54', 'zhangxin1', '$2a$10$a8v1MoOtoRnbfOkXWHNkGuSqzZpIhwZN6roNncgDoeIu1zQtpbcHK', null, '17777777778', null, '28', '2019-06-09 13:22:56', '2020-04-20 19:15:58', '0', '154', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('55', 'gzadmin', '$2a$10$5Qj0orbb/nk/v8HfS9KOo.JT7tGxy2AlhFlk2gb8Kt5o28jjnR8zm', null, '17761216261', null, '28', '2019-06-09 17:15:06', '2020-04-20 19:15:58', '0', '155', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('56', '陈江强', '$2a$10$b9gIgJAT4yFdc4MXEza51.ZP2BqakB7pNSWsQM8M/P1XbH5.tQGQ6', null, '13400889361', null, '28', '2019-06-12 21:45:33', '2020-04-20 19:15:58', '0', '156', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('57', '李欣欣', '$2a$10$h..rxhZSEWrAtyVMX3IJWOST2DaQUE6CQcH.f8ALhXK6A2VxDm5RC', null, '19908543326', null, '32', '2019-06-12 21:48:48', '2020-04-20 19:15:58', '0', '157', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('58', '冯永传', '$2a$10$P/GiSjHZTE8T/V0llmOx5.l3XvIvf5dVC7OI6ytamsFoSJCJnxo0q', null, '19988040230', null, '31', '2019-06-12 21:53:42', '2020-04-20 19:15:58', '0', '158', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('59', '邓姣艳', '$2a$10$9Id.F4ZjGnFJD3t2DCj3KeQyivkqLsdQg2kw27xjPXhAzTVhTeQee', null, '19966036126', null, '28', '2019-06-12 21:58:00', '2020-04-20 19:15:58', '0', '159', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('60', '麦丽梅', '$2a$10$npMI.Ms8sjtOl56j8cWK/eHteSwpe7cLu2ygIavyVrS/DRHNXBfQ6', null, '19968200514', null, '56', '2019-06-12 22:00:27', '2020-04-20 19:15:58', '0', '160', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('61', '谢志鹏', '$2a$10$WFDya.qhZnvvjvhKLM6W7e7xyf/zHowWslOkrhQl/0s/J.SPWvHrq', null, '19900000000', null, '35', '2019-06-12 22:02:47', '2020-04-20 19:15:58', '0', '161', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('62', '刘伟1', '$2a$10$73UuAQ9/WjpRpU6uUldTauuYf6tpi8YoKuLkuJp5rsig8xXJ9pjxy', null, '19920056324', null, '62', '2019-06-12 22:03:56', '2020-04-20 19:15:58', '0', '162', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('63', '凌文秀', '$2a$10$g30PN9H9oqdk8luprxfQu.RZGTlrE501gBQhVw/GHMJfjQP/u0gde', null, '19943878888', null, '68', '2019-06-12 22:05:14', '2020-04-20 19:15:58', '0', '163', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('64', '陈家辉', '$2a$10$nFi4BxLEX9nYISfPI51LZe5C7X6W4MSXNeD1HP1wlDAMbcv.kvEKC', null, '19922265350', null, '28', '2019-06-12 22:06:45', '2020-04-20 19:15:58', '0', '164', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('65', '许锦其', '$2a$10$0mnz4Sovuh7xi1eeqhJIoe6macwocgm2XvorBwsI536hMHILKC0vC', null, '19900006543', null, '30', '2019-06-13 20:54:56', '2020-04-20 19:15:58', '0', '165', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('66', '江昌宇', '$2a$10$lLx6H4ZYLIgOKrCwUjvhROplOfGdOckqlF0QlAbGhW/0CXdL7u0Lu', null, '19900006318', null, '33', '2019-06-26 20:54:48', '2020-04-20 19:15:58', '0', '166', null, null, '2019-07-01', null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('67', 'liutao', '$2a$10$Uo7VPiZUme3rc.C7uYykAOVy/NgiZN5YMdUQ3uhAFVOEvoNbVHAO6', null, '15881049869', null, '49', '2019-07-14 22:48:29', '2020-04-20 19:15:58', '0', '167', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('68', '盛宇明', '$2a$10$.hRpLiZiyFu.AWlJXniXqeuulESiySfIFQv7JdrTAxQn8FbsJa6iC', null, '15198019854', null, '82', '2019-07-17 23:37:07', '2020-05-07 22:18:15', '0', '168', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('69', '钟翠翠', '$2a$10$Sbq7yeVg10MCdQ0oetZN7eOqZHB6TnZ7UYtrFLcyTPnLZP8qIJDRq', null, '18874513136', null, '79', '2019-07-18 21:41:23', '2020-04-20 19:15:58', '0', '169', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('70', '孙雪', '$2a$10$GQsP4nl7MAXPRR.hGQLx..231OfVpM4z/WMGurHHeFUrHWeSwBGG2', null, '13764929070', null, '79', '2019-07-19 21:22:05', '2020-04-20 19:15:58', '0', '170', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('71', '陶明', '$2a$10$jk7/tRiuHnyZtJU6iXqmD.uTalaizUD.x9LXHfBlU08Noj4iQePRG', null, '18721774716', null, '79', '2019-07-20 00:55:28', '2020-04-20 19:15:58', '0', '171', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('72', '陈影', '$2a$10$AnRlnbtfWA3hGqdJ4CdoD.tKzIrdUkoUAuTGZGpvNJvmwkMoWetna', null, '18296112952', null, '79', '2019-07-20 00:56:08', '2020-04-20 19:15:58', '0', '172', null, null, '2019-07-02', null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('73', '凌程杰', '$2a$10$Z8crvsUSqDJ6zgQd2HMblOKGtmla6LYdxe/ZvCUDpMgrjWXO9G4Qq', null, '18217102479', null, '79', '2019-07-20 00:56:47', '2020-04-20 19:15:58', '0', '173', null, null, '2019-07-01', null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('74', 'zhouyang', '$2a$10$d0tks/Nf5hjefeYnz8.8.OIgp/ALeAv.M0N8RvAHM6BlmCbxlNvCW', null, '13408480786', 'http://117.48.228.230:7090/storagegroup/M00/00/00/wKgdBF1h_UyAOpO2AAHP_kydJMw255.png', '87', '2019-08-06 22:36:42', '2020-04-20 20:32:26', '0', '10301', null, null, '2019-08-05', null, '0', '0', '2020-07-19 00:00:00');
INSERT INTO `sys_user` VALUES ('75', 'test1', '$2a$10$1tMMw6zIToxA9XH.PLYgsupKp8o2yZfvf3SlNmA.CWnKnFwLEzGX2', null, '13408480788', null, '86', '2019-08-11 08:21:08', '2020-04-20 19:15:58', '0', '303', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('78', 'test9', '$2a$10$.iCkVkHK3QcF7a4GO0aHfuHhYu2ZZT7iSgvCsg.ex8xnIgSjziVs.', null, '13408480785', null, '86', '2019-08-11 08:23:27', '2020-04-20 19:15:58', '0', '309', null, null, '2019-08-11', null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('79', '老王', '$2a$10$CcjZwRQgBDh.vvLjUBSA9OjLGu6mtXRddtJM1hssb1d6Qp3KEMiFy', null, '17388888888', null, '79', '2019-08-11 17:21:35', '2020-04-20 19:15:58', '0', null, null, null, '2019-09-04', '2019-09-04', '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('80', '老王八', '$2a$10$ytN/.oW1vYvuK3e3My5PeOYF2fluJBOI8ULWJB6XEOhuxlW7bHlxG', null, '17388888800', null, '79', '2019-08-11 17:22:06', '2020-04-20 19:15:58', '0', '82955', null, null, '2019-09-04', '2019-09-04', '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('81', 'test101', '$2a$10$1v1sQhtc9yHKwUPHvQ8lI.oHupRharhTMXPMf3iutud22cwNn9bOC', null, '13408480715', null, '86', '2019-08-12 20:48:27', '2020-04-20 19:15:58', '0', '哈哈', null, null, '2019-08-22', null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('84', '周洋', '$2a$10$zjQubwC9Lks5nOiAPIu1PujL3VYsWhkV0vtSQBme2xBIGXFeoVwO.', null, '13408480781', null, '87', '2019-08-25 11:06:16', '2020-05-06 23:30:07', '0', '333', null, null, '2019-08-24', null, '0', '0', '2020-08-04 00:00:00');
INSERT INTO `sys_user` VALUES ('85', 'tester', '$2a$10$dz9IyDE32.511lr0FfP3geWywfJBLIModevDdIgRH/k7mVrVOT272', null, '13408480899', null, '87', '2019-08-30 21:33:04', '2020-04-20 19:15:58', '9', '304', null, null, null, '2020-01-19', '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('86', 'test22', '$2a$10$XC.AyL7IbJ.wYXuLg4uSP.Sci.UEI.0VPN4e4pVAAsKBiBBMSpLiy', null, '13211233445', null, '87', '2019-08-30 22:14:43', '2020-04-20 19:15:58', '0', '111', null, null, '2019-08-29', null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('87', 'zhouyang2', '$2a$10$QjcaA6JvKmGgHT6ruqUzl.xn71dYHlMdh.RoNAeR2SQqAuKqVQ1Iu', null, '13408480999', null, '87', '2019-09-12 20:56:51', '2020-04-20 19:15:58', '0', '1', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('88', 'test3211', '$2a$10$ajnnYrT1pfUrW9PmIFIgAeltbudieGaUsJPXuCyWEKQ6WGdmLJIYe', null, '13290932943', null, '28', '2019-09-19 23:02:29', '2020-04-20 19:15:58', '0', '2322323', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('89', 'nonoyet', '$2a$10$pL/XPfeHjCimrKpjJB1oz.9EEiNi4GhMBMi1fNvciNh7ntaJ/47eS', null, '13111111112', null, '79', '2019-10-27 20:26:05', '2020-04-21 10:19:11', '0', 't12', null, null, '2019-10-27', null, '0', '0', '2020-07-19 00:00:00');
INSERT INTO `sys_user` VALUES ('90', 'tester1', '$2a$10$tBzPCSfebc9v/kRtzw11jubre9NGDqWkIBDp8hDpZNV4bxoz/u4Ze', null, '13466655555', null, '84', '2019-10-31 21:48:03', '2020-04-20 19:15:58', '0', '501', null, null, '2019-10-30', null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('91', 'tester2', '$2a$10$4.6.YG75yHZyy0b0fCrD.uovd/ukR0azcnYXSDkBkdVbSS0z/Pl.q', null, '13444455555', null, '86', '2019-10-31 21:48:58', '2020-04-20 19:15:58', '0', '502', null, null, '2019-10-30', null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('93', 'aaaaa', '$2a$10$JzmAItZgUgY/bbilaLY2OO2jfTkg5R3.vpxzf2xNgojUSATXsPM6e', null, '13407766555', null, '87', '2019-11-07 14:51:03', '2020-04-20 19:15:58', '9', '432', null, null, '2019-11-06', '2020-01-19', '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('94', 'bug复现1', '$2a$10$NWBTOBr7RVOd2H//.OaQbeZ17nc/83NWRIYaDoMAL6Q6Y31csRfzS', null, '13408888888', null, '97', '2019-11-10 19:23:39', '2020-04-20 19:15:58', '0', '401', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('95', 'bug复现2', '$2a$10$T062BDS44zG9PAc/5uVhQO6sxT.nK3eDSWwtIJto6RVNNG8LW52eq', null, '13408777666', null, '98', '2019-11-10 19:24:10', '2020-04-20 19:15:58', '0', '402', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('96', 'bug复现3', '$2a$10$CmP4CGSmga9B1lP73ydDu.O.U58y/j88.bXwvDVZZ8itFXfm65fUe', null, '13466655551', null, '99', '2019-11-10 19:24:42', '2020-04-20 19:15:58', '0', '403', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('97', 'nonoyet_cd', '$2a$10$UceZt0wcdHpjSsyMu/K.0Oec4IqMY6xqiscVJK4uctKZZ.YrITpMu', null, '13111111113', null, '91', '2019-12-01 18:07:45', '2020-05-07 16:14:28', '0', 'nonoyet_cd', null, null, null, null, '0', '0', '2020-08-05 00:00:00');
INSERT INTO `sys_user` VALUES ('98', 'nonoyet_nc', '$2a$10$Y6/LDqGpanAQ6.zk2JJB0Ou4IzhDoo2fxk3Hi5u8Uaz/3/G3tNvHy', null, '13111111114', null, '86', '2019-12-01 18:08:37', '2020-04-23 23:31:47', '0', 'nonoyet_nc', null, null, null, null, '1', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('100', 'test123', '$2a$10$9MzSM4X6SbrC02teY3WDLuAPuogf7/pbob4Gq7u2nP40mF6Xx4ZM6', null, '13477788888', null, '80', '2019-12-01 21:22:00', '2020-04-20 19:15:58', '9', '411', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('101', 'test124', '$2a$10$SP/h55SoC6Ey4xsYhAXfDOi3VYpKP7joYdQ8JGTFpdugnA.qR12A.', null, '13488888777', null, '28', '2019-12-01 21:22:45', '2020-04-20 19:15:58', '9', '412', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('102', 'zhouyang3', '$2a$10$/b0YkdalvarnTOLxtk6h3OSbxzIm0rUfmnikkr2uModtsS6tlZVue', null, '13455566666', null, '87', '2019-12-01 21:51:25', '2020-04-20 19:15:58', '0', '413', null, null, '2019-11-26', null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('106', 'test321', '$2a$10$Hqp4at7qDDX6GWPSMxHM8.Jb4bLK8wsxU28EzgzY45EdhKyheOlxq', null, '13444445555', null, '87', '2019-12-12 19:00:10', '2020-04-20 19:15:58', '0', '444', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('107', 'test666', '$2a$10$0bSANjnaowpJ2uhksDIN9.IlVX/tTTpaH1wZ/wDkFbFxPfe8sPi3W', null, '13409955555', null, '87', '2019-12-12 19:54:59', '2020-04-20 19:15:58', '0', '10099', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('108', 'test8888', '$2a$10$/qwjj47j4rtVUgmnkqhRI.6oklFH7loT9Wgk3AgWNeGMkO1FLw6Be', null, '13422200001', null, '87', '2019-12-29 19:38:05', '2020-04-20 19:15:58', '0', '10333', null, null, '2019-12-16', null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('110', 'test1000', '$2a$10$OrQxSeELwK/l3/36qzrrguMkVJIhDtmmaIx8or7MQRAveECUKDy1q', null, '13422223444', null, '84', '2020-01-02 16:10:37', '2020-04-20 19:15:58', '0', '20001', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('111', 'zhangxin001', '$2a$10$D7sOXsuY3q/Y0mapTPnWeOClfs6dH.wtxFaPJjg0hUv.qU9YvWqwe', null, '17761216235', null, '43', '2020-02-17 21:10:32', '2020-04-20 19:15:58', '0', '01232533', null, null, '2020-02-17', null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('112', 'zhangxin002', '$2a$10$gHOK8HwP2ebcuUoMw.PwR.CmgPEYBNeh.Bo6RJOntbej3w.JCVOvW', null, '17761216237', null, '87', '2020-02-17 21:14:29', '2020-04-20 19:15:58', '0', '17761216237', null, null, '2020-02-17', null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('113', 'zhouyang1', '$2a$10$O39IADW8RB.CgfmBVhU4KOfdkZ/dWyLwGRZ1yKcUe0uUihqGzoaFC', null, '13455599900', null, '87', '2020-03-08 10:29:03', '2020-04-21 11:03:46', '0', '10302', null, null, null, null, '0', '0', '2020-07-20 00:00:00');
INSERT INTO `sys_user` VALUES ('114', 'zhouyang6', '$2a$10$/FwH7bPoO90fsPfbTFr1N.C8XkreQY.tfTO1wIru49OXMA2MKCmC.', null, '13516677788', null, '87', '2020-03-08 10:30:03', '2020-04-23 20:01:08', '0', '10303', null, null, null, null, '1', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('115', 'zhouyang7', '$2a$10$X2aTfNxq12xvX.HI0dMVHe7Ato5cFlWPyzs6VOkUb3RxbU4DhCekS', null, '13455566744', null, '87', '2020-03-08 10:30:38', '2020-04-20 19:15:58', '9', '10304', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('116', 'zhouyang88', '$2a$10$ZapjB5Z5UrNoFiBnu18EHOvjyXvgWW0jw0haM03tKvFxvBJZwLXhW', null, '13488866661', null, '87', '2020-03-09 21:32:09', '2020-04-21 11:05:12', '0', '10388', null, null, null, null, '0', '0', '2020-07-20 00:00:00');
INSERT INTO `sys_user` VALUES ('117', 'zhouyang99', '$2a$10$MtBYZ9CFTqZgJZ2GMR0Eg.TJ8ZmQs5gY9UdnJrKz0eYJYO.qaR8aC', null, '13408587888', null, '87', '2020-03-16 20:14:04', '2020-04-20 21:30:44', '0', '10399', null, null, null, null, '0', '0', '2020-07-19 00:00:00');
INSERT INTO `sys_user` VALUES ('118', 'test122', '$2a$10$WDSKrJ8GSxHqEZ.XX88SweoipL1w3QzgmIOArv42spYE1ThIBJrda', null, '15911113456', null, '80', '2020-03-18 21:32:49', '2020-04-20 19:15:58', '0', '1111111111111', null, null, '2020-03-18', null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('120', 'zhouyang400', '$2a$10$LZxeQ/9t5YqkxbcrtXTJmeignUe3IzonP3qSaTsi5BIpoYk9Akw9u', null, '13477788881', null, '79', '2020-03-19 19:17:35', '2020-04-20 19:15:58', '0', '10400', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('121', 'hanqiang', '$2a$10$jFgB6NGkiPZHxZ6a6clP9.uBAa/ouT6auEozq.L5oaUH/YEtl52u6', null, '13688410417', null, '80', '2020-03-22 20:26:26', '2020-04-23 17:18:02', '0', 'N0023132142', null, null, null, null, '0', '0', '2020-07-22 00:00:00');
INSERT INTO `sys_user` VALUES ('122', 'testpufa', '$2a$10$19ciqcAFJEAGZd4KUa7ziO.Ktnqq7.SquBb1tUKhw4Tp2rt1bP56u', null, '15922224862', null, '80', '2020-03-24 08:58:59', '2020-04-20 19:15:58', '0', '1111111', null, null, null, null, '0', '1', '2020-04-21 00:00:00');
INSERT INTO `sys_user` VALUES ('123', 'wanghua', '$2a$10$UQaZm0plY1ZvxETAwFXNDevzqeaQfqkqMZ1tzO.V46W8pjrJfJqKK', null, '15923364150', null, '86', '2020-03-25 20:10:05', '2020-04-21 11:25:41', '0', '100107', null, null, null, null, '0', '0', '2020-07-20 00:00:00');
INSERT INTO `sys_user` VALUES ('124', 'monkey', '$2a$10$7wlzA71k5zFCe/1XSuctQupvRd6dkkZjbZBJmhV/mjSP4TlfLC7tO', null, '18113164967', null, '84', '2020-04-19 14:42:06', '2020-05-22 13:58:54', '0', '1234', null, null, null, null, '0', '0', '2020-07-19 00:00:00');
INSERT INTO `sys_user` VALUES ('125', '刘娟', '$2a$10$hSG.tSGQNIK/a/wmmJdtbOzzpTsFzRfE/xQdMovR6YCSl9M.oQNpy', null, '13683427178', null, '80', '2020-04-19 17:56:00', '2020-04-24 13:24:46', '0', '001', null, null, null, null, '0', '0', '2020-07-23 00:00:00');
INSERT INTO `sys_user` VALUES ('126', 'zhouyang123', '$2a$10$oVZryzwGukgcw8lGxy2J..wahWg8DhcYnfcGFSObCJxyfpvHS4zmi', null, '13488855444', null, '87', '2020-05-03 10:13:00', null, '0', '10315', null, null, null, null, '0', '0', '2020-08-01 00:00:00');
INSERT INTO `sys_user` VALUES ('127', '南充数据管理员', '$2a$10$Fttkug2Fmu/ANpHQgNs5VuCPE6BKfxFOjAq1uo1RQeBeOFRnkH7Sy', null, '13466655556', null, '87', '2020-05-03 13:26:24', null, '0', '10316', null, null, null, null, '0', '0', '2020-08-01 00:00:00');
INSERT INTO `sys_user` VALUES ('128', '成都数据管理员', '$2a$10$bQmoJHZShLNmgLgPb/pizO91WqKRHgf5Vrl86Sa4AsaHO8zRVrqpu', null, '13477755555', null, '91', '2020-05-03 13:26:55', null, '0', '10317', null, null, null, null, '0', '0', '2020-08-01 00:00:00');
INSERT INTO `sys_user` VALUES ('129', 'zhouyang124', '$2a$10$EidewSDOjfUAlko8qgG57eTTnjeBjZU1sEgGIwLILZgW6sOCoJNjK', null, '13556655555', null, '95', '2020-05-06 20:57:26', null, '0', '10318', null, null, null, null, '0', '0', '2020-08-04 00:00:00');
INSERT INTO `sys_user` VALUES ('130', 'xujichuan', '$2a$10$e9WGaG1WKQ11kTYG1E8Qn.EZsaEdBhRF/7MkDiaNFkEg6cIGXupky', null, '15108305893', null, '84', '2020-05-07 15:12:26', null, '0', '11224455', null, null, '2020-05-01', null, '0', '0', '2020-08-05 00:00:00');
INSERT INTO `sys_user` VALUES ('131', 'lzq', '$2a$10$iT6XLPzkhUBg0ni9NqsFDO3B5HVe3ChD2ESiyE7nlMj4cofHoux26', null, '13683427179', null, '79', '2020-05-08 23:06:05', null, '0', '0015', null, null, null, null, '0', '0', '2020-08-06 00:00:00');
INSERT INTO `sys_user` VALUES ('132', '亚瓦西', '$2a$10$7wlzA71k5zFCe/1XSuctQupvRd6dkkZjbZBJmhV/mjSP4TlfLC7tO', null, '18190910701', null, '84', '2020-05-22 13:54:16', '2020-05-22 13:54:24', '0', null, null, null, null, null, '0', '0', null);
INSERT INTO `sys_user` VALUES ('133', '吴赟', '$2a$10$7wlzA71k5zFCe/1XSuctQupvRd6dkkZjbZBJmhV/mjSP4TlfLC7tO', null, '17396219083', null, null, '2020-05-26 03:29:31', '2020-05-26 03:29:35', '0', null, null, null, null, null, '0', '0', null);

-- ----------------------------
-- Table structure for sys_user_omni
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_omni`;
CREATE TABLE `sys_user_omni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `omni_template_id` int(11) DEFAULT NULL COMMENT '座席模板id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '0:未删除，1:已删除',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COMMENT='呼叫中心-用户座席关系表';

-- ----------------------------
-- Records of sys_user_omni
-- ----------------------------
INSERT INTO `sys_user_omni` VALUES ('11', '9', '1', '1', '74', '2019-08-12 19:03:55', '74', '2019-11-03 21:28:15');
INSERT INTO `sys_user_omni` VALUES ('12', '9', '74', '1', '74', '2019-08-12 19:34:30', '74', '2019-11-03 21:28:15');
INSERT INTO `sys_user_omni` VALUES ('13', '10', '78', '1', '74', '2019-08-12 19:46:09', '74', '2019-11-03 21:18:57');
INSERT INTO `sys_user_omni` VALUES ('14', '11', '74', '1', '74', '2019-08-15 21:18:55', '74', '2019-11-14 23:27:00');
INSERT INTO `sys_user_omni` VALUES ('15', '11', '74', '1', '74', '2019-08-17 21:41:33', '74', '2019-11-14 23:27:00');
INSERT INTO `sys_user_omni` VALUES ('16', '11', '74', '1', '74', '2019-08-17 21:44:18', '74', '2019-11-14 23:27:00');
INSERT INTO `sys_user_omni` VALUES ('17', '10', '78', '1', '74', '2019-08-17 21:45:13', '74', '2019-11-03 21:18:57');
INSERT INTO `sys_user_omni` VALUES ('18', '10', '78', '1', '74', '2019-08-17 21:45:47', '74', '2019-11-03 21:18:57');
INSERT INTO `sys_user_omni` VALUES ('19', '10', '79', '1', '74', '2019-08-17 21:45:59', '74', '2019-11-03 21:18:57');
INSERT INTO `sys_user_omni` VALUES ('20', '10', '70', '1', '74', '2019-08-17 21:46:16', '74', '2019-11-03 21:18:57');
INSERT INTO `sys_user_omni` VALUES ('21', '11', '74', '1', '74', '2019-08-17 22:32:37', '74', '2019-11-14 23:27:00');
INSERT INTO `sys_user_omni` VALUES ('22', '11', '74', '1', '74', '2019-08-17 22:32:58', '74', '2019-11-14 23:27:00');
INSERT INTO `sys_user_omni` VALUES ('23', '11', '73', '1', '74', '2019-08-18 09:09:24', '74', '2019-11-14 23:27:00');
INSERT INTO `sys_user_omni` VALUES ('24', '11', '74', '1', '74', '2019-08-18 09:10:34', '74', '2019-11-14 23:27:00');
INSERT INTO `sys_user_omni` VALUES ('25', '12', '70', '1', '74', '2019-08-18 09:17:42', '74', '2020-02-16 11:59:06');
INSERT INTO `sys_user_omni` VALUES ('26', '9', '1', '1', '1', '2019-08-20 09:36:59', '74', '2019-11-03 21:28:15');
INSERT INTO `sys_user_omni` VALUES ('27', '11', '74', '1', '74', '2019-08-20 18:16:58', '74', '2019-11-14 23:27:00');
INSERT INTO `sys_user_omni` VALUES ('28', '11', '74', '1', '74', '2019-08-20 18:17:30', '74', '2019-11-14 23:27:00');
INSERT INTO `sys_user_omni` VALUES ('29', '13', '71', '0', '74', '2019-09-19 23:14:36', '74', '2019-09-19 23:14:36');
INSERT INTO `sys_user_omni` VALUES ('30', '9', '1', '1', '1', '2019-09-24 22:52:36', '74', '2019-11-03 21:28:15');
INSERT INTO `sys_user_omni` VALUES ('31', '14', '69', '1', '1', '2019-09-25 01:36:00', '1', '2019-09-25 01:36:22');
INSERT INTO `sys_user_omni` VALUES ('32', '14', '69', '0', '1', '2019-09-25 01:36:22', '1', '2019-09-25 01:36:22');
INSERT INTO `sys_user_omni` VALUES ('33', '11', '74', '1', '74', '2019-09-25 21:56:38', '74', '2019-11-14 23:27:00');
INSERT INTO `sys_user_omni` VALUES ('34', '15', '74', '1', '74', '2019-09-25 21:59:04', '74', '2019-09-25 23:07:57');
INSERT INTO `sys_user_omni` VALUES ('35', '11', '74', '1', '74', '2019-09-25 23:08:24', '74', '2019-11-14 23:27:00');
INSERT INTO `sys_user_omni` VALUES ('36', '9', '1', '1', '1', '2019-09-26 13:29:00', '74', '2019-11-03 21:28:15');
INSERT INTO `sys_user_omni` VALUES ('37', '16', null, '1', '74', '2019-10-02 13:36:02', '74', '2019-10-02 13:36:48');
INSERT INTO `sys_user_omni` VALUES ('38', '17', null, '1', '74', '2019-10-02 13:36:21', '74', '2019-10-02 13:36:42');
INSERT INTO `sys_user_omni` VALUES ('39', '11', '74', '1', '74', '2019-11-03 21:16:14', '74', '2019-11-14 23:27:00');
INSERT INTO `sys_user_omni` VALUES ('40', '9', '1', '1', '74', '2019-11-03 21:27:27', '74', '2019-11-03 21:28:15');
INSERT INTO `sys_user_omni` VALUES ('41', '9', '1', '0', '74', '2019-11-03 21:28:15', '74', '2019-11-03 21:28:15');
INSERT INTO `sys_user_omni` VALUES ('42', '18', '89', '0', '89', '2019-11-14 23:02:38', '89', '2019-11-14 23:02:38');
INSERT INTO `sys_user_omni` VALUES ('43', '19', '73', '1', '74', '2019-11-14 23:12:48', '74', '2019-11-14 23:17:23');
INSERT INTO `sys_user_omni` VALUES ('44', '19', '73', '1', '74', '2019-11-14 23:17:04', '74', '2019-11-14 23:17:23');
INSERT INTO `sys_user_omni` VALUES ('45', '20', '72', '1', '74', '2019-11-14 23:18:01', '74', '2019-11-14 23:24:58');
INSERT INTO `sys_user_omni` VALUES ('46', '21', '89', '0', '89', '2019-11-14 23:22:58', '89', '2019-11-14 23:22:58');
INSERT INTO `sys_user_omni` VALUES ('47', '22', '89', '0', '89', '2019-11-14 23:23:22', '89', '2019-11-14 23:23:22');
INSERT INTO `sys_user_omni` VALUES ('48', '20', '72', '0', '74', '2019-11-14 23:24:58', '74', '2019-11-14 23:24:58');
INSERT INTO `sys_user_omni` VALUES ('49', '23', '73', '1', '74', '2019-11-14 23:25:43', '74', '2019-11-14 23:26:09');
INSERT INTO `sys_user_omni` VALUES ('50', '24', '73', '1', '74', '2019-11-14 23:26:32', '74', '2019-12-12 20:50:05');
INSERT INTO `sys_user_omni` VALUES ('51', '25', '74', '1', '74', '2019-11-14 23:27:21', '117', '2020-04-18 18:32:23');
INSERT INTO `sys_user_omni` VALUES ('52', '26', '69', '0', '1', '2019-11-20 21:41:24', '1', '2019-11-20 21:41:24');
INSERT INTO `sys_user_omni` VALUES ('53', '27', '72', '1', '74', '2019-12-05 19:21:02', '74', '2019-12-05 19:26:02');
INSERT INTO `sys_user_omni` VALUES ('54', '27', '72', '0', '74', '2019-12-05 19:26:02', '74', '2019-12-05 19:26:02');
INSERT INTO `sys_user_omni` VALUES ('55', '28', '90', '1', '90', '2019-12-06 22:39:57', '90', '2019-12-06 22:40:25');
INSERT INTO `sys_user_omni` VALUES ('56', '28', '90', '0', '90', '2019-12-06 22:40:25', '90', '2019-12-06 22:40:25');
INSERT INTO `sys_user_omni` VALUES ('57', '29', '106', '0', '74', '2019-12-12 19:02:12', '74', '2019-12-12 19:02:12');
INSERT INTO `sys_user_omni` VALUES ('58', '24', '73', '0', '74', '2019-12-12 20:50:05', '74', '2019-12-12 20:50:05');
INSERT INTO `sys_user_omni` VALUES ('59', '25', '74', '1', '74', '2019-12-12 21:01:05', '117', '2020-04-18 18:32:23');
INSERT INTO `sys_user_omni` VALUES ('60', '30', '80', '0', '74', '2019-12-22 20:11:18', '74', '2019-12-22 20:11:18');
INSERT INTO `sys_user_omni` VALUES ('61', '31', '42', '0', '89', '2019-12-23 21:53:37', '89', '2019-12-23 21:53:37');
INSERT INTO `sys_user_omni` VALUES ('62', '32', null, '1', '89', '2020-01-05 00:41:16', '89', '2020-01-05 00:42:10');
INSERT INTO `sys_user_omni` VALUES ('63', '25', '74', '1', '74', '2020-02-16 11:53:24', '117', '2020-04-18 18:32:23');
INSERT INTO `sys_user_omni` VALUES ('64', '12', '70', '1', '74', '2020-02-16 11:56:18', '74', '2020-02-16 11:59:06');
INSERT INTO `sys_user_omni` VALUES ('65', '12', '70', '0', '74', '2020-02-16 11:59:06', '74', '2020-02-16 11:59:06');
INSERT INTO `sys_user_omni` VALUES ('66', '25', '74', '1', '74', '2020-02-16 11:59:14', '117', '2020-04-18 18:32:23');
INSERT INTO `sys_user_omni` VALUES ('67', '25', '74', '1', '74', '2020-02-16 14:41:27', '117', '2020-04-18 18:32:23');
INSERT INTO `sys_user_omni` VALUES ('68', '33', '106', '0', '74', '2020-02-18 14:12:55', '74', '2020-02-18 14:12:55');
INSERT INTO `sys_user_omni` VALUES ('69', '34', '102', '0', '74', '2020-02-18 14:13:23', '74', '2020-02-18 14:13:23');
INSERT INTO `sys_user_omni` VALUES ('70', '35', '114', '0', '114', '2020-03-08 10:35:23', '114', '2020-03-08 10:35:23');
INSERT INTO `sys_user_omni` VALUES ('71', '36', '115', '0', '114', '2020-03-08 10:35:43', '114', '2020-03-08 10:35:43');
INSERT INTO `sys_user_omni` VALUES ('72', '37', '113', '0', '114', '2020-03-08 10:36:06', '114', '2020-03-08 10:36:06');
INSERT INTO `sys_user_omni` VALUES ('73', '38', '116', '0', '116', '2020-03-09 23:17:41', '116', '2020-03-09 23:17:41');
INSERT INTO `sys_user_omni` VALUES ('74', '39', '117', '1', '117', '2020-03-16 20:44:26', '117', '2020-04-18 18:32:04');
INSERT INTO `sys_user_omni` VALUES ('75', '25', '74', '1', '117', '2020-04-18 18:28:58', '117', '2020-04-18 18:32:23');
INSERT INTO `sys_user_omni` VALUES ('76', '39', '117', '1', '117', '2020-04-18 18:29:10', '117', '2020-04-18 18:32:04');
INSERT INTO `sys_user_omni` VALUES ('77', '39', '117', '1', '117', '2020-04-18 18:30:57', '117', '2020-04-18 18:32:04');
INSERT INTO `sys_user_omni` VALUES ('78', '39', '117', '0', '117', '2020-04-18 18:32:04', '117', '2020-04-18 18:32:04');
INSERT INTO `sys_user_omni` VALUES ('79', '25', '74', '0', '117', '2020-04-18 18:32:23', '117', '2020-04-18 18:32:23');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('5', '15');
INSERT INTO `sys_user_role` VALUES ('6', '16');
INSERT INTO `sys_user_role` VALUES ('9', '22');
INSERT INTO `sys_user_role` VALUES ('18', '22');
INSERT INTO `sys_user_role` VALUES ('27', '22');
INSERT INTO `sys_user_role` VALUES ('32', '17');
INSERT INTO `sys_user_role` VALUES ('39', '23');
INSERT INTO `sys_user_role` VALUES ('40', '20');
INSERT INTO `sys_user_role` VALUES ('41', '24');
INSERT INTO `sys_user_role` VALUES ('42', '23');
INSERT INTO `sys_user_role` VALUES ('44', '24');
INSERT INTO `sys_user_role` VALUES ('52', '1');
INSERT INTO `sys_user_role` VALUES ('52', '33');
INSERT INTO `sys_user_role` VALUES ('53', '27');
INSERT INTO `sys_user_role` VALUES ('54', '27');
INSERT INTO `sys_user_role` VALUES ('55', '28');
INSERT INTO `sys_user_role` VALUES ('56', '31');
INSERT INTO `sys_user_role` VALUES ('57', '32');
INSERT INTO `sys_user_role` VALUES ('58', '33');
INSERT INTO `sys_user_role` VALUES ('59', '34');
INSERT INTO `sys_user_role` VALUES ('60', '35');
INSERT INTO `sys_user_role` VALUES ('61', '39');
INSERT INTO `sys_user_role` VALUES ('62', '43');
INSERT INTO `sys_user_role` VALUES ('63', '42');
INSERT INTO `sys_user_role` VALUES ('64', '37');
INSERT INTO `sys_user_role` VALUES ('65', '36');
INSERT INTO `sys_user_role` VALUES ('66', '31');
INSERT INTO `sys_user_role` VALUES ('67', '30');
INSERT INTO `sys_user_role` VALUES ('68', '34');
INSERT INTO `sys_user_role` VALUES ('69', '23');
INSERT INTO `sys_user_role` VALUES ('70', '37');
INSERT INTO `sys_user_role` VALUES ('71', '37');
INSERT INTO `sys_user_role` VALUES ('72', '37');
INSERT INTO `sys_user_role` VALUES ('73', '37');
INSERT INTO `sys_user_role` VALUES ('74', '1');
INSERT INTO `sys_user_role` VALUES ('78', '1');
INSERT INTO `sys_user_role` VALUES ('81', '24');
INSERT INTO `sys_user_role` VALUES ('84', '24');
INSERT INTO `sys_user_role` VALUES ('85', '24');
INSERT INTO `sys_user_role` VALUES ('86', '31');
INSERT INTO `sys_user_role` VALUES ('87', '1');
INSERT INTO `sys_user_role` VALUES ('88', '20');
INSERT INTO `sys_user_role` VALUES ('88', '23');
INSERT INTO `sys_user_role` VALUES ('89', '1');
INSERT INTO `sys_user_role` VALUES ('90', '1');
INSERT INTO `sys_user_role` VALUES ('91', '31');
INSERT INTO `sys_user_role` VALUES ('93', '1');
INSERT INTO `sys_user_role` VALUES ('93', '20');
INSERT INTO `sys_user_role` VALUES ('94', '30');
INSERT INTO `sys_user_role` VALUES ('95', '24');
INSERT INTO `sys_user_role` VALUES ('96', '24');
INSERT INTO `sys_user_role` VALUES ('97', '23');
INSERT INTO `sys_user_role` VALUES ('97', '24');
INSERT INTO `sys_user_role` VALUES ('98', '31');
INSERT INTO `sys_user_role` VALUES ('98', '35');
INSERT INTO `sys_user_role` VALUES ('100', '23');
INSERT INTO `sys_user_role` VALUES ('101', '23');
INSERT INTO `sys_user_role` VALUES ('102', '1');
INSERT INTO `sys_user_role` VALUES ('106', '24');
INSERT INTO `sys_user_role` VALUES ('107', '1');
INSERT INTO `sys_user_role` VALUES ('108', '24');
INSERT INTO `sys_user_role` VALUES ('110', '24');
INSERT INTO `sys_user_role` VALUES ('111', '20');
INSERT INTO `sys_user_role` VALUES ('112', '20');
INSERT INTO `sys_user_role` VALUES ('113', '1');
INSERT INTO `sys_user_role` VALUES ('114', '1');
INSERT INTO `sys_user_role` VALUES ('115', '1');
INSERT INTO `sys_user_role` VALUES ('116', '1');
INSERT INTO `sys_user_role` VALUES ('117', '1');
INSERT INTO `sys_user_role` VALUES ('118', '20');
INSERT INTO `sys_user_role` VALUES ('120', '1');
INSERT INTO `sys_user_role` VALUES ('121', '1');
INSERT INTO `sys_user_role` VALUES ('122', '14');
INSERT INTO `sys_user_role` VALUES ('123', '24');
INSERT INTO `sys_user_role` VALUES ('124', '1');
INSERT INTO `sys_user_role` VALUES ('125', '37');
INSERT INTO `sys_user_role` VALUES ('126', '24');
INSERT INTO `sys_user_role` VALUES ('127', '23');
INSERT INTO `sys_user_role` VALUES ('128', '23');
INSERT INTO `sys_user_role` VALUES ('129', '23');
INSERT INTO `sys_user_role` VALUES ('130', '1');
INSERT INTO `sys_user_role` VALUES ('131', '1');

-- ----------------------------
-- Table structure for user_answer
-- ----------------------------
DROP TABLE IF EXISTS `user_answer`;
CREATE TABLE `user_answer` (
  `user_answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `practice_id` int(11) DEFAULT NULL COMMENT '练习库id',
  `exam_id` int(11) DEFAULT NULL COMMENT '考试id',
  `subjects_id` int(11) DEFAULT NULL COMMENT '题目id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `user_answer_times` int(11) DEFAULT NULL COMMENT '次数',
  `user_answer_version` varchar(8) DEFAULT '1' COMMENT '版本',
  `user_answer_code` varchar(2048) DEFAULT NULL COMMENT '用户答案',
  `user_answer_grade` varchar(8) DEFAULT '0' COMMENT '分数',
  `user_answer_is_sure` varchar(4) DEFAULT '0' COMMENT '是否正确：1是0否 （问答和填空专属）',
  `user_answer_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_answer_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `user_answer_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `user_answer_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`user_answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户答案';

-- ----------------------------
-- Records of user_answer
-- ----------------------------
INSERT INTO `user_answer` VALUES ('1', '1', null, '2', '1', null, '1', 'B', '0', '0', '2020-05-16 12:17:04', '2020-05-16 12:17:04', null, null);
INSERT INTO `user_answer` VALUES ('2', '1', null, '2', '2', null, '1', 'A', '0', '0', '2020-05-16 13:14:46', '2020-05-16 13:14:46', null, null);
INSERT INTO `user_answer` VALUES ('3', '1', null, '2', '2', null, '1', 'C', '0', '0', '2020-05-18 23:07:25', '2020-05-18 23:07:27', null, null);

-- ----------------------------
-- Table structure for user_credit
-- ----------------------------
DROP TABLE IF EXISTS `user_credit`;
CREATE TABLE `user_credit` (
  `user_credit_id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) DEFAULT NULL COMMENT '卷子id',
  `exam_id` int(11) DEFAULT NULL COMMENT '考试id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `user_credit_access` varchar(8) DEFAULT '0' COMMENT '通过学分',
  `user_credit_status` varchar(2) DEFAULT '0' COMMENT '状态：0未考 1已考',
  `user_credit_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_credit_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `user_credit_create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `user_credit_update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `user_credit_is_delete` int(11) DEFAULT NULL COMMENT '是否删除：0否1是',
  PRIMARY KEY (`user_credit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户学分';

-- ----------------------------
-- Records of user_credit
-- ----------------------------

-- ----------------------------
-- Table structure for user_practice
-- ----------------------------
DROP TABLE IF EXISTS `user_practice`;
CREATE TABLE `user_practice` (
  `user_practice_id` int(11) NOT NULL AUTO_INCREMENT,
  `practice_id` int(11) DEFAULT NULL COMMENT '练习id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `user_practice_create_by` int(255) DEFAULT NULL COMMENT '创建人',
  `user_practice_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`user_practice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_practice
-- ----------------------------
INSERT INTO `user_practice` VALUES ('1', '1', '1', null, '2020-05-16 11:58:58');
INSERT INTO `user_practice` VALUES ('2', '1', '2', null, '2020-05-16 13:14:06');
