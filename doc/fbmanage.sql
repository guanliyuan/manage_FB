/*
Navicat MySQL Data Transfer

Source Server         : FB2017_TEST
Source Server Version : 50173
Source Host           : 47.97.202.58:3306
Source Database       : fbmanage

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-03-26 15:03:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for expense
-- ----------------------------
DROP TABLE IF EXISTS `expense`;
CREATE TABLE `expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_title` varchar(30) DEFAULT NULL COMMENT '报销账单标题',
  `item_money` varchar(30) DEFAULT NULL COMMENT '费用项目',
  `item_type` varchar(30) DEFAULT NULL COMMENT '类别',
  `money_items` decimal(10,5) DEFAULT NULL COMMENT '金额',
  `money_type` int(2) DEFAULT NULL COMMENT '付款方式',
  `job_leader` varchar(30) DEFAULT NULL COMMENT '部门负责人',
  `time` datetime DEFAULT NULL COMMENT '申请时间',
  `head_leader` varchar(20) DEFAULT NULL COMMENT '单位负责人',
  `accountant` varchar(20) DEFAULT NULL COMMENT '会计',
  `cashier` decimal(10,5) unsigned DEFAULT NULL COMMENT '出纳',
  `money_get_name` varchar(20) DEFAULT NULL COMMENT '领款人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='费用报销申请';

-- ----------------------------
-- Records of expense
-- ----------------------------

-- ----------------------------
-- Table structure for fb_work
-- ----------------------------
DROP TABLE IF EXISTS `fb_work`;
CREATE TABLE `fb_work` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `daywork` varchar(255) DEFAULT NULL COMMENT '今日工作',
  `daynotwork` varchar(255) DEFAULT NULL COMMENT '今日未完成工作',
  `coordinate` varchar(255) DEFAULT NULL COMMENT '需要协调的工作',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `work_type_id` int(15) NOT NULL COMMENT '工作类型1：日报2：周报3：月报4：年度工作汇报5：季度汇报6：技术汇报7：拜访记录8：业绩日报',
  `accessory` varchar(255) DEFAULT NULL COMMENT 'work 附件',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='日志表工作汇总';

-- ----------------------------
-- Records of fb_work
-- ----------------------------
INSERT INTO `fb_work` VALUES ('1', null, null, null, null, '1', null, null);

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '商品名称',
  `specification` varchar(30) DEFAULT NULL COMMENT '规格',
  `money` decimal(20,5) DEFAULT NULL COMMENT '价格',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `money_count` double DEFAULT NULL COMMENT '总价',
  `user_id` int(30) unsigned zerofill DEFAULT NULL COMMENT '采购人ID',
  `time` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of good
-- ----------------------------

-- ----------------------------
-- Table structure for labor
-- ----------------------------
DROP TABLE IF EXISTS `labor`;
CREATE TABLE `labor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_time` datetime DEFAULT NULL COMMENT '入职时间',
  `dimission_time` datetime DEFAULT NULL COMMENT '离职时间',
  `job` varchar(25) DEFAULT NULL COMMENT '所属岗位',
  `job_connect` varchar(25) DEFAULT NULL COMMENT '交接人工号',
  `labor_start_time` datetime DEFAULT NULL COMMENT '劳动合同开始时间',
  `labor_end_time` datetime DEFAULT NULL COMMENT '劳动合同结束时间',
  `reasons` varchar(20) DEFAULT NULL,
  `job_items` varchar(30) DEFAULT NULL COMMENT '交接事项',
  `approver_id` varchar(20) DEFAULT NULL COMMENT '审批人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='离职表';

-- ----------------------------
-- Records of labor
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(20) NOT NULL COMMENT '会议公告标题',
  `notice_body` varchar(25) NOT NULL COMMENT '会议正文',
  `time` datetime DEFAULT NULL COMMENT '会议发布时间',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会议公告';

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL COMMENT '标题',
  `proposer` varchar(25) DEFAULT NULL COMMENT '申请人',
  `department` varchar(25) DEFAULT NULL COMMENT '申请部门',
  `time` datetime DEFAULT NULL,
  `payee` varchar(30) DEFAULT NULL COMMENT '收款单位',
  `payee_name` varchar(30) DEFAULT NULL COMMENT '收款人姓名',
  `bill` varchar(30) DEFAULT NULL COMMENT '账单',
  `deposit` varchar(25) DEFAULT NULL COMMENT '开户行',
  `money` varchar(25) DEFAULT NULL COMMENT '金额',
  `money_type` varchar(25) DEFAULT NULL COMMENT '付款方式',
  `explain` varchar(50) DEFAULT NULL COMMENT '付款说明',
  `job_leader` varchar(20) DEFAULT NULL COMMENT '部门负责人',
  `accountant` varchar(20) DEFAULT NULL COMMENT '会计',
  `cashier` decimal(10,5) unsigned DEFAULT NULL COMMENT '出纳',
  `money_get_name` varchar(20) DEFAULT NULL COMMENT '领款人',
  `time_money` datetime DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='付款申请表';

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES ('1', 'nihao', 'adasd', 'asdla', '2018-03-20 13:57:09', '1', 'admin', 'admin', 'sd', '125', '125', '12', '11', '51', '1.62300', '123', '2018-03-20 13:57:48');

-- ----------------------------
-- Table structure for personnel
-- ----------------------------
DROP TABLE IF EXISTS `personnel`;
CREATE TABLE `personnel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `demand_job` varchar(20) DEFAULT NULL COMMENT '需求岗位',
  `count` int(11) DEFAULT NULL COMMENT '需求人数',
  `education` varchar(20) DEFAULT NULL COMMENT '学历',
  `sex` char(255) DEFAULT NULL COMMENT '性别',
  `major` varchar(20) DEFAULT NULL COMMENT '专业',
  `age_job` int(11) DEFAULT NULL COMMENT '工作年限',
  `start_age` int(11) DEFAULT NULL COMMENT '开始年龄',
  `end_age` int(11) DEFAULT NULL COMMENT '结束年龄',
  `major_need` varchar(25) DEFAULT NULL COMMENT '专业需求',
  `wage` tinyint(4) DEFAULT NULL COMMENT '待遇薪资',
  `rests_need` varchar(25) DEFAULT NULL COMMENT '其他需求',
  `time` datetime DEFAULT NULL COMMENT '交付日期',
  `approver_id` varchar(20) DEFAULT NULL COMMENT '审批人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人事招聘表';

-- ----------------------------
-- Records of personnel
-- ----------------------------

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record_name` varchar(20) DEFAULT NULL COMMENT '会议名称',
  `record_time` datetime DEFAULT NULL COMMENT '会议时间',
  `direct` varchar(25) DEFAULT NULL COMMENT '主持单位',
  `direct_name` varchar(25) DEFAULT NULL COMMENT '主持人',
  `log_name` varchar(25) DEFAULT NULL COMMENT '记录人',
  `reason` varchar(25) DEFAULT NULL COMMENT '理由',
  `record_body` varchar(25) DEFAULT NULL COMMENT '会议内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会议纪要';

-- ----------------------------
-- Records of record
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL COMMENT '姓名',
  `tel` varchar(25) DEFAULT NULL COMMENT '电话',
  `address` varchar(25) DEFAULT NULL COMMENT '地址',
  `mail` varchar(25) DEFAULT NULL COMMENT '邮箱',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `position` varchar(50) DEFAULT NULL COMMENT '职位',
  `job` varchar(25) DEFAULT NULL COMMENT '工号',
  `password` varchar(25) DEFAULT NULL COMMENT '密码（MD5）加密',
  `status` int(10) unsigned zerofill DEFAULT '0000000001' COMMENT '0:删除 1：整除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `job` (`job`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'LCC', '151515', '三墩', '16154820', '男', '2018-03-20', 'java', '123456', '1a2a28a0c9d4852a9018a3124', '0000000001');
INSERT INTO `user` VALUES ('2', 'LCC', '123456', '三墩', '16154820', '男', '2018-03-20', 'java', '150150', '1a2a28a0c9d4852a9018a3124', '0000000001');

-- ----------------------------
-- Table structure for work_type
-- ----------------------------
DROP TABLE IF EXISTS `work_type`;
CREATE TABLE `work_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `worktype` varchar(255) DEFAULT NULL COMMENT '工作类型1：日报2：周报3：月报4：年度工作汇报5：季度汇报6：技术汇报7：拜访记录8：业绩日报',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_type
-- ----------------------------
INSERT INTO `work_type` VALUES ('1', '日报');
INSERT INTO `work_type` VALUES ('2', '周报');
INSERT INTO `work_type` VALUES ('3', '月报');
INSERT INTO `work_type` VALUES ('4', '年度工作汇报');
INSERT INTO `work_type` VALUES ('5', '季度汇报');
INSERT INTO `work_type` VALUES ('6', '技术汇报');
INSERT INTO `work_type` VALUES ('7', '拜访记录');
INSERT INTO `work_type` VALUES ('8', '业绩日报');
