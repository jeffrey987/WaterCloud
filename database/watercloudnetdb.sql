/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : watercloud

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 12/10/2022 09:00:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_articlecategory
-- ----------------------------
DROP TABLE IF EXISTS `cms_articlecategory`;
CREATE TABLE `cms_articlecategory`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键Id',
  `F_FullName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '类别名称',
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '父级Id',
  `F_SortCode` int NOT NULL COMMENT '排序',
  `F_Description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '描述',
  `F_LinkUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '链接地址',
  `F_ImgUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '图片地址',
  `F_SeoTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'SEO标题',
  `F_SeoKeywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'SEO关键字',
  `F_SeoDescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'SEO描述',
  `F_IsHot` tinyint NULL DEFAULT NULL COMMENT '是否热门',
  `F_EnabledMark` tinyint NULL DEFAULT NULL COMMENT '是否启用',
  `F_DeleteMark` tinyint NULL DEFAULT NULL COMMENT '删除标志',
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `cms_articlecategory_key1`(`F_FullName`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_articlecategory
-- ----------------------------

-- ----------------------------
-- Table structure for cms_articlenews
-- ----------------------------
DROP TABLE IF EXISTS `cms_articlenews`;
CREATE TABLE `cms_articlenews`  (
  `F_Id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章主键Id',
  `F_CategoryId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类别Id',
  `F_Title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `F_LinkUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '链接地址',
  `F_ImgUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片地址',
  `F_SeoTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'SEO标题',
  `F_SeoKeywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'SEO关键字',
  `F_SeoDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'SEO描述',
  `F_Tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '标签',
  `F_Zhaiyao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '摘要',
  `F_Description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `F_SortCode` int NULL DEFAULT NULL COMMENT '排序',
  `F_IsTop` tinyint NULL DEFAULT NULL COMMENT '是否置顶',
  `F_IsHot` tinyint NULL DEFAULT NULL COMMENT '是否热门',
  `F_IsRed` tinyint NULL DEFAULT NULL,
  `F_Click` int NULL DEFAULT NULL COMMENT '点击次数',
  `F_Source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '来源',
  `F_Author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作者',
  `F_EnabledMark` tinyint NULL DEFAULT NULL COMMENT '是否启用',
  `F_DeleteMark` tinyint NULL DEFAULT NULL COMMENT '逻辑删除标志',
  `F_CreatorTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  `F_LastModifyTime` datetime NULL DEFAULT NULL COMMENT '最后修改时间',
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `F_DeleteTime` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '删除人',
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `cms_articlenews_key1`(`F_CategoryId`, `F_Title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_articlenews
-- ----------------------------

-- ----------------------------
-- Table structure for crm_order
-- ----------------------------
DROP TABLE IF EXISTS `crm_order`;
CREATE TABLE `crm_order`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `F_OrderCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `F_OrderState` int NOT NULL COMMENT '订单状态(0未完成，1已完成)',
  `F_NeedTime` datetime NULL DEFAULT NULL COMMENT '需求时间',
  `F_ActualTime` datetime NULL DEFAULT NULL COMMENT '实际完成时间',
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `crm_order_key1`(`F_OrderCode`) USING BTREE COMMENT '编号唯一'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of crm_order
-- ----------------------------

-- ----------------------------
-- Table structure for crm_orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `crm_orderdetail`;
CREATE TABLE `crm_orderdetail`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `F_OrderId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_OrderState` int NOT NULL COMMENT '订单状态',
  `F_ProductName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `F_ProductDescription` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品规格',
  `F_ProductUnit` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品单位',
  `F_NeedNum` int NULL DEFAULT NULL COMMENT '需求数量',
  `F_ActualNum` int NULL DEFAULT NULL COMMENT '实际数量',
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_NeedTime` datetime NULL DEFAULT NULL COMMENT '需求时间',
  `F_ActualTime` datetime NULL DEFAULT NULL COMMENT '实际时间',
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `crm_orderdetail_key1`(`F_OrderId`, `F_ProductName`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of crm_orderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for oms_flowinstance
-- ----------------------------
DROP TABLE IF EXISTS `oms_flowinstance`;
CREATE TABLE `oms_flowinstance`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键Id',
  `F_InstanceSchemeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '流程实例模板Id',
  `F_Code` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '实例编号',
  `F_CustomName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '自定义名称',
  `F_ActivityId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '当前节点ID',
  `F_ActivityType` int NULL DEFAULT NULL COMMENT '当前节点类型（0会签节点）',
  `F_ActivityName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '当前节点名称',
  `F_PreviousId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '前一个ID',
  `F_SchemeContent` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '流程模板内容',
  `F_SchemeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '流程模板ID',
  `F_DbName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '数据库名称',
  `F_FrmData` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '表单数据',
  `F_FrmType` int NOT NULL COMMENT '表单类型',
  `F_FrmContentData` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '表单字段',
  `F_FrmContentParse` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '表单参数（冗余）',
  `F_FrmId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '表单ID',
  `F_SchemeType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '流程类型',
  `F_FlowLevel` int NOT NULL DEFAULT 0 COMMENT '等级',
  `F_Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '实例备注',
  `F_IsFinish` int NOT NULL DEFAULT 0 COMMENT '是否完成',
  `F_MakerList` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '执行人',
  `F_OrganizeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '所属部门',
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL COMMENT '有效',
  `F_CreatorTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户主键',
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户',
  `F_FrmContent` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '表单元素json',
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `oms_flowinstance_key1`(`F_Code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '工作流流程实例表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of oms_flowinstance
-- ----------------------------

-- ----------------------------
-- Table structure for oms_flowinstancehis
-- ----------------------------
DROP TABLE IF EXISTS `oms_flowinstancehis`;
CREATE TABLE `oms_flowinstancehis`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键Id',
  `F_InstanceId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '实例Id',
  `F_FromNodeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '开始节点Id',
  `F_FromNodeType` int NULL DEFAULT NULL COMMENT '开始节点类型',
  `F_FromNodeName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '开始节点名称',
  `F_ToNodeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '结束节点Id',
  `F_ToNodeType` int NULL DEFAULT NULL COMMENT '结束节点类型',
  `F_ToNodeName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '结束节点名称',
  `F_TransitionSate` tinyint(1) NOT NULL COMMENT '转化状态',
  `F_IsFinish` tinyint(1) NOT NULL COMMENT '是否结束',
  `F_CreatorTime` datetime NOT NULL COMMENT '转化时间',
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '操作人Id',
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '操作人名称',
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '工作流实例流转历史记录' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of oms_flowinstancehis
-- ----------------------------

-- ----------------------------
-- Table structure for oms_flowinstanceinfo
-- ----------------------------
DROP TABLE IF EXISTS `oms_flowinstanceinfo`;
CREATE TABLE `oms_flowinstanceinfo`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键Id',
  `F_InstanceId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '实例进程Id',
  `F_Content` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '操作内容',
  `F_CreatorTime` datetime NOT NULL COMMENT '创建时间',
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户主键',
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '工作流实例操作记录' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of oms_flowinstanceinfo
-- ----------------------------

-- ----------------------------
-- Table structure for oms_formtest
-- ----------------------------
DROP TABLE IF EXISTS `oms_formtest`;
CREATE TABLE `oms_formtest`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID',
  `F_UserName` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '请假人姓名',
  `F_RequestType` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '请假分类，病假，事假，公休等',
  `F_StartTime` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `F_EndTime` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `F_RequestComment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '请假说明',
  `F_Attachment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '附件，用于提交病假证据等',
  `F_CreatorTime` datetime NOT NULL COMMENT '创建时间',
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户主键',
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户',
  `F_FlowInstanceId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '所属流程ID',
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '模拟一个自定页面的表单，该数据会关联到流程实例FrmData，可用于复杂页面的设计及后期的数据分析' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of oms_formtest
-- ----------------------------

-- ----------------------------
-- Table structure for oms_message
-- ----------------------------
DROP TABLE IF EXISTS `oms_message`;
CREATE TABLE `oms_message`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键Id',
  `F_MessageType` int NULL DEFAULT NULL COMMENT '信息类型（通知、私信、处理）',
  `F_ToUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收件人主键',
  `F_ToUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收件人',
  `F_MessageInfo` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '内容',
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL COMMENT '有效',
  `F_CreatorTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户主键',
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户',
  `F_HrefTarget` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '跳转类型',
  `F_Href` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '跳转地址',
  `F_KeyValue` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '待办关联键',
  `F_ClickRead` tinyint(1) NULL DEFAULT NULL COMMENT '点击已读',
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oms_message
-- ----------------------------

-- ----------------------------
-- Table structure for oms_messagehis
-- ----------------------------
DROP TABLE IF EXISTS `oms_messagehis`;
CREATE TABLE `oms_messagehis`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键Id',
  `F_MessageId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '信息Id',
  `F_CreatorTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户主键',
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oms_messagehis
-- ----------------------------

-- ----------------------------
-- Table structure for oms_uploadfile
-- ----------------------------
DROP TABLE IF EXISTS `oms_uploadfile`;
CREATE TABLE `oms_uploadfile`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键Id',
  `F_FilePath` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '文件路径',
  `F_FileName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '文件名称',
  `F_FileType` int NULL DEFAULT NULL COMMENT '文件类型（0 文件，1 图片）',
  `F_FileSize` int NULL DEFAULT NULL COMMENT '文件大小',
  `F_FileExtension` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '文件扩展名',
  `F_FileBy` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '文件所属',
  `F_Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `F_OrganizeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '所属部门',
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL COMMENT '有效',
  `F_CreatorTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户主键',
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `oms_uploadfile_key1`(`F_FileName`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oms_uploadfile
-- ----------------------------

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '父级',
  `F_Layers` int NULL DEFAULT NULL COMMENT '层次',
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '编码',
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `F_SimpleSpelling` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '简拼',
  `F_SortCode` bigint NULL DEFAULT NULL COMMENT '排序码',
  `F_DeleteMark` tinyint NULL DEFAULT NULL COMMENT '删除标志',
  `F_EnabledMark` tinyint NULL DEFAULT NULL COMMENT '有效标志',
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '描述',
  `F_CreatorTime` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户主键',
  `F_LastModifyTime` datetime NULL DEFAULT NULL COMMENT '最后修改时间',
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '最后修改用户',
  `F_DeleteTime` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '删除用户',
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_area_key1`(`F_EnCode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '行政区域表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('110000000000', '0', 1, '110000000000', '北京市', NULL, 110000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110100000000', '110000000000', 2, '110100000000', '北京市', NULL, 110100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, '2020-05-27 16:41:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_area` VALUES ('110101000000', '110100000000', 3, '110101000000', '东城区', NULL, 110101000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110102000000', '110100000000', 3, '110102000000', '西城区', NULL, 110102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110105000000', '110100000000', 3, '110105000000', '朝阳区', NULL, 110105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110106000000', '110100000000', 3, '110106000000', '丰台区', NULL, 110106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110107000000', '110100000000', 3, '110107000000', '石景山区', NULL, 110107000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110108000000', '110100000000', 3, '110108000000', '海淀区', NULL, 110108000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110109000000', '110100000000', 3, '110109000000', '门头沟区', NULL, 110109000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110111000000', '110100000000', 3, '110111000000', '房山区', NULL, 110111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110112000000', '110100000000', 3, '110112000000', '通州区', NULL, 110112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110113000000', '110100000000', 3, '110113000000', '顺义区', NULL, 110113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110114000000', '110100000000', 3, '110114000000', '昌平区', NULL, 110114000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110115000000', '110100000000', 3, '110115000000', '大兴区', NULL, 110115000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110116000000', '110100000000', 3, '110116000000', '怀柔区', NULL, 110116000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110117000000', '110100000000', 3, '110117000000', '平谷区', NULL, 110117000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110118000000', '110100000000', 3, '110118000000', '密云区', NULL, 110118000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110119000000', '110100000000', 3, '110119000000', '延庆区', NULL, 110119000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120000000000', '0', 1, '120000000000', '天津市', NULL, 120000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120100000000', '120000000000', 2, '120100000000', '天津市', NULL, 120100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, '2020-05-27 16:42:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_area` VALUES ('120101000000', '120100000000', 3, '120101000000', '和平区', NULL, 120101000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120102000000', '120100000000', 3, '120102000000', '河东区', NULL, 120102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120103000000', '120100000000', 3, '120103000000', '河西区', NULL, 120103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120104000000', '120100000000', 3, '120104000000', '南开区', NULL, 120104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120105000000', '120100000000', 3, '120105000000', '河北区', NULL, 120105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120106000000', '120100000000', 3, '120106000000', '红桥区', NULL, 120106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120110000000', '120100000000', 3, '120110000000', '东丽区', NULL, 120110000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120111000000', '120100000000', 3, '120111000000', '西青区', NULL, 120111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120112000000', '120100000000', 3, '120112000000', '津南区', NULL, 120112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120113000000', '120100000000', 3, '120113000000', '北辰区', NULL, 120113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120114000000', '120100000000', 3, '120114000000', '武清区', NULL, 120114000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120115000000', '120100000000', 3, '120115000000', '宝坻区', NULL, 120115000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120116000000', '120100000000', 3, '120116000000', '滨海新区', NULL, 120116000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120117000000', '120100000000', 3, '120117000000', '宁河区', NULL, 120117000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120118000000', '120100000000', 3, '120118000000', '静海区', NULL, 120118000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120119000000', '120100000000', 3, '120119000000', '蓟州区', NULL, 120119000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130000000000', '0', 1, '130000000000', '河北省', NULL, 130000000000, 0, 1, '', '2020-05-27 15:00:07', NULL, '2020-06-24 09:02:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_area` VALUES ('130100000000', '130000000000', 2, '130100000000', '石家庄市', NULL, 130100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130102000000', '130100000000', 3, '130102000000', '长安区', NULL, 130102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130104000000', '130100000000', 3, '130104000000', '桥西区', NULL, 130104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130105000000', '130100000000', 3, '130105000000', '新华区', NULL, 130105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130107000000', '130100000000', 3, '130107000000', '井陉矿区', NULL, 130107000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130108000000', '130100000000', 3, '130108000000', '裕华区', NULL, 130108000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130109000000', '130100000000', 3, '130109000000', '藁城区', NULL, 130109000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130110000000', '130100000000', 3, '130110000000', '鹿泉区', NULL, 130110000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130111000000', '130100000000', 3, '130111000000', '栾城区', NULL, 130111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130121000000', '130100000000', 3, '130121000000', '井陉县', NULL, 130121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130123000000', '130100000000', 3, '130123000000', '正定县', NULL, 130123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130125000000', '130100000000', 3, '130125000000', '行唐县', NULL, 130125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130126000000', '130100000000', 3, '130126000000', '灵寿县', NULL, 130126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130127000000', '130100000000', 3, '130127000000', '高邑县', NULL, 130127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130128000000', '130100000000', 3, '130128000000', '深泽县', NULL, 130128000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130129000000', '130100000000', 3, '130129000000', '赞皇县', NULL, 130129000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130130000000', '130100000000', 3, '130130000000', '无极县', NULL, 130130000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130131000000', '130100000000', 3, '130131000000', '平山县', NULL, 130131000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130132000000', '130100000000', 3, '130132000000', '元氏县', NULL, 130132000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130133000000', '130100000000', 3, '130133000000', '赵县', NULL, 130133000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130171000000', '130100000000', 3, '130171000000', '石家庄高新技术产业开发区', NULL, 130171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130172000000', '130100000000', 3, '130172000000', '石家庄循环化工园区', NULL, 130172000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130181000000', '130100000000', 3, '130181000000', '辛集市', NULL, 130181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130183000000', '130100000000', 3, '130183000000', '晋州市', NULL, 130183000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130184000000', '130100000000', 3, '130184000000', '新乐市', NULL, 130184000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130200000000', '130000000000', 2, '130200000000', '唐山市', NULL, 130200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130202000000', '130200000000', 3, '130202000000', '路南区', NULL, 130202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130203000000', '130200000000', 3, '130203000000', '路北区', NULL, 130203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130204000000', '130200000000', 3, '130204000000', '古冶区', NULL, 130204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130205000000', '130200000000', 3, '130205000000', '开平区', NULL, 130205000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130207000000', '130200000000', 3, '130207000000', '丰南区', NULL, 130207000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130208000000', '130200000000', 3, '130208000000', '丰润区', NULL, 130208000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130209000000', '130200000000', 3, '130209000000', '曹妃甸区', NULL, 130209000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130224000000', '130200000000', 3, '130224000000', '滦南县', NULL, 130224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130225000000', '130200000000', 3, '130225000000', '乐亭县', NULL, 130225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130227000000', '130200000000', 3, '130227000000', '迁西县', NULL, 130227000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130229000000', '130200000000', 3, '130229000000', '玉田县', NULL, 130229000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130271000000', '130200000000', 3, '130271000000', '河北唐山芦台经济开发区', NULL, 130271000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130272000000', '130200000000', 3, '130272000000', '唐山市汉沽管理区', NULL, 130272000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130273000000', '130200000000', 3, '130273000000', '唐山高新技术产业开发区', NULL, 130273000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130274000000', '130200000000', 3, '130274000000', '河北唐山海港经济开发区', NULL, 130274000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130281000000', '130200000000', 3, '130281000000', '遵化市', NULL, 130281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130283000000', '130200000000', 3, '130283000000', '迁安市', NULL, 130283000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130284000000', '130200000000', 3, '130284000000', '滦州市', NULL, 130284000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130300000000', '130000000000', 2, '130300000000', '秦皇岛市', NULL, 130300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130302000000', '130300000000', 3, '130302000000', '海港区', NULL, 130302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130303000000', '130300000000', 3, '130303000000', '山海关区', NULL, 130303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130304000000', '130300000000', 3, '130304000000', '北戴河区', NULL, 130304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130306000000', '130300000000', 3, '130306000000', '抚宁区', NULL, 130306000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130321000000', '130300000000', 3, '130321000000', '青龙满族自治县', NULL, 130321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130322000000', '130300000000', 3, '130322000000', '昌黎县', NULL, 130322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130324000000', '130300000000', 3, '130324000000', '卢龙县', NULL, 130324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130371000000', '130300000000', 3, '130371000000', '秦皇岛市经济技术开发区', NULL, 130371000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130372000000', '130300000000', 3, '130372000000', '北戴河新区', NULL, 130372000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130400000000', '130000000000', 2, '130400000000', '邯郸市', NULL, 130400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130402000000', '130400000000', 3, '130402000000', '邯山区', NULL, 130402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130403000000', '130400000000', 3, '130403000000', '丛台区', NULL, 130403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130404000000', '130400000000', 3, '130404000000', '复兴区', NULL, 130404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130406000000', '130400000000', 3, '130406000000', '峰峰矿区', NULL, 130406000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130407000000', '130400000000', 3, '130407000000', '肥乡区', NULL, 130407000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130408000000', '130400000000', 3, '130408000000', '永年区', NULL, 130408000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130423000000', '130400000000', 3, '130423000000', '临漳县', NULL, 130423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130424000000', '130400000000', 3, '130424000000', '成安县', NULL, 130424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130425000000', '130400000000', 3, '130425000000', '大名县', NULL, 130425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130426000000', '130400000000', 3, '130426000000', '涉县', NULL, 130426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130427000000', '130400000000', 3, '130427000000', '磁县', NULL, 130427000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130430000000', '130400000000', 3, '130430000000', '邱县', NULL, 130430000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130431000000', '130400000000', 3, '130431000000', '鸡泽县', NULL, 130431000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130432000000', '130400000000', 3, '130432000000', '广平县', NULL, 130432000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130433000000', '130400000000', 3, '130433000000', '馆陶县', NULL, 130433000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130434000000', '130400000000', 3, '130434000000', '魏县', NULL, 130434000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130435000000', '130400000000', 3, '130435000000', '曲周县', NULL, 130435000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130471000000', '130400000000', 3, '130471000000', '邯郸经济技术开发区', NULL, 130471000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130473000000', '130400000000', 3, '130473000000', '邯郸冀南新区', NULL, 130473000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130481000000', '130400000000', 3, '130481000000', '武安市', NULL, 130481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130500000000', '130000000000', 2, '130500000000', '邢台市', NULL, 130500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130502000000', '130500000000', 3, '130502000000', '桥东区', NULL, 130502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130503000000', '130500000000', 3, '130503000000', '桥西区', NULL, 130503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130521000000', '130500000000', 3, '130521000000', '邢台县', NULL, 130521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130522000000', '130500000000', 3, '130522000000', '临城县', NULL, 130522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130523000000', '130500000000', 3, '130523000000', '内丘县', NULL, 130523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130524000000', '130500000000', 3, '130524000000', '柏乡县', NULL, 130524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130525000000', '130500000000', 3, '130525000000', '隆尧县', NULL, 130525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130526000000', '130500000000', 3, '130526000000', '任县', NULL, 130526000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130527000000', '130500000000', 3, '130527000000', '南和县', NULL, 130527000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130528000000', '130500000000', 3, '130528000000', '宁晋县', NULL, 130528000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130529000000', '130500000000', 3, '130529000000', '巨鹿县', NULL, 130529000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130530000000', '130500000000', 3, '130530000000', '新河县', NULL, 130530000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130531000000', '130500000000', 3, '130531000000', '广宗县', NULL, 130531000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130532000000', '130500000000', 3, '130532000000', '平乡县', NULL, 130532000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130533000000', '130500000000', 3, '130533000000', '威县', NULL, 130533000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130534000000', '130500000000', 3, '130534000000', '清河县', NULL, 130534000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130535000000', '130500000000', 3, '130535000000', '临西县', NULL, 130535000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130571000000', '130500000000', 3, '130571000000', '河北邢台经济开发区', NULL, 130571000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130581000000', '130500000000', 3, '130581000000', '南宫市', NULL, 130581000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130582000000', '130500000000', 3, '130582000000', '沙河市', NULL, 130582000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130600000000', '130000000000', 2, '130600000000', '保定市', NULL, 130600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130602000000', '130600000000', 3, '130602000000', '竞秀区', NULL, 130602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130606000000', '130600000000', 3, '130606000000', '莲池区', NULL, 130606000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130607000000', '130600000000', 3, '130607000000', '满城区', NULL, 130607000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130608000000', '130600000000', 3, '130608000000', '清苑区', NULL, 130608000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130609000000', '130600000000', 3, '130609000000', '徐水区', NULL, 130609000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130623000000', '130600000000', 3, '130623000000', '涞水县', NULL, 130623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130624000000', '130600000000', 3, '130624000000', '阜平县', NULL, 130624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130626000000', '130600000000', 3, '130626000000', '定兴县', NULL, 130626000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130627000000', '130600000000', 3, '130627000000', '唐县', NULL, 130627000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130628000000', '130600000000', 3, '130628000000', '高阳县', NULL, 130628000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130629000000', '130600000000', 3, '130629000000', '容城县', NULL, 130629000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130630000000', '130600000000', 3, '130630000000', '涞源县', NULL, 130630000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130631000000', '130600000000', 3, '130631000000', '望都县', NULL, 130631000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130632000000', '130600000000', 3, '130632000000', '安新县', NULL, 130632000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130633000000', '130600000000', 3, '130633000000', '易县', NULL, 130633000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130634000000', '130600000000', 3, '130634000000', '曲阳县', NULL, 130634000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130635000000', '130600000000', 3, '130635000000', '蠡县', NULL, 130635000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130636000000', '130600000000', 3, '130636000000', '顺平县', NULL, 130636000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130637000000', '130600000000', 3, '130637000000', '博野县', NULL, 130637000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130638000000', '130600000000', 3, '130638000000', '雄县', NULL, 130638000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130671000000', '130600000000', 3, '130671000000', '保定高新技术产业开发区', NULL, 130671000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130672000000', '130600000000', 3, '130672000000', '保定白沟新城', NULL, 130672000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130681000000', '130600000000', 3, '130681000000', '涿州市', NULL, 130681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130682000000', '130600000000', 3, '130682000000', '定州市', NULL, 130682000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130683000000', '130600000000', 3, '130683000000', '安国市', NULL, 130683000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130684000000', '130600000000', 3, '130684000000', '高碑店市', NULL, 130684000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130700000000', '130000000000', 2, '130700000000', '张家口市', NULL, 130700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130702000000', '130700000000', 3, '130702000000', '桥东区', NULL, 130702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130703000000', '130700000000', 3, '130703000000', '桥西区', NULL, 130703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130705000000', '130700000000', 3, '130705000000', '宣化区', NULL, 130705000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130706000000', '130700000000', 3, '130706000000', '下花园区', NULL, 130706000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130708000000', '130700000000', 3, '130708000000', '万全区', NULL, 130708000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130709000000', '130700000000', 3, '130709000000', '崇礼区', NULL, 130709000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130722000000', '130700000000', 3, '130722000000', '张北县', NULL, 130722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130723000000', '130700000000', 3, '130723000000', '康保县', NULL, 130723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130724000000', '130700000000', 3, '130724000000', '沽源县', NULL, 130724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130725000000', '130700000000', 3, '130725000000', '尚义县', NULL, 130725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130726000000', '130700000000', 3, '130726000000', '蔚县', NULL, 130726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130727000000', '130700000000', 3, '130727000000', '阳原县', NULL, 130727000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130728000000', '130700000000', 3, '130728000000', '怀安县', NULL, 130728000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130730000000', '130700000000', 3, '130730000000', '怀来县', NULL, 130730000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130731000000', '130700000000', 3, '130731000000', '涿鹿县', NULL, 130731000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130732000000', '130700000000', 3, '130732000000', '赤城县', NULL, 130732000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130771000000', '130700000000', 3, '130771000000', '张家口经济开发区', NULL, 130771000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130772000000', '130700000000', 3, '130772000000', '张家口市察北管理区', NULL, 130772000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130773000000', '130700000000', 3, '130773000000', '张家口市塞北管理区', NULL, 130773000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130800000000', '130000000000', 2, '130800000000', '承德市', NULL, 130800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130802000000', '130800000000', 3, '130802000000', '双桥区', NULL, 130802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130803000000', '130800000000', 3, '130803000000', '双滦区', NULL, 130803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130804000000', '130800000000', 3, '130804000000', '鹰手营子矿区', NULL, 130804000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130821000000', '130800000000', 3, '130821000000', '承德县', NULL, 130821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130822000000', '130800000000', 3, '130822000000', '兴隆县', NULL, 130822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130824000000', '130800000000', 3, '130824000000', '滦平县', NULL, 130824000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130825000000', '130800000000', 3, '130825000000', '隆化县', NULL, 130825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130826000000', '130800000000', 3, '130826000000', '丰宁满族自治县', NULL, 130826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130827000000', '130800000000', 3, '130827000000', '宽城满族自治县', NULL, 130827000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130828000000', '130800000000', 3, '130828000000', '围场满族蒙古族自治县', NULL, 130828000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130871000000', '130800000000', 3, '130871000000', '承德高新技术产业开发区', NULL, 130871000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130881000000', '130800000000', 3, '130881000000', '平泉市', NULL, 130881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130900000000', '130000000000', 2, '130900000000', '沧州市', NULL, 130900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130902000000', '130900000000', 3, '130902000000', '新华区', NULL, 130902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130903000000', '130900000000', 3, '130903000000', '运河区', NULL, 130903000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130921000000', '130900000000', 3, '130921000000', '沧县', NULL, 130921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130922000000', '130900000000', 3, '130922000000', '青县', NULL, 130922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130923000000', '130900000000', 3, '130923000000', '东光县', NULL, 130923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130924000000', '130900000000', 3, '130924000000', '海兴县', NULL, 130924000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130925000000', '130900000000', 3, '130925000000', '盐山县', NULL, 130925000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130926000000', '130900000000', 3, '130926000000', '肃宁县', NULL, 130926000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130927000000', '130900000000', 3, '130927000000', '南皮县', NULL, 130927000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130928000000', '130900000000', 3, '130928000000', '吴桥县', NULL, 130928000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130929000000', '130900000000', 3, '130929000000', '献县', NULL, 130929000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130930000000', '130900000000', 3, '130930000000', '孟村回族自治县', NULL, 130930000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130971000000', '130900000000', 3, '130971000000', '河北沧州经济开发区', NULL, 130971000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130972000000', '130900000000', 3, '130972000000', '沧州高新技术产业开发区', NULL, 130972000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130973000000', '130900000000', 3, '130973000000', '沧州渤海新区', NULL, 130973000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130981000000', '130900000000', 3, '130981000000', '泊头市', NULL, 130981000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130982000000', '130900000000', 3, '130982000000', '任丘市', NULL, 130982000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130983000000', '130900000000', 3, '130983000000', '黄骅市', NULL, 130983000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130984000000', '130900000000', 3, '130984000000', '河间市', NULL, 130984000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131000000000', '130000000000', 2, '131000000000', '廊坊市', NULL, 131000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131002000000', '131000000000', 3, '131002000000', '安次区', NULL, 131002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131003000000', '131000000000', 3, '131003000000', '广阳区', NULL, 131003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131022000000', '131000000000', 3, '131022000000', '固安县', NULL, 131022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131023000000', '131000000000', 3, '131023000000', '永清县', NULL, 131023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131024000000', '131000000000', 3, '131024000000', '香河县', NULL, 131024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131025000000', '131000000000', 3, '131025000000', '大城县', NULL, 131025000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131026000000', '131000000000', 3, '131026000000', '文安县', NULL, 131026000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131028000000', '131000000000', 3, '131028000000', '大厂回族自治县', NULL, 131028000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131071000000', '131000000000', 3, '131071000000', '廊坊经济技术开发区', NULL, 131071000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131081000000', '131000000000', 3, '131081000000', '霸州市', NULL, 131081000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131082000000', '131000000000', 3, '131082000000', '三河市', NULL, 131082000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131100000000', '130000000000', 2, '131100000000', '衡水市', NULL, 131100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131102000000', '131100000000', 3, '131102000000', '桃城区', NULL, 131102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131103000000', '131100000000', 3, '131103000000', '冀州区', NULL, 131103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131121000000', '131100000000', 3, '131121000000', '枣强县', NULL, 131121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131122000000', '131100000000', 3, '131122000000', '武邑县', NULL, 131122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131123000000', '131100000000', 3, '131123000000', '武强县', NULL, 131123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131124000000', '131100000000', 3, '131124000000', '饶阳县', NULL, 131124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131125000000', '131100000000', 3, '131125000000', '安平县', NULL, 131125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131126000000', '131100000000', 3, '131126000000', '故城县', NULL, 131126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131127000000', '131100000000', 3, '131127000000', '景县', NULL, 131127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131128000000', '131100000000', 3, '131128000000', '阜城县', NULL, 131128000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131171000000', '131100000000', 3, '131171000000', '河北衡水高新技术产业开发区', NULL, 131171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131172000000', '131100000000', 3, '131172000000', '衡水滨湖新区', NULL, 131172000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131182000000', '131100000000', 3, '131182000000', '深州市', NULL, 131182000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140000000000', '0', 1, '140000000000', '山西省', NULL, 140000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140100000000', '140000000000', 2, '140100000000', '太原市', NULL, 140100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140105000000', '140100000000', 3, '140105000000', '小店区', NULL, 140105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140106000000', '140100000000', 3, '140106000000', '迎泽区', NULL, 140106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140107000000', '140100000000', 3, '140107000000', '杏花岭区', NULL, 140107000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140108000000', '140100000000', 3, '140108000000', '尖草坪区', NULL, 140108000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140109000000', '140100000000', 3, '140109000000', '万柏林区', NULL, 140109000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140110000000', '140100000000', 3, '140110000000', '晋源区', NULL, 140110000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140121000000', '140100000000', 3, '140121000000', '清徐县', NULL, 140121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140122000000', '140100000000', 3, '140122000000', '阳曲县', NULL, 140122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140123000000', '140100000000', 3, '140123000000', '娄烦县', NULL, 140123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140171000000', '140100000000', 3, '140171000000', '山西转型综合改革示范区', NULL, 140171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140181000000', '140100000000', 3, '140181000000', '古交市', NULL, 140181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140200000000', '140000000000', 2, '140200000000', '大同市', NULL, 140200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140212000000', '140200000000', 3, '140212000000', '新荣区', NULL, 140212000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140213000000', '140200000000', 3, '140213000000', '平城区', NULL, 140213000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140214000000', '140200000000', 3, '140214000000', '云冈区', NULL, 140214000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140215000000', '140200000000', 3, '140215000000', '云州区', NULL, 140215000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140221000000', '140200000000', 3, '140221000000', '阳高县', NULL, 140221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140222000000', '140200000000', 3, '140222000000', '天镇县', NULL, 140222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140223000000', '140200000000', 3, '140223000000', '广灵县', NULL, 140223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140224000000', '140200000000', 3, '140224000000', '灵丘县', NULL, 140224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140225000000', '140200000000', 3, '140225000000', '浑源县', NULL, 140225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140226000000', '140200000000', 3, '140226000000', '左云县', NULL, 140226000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140271000000', '140200000000', 3, '140271000000', '山西大同经济开发区', NULL, 140271000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140300000000', '140000000000', 2, '140300000000', '阳泉市', NULL, 140300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140302000000', '140300000000', 3, '140302000000', '城区', NULL, 140302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140303000000', '140300000000', 3, '140303000000', '矿区', NULL, 140303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140311000000', '140300000000', 3, '140311000000', '郊区', NULL, 140311000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140321000000', '140300000000', 3, '140321000000', '平定县', NULL, 140321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140322000000', '140300000000', 3, '140322000000', '盂县', NULL, 140322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140400000000', '140000000000', 2, '140400000000', '长治市', NULL, 140400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140403000000', '140400000000', 3, '140403000000', '潞州区', NULL, 140403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140404000000', '140400000000', 3, '140404000000', '上党区', NULL, 140404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140405000000', '140400000000', 3, '140405000000', '屯留区', NULL, 140405000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140406000000', '140400000000', 3, '140406000000', '潞城区', NULL, 140406000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140423000000', '140400000000', 3, '140423000000', '襄垣县', NULL, 140423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140425000000', '140400000000', 3, '140425000000', '平顺县', NULL, 140425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140426000000', '140400000000', 3, '140426000000', '黎城县', NULL, 140426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140427000000', '140400000000', 3, '140427000000', '壶关县', NULL, 140427000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140428000000', '140400000000', 3, '140428000000', '长子县', NULL, 140428000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140429000000', '140400000000', 3, '140429000000', '武乡县', NULL, 140429000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140430000000', '140400000000', 3, '140430000000', '沁县', NULL, 140430000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140431000000', '140400000000', 3, '140431000000', '沁源县', NULL, 140431000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140471000000', '140400000000', 3, '140471000000', '山西长治高新技术产业园区', NULL, 140471000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140500000000', '140000000000', 2, '140500000000', '晋城市', NULL, 140500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140502000000', '140500000000', 3, '140502000000', '城区', NULL, 140502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140521000000', '140500000000', 3, '140521000000', '沁水县', NULL, 140521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140522000000', '140500000000', 3, '140522000000', '阳城县', NULL, 140522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140524000000', '140500000000', 3, '140524000000', '陵川县', NULL, 140524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140525000000', '140500000000', 3, '140525000000', '泽州县', NULL, 140525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140581000000', '140500000000', 3, '140581000000', '高平市', NULL, 140581000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140600000000', '140000000000', 2, '140600000000', '朔州市', NULL, 140600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140602000000', '140600000000', 3, '140602000000', '朔城区', NULL, 140602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140603000000', '140600000000', 3, '140603000000', '平鲁区', NULL, 140603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140621000000', '140600000000', 3, '140621000000', '山阴县', NULL, 140621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140622000000', '140600000000', 3, '140622000000', '应县', NULL, 140622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140623000000', '140600000000', 3, '140623000000', '右玉县', NULL, 140623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140671000000', '140600000000', 3, '140671000000', '山西朔州经济开发区', NULL, 140671000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140681000000', '140600000000', 3, '140681000000', '怀仁市', NULL, 140681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140700000000', '140000000000', 2, '140700000000', '晋中市', NULL, 140700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140702000000', '140700000000', 3, '140702000000', '榆次区', NULL, 140702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140721000000', '140700000000', 3, '140721000000', '榆社县', NULL, 140721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140722000000', '140700000000', 3, '140722000000', '左权县', NULL, 140722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140723000000', '140700000000', 3, '140723000000', '和顺县', NULL, 140723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140724000000', '140700000000', 3, '140724000000', '昔阳县', NULL, 140724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140725000000', '140700000000', 3, '140725000000', '寿阳县', NULL, 140725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140726000000', '140700000000', 3, '140726000000', '太谷县', NULL, 140726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140727000000', '140700000000', 3, '140727000000', '祁县', NULL, 140727000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140728000000', '140700000000', 3, '140728000000', '平遥县', NULL, 140728000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140729000000', '140700000000', 3, '140729000000', '灵石县', NULL, 140729000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140781000000', '140700000000', 3, '140781000000', '介休市', NULL, 140781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140800000000', '140000000000', 2, '140800000000', '运城市', NULL, 140800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140802000000', '140800000000', 3, '140802000000', '盐湖区', NULL, 140802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140821000000', '140800000000', 3, '140821000000', '临猗县', NULL, 140821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140822000000', '140800000000', 3, '140822000000', '万荣县', NULL, 140822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140823000000', '140800000000', 3, '140823000000', '闻喜县', NULL, 140823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140824000000', '140800000000', 3, '140824000000', '稷山县', NULL, 140824000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140825000000', '140800000000', 3, '140825000000', '新绛县', NULL, 140825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140826000000', '140800000000', 3, '140826000000', '绛县', NULL, 140826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140827000000', '140800000000', 3, '140827000000', '垣曲县', NULL, 140827000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140828000000', '140800000000', 3, '140828000000', '夏县', NULL, 140828000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140829000000', '140800000000', 3, '140829000000', '平陆县', NULL, 140829000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140830000000', '140800000000', 3, '140830000000', '芮城县', NULL, 140830000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140881000000', '140800000000', 3, '140881000000', '永济市', NULL, 140881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140882000000', '140800000000', 3, '140882000000', '河津市', NULL, 140882000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140900000000', '140000000000', 2, '140900000000', '忻州市', NULL, 140900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140902000000', '140900000000', 3, '140902000000', '忻府区', NULL, 140902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140921000000', '140900000000', 3, '140921000000', '定襄县', NULL, 140921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140922000000', '140900000000', 3, '140922000000', '五台县', NULL, 140922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140923000000', '140900000000', 3, '140923000000', '代县', NULL, 140923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140924000000', '140900000000', 3, '140924000000', '繁峙县', NULL, 140924000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140925000000', '140900000000', 3, '140925000000', '宁武县', NULL, 140925000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140926000000', '140900000000', 3, '140926000000', '静乐县', NULL, 140926000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140927000000', '140900000000', 3, '140927000000', '神池县', NULL, 140927000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140928000000', '140900000000', 3, '140928000000', '五寨县', NULL, 140928000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140929000000', '140900000000', 3, '140929000000', '岢岚县', NULL, 140929000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140930000000', '140900000000', 3, '140930000000', '河曲县', NULL, 140930000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140931000000', '140900000000', 3, '140931000000', '保德县', NULL, 140931000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140932000000', '140900000000', 3, '140932000000', '偏关县', NULL, 140932000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140971000000', '140900000000', 3, '140971000000', '五台山风景名胜区', NULL, 140971000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140981000000', '140900000000', 3, '140981000000', '原平市', NULL, 140981000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141000000000', '140000000000', 2, '141000000000', '临汾市', NULL, 141000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141002000000', '141000000000', 3, '141002000000', '尧都区', NULL, 141002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141021000000', '141000000000', 3, '141021000000', '曲沃县', NULL, 141021000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141022000000', '141000000000', 3, '141022000000', '翼城县', NULL, 141022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141023000000', '141000000000', 3, '141023000000', '襄汾县', NULL, 141023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141024000000', '141000000000', 3, '141024000000', '洪洞县', NULL, 141024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141025000000', '141000000000', 3, '141025000000', '古县', NULL, 141025000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141026000000', '141000000000', 3, '141026000000', '安泽县', NULL, 141026000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141027000000', '141000000000', 3, '141027000000', '浮山县', NULL, 141027000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141028000000', '141000000000', 3, '141028000000', '吉县', NULL, 141028000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141029000000', '141000000000', 3, '141029000000', '乡宁县', NULL, 141029000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141030000000', '141000000000', 3, '141030000000', '大宁县', NULL, 141030000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141031000000', '141000000000', 3, '141031000000', '隰县', NULL, 141031000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141032000000', '141000000000', 3, '141032000000', '永和县', NULL, 141032000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141033000000', '141000000000', 3, '141033000000', '蒲县', NULL, 141033000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141034000000', '141000000000', 3, '141034000000', '汾西县', NULL, 141034000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141081000000', '141000000000', 3, '141081000000', '侯马市', NULL, 141081000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141082000000', '141000000000', 3, '141082000000', '霍州市', NULL, 141082000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141100000000', '140000000000', 2, '141100000000', '吕梁市', NULL, 141100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141102000000', '141100000000', 3, '141102000000', '离石区', NULL, 141102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141121000000', '141100000000', 3, '141121000000', '文水县', NULL, 141121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141122000000', '141100000000', 3, '141122000000', '交城县', NULL, 141122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141123000000', '141100000000', 3, '141123000000', '兴县', NULL, 141123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141124000000', '141100000000', 3, '141124000000', '临县', NULL, 141124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141125000000', '141100000000', 3, '141125000000', '柳林县', NULL, 141125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141126000000', '141100000000', 3, '141126000000', '石楼县', NULL, 141126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141127000000', '141100000000', 3, '141127000000', '岚县', NULL, 141127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141128000000', '141100000000', 3, '141128000000', '方山县', NULL, 141128000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141129000000', '141100000000', 3, '141129000000', '中阳县', NULL, 141129000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141130000000', '141100000000', 3, '141130000000', '交口县', NULL, 141130000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141181000000', '141100000000', 3, '141181000000', '孝义市', NULL, 141181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141182000000', '141100000000', 3, '141182000000', '汾阳市', NULL, 141182000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150000000000', '0', 1, '150000000000', '内蒙古自治区', NULL, 150000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150100000000', '150000000000', 2, '150100000000', '呼和浩特市', NULL, 150100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150102000000', '150100000000', 3, '150102000000', '新城区', NULL, 150102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150103000000', '150100000000', 3, '150103000000', '回民区', NULL, 150103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150104000000', '150100000000', 3, '150104000000', '玉泉区', NULL, 150104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150105000000', '150100000000', 3, '150105000000', '赛罕区', NULL, 150105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150121000000', '150100000000', 3, '150121000000', '土默特左旗', NULL, 150121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150122000000', '150100000000', 3, '150122000000', '托克托县', NULL, 150122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150123000000', '150100000000', 3, '150123000000', '和林格尔县', NULL, 150123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150124000000', '150100000000', 3, '150124000000', '清水河县', NULL, 150124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150125000000', '150100000000', 3, '150125000000', '武川县', NULL, 150125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150171000000', '150100000000', 3, '150171000000', '呼和浩特金海工业园区', NULL, 150171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150172000000', '150100000000', 3, '150172000000', '呼和浩特经济技术开发区', NULL, 150172000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150200000000', '150000000000', 2, '150200000000', '包头市', NULL, 150200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150202000000', '150200000000', 3, '150202000000', '东河区', NULL, 150202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150203000000', '150200000000', 3, '150203000000', '昆都仑区', NULL, 150203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150204000000', '150200000000', 3, '150204000000', '青山区', NULL, 150204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150205000000', '150200000000', 3, '150205000000', '石拐区', NULL, 150205000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150206000000', '150200000000', 3, '150206000000', '白云鄂博矿区', NULL, 150206000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150207000000', '150200000000', 3, '150207000000', '九原区', NULL, 150207000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150221000000', '150200000000', 3, '150221000000', '土默特右旗', NULL, 150221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150222000000', '150200000000', 3, '150222000000', '固阳县', NULL, 150222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150223000000', '150200000000', 3, '150223000000', '达尔罕茂明安联合旗', NULL, 150223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150271000000', '150200000000', 3, '150271000000', '包头稀土高新技术产业开发区', NULL, 150271000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150300000000', '150000000000', 2, '150300000000', '乌海市', NULL, 150300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150302000000', '150300000000', 3, '150302000000', '海勃湾区', NULL, 150302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150303000000', '150300000000', 3, '150303000000', '海南区', NULL, 150303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150304000000', '150300000000', 3, '150304000000', '乌达区', NULL, 150304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150400000000', '150000000000', 2, '150400000000', '赤峰市', NULL, 150400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150402000000', '150400000000', 3, '150402000000', '红山区', NULL, 150402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150403000000', '150400000000', 3, '150403000000', '元宝山区', NULL, 150403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150404000000', '150400000000', 3, '150404000000', '松山区', NULL, 150404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150421000000', '150400000000', 3, '150421000000', '阿鲁科尔沁旗', NULL, 150421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150422000000', '150400000000', 3, '150422000000', '巴林左旗', NULL, 150422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150423000000', '150400000000', 3, '150423000000', '巴林右旗', NULL, 150423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150424000000', '150400000000', 3, '150424000000', '林西县', NULL, 150424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150425000000', '150400000000', 3, '150425000000', '克什克腾旗', NULL, 150425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150426000000', '150400000000', 3, '150426000000', '翁牛特旗', NULL, 150426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150428000000', '150400000000', 3, '150428000000', '喀喇沁旗', NULL, 150428000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150429000000', '150400000000', 3, '150429000000', '宁城县', NULL, 150429000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150430000000', '150400000000', 3, '150430000000', '敖汉旗', NULL, 150430000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150500000000', '150000000000', 2, '150500000000', '通辽市', NULL, 150500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150502000000', '150500000000', 3, '150502000000', '科尔沁区', NULL, 150502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150521000000', '150500000000', 3, '150521000000', '科尔沁左翼中旗', NULL, 150521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150522000000', '150500000000', 3, '150522000000', '科尔沁左翼后旗', NULL, 150522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150523000000', '150500000000', 3, '150523000000', '开鲁县', NULL, 150523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150524000000', '150500000000', 3, '150524000000', '库伦旗', NULL, 150524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150525000000', '150500000000', 3, '150525000000', '奈曼旗', NULL, 150525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150526000000', '150500000000', 3, '150526000000', '扎鲁特旗', NULL, 150526000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150571000000', '150500000000', 3, '150571000000', '通辽经济技术开发区', NULL, 150571000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150581000000', '150500000000', 3, '150581000000', '霍林郭勒市', NULL, 150581000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150600000000', '150000000000', 2, '150600000000', '鄂尔多斯市', NULL, 150600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150602000000', '150600000000', 3, '150602000000', '东胜区', NULL, 150602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150603000000', '150600000000', 3, '150603000000', '康巴什区', NULL, 150603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150621000000', '150600000000', 3, '150621000000', '达拉特旗', NULL, 150621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150622000000', '150600000000', 3, '150622000000', '准格尔旗', NULL, 150622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150623000000', '150600000000', 3, '150623000000', '鄂托克前旗', NULL, 150623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150624000000', '150600000000', 3, '150624000000', '鄂托克旗', NULL, 150624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150625000000', '150600000000', 3, '150625000000', '杭锦旗', NULL, 150625000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150626000000', '150600000000', 3, '150626000000', '乌审旗', NULL, 150626000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150627000000', '150600000000', 3, '150627000000', '伊金霍洛旗', NULL, 150627000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150700000000', '150000000000', 2, '150700000000', '呼伦贝尔市', NULL, 150700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150702000000', '150700000000', 3, '150702000000', '海拉尔区', NULL, 150702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150703000000', '150700000000', 3, '150703000000', '扎赉诺尔区', NULL, 150703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150721000000', '150700000000', 3, '150721000000', '阿荣旗', NULL, 150721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150722000000', '150700000000', 3, '150722000000', '莫力达瓦达斡尔族自治旗', NULL, 150722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150723000000', '150700000000', 3, '150723000000', '鄂伦春自治旗', NULL, 150723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150724000000', '150700000000', 3, '150724000000', '鄂温克族自治旗', NULL, 150724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150725000000', '150700000000', 3, '150725000000', '陈巴尔虎旗', NULL, 150725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150726000000', '150700000000', 3, '150726000000', '新巴尔虎左旗', NULL, 150726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150727000000', '150700000000', 3, '150727000000', '新巴尔虎右旗', NULL, 150727000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150781000000', '150700000000', 3, '150781000000', '满洲里市', NULL, 150781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150782000000', '150700000000', 3, '150782000000', '牙克石市', NULL, 150782000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150783000000', '150700000000', 3, '150783000000', '扎兰屯市', NULL, 150783000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150784000000', '150700000000', 3, '150784000000', '额尔古纳市', NULL, 150784000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150785000000', '150700000000', 3, '150785000000', '根河市', NULL, 150785000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150800000000', '150000000000', 2, '150800000000', '巴彦淖尔市', NULL, 150800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150802000000', '150800000000', 3, '150802000000', '临河区', NULL, 150802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150821000000', '150800000000', 3, '150821000000', '五原县', NULL, 150821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150822000000', '150800000000', 3, '150822000000', '磴口县', NULL, 150822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150823000000', '150800000000', 3, '150823000000', '乌拉特前旗', NULL, 150823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150824000000', '150800000000', 3, '150824000000', '乌拉特中旗', NULL, 150824000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150825000000', '150800000000', 3, '150825000000', '乌拉特后旗', NULL, 150825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150826000000', '150800000000', 3, '150826000000', '杭锦后旗', NULL, 150826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150900000000', '150000000000', 2, '150900000000', '乌兰察布市', NULL, 150900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150902000000', '150900000000', 3, '150902000000', '集宁区', NULL, 150902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150921000000', '150900000000', 3, '150921000000', '卓资县', NULL, 150921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150922000000', '150900000000', 3, '150922000000', '化德县', NULL, 150922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150923000000', '150900000000', 3, '150923000000', '商都县', NULL, 150923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150924000000', '150900000000', 3, '150924000000', '兴和县', NULL, 150924000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150925000000', '150900000000', 3, '150925000000', '凉城县', NULL, 150925000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150926000000', '150900000000', 3, '150926000000', '察哈尔右翼前旗', NULL, 150926000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150927000000', '150900000000', 3, '150927000000', '察哈尔右翼中旗', NULL, 150927000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150928000000', '150900000000', 3, '150928000000', '察哈尔右翼后旗', NULL, 150928000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150929000000', '150900000000', 3, '150929000000', '四子王旗', NULL, 150929000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150981000000', '150900000000', 3, '150981000000', '丰镇市', NULL, 150981000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152200000000', '150000000000', 2, '152200000000', '兴安盟', NULL, 152200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152201000000', '152200000000', 3, '152201000000', '乌兰浩特市', NULL, 152201000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152202000000', '152200000000', 3, '152202000000', '阿尔山市', NULL, 152202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152221000000', '152200000000', 3, '152221000000', '科尔沁右翼前旗', NULL, 152221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152222000000', '152200000000', 3, '152222000000', '科尔沁右翼中旗', NULL, 152222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152223000000', '152200000000', 3, '152223000000', '扎赉特旗', NULL, 152223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152224000000', '152200000000', 3, '152224000000', '突泉县', NULL, 152224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152500000000', '150000000000', 2, '152500000000', '锡林郭勒盟', NULL, 152500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152501000000', '152500000000', 3, '152501000000', '二连浩特市', NULL, 152501000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152502000000', '152500000000', 3, '152502000000', '锡林浩特市', NULL, 152502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152522000000', '152500000000', 3, '152522000000', '阿巴嘎旗', NULL, 152522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152523000000', '152500000000', 3, '152523000000', '苏尼特左旗', NULL, 152523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152524000000', '152500000000', 3, '152524000000', '苏尼特右旗', NULL, 152524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152525000000', '152500000000', 3, '152525000000', '东乌珠穆沁旗', NULL, 152525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152526000000', '152500000000', 3, '152526000000', '西乌珠穆沁旗', NULL, 152526000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152527000000', '152500000000', 3, '152527000000', '太仆寺旗', NULL, 152527000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152528000000', '152500000000', 3, '152528000000', '镶黄旗', NULL, 152528000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152529000000', '152500000000', 3, '152529000000', '正镶白旗', NULL, 152529000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152530000000', '152500000000', 3, '152530000000', '正蓝旗', NULL, 152530000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152531000000', '152500000000', 3, '152531000000', '多伦县', NULL, 152531000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152571000000', '152500000000', 3, '152571000000', '乌拉盖管委会', NULL, 152571000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152900000000', '150000000000', 2, '152900000000', '阿拉善盟', NULL, 152900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152921000000', '152900000000', 3, '152921000000', '阿拉善左旗', NULL, 152921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152922000000', '152900000000', 3, '152922000000', '阿拉善右旗', NULL, 152922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152923000000', '152900000000', 3, '152923000000', '额济纳旗', NULL, 152923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152971000000', '152900000000', 3, '152971000000', '内蒙古阿拉善经济开发区', NULL, 152971000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210000000000', '0', 1, '210000000000', '辽宁省', NULL, 210000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210100000000', '210000000000', 2, '210100000000', '沈阳市', NULL, 210100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210102000000', '210100000000', 3, '210102000000', '和平区', NULL, 210102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210103000000', '210100000000', 3, '210103000000', '沈河区', NULL, 210103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210104000000', '210100000000', 3, '210104000000', '大东区', NULL, 210104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210105000000', '210100000000', 3, '210105000000', '皇姑区', NULL, 210105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210106000000', '210100000000', 3, '210106000000', '铁西区', NULL, 210106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210111000000', '210100000000', 3, '210111000000', '苏家屯区', NULL, 210111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210112000000', '210100000000', 3, '210112000000', '浑南区', NULL, 210112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210113000000', '210100000000', 3, '210113000000', '沈北新区', NULL, 210113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210114000000', '210100000000', 3, '210114000000', '于洪区', NULL, 210114000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210115000000', '210100000000', 3, '210115000000', '辽中区', NULL, 210115000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210123000000', '210100000000', 3, '210123000000', '康平县', NULL, 210123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210124000000', '210100000000', 3, '210124000000', '法库县', NULL, 210124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210181000000', '210100000000', 3, '210181000000', '新民市', NULL, 210181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210200000000', '210000000000', 2, '210200000000', '大连市', NULL, 210200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210202000000', '210200000000', 3, '210202000000', '中山区', NULL, 210202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210203000000', '210200000000', 3, '210203000000', '西岗区', NULL, 210203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210204000000', '210200000000', 3, '210204000000', '沙河口区', NULL, 210204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210211000000', '210200000000', 3, '210211000000', '甘井子区', NULL, 210211000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210212000000', '210200000000', 3, '210212000000', '旅顺口区', NULL, 210212000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210213000000', '210200000000', 3, '210213000000', '金州区', NULL, 210213000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210214000000', '210200000000', 3, '210214000000', '普兰店区', NULL, 210214000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210224000000', '210200000000', 3, '210224000000', '长海县', NULL, 210224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210281000000', '210200000000', 3, '210281000000', '瓦房店市', NULL, 210281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210283000000', '210200000000', 3, '210283000000', '庄河市', NULL, 210283000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210300000000', '210000000000', 2, '210300000000', '鞍山市', NULL, 210300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210302000000', '210300000000', 3, '210302000000', '铁东区', NULL, 210302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210303000000', '210300000000', 3, '210303000000', '铁西区', NULL, 210303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210304000000', '210300000000', 3, '210304000000', '立山区', NULL, 210304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210311000000', '210300000000', 3, '210311000000', '千山区', NULL, 210311000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210321000000', '210300000000', 3, '210321000000', '台安县', NULL, 210321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210323000000', '210300000000', 3, '210323000000', '岫岩满族自治县', NULL, 210323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210381000000', '210300000000', 3, '210381000000', '海城市', NULL, 210381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210400000000', '210000000000', 2, '210400000000', '抚顺市', NULL, 210400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210402000000', '210400000000', 3, '210402000000', '新抚区', NULL, 210402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210403000000', '210400000000', 3, '210403000000', '东洲区', NULL, 210403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210404000000', '210400000000', 3, '210404000000', '望花区', NULL, 210404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210411000000', '210400000000', 3, '210411000000', '顺城区', NULL, 210411000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210421000000', '210400000000', 3, '210421000000', '抚顺县', NULL, 210421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210422000000', '210400000000', 3, '210422000000', '新宾满族自治县', NULL, 210422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210423000000', '210400000000', 3, '210423000000', '清原满族自治县', NULL, 210423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210500000000', '210000000000', 2, '210500000000', '本溪市', NULL, 210500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210502000000', '210500000000', 3, '210502000000', '平山区', NULL, 210502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210503000000', '210500000000', 3, '210503000000', '溪湖区', NULL, 210503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210504000000', '210500000000', 3, '210504000000', '明山区', NULL, 210504000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210505000000', '210500000000', 3, '210505000000', '南芬区', NULL, 210505000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210521000000', '210500000000', 3, '210521000000', '本溪满族自治县', NULL, 210521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210522000000', '210500000000', 3, '210522000000', '桓仁满族自治县', NULL, 210522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210600000000', '210000000000', 2, '210600000000', '丹东市', NULL, 210600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210602000000', '210600000000', 3, '210602000000', '元宝区', NULL, 210602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210603000000', '210600000000', 3, '210603000000', '振兴区', NULL, 210603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210604000000', '210600000000', 3, '210604000000', '振安区', NULL, 210604000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210624000000', '210600000000', 3, '210624000000', '宽甸满族自治县', NULL, 210624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210681000000', '210600000000', 3, '210681000000', '东港市', NULL, 210681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210682000000', '210600000000', 3, '210682000000', '凤城市', NULL, 210682000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210700000000', '210000000000', 2, '210700000000', '锦州市', NULL, 210700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210702000000', '210700000000', 3, '210702000000', '古塔区', NULL, 210702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210703000000', '210700000000', 3, '210703000000', '凌河区', NULL, 210703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210711000000', '210700000000', 3, '210711000000', '太和区', NULL, 210711000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210726000000', '210700000000', 3, '210726000000', '黑山县', NULL, 210726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210727000000', '210700000000', 3, '210727000000', '义县', NULL, 210727000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210781000000', '210700000000', 3, '210781000000', '凌海市', NULL, 210781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210782000000', '210700000000', 3, '210782000000', '北镇市', NULL, 210782000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210800000000', '210000000000', 2, '210800000000', '营口市', NULL, 210800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210802000000', '210800000000', 3, '210802000000', '站前区', NULL, 210802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210803000000', '210800000000', 3, '210803000000', '西市区', NULL, 210803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210804000000', '210800000000', 3, '210804000000', '鲅鱼圈区', NULL, 210804000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210811000000', '210800000000', 3, '210811000000', '老边区', NULL, 210811000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210881000000', '210800000000', 3, '210881000000', '盖州市', NULL, 210881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210882000000', '210800000000', 3, '210882000000', '大石桥市', NULL, 210882000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210900000000', '210000000000', 2, '210900000000', '阜新市', NULL, 210900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210902000000', '210900000000', 3, '210902000000', '海州区', NULL, 210902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210903000000', '210900000000', 3, '210903000000', '新邱区', NULL, 210903000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210904000000', '210900000000', 3, '210904000000', '太平区', NULL, 210904000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210905000000', '210900000000', 3, '210905000000', '清河门区', NULL, 210905000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210911000000', '210900000000', 3, '210911000000', '细河区', NULL, 210911000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210921000000', '210900000000', 3, '210921000000', '阜新蒙古族自治县', NULL, 210921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210922000000', '210900000000', 3, '210922000000', '彰武县', NULL, 210922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211000000000', '210000000000', 2, '211000000000', '辽阳市', NULL, 211000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211002000000', '211000000000', 3, '211002000000', '白塔区', NULL, 211002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211003000000', '211000000000', 3, '211003000000', '文圣区', NULL, 211003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211004000000', '211000000000', 3, '211004000000', '宏伟区', NULL, 211004000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211005000000', '211000000000', 3, '211005000000', '弓长岭区', NULL, 211005000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211011000000', '211000000000', 3, '211011000000', '太子河区', NULL, 211011000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211021000000', '211000000000', 3, '211021000000', '辽阳县', NULL, 211021000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211081000000', '211000000000', 3, '211081000000', '灯塔市', NULL, 211081000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211100000000', '210000000000', 2, '211100000000', '盘锦市', NULL, 211100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211102000000', '211100000000', 3, '211102000000', '双台子区', NULL, 211102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211103000000', '211100000000', 3, '211103000000', '兴隆台区', NULL, 211103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211104000000', '211100000000', 3, '211104000000', '大洼区', NULL, 211104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211122000000', '211100000000', 3, '211122000000', '盘山县', NULL, 211122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211200000000', '210000000000', 2, '211200000000', '铁岭市', NULL, 211200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211202000000', '211200000000', 3, '211202000000', '银州区', NULL, 211202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211204000000', '211200000000', 3, '211204000000', '清河区', NULL, 211204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211221000000', '211200000000', 3, '211221000000', '铁岭县', NULL, 211221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211223000000', '211200000000', 3, '211223000000', '西丰县', NULL, 211223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211224000000', '211200000000', 3, '211224000000', '昌图县', NULL, 211224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211281000000', '211200000000', 3, '211281000000', '调兵山市', NULL, 211281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211282000000', '211200000000', 3, '211282000000', '开原市', NULL, 211282000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211300000000', '210000000000', 2, '211300000000', '朝阳市', NULL, 211300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211302000000', '211300000000', 3, '211302000000', '双塔区', NULL, 211302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211303000000', '211300000000', 3, '211303000000', '龙城区', NULL, 211303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211321000000', '211300000000', 3, '211321000000', '朝阳县', NULL, 211321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211322000000', '211300000000', 3, '211322000000', '建平县', NULL, 211322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211324000000', '211300000000', 3, '211324000000', '喀喇沁左翼蒙古族自治县', NULL, 211324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211381000000', '211300000000', 3, '211381000000', '北票市', NULL, 211381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211382000000', '211300000000', 3, '211382000000', '凌源市', NULL, 211382000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211400000000', '210000000000', 2, '211400000000', '葫芦岛市', NULL, 211400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211402000000', '211400000000', 3, '211402000000', '连山区', NULL, 211402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211403000000', '211400000000', 3, '211403000000', '龙港区', NULL, 211403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211404000000', '211400000000', 3, '211404000000', '南票区', NULL, 211404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211421000000', '211400000000', 3, '211421000000', '绥中县', NULL, 211421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211422000000', '211400000000', 3, '211422000000', '建昌县', NULL, 211422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211481000000', '211400000000', 3, '211481000000', '兴城市', NULL, 211481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220000000000', '0', 1, '220000000000', '吉林省', NULL, 220000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220100000000', '220000000000', 2, '220100000000', '长春市', NULL, 220100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220102000000', '220100000000', 3, '220102000000', '南关区', NULL, 220102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220103000000', '220100000000', 3, '220103000000', '宽城区', NULL, 220103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220104000000', '220100000000', 3, '220104000000', '朝阳区', NULL, 220104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220105000000', '220100000000', 3, '220105000000', '二道区', NULL, 220105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220106000000', '220100000000', 3, '220106000000', '绿园区', NULL, 220106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220112000000', '220100000000', 3, '220112000000', '双阳区', NULL, 220112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220113000000', '220100000000', 3, '220113000000', '九台区', NULL, 220113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220122000000', '220100000000', 3, '220122000000', '农安县', NULL, 220122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220171000000', '220100000000', 3, '220171000000', '长春经济技术开发区', NULL, 220171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220172000000', '220100000000', 3, '220172000000', '长春净月高新技术产业开发区', NULL, 220172000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220173000000', '220100000000', 3, '220173000000', '长春高新技术产业开发区', NULL, 220173000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220174000000', '220100000000', 3, '220174000000', '长春汽车经济技术开发区', NULL, 220174000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220182000000', '220100000000', 3, '220182000000', '榆树市', NULL, 220182000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220183000000', '220100000000', 3, '220183000000', '德惠市', NULL, 220183000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220200000000', '220000000000', 2, '220200000000', '吉林市', NULL, 220200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220202000000', '220200000000', 3, '220202000000', '昌邑区', NULL, 220202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220203000000', '220200000000', 3, '220203000000', '龙潭区', NULL, 220203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220204000000', '220200000000', 3, '220204000000', '船营区', NULL, 220204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220211000000', '220200000000', 3, '220211000000', '丰满区', NULL, 220211000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220221000000', '220200000000', 3, '220221000000', '永吉县', NULL, 220221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220271000000', '220200000000', 3, '220271000000', '吉林经济开发区', NULL, 220271000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220272000000', '220200000000', 3, '220272000000', '吉林高新技术产业开发区', NULL, 220272000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220273000000', '220200000000', 3, '220273000000', '吉林中国新加坡食品区', NULL, 220273000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220281000000', '220200000000', 3, '220281000000', '蛟河市', NULL, 220281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220282000000', '220200000000', 3, '220282000000', '桦甸市', NULL, 220282000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220283000000', '220200000000', 3, '220283000000', '舒兰市', NULL, 220283000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220284000000', '220200000000', 3, '220284000000', '磐石市', NULL, 220284000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220300000000', '220000000000', 2, '220300000000', '四平市', NULL, 220300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220302000000', '220300000000', 3, '220302000000', '铁西区', NULL, 220302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220303000000', '220300000000', 3, '220303000000', '铁东区', NULL, 220303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220322000000', '220300000000', 3, '220322000000', '梨树县', NULL, 220322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220323000000', '220300000000', 3, '220323000000', '伊通满族自治县', NULL, 220323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220381000000', '220300000000', 3, '220381000000', '公主岭市', NULL, 220381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220382000000', '220300000000', 3, '220382000000', '双辽市', NULL, 220382000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220400000000', '220000000000', 2, '220400000000', '辽源市', NULL, 220400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220402000000', '220400000000', 3, '220402000000', '龙山区', NULL, 220402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220403000000', '220400000000', 3, '220403000000', '西安区', NULL, 220403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220421000000', '220400000000', 3, '220421000000', '东丰县', NULL, 220421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220422000000', '220400000000', 3, '220422000000', '东辽县', NULL, 220422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220500000000', '220000000000', 2, '220500000000', '通化市', NULL, 220500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220502000000', '220500000000', 3, '220502000000', '东昌区', NULL, 220502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220503000000', '220500000000', 3, '220503000000', '二道江区', NULL, 220503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220521000000', '220500000000', 3, '220521000000', '通化县', NULL, 220521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220523000000', '220500000000', 3, '220523000000', '辉南县', NULL, 220523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220524000000', '220500000000', 3, '220524000000', '柳河县', NULL, 220524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220581000000', '220500000000', 3, '220581000000', '梅河口市', NULL, 220581000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220582000000', '220500000000', 3, '220582000000', '集安市', NULL, 220582000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220600000000', '220000000000', 2, '220600000000', '白山市', NULL, 220600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220602000000', '220600000000', 3, '220602000000', '浑江区', NULL, 220602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220605000000', '220600000000', 3, '220605000000', '江源区', NULL, 220605000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220621000000', '220600000000', 3, '220621000000', '抚松县', NULL, 220621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220622000000', '220600000000', 3, '220622000000', '靖宇县', NULL, 220622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220623000000', '220600000000', 3, '220623000000', '长白朝鲜族自治县', NULL, 220623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220681000000', '220600000000', 3, '220681000000', '临江市', NULL, 220681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220700000000', '220000000000', 2, '220700000000', '松原市', NULL, 220700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220702000000', '220700000000', 3, '220702000000', '宁江区', NULL, 220702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220721000000', '220700000000', 3, '220721000000', '前郭尔罗斯蒙古族自治县', NULL, 220721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220722000000', '220700000000', 3, '220722000000', '长岭县', NULL, 220722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220723000000', '220700000000', 3, '220723000000', '乾安县', NULL, 220723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220771000000', '220700000000', 3, '220771000000', '吉林松原经济开发区', NULL, 220771000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220781000000', '220700000000', 3, '220781000000', '扶余市', NULL, 220781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220800000000', '220000000000', 2, '220800000000', '白城市', NULL, 220800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220802000000', '220800000000', 3, '220802000000', '洮北区', NULL, 220802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220821000000', '220800000000', 3, '220821000000', '镇赉县', NULL, 220821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220822000000', '220800000000', 3, '220822000000', '通榆县', NULL, 220822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220871000000', '220800000000', 3, '220871000000', '吉林白城经济开发区', NULL, 220871000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220881000000', '220800000000', 3, '220881000000', '洮南市', NULL, 220881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220882000000', '220800000000', 3, '220882000000', '大安市', NULL, 220882000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('222400000000', '220000000000', 2, '222400000000', '延边朝鲜族自治州', NULL, 222400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('222401000000', '222400000000', 3, '222401000000', '延吉市', NULL, 222401000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('222402000000', '222400000000', 3, '222402000000', '图们市', NULL, 222402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('222403000000', '222400000000', 3, '222403000000', '敦化市', NULL, 222403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('222404000000', '222400000000', 3, '222404000000', '珲春市', NULL, 222404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('222405000000', '222400000000', 3, '222405000000', '龙井市', NULL, 222405000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('222406000000', '222400000000', 3, '222406000000', '和龙市', NULL, 222406000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('222424000000', '222400000000', 3, '222424000000', '汪清县', NULL, 222424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('222426000000', '222400000000', 3, '222426000000', '安图县', NULL, 222426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230000000000', '0', 1, '230000000000', '黑龙江省', NULL, 230000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230100000000', '230000000000', 2, '230100000000', '哈尔滨市', NULL, 230100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230102000000', '230100000000', 3, '230102000000', '道里区', NULL, 230102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230103000000', '230100000000', 3, '230103000000', '南岗区', NULL, 230103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230104000000', '230100000000', 3, '230104000000', '道外区', NULL, 230104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230108000000', '230100000000', 3, '230108000000', '平房区', NULL, 230108000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230109000000', '230100000000', 3, '230109000000', '松北区', NULL, 230109000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230110000000', '230100000000', 3, '230110000000', '香坊区', NULL, 230110000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230111000000', '230100000000', 3, '230111000000', '呼兰区', NULL, 230111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230112000000', '230100000000', 3, '230112000000', '阿城区', NULL, 230112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230113000000', '230100000000', 3, '230113000000', '双城区', NULL, 230113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230123000000', '230100000000', 3, '230123000000', '依兰县', NULL, 230123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230124000000', '230100000000', 3, '230124000000', '方正县', NULL, 230124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230125000000', '230100000000', 3, '230125000000', '宾县', NULL, 230125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230126000000', '230100000000', 3, '230126000000', '巴彦县', NULL, 230126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230127000000', '230100000000', 3, '230127000000', '木兰县', NULL, 230127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230128000000', '230100000000', 3, '230128000000', '通河县', NULL, 230128000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230129000000', '230100000000', 3, '230129000000', '延寿县', NULL, 230129000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230183000000', '230100000000', 3, '230183000000', '尚志市', NULL, 230183000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230184000000', '230100000000', 3, '230184000000', '五常市', NULL, 230184000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230200000000', '230000000000', 2, '230200000000', '齐齐哈尔市', NULL, 230200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230202000000', '230200000000', 3, '230202000000', '龙沙区', NULL, 230202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230203000000', '230200000000', 3, '230203000000', '建华区', NULL, 230203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230204000000', '230200000000', 3, '230204000000', '铁锋区', NULL, 230204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230205000000', '230200000000', 3, '230205000000', '昂昂溪区', NULL, 230205000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230206000000', '230200000000', 3, '230206000000', '富拉尔基区', NULL, 230206000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230207000000', '230200000000', 3, '230207000000', '碾子山区', NULL, 230207000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230208000000', '230200000000', 3, '230208000000', '梅里斯达斡尔族区', NULL, 230208000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230221000000', '230200000000', 3, '230221000000', '龙江县', NULL, 230221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230223000000', '230200000000', 3, '230223000000', '依安县', NULL, 230223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230224000000', '230200000000', 3, '230224000000', '泰来县', NULL, 230224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230225000000', '230200000000', 3, '230225000000', '甘南县', NULL, 230225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230227000000', '230200000000', 3, '230227000000', '富裕县', NULL, 230227000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230229000000', '230200000000', 3, '230229000000', '克山县', NULL, 230229000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230230000000', '230200000000', 3, '230230000000', '克东县', NULL, 230230000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230231000000', '230200000000', 3, '230231000000', '拜泉县', NULL, 230231000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230281000000', '230200000000', 3, '230281000000', '讷河市', NULL, 230281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230300000000', '230000000000', 2, '230300000000', '鸡西市', NULL, 230300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230302000000', '230300000000', 3, '230302000000', '鸡冠区', NULL, 230302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230303000000', '230300000000', 3, '230303000000', '恒山区', NULL, 230303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230304000000', '230300000000', 3, '230304000000', '滴道区', NULL, 230304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230305000000', '230300000000', 3, '230305000000', '梨树区', NULL, 230305000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230306000000', '230300000000', 3, '230306000000', '城子河区', NULL, 230306000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230307000000', '230300000000', 3, '230307000000', '麻山区', NULL, 230307000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230321000000', '230300000000', 3, '230321000000', '鸡东县', NULL, 230321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230381000000', '230300000000', 3, '230381000000', '虎林市', NULL, 230381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230382000000', '230300000000', 3, '230382000000', '密山市', NULL, 230382000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230400000000', '230000000000', 2, '230400000000', '鹤岗市', NULL, 230400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230402000000', '230400000000', 3, '230402000000', '向阳区', NULL, 230402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230403000000', '230400000000', 3, '230403000000', '工农区', NULL, 230403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230404000000', '230400000000', 3, '230404000000', '南山区', NULL, 230404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230405000000', '230400000000', 3, '230405000000', '兴安区', NULL, 230405000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230406000000', '230400000000', 3, '230406000000', '东山区', NULL, 230406000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230407000000', '230400000000', 3, '230407000000', '兴山区', NULL, 230407000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230421000000', '230400000000', 3, '230421000000', '萝北县', NULL, 230421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230422000000', '230400000000', 3, '230422000000', '绥滨县', NULL, 230422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230500000000', '230000000000', 2, '230500000000', '双鸭山市', NULL, 230500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230502000000', '230500000000', 3, '230502000000', '尖山区', NULL, 230502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230503000000', '230500000000', 3, '230503000000', '岭东区', NULL, 230503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230505000000', '230500000000', 3, '230505000000', '四方台区', NULL, 230505000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230506000000', '230500000000', 3, '230506000000', '宝山区', NULL, 230506000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230521000000', '230500000000', 3, '230521000000', '集贤县', NULL, 230521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230522000000', '230500000000', 3, '230522000000', '友谊县', NULL, 230522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230523000000', '230500000000', 3, '230523000000', '宝清县', NULL, 230523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230524000000', '230500000000', 3, '230524000000', '饶河县', NULL, 230524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230600000000', '230000000000', 2, '230600000000', '大庆市', NULL, 230600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230602000000', '230600000000', 3, '230602000000', '萨尔图区', NULL, 230602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230603000000', '230600000000', 3, '230603000000', '龙凤区', NULL, 230603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230604000000', '230600000000', 3, '230604000000', '让胡路区', NULL, 230604000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230605000000', '230600000000', 3, '230605000000', '红岗区', NULL, 230605000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230606000000', '230600000000', 3, '230606000000', '大同区', NULL, 230606000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230621000000', '230600000000', 3, '230621000000', '肇州县', NULL, 230621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230622000000', '230600000000', 3, '230622000000', '肇源县', NULL, 230622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230623000000', '230600000000', 3, '230623000000', '林甸县', NULL, 230623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230624000000', '230600000000', 3, '230624000000', '杜尔伯特蒙古族自治县', NULL, 230624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230671000000', '230600000000', 3, '230671000000', '大庆高新技术产业开发区', NULL, 230671000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230700000000', '230000000000', 2, '230700000000', '伊春市', NULL, 230700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230717000000', '230700000000', 3, '230717000000', '伊美区', NULL, 230717000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230718000000', '230700000000', 3, '230718000000', '乌翠区', NULL, 230718000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230719000000', '230700000000', 3, '230719000000', '友好区', NULL, 230719000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230722000000', '230700000000', 3, '230722000000', '嘉荫县', NULL, 230722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230723000000', '230700000000', 3, '230723000000', '汤旺县', NULL, 230723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230724000000', '230700000000', 3, '230724000000', '丰林县', NULL, 230724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230725000000', '230700000000', 3, '230725000000', '大箐山县', NULL, 230725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230726000000', '230700000000', 3, '230726000000', '南岔县', NULL, 230726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230751000000', '230700000000', 3, '230751000000', '金林区', NULL, 230751000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230781000000', '230700000000', 3, '230781000000', '铁力市', NULL, 230781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230800000000', '230000000000', 2, '230800000000', '佳木斯市', NULL, 230800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230803000000', '230800000000', 3, '230803000000', '向阳区', NULL, 230803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230804000000', '230800000000', 3, '230804000000', '前进区', NULL, 230804000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230805000000', '230800000000', 3, '230805000000', '东风区', NULL, 230805000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230811000000', '230800000000', 3, '230811000000', '郊区', NULL, 230811000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230822000000', '230800000000', 3, '230822000000', '桦南县', NULL, 230822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230826000000', '230800000000', 3, '230826000000', '桦川县', NULL, 230826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230828000000', '230800000000', 3, '230828000000', '汤原县', NULL, 230828000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230881000000', '230800000000', 3, '230881000000', '同江市', NULL, 230881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230882000000', '230800000000', 3, '230882000000', '富锦市', NULL, 230882000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230883000000', '230800000000', 3, '230883000000', '抚远市', NULL, 230883000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230900000000', '230000000000', 2, '230900000000', '七台河市', NULL, 230900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230902000000', '230900000000', 3, '230902000000', '新兴区', NULL, 230902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230903000000', '230900000000', 3, '230903000000', '桃山区', NULL, 230903000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230904000000', '230900000000', 3, '230904000000', '茄子河区', NULL, 230904000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230921000000', '230900000000', 3, '230921000000', '勃利县', NULL, 230921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231000000000', '230000000000', 2, '231000000000', '牡丹江市', NULL, 231000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231002000000', '231000000000', 3, '231002000000', '东安区', NULL, 231002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231003000000', '231000000000', 3, '231003000000', '阳明区', NULL, 231003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231004000000', '231000000000', 3, '231004000000', '爱民区', NULL, 231004000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231005000000', '231000000000', 3, '231005000000', '西安区', NULL, 231005000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231025000000', '231000000000', 3, '231025000000', '林口县', NULL, 231025000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231071000000', '231000000000', 3, '231071000000', '牡丹江经济技术开发区', NULL, 231071000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231081000000', '231000000000', 3, '231081000000', '绥芬河市', NULL, 231081000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231083000000', '231000000000', 3, '231083000000', '海林市', NULL, 231083000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231084000000', '231000000000', 3, '231084000000', '宁安市', NULL, 231084000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231085000000', '231000000000', 3, '231085000000', '穆棱市', NULL, 231085000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231086000000', '231000000000', 3, '231086000000', '东宁市', NULL, 231086000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231100000000', '230000000000', 2, '231100000000', '黑河市', NULL, 231100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231102000000', '231100000000', 3, '231102000000', '爱辉区', NULL, 231102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231123000000', '231100000000', 3, '231123000000', '逊克县', NULL, 231123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231124000000', '231100000000', 3, '231124000000', '孙吴县', NULL, 231124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231181000000', '231100000000', 3, '231181000000', '北安市', NULL, 231181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231182000000', '231100000000', 3, '231182000000', '五大连池市', NULL, 231182000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231183000000', '231100000000', 3, '231183000000', '嫩江市', NULL, 231183000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231200000000', '230000000000', 2, '231200000000', '绥化市', NULL, 231200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231202000000', '231200000000', 3, '231202000000', '北林区', NULL, 231202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231221000000', '231200000000', 3, '231221000000', '望奎县', NULL, 231221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231222000000', '231200000000', 3, '231222000000', '兰西县', NULL, 231222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231223000000', '231200000000', 3, '231223000000', '青冈县', NULL, 231223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231224000000', '231200000000', 3, '231224000000', '庆安县', NULL, 231224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231225000000', '231200000000', 3, '231225000000', '明水县', NULL, 231225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231226000000', '231200000000', 3, '231226000000', '绥棱县', NULL, 231226000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231281000000', '231200000000', 3, '231281000000', '安达市', NULL, 231281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231282000000', '231200000000', 3, '231282000000', '肇东市', NULL, 231282000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231283000000', '231200000000', 3, '231283000000', '海伦市', NULL, 231283000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('232700000000', '230000000000', 2, '232700000000', '大兴安岭地区', NULL, 232700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('232701000000', '232700000000', 3, '232701000000', '漠河市', NULL, 232701000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('232721000000', '232700000000', 3, '232721000000', '呼玛县', NULL, 232721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('232722000000', '232700000000', 3, '232722000000', '塔河县', NULL, 232722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('232761000000', '232700000000', 3, '232761000000', '加格达奇区', NULL, 232761000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('232762000000', '232700000000', 3, '232762000000', '松岭区', NULL, 232762000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('232763000000', '232700000000', 3, '232763000000', '新林区', NULL, 232763000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('232764000000', '232700000000', 3, '232764000000', '呼中区', NULL, 232764000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310000000000', '0', 1, '310000000000', '上海市', NULL, 310000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310100000000', '310000000000', 2, '310100000000', '上海市', NULL, 310100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, '2020-05-27 16:42:33', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_area` VALUES ('310101000000', '310100000000', 3, '310101000000', '黄浦区', NULL, 310101000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310104000000', '310100000000', 3, '310104000000', '徐汇区', NULL, 310104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310105000000', '310100000000', 3, '310105000000', '长宁区', NULL, 310105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310106000000', '310100000000', 3, '310106000000', '静安区', NULL, 310106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310107000000', '310100000000', 3, '310107000000', '普陀区', NULL, 310107000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310109000000', '310100000000', 3, '310109000000', '虹口区', NULL, 310109000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310110000000', '310100000000', 3, '310110000000', '杨浦区', NULL, 310110000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310112000000', '310100000000', 3, '310112000000', '闵行区', NULL, 310112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310113000000', '310100000000', 3, '310113000000', '宝山区', NULL, 310113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310114000000', '310100000000', 3, '310114000000', '嘉定区', NULL, 310114000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310115000000', '310100000000', 3, '310115000000', '浦东新区', NULL, 310115000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310116000000', '310100000000', 3, '310116000000', '金山区', NULL, 310116000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310117000000', '310100000000', 3, '310117000000', '松江区', NULL, 310117000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310118000000', '310100000000', 3, '310118000000', '青浦区', NULL, 310118000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310120000000', '310100000000', 3, '310120000000', '奉贤区', NULL, 310120000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310151000000', '310100000000', 3, '310151000000', '崇明区', NULL, 310151000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320000000000', '0', 1, '320000000000', '江苏省', NULL, 320000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320100000000', '320000000000', 2, '320100000000', '南京市', NULL, 320100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320102000000', '320100000000', 3, '320102000000', '玄武区', NULL, 320102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320104000000', '320100000000', 3, '320104000000', '秦淮区', NULL, 320104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320105000000', '320100000000', 3, '320105000000', '建邺区', NULL, 320105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320106000000', '320100000000', 3, '320106000000', '鼓楼区', NULL, 320106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320111000000', '320100000000', 3, '320111000000', '浦口区', NULL, 320111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320113000000', '320100000000', 3, '320113000000', '栖霞区', NULL, 320113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320114000000', '320100000000', 3, '320114000000', '雨花台区', NULL, 320114000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320115000000', '320100000000', 3, '320115000000', '江宁区', NULL, 320115000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320116000000', '320100000000', 3, '320116000000', '六合区', NULL, 320116000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320117000000', '320100000000', 3, '320117000000', '溧水区', NULL, 320117000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320118000000', '320100000000', 3, '320118000000', '高淳区', NULL, 320118000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320200000000', '320000000000', 2, '320200000000', '无锡市', NULL, 320200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320205000000', '320200000000', 3, '320205000000', '锡山区', NULL, 320205000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320206000000', '320200000000', 3, '320206000000', '惠山区', NULL, 320206000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320211000000', '320200000000', 3, '320211000000', '滨湖区', NULL, 320211000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320213000000', '320200000000', 3, '320213000000', '梁溪区', NULL, 320213000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320214000000', '320200000000', 3, '320214000000', '新吴区', NULL, 320214000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320281000000', '320200000000', 3, '320281000000', '江阴市', NULL, 320281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320282000000', '320200000000', 3, '320282000000', '宜兴市', NULL, 320282000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320300000000', '320000000000', 2, '320300000000', '徐州市', NULL, 320300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320302000000', '320300000000', 3, '320302000000', '鼓楼区', NULL, 320302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320303000000', '320300000000', 3, '320303000000', '云龙区', NULL, 320303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320305000000', '320300000000', 3, '320305000000', '贾汪区', NULL, 320305000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320311000000', '320300000000', 3, '320311000000', '泉山区', NULL, 320311000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320312000000', '320300000000', 3, '320312000000', '铜山区', NULL, 320312000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320321000000', '320300000000', 3, '320321000000', '丰县', NULL, 320321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320322000000', '320300000000', 3, '320322000000', '沛县', NULL, 320322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320324000000', '320300000000', 3, '320324000000', '睢宁县', NULL, 320324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320371000000', '320300000000', 3, '320371000000', '徐州经济技术开发区', NULL, 320371000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320381000000', '320300000000', 3, '320381000000', '新沂市', NULL, 320381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320382000000', '320300000000', 3, '320382000000', '邳州市', NULL, 320382000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320400000000', '320000000000', 2, '320400000000', '常州市', NULL, 320400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320402000000', '320400000000', 3, '320402000000', '天宁区', NULL, 320402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320404000000', '320400000000', 3, '320404000000', '钟楼区', NULL, 320404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320411000000', '320400000000', 3, '320411000000', '新北区', NULL, 320411000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320412000000', '320400000000', 3, '320412000000', '武进区', NULL, 320412000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320413000000', '320400000000', 3, '320413000000', '金坛区', NULL, 320413000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320481000000', '320400000000', 3, '320481000000', '溧阳市', NULL, 320481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320500000000', '320000000000', 2, '320500000000', '苏州市', NULL, 320500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320505000000', '320500000000', 3, '320505000000', '虎丘区', NULL, 320505000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320506000000', '320500000000', 3, '320506000000', '吴中区', NULL, 320506000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320507000000', '320500000000', 3, '320507000000', '相城区', NULL, 320507000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320508000000', '320500000000', 3, '320508000000', '姑苏区', NULL, 320508000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320509000000', '320500000000', 3, '320509000000', '吴江区', NULL, 320509000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320571000000', '320500000000', 3, '320571000000', '苏州工业园区', NULL, 320571000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320581000000', '320500000000', 3, '320581000000', '常熟市', NULL, 320581000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320582000000', '320500000000', 3, '320582000000', '张家港市', NULL, 320582000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320583000000', '320500000000', 3, '320583000000', '昆山市', NULL, 320583000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320585000000', '320500000000', 3, '320585000000', '太仓市', NULL, 320585000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320600000000', '320000000000', 2, '320600000000', '南通市', NULL, 320600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320602000000', '320600000000', 3, '320602000000', '崇川区', NULL, 320602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320611000000', '320600000000', 3, '320611000000', '港闸区', NULL, 320611000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320612000000', '320600000000', 3, '320612000000', '通州区', NULL, 320612000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320623000000', '320600000000', 3, '320623000000', '如东县', NULL, 320623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320671000000', '320600000000', 3, '320671000000', '南通经济技术开发区', NULL, 320671000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320681000000', '320600000000', 3, '320681000000', '启东市', NULL, 320681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320682000000', '320600000000', 3, '320682000000', '如皋市', NULL, 320682000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320684000000', '320600000000', 3, '320684000000', '海门市', NULL, 320684000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320685000000', '320600000000', 3, '320685000000', '海安市', NULL, 320685000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320700000000', '320000000000', 2, '320700000000', '连云港市', NULL, 320700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320703000000', '320700000000', 3, '320703000000', '连云区', NULL, 320703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320706000000', '320700000000', 3, '320706000000', '海州区', NULL, 320706000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320707000000', '320700000000', 3, '320707000000', '赣榆区', NULL, 320707000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320722000000', '320700000000', 3, '320722000000', '东海县', NULL, 320722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320723000000', '320700000000', 3, '320723000000', '灌云县', NULL, 320723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320724000000', '320700000000', 3, '320724000000', '灌南县', NULL, 320724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320771000000', '320700000000', 3, '320771000000', '连云港经济技术开发区', NULL, 320771000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320772000000', '320700000000', 3, '320772000000', '连云港高新技术产业开发区', NULL, 320772000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320800000000', '320000000000', 2, '320800000000', '淮安市', NULL, 320800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320803000000', '320800000000', 3, '320803000000', '淮安区', NULL, 320803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320804000000', '320800000000', 3, '320804000000', '淮阴区', NULL, 320804000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320812000000', '320800000000', 3, '320812000000', '清江浦区', NULL, 320812000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320813000000', '320800000000', 3, '320813000000', '洪泽区', NULL, 320813000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320826000000', '320800000000', 3, '320826000000', '涟水县', NULL, 320826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320830000000', '320800000000', 3, '320830000000', '盱眙县', NULL, 320830000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320831000000', '320800000000', 3, '320831000000', '金湖县', NULL, 320831000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320871000000', '320800000000', 3, '320871000000', '淮安经济技术开发区', NULL, 320871000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320900000000', '320000000000', 2, '320900000000', '盐城市', NULL, 320900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320902000000', '320900000000', 3, '320902000000', '亭湖区', NULL, 320902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320903000000', '320900000000', 3, '320903000000', '盐都区', NULL, 320903000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320904000000', '320900000000', 3, '320904000000', '大丰区', NULL, 320904000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320921000000', '320900000000', 3, '320921000000', '响水县', NULL, 320921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320922000000', '320900000000', 3, '320922000000', '滨海县', NULL, 320922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320923000000', '320900000000', 3, '320923000000', '阜宁县', NULL, 320923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320924000000', '320900000000', 3, '320924000000', '射阳县', NULL, 320924000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320925000000', '320900000000', 3, '320925000000', '建湖县', NULL, 320925000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320971000000', '320900000000', 3, '320971000000', '盐城经济技术开发区', NULL, 320971000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320981000000', '320900000000', 3, '320981000000', '东台市', NULL, 320981000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321000000000', '320000000000', 2, '321000000000', '扬州市', NULL, 321000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321002000000', '321000000000', 3, '321002000000', '广陵区', NULL, 321002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321003000000', '321000000000', 3, '321003000000', '邗江区', NULL, 321003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321012000000', '321000000000', 3, '321012000000', '江都区', NULL, 321012000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321023000000', '321000000000', 3, '321023000000', '宝应县', NULL, 321023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321071000000', '321000000000', 3, '321071000000', '扬州经济技术开发区', NULL, 321071000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321081000000', '321000000000', 3, '321081000000', '仪征市', NULL, 321081000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321084000000', '321000000000', 3, '321084000000', '高邮市', NULL, 321084000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321100000000', '320000000000', 2, '321100000000', '镇江市', NULL, 321100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321102000000', '321100000000', 3, '321102000000', '京口区', NULL, 321102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321111000000', '321100000000', 3, '321111000000', '润州区', NULL, 321111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321112000000', '321100000000', 3, '321112000000', '丹徒区', NULL, 321112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321171000000', '321100000000', 3, '321171000000', '镇江新区', NULL, 321171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321181000000', '321100000000', 3, '321181000000', '丹阳市', NULL, 321181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321182000000', '321100000000', 3, '321182000000', '扬中市', NULL, 321182000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321183000000', '321100000000', 3, '321183000000', '句容市', NULL, 321183000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321200000000', '320000000000', 2, '321200000000', '泰州市', NULL, 321200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321202000000', '321200000000', 3, '321202000000', '海陵区', NULL, 321202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321203000000', '321200000000', 3, '321203000000', '高港区', NULL, 321203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321204000000', '321200000000', 3, '321204000000', '姜堰区', NULL, 321204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321271000000', '321200000000', 3, '321271000000', '泰州医药高新技术产业开发区', NULL, 321271000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321281000000', '321200000000', 3, '321281000000', '兴化市', NULL, 321281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321282000000', '321200000000', 3, '321282000000', '靖江市', NULL, 321282000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321283000000', '321200000000', 3, '321283000000', '泰兴市', NULL, 321283000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321300000000', '320000000000', 2, '321300000000', '宿迁市', NULL, 321300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321302000000', '321300000000', 3, '321302000000', '宿城区', NULL, 321302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321311000000', '321300000000', 3, '321311000000', '宿豫区', NULL, 321311000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321322000000', '321300000000', 3, '321322000000', '沭阳县', NULL, 321322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321323000000', '321300000000', 3, '321323000000', '泗阳县', NULL, 321323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321324000000', '321300000000', 3, '321324000000', '泗洪县', NULL, 321324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321371000000', '321300000000', 3, '321371000000', '宿迁经济技术开发区', NULL, 321371000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330000000000', '0', 1, '330000000000', '浙江省', NULL, 330000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330100000000', '330000000000', 2, '330100000000', '杭州市', NULL, 330100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330102000000', '330100000000', 3, '330102000000', '上城区', NULL, 330102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330103000000', '330100000000', 3, '330103000000', '下城区', NULL, 330103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330104000000', '330100000000', 3, '330104000000', '江干区', NULL, 330104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330105000000', '330100000000', 3, '330105000000', '拱墅区', NULL, 330105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330106000000', '330100000000', 3, '330106000000', '西湖区', NULL, 330106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330108000000', '330100000000', 3, '330108000000', '滨江区', NULL, 330108000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330109000000', '330100000000', 3, '330109000000', '萧山区', NULL, 330109000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330110000000', '330100000000', 3, '330110000000', '余杭区', NULL, 330110000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330111000000', '330100000000', 3, '330111000000', '富阳区', NULL, 330111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330112000000', '330100000000', 3, '330112000000', '临安区', NULL, 330112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330122000000', '330100000000', 3, '330122000000', '桐庐县', NULL, 330122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330127000000', '330100000000', 3, '330127000000', '淳安县', NULL, 330127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330182000000', '330100000000', 3, '330182000000', '建德市', NULL, 330182000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330200000000', '330000000000', 2, '330200000000', '宁波市', NULL, 330200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330203000000', '330200000000', 3, '330203000000', '海曙区', NULL, 330203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330205000000', '330200000000', 3, '330205000000', '江北区', NULL, 330205000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330206000000', '330200000000', 3, '330206000000', '北仑区', NULL, 330206000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330211000000', '330200000000', 3, '330211000000', '镇海区', NULL, 330211000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330212000000', '330200000000', 3, '330212000000', '鄞州区', NULL, 330212000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330213000000', '330200000000', 3, '330213000000', '奉化区', NULL, 330213000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330225000000', '330200000000', 3, '330225000000', '象山县', NULL, 330225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330226000000', '330200000000', 3, '330226000000', '宁海县', NULL, 330226000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330281000000', '330200000000', 3, '330281000000', '余姚市', NULL, 330281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330282000000', '330200000000', 3, '330282000000', '慈溪市', NULL, 330282000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330300000000', '330000000000', 2, '330300000000', '温州市', NULL, 330300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330302000000', '330300000000', 3, '330302000000', '鹿城区', NULL, 330302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330303000000', '330300000000', 3, '330303000000', '龙湾区', NULL, 330303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330304000000', '330300000000', 3, '330304000000', '瓯海区', NULL, 330304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330305000000', '330300000000', 3, '330305000000', '洞头区', NULL, 330305000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330324000000', '330300000000', 3, '330324000000', '永嘉县', NULL, 330324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330326000000', '330300000000', 3, '330326000000', '平阳县', NULL, 330326000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330327000000', '330300000000', 3, '330327000000', '苍南县', NULL, 330327000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330328000000', '330300000000', 3, '330328000000', '文成县', NULL, 330328000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330329000000', '330300000000', 3, '330329000000', '泰顺县', NULL, 330329000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330371000000', '330300000000', 3, '330371000000', '温州经济技术开发区', NULL, 330371000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330381000000', '330300000000', 3, '330381000000', '瑞安市', NULL, 330381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330382000000', '330300000000', 3, '330382000000', '乐清市', NULL, 330382000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330383000000', '330300000000', 3, '330383000000', '龙港市', NULL, 330383000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330400000000', '330000000000', 2, '330400000000', '嘉兴市', NULL, 330400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330402000000', '330400000000', 3, '330402000000', '南湖区', NULL, 330402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330411000000', '330400000000', 3, '330411000000', '秀洲区', NULL, 330411000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330421000000', '330400000000', 3, '330421000000', '嘉善县', NULL, 330421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330424000000', '330400000000', 3, '330424000000', '海盐县', NULL, 330424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330481000000', '330400000000', 3, '330481000000', '海宁市', NULL, 330481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330482000000', '330400000000', 3, '330482000000', '平湖市', NULL, 330482000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330483000000', '330400000000', 3, '330483000000', '桐乡市', NULL, 330483000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330500000000', '330000000000', 2, '330500000000', '湖州市', NULL, 330500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330502000000', '330500000000', 3, '330502000000', '吴兴区', NULL, 330502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330503000000', '330500000000', 3, '330503000000', '南浔区', NULL, 330503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330521000000', '330500000000', 3, '330521000000', '德清县', NULL, 330521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330522000000', '330500000000', 3, '330522000000', '长兴县', NULL, 330522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330523000000', '330500000000', 3, '330523000000', '安吉县', NULL, 330523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330600000000', '330000000000', 2, '330600000000', '绍兴市', NULL, 330600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330602000000', '330600000000', 3, '330602000000', '越城区', NULL, 330602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330603000000', '330600000000', 3, '330603000000', '柯桥区', NULL, 330603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330604000000', '330600000000', 3, '330604000000', '上虞区', NULL, 330604000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330624000000', '330600000000', 3, '330624000000', '新昌县', NULL, 330624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330681000000', '330600000000', 3, '330681000000', '诸暨市', NULL, 330681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330683000000', '330600000000', 3, '330683000000', '嵊州市', NULL, 330683000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330700000000', '330000000000', 2, '330700000000', '金华市', NULL, 330700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330702000000', '330700000000', 3, '330702000000', '婺城区', NULL, 330702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330703000000', '330700000000', 3, '330703000000', '金东区', NULL, 330703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330723000000', '330700000000', 3, '330723000000', '武义县', NULL, 330723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330726000000', '330700000000', 3, '330726000000', '浦江县', NULL, 330726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330727000000', '330700000000', 3, '330727000000', '磐安县', NULL, 330727000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330781000000', '330700000000', 3, '330781000000', '兰溪市', NULL, 330781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330782000000', '330700000000', 3, '330782000000', '义乌市', NULL, 330782000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330783000000', '330700000000', 3, '330783000000', '东阳市', NULL, 330783000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330784000000', '330700000000', 3, '330784000000', '永康市', NULL, 330784000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330800000000', '330000000000', 2, '330800000000', '衢州市', NULL, 330800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330802000000', '330800000000', 3, '330802000000', '柯城区', NULL, 330802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330803000000', '330800000000', 3, '330803000000', '衢江区', NULL, 330803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330822000000', '330800000000', 3, '330822000000', '常山县', NULL, 330822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330824000000', '330800000000', 3, '330824000000', '开化县', NULL, 330824000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330825000000', '330800000000', 3, '330825000000', '龙游县', NULL, 330825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330881000000', '330800000000', 3, '330881000000', '江山市', NULL, 330881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330900000000', '330000000000', 2, '330900000000', '舟山市', NULL, 330900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330902000000', '330900000000', 3, '330902000000', '定海区', NULL, 330902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330903000000', '330900000000', 3, '330903000000', '普陀区', NULL, 330903000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330921000000', '330900000000', 3, '330921000000', '岱山县', NULL, 330921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330922000000', '330900000000', 3, '330922000000', '嵊泗县', NULL, 330922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331000000000', '330000000000', 2, '331000000000', '台州市', NULL, 331000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331002000000', '331000000000', 3, '331002000000', '椒江区', NULL, 331002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331003000000', '331000000000', 3, '331003000000', '黄岩区', NULL, 331003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331004000000', '331000000000', 3, '331004000000', '路桥区', NULL, 331004000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331022000000', '331000000000', 3, '331022000000', '三门县', NULL, 331022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331023000000', '331000000000', 3, '331023000000', '天台县', NULL, 331023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331024000000', '331000000000', 3, '331024000000', '仙居县', NULL, 331024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331081000000', '331000000000', 3, '331081000000', '温岭市', NULL, 331081000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331082000000', '331000000000', 3, '331082000000', '临海市', NULL, 331082000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331083000000', '331000000000', 3, '331083000000', '玉环市', NULL, 331083000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331100000000', '330000000000', 2, '331100000000', '丽水市', NULL, 331100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331102000000', '331100000000', 3, '331102000000', '莲都区', NULL, 331102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331121000000', '331100000000', 3, '331121000000', '青田县', NULL, 331121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331122000000', '331100000000', 3, '331122000000', '缙云县', NULL, 331122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331123000000', '331100000000', 3, '331123000000', '遂昌县', NULL, 331123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331124000000', '331100000000', 3, '331124000000', '松阳县', NULL, 331124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331125000000', '331100000000', 3, '331125000000', '云和县', NULL, 331125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331126000000', '331100000000', 3, '331126000000', '庆元县', NULL, 331126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331127000000', '331100000000', 3, '331127000000', '景宁畲族自治县', NULL, 331127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331181000000', '331100000000', 3, '331181000000', '龙泉市', NULL, 331181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340000000000', '0', 1, '340000000000', '安徽省', NULL, 340000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340100000000', '340000000000', 2, '340100000000', '合肥市', NULL, 340100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340102000000', '340100000000', 3, '340102000000', '瑶海区', NULL, 340102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340103000000', '340100000000', 3, '340103000000', '庐阳区', NULL, 340103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340104000000', '340100000000', 3, '340104000000', '蜀山区', NULL, 340104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340111000000', '340100000000', 3, '340111000000', '包河区', NULL, 340111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340121000000', '340100000000', 3, '340121000000', '长丰县', NULL, 340121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340122000000', '340100000000', 3, '340122000000', '肥东县', NULL, 340122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340123000000', '340100000000', 3, '340123000000', '肥西县', NULL, 340123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340124000000', '340100000000', 3, '340124000000', '庐江县', NULL, 340124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340171000000', '340100000000', 3, '340171000000', '合肥高新技术产业开发区', NULL, 340171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340172000000', '340100000000', 3, '340172000000', '合肥经济技术开发区', NULL, 340172000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340173000000', '340100000000', 3, '340173000000', '合肥新站高新技术产业开发区', NULL, 340173000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340181000000', '340100000000', 3, '340181000000', '巢湖市', NULL, 340181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340200000000', '340000000000', 2, '340200000000', '芜湖市', NULL, 340200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340202000000', '340200000000', 3, '340202000000', '镜湖区', NULL, 340202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340203000000', '340200000000', 3, '340203000000', '弋江区', NULL, 340203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340207000000', '340200000000', 3, '340207000000', '鸠江区', NULL, 340207000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340208000000', '340200000000', 3, '340208000000', '三山区', NULL, 340208000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340221000000', '340200000000', 3, '340221000000', '芜湖县', NULL, 340221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340222000000', '340200000000', 3, '340222000000', '繁昌县', NULL, 340222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340223000000', '340200000000', 3, '340223000000', '南陵县', NULL, 340223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340225000000', '340200000000', 3, '340225000000', '无为县', NULL, 340225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340271000000', '340200000000', 3, '340271000000', '芜湖经济技术开发区', NULL, 340271000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340272000000', '340200000000', 3, '340272000000', '安徽芜湖长江大桥经济开发区', NULL, 340272000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340300000000', '340000000000', 2, '340300000000', '蚌埠市', NULL, 340300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340302000000', '340300000000', 3, '340302000000', '龙子湖区', NULL, 340302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340303000000', '340300000000', 3, '340303000000', '蚌山区', NULL, 340303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340304000000', '340300000000', 3, '340304000000', '禹会区', NULL, 340304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340311000000', '340300000000', 3, '340311000000', '淮上区', NULL, 340311000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340321000000', '340300000000', 3, '340321000000', '怀远县', NULL, 340321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340322000000', '340300000000', 3, '340322000000', '五河县', NULL, 340322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340323000000', '340300000000', 3, '340323000000', '固镇县', NULL, 340323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340371000000', '340300000000', 3, '340371000000', '蚌埠市高新技术开发区', NULL, 340371000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340372000000', '340300000000', 3, '340372000000', '蚌埠市经济开发区', NULL, 340372000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340400000000', '340000000000', 2, '340400000000', '淮南市', NULL, 340400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340402000000', '340400000000', 3, '340402000000', '大通区', NULL, 340402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340403000000', '340400000000', 3, '340403000000', '田家庵区', NULL, 340403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340404000000', '340400000000', 3, '340404000000', '谢家集区', NULL, 340404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340405000000', '340400000000', 3, '340405000000', '八公山区', NULL, 340405000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340406000000', '340400000000', 3, '340406000000', '潘集区', NULL, 340406000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340421000000', '340400000000', 3, '340421000000', '凤台县', NULL, 340421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340422000000', '340400000000', 3, '340422000000', '寿县', NULL, 340422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340500000000', '340000000000', 2, '340500000000', '马鞍山市', NULL, 340500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340503000000', '340500000000', 3, '340503000000', '花山区', NULL, 340503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340504000000', '340500000000', 3, '340504000000', '雨山区', NULL, 340504000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340506000000', '340500000000', 3, '340506000000', '博望区', NULL, 340506000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340521000000', '340500000000', 3, '340521000000', '当涂县', NULL, 340521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340522000000', '340500000000', 3, '340522000000', '含山县', NULL, 340522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340523000000', '340500000000', 3, '340523000000', '和县', NULL, 340523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340600000000', '340000000000', 2, '340600000000', '淮北市', NULL, 340600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340602000000', '340600000000', 3, '340602000000', '杜集区', NULL, 340602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340603000000', '340600000000', 3, '340603000000', '相山区', NULL, 340603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340604000000', '340600000000', 3, '340604000000', '烈山区', NULL, 340604000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340621000000', '340600000000', 3, '340621000000', '濉溪县', NULL, 340621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340700000000', '340000000000', 2, '340700000000', '铜陵市', NULL, 340700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340705000000', '340700000000', 3, '340705000000', '铜官区', NULL, 340705000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340706000000', '340700000000', 3, '340706000000', '义安区', NULL, 340706000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340711000000', '340700000000', 3, '340711000000', '郊区', NULL, 340711000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340722000000', '340700000000', 3, '340722000000', '枞阳县', NULL, 340722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340800000000', '340000000000', 2, '340800000000', '安庆市', NULL, 340800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340802000000', '340800000000', 3, '340802000000', '迎江区', NULL, 340802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340803000000', '340800000000', 3, '340803000000', '大观区', NULL, 340803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340811000000', '340800000000', 3, '340811000000', '宜秀区', NULL, 340811000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340822000000', '340800000000', 3, '340822000000', '怀宁县', NULL, 340822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340825000000', '340800000000', 3, '340825000000', '太湖县', NULL, 340825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340826000000', '340800000000', 3, '340826000000', '宿松县', NULL, 340826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340827000000', '340800000000', 3, '340827000000', '望江县', NULL, 340827000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340828000000', '340800000000', 3, '340828000000', '岳西县', NULL, 340828000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340871000000', '340800000000', 3, '340871000000', '安徽安庆经济开发区', NULL, 340871000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340881000000', '340800000000', 3, '340881000000', '桐城市', NULL, 340881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340882000000', '340800000000', 3, '340882000000', '潜山市', NULL, 340882000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341000000000', '340000000000', 2, '341000000000', '黄山市', NULL, 341000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341002000000', '341000000000', 3, '341002000000', '屯溪区', NULL, 341002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341003000000', '341000000000', 3, '341003000000', '黄山区', NULL, 341003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341004000000', '341000000000', 3, '341004000000', '徽州区', NULL, 341004000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341021000000', '341000000000', 3, '341021000000', '歙县', NULL, 341021000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341022000000', '341000000000', 3, '341022000000', '休宁县', NULL, 341022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341023000000', '341000000000', 3, '341023000000', '黟县', NULL, 341023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341024000000', '341000000000', 3, '341024000000', '祁门县', NULL, 341024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341100000000', '340000000000', 2, '341100000000', '滁州市', NULL, 341100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341102000000', '341100000000', 3, '341102000000', '琅琊区', NULL, 341102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341103000000', '341100000000', 3, '341103000000', '南谯区', NULL, 341103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341122000000', '341100000000', 3, '341122000000', '来安县', NULL, 341122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341124000000', '341100000000', 3, '341124000000', '全椒县', NULL, 341124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341125000000', '341100000000', 3, '341125000000', '定远县', NULL, 341125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341126000000', '341100000000', 3, '341126000000', '凤阳县', NULL, 341126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341171000000', '341100000000', 3, '341171000000', '苏滁现代产业园', NULL, 341171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341172000000', '341100000000', 3, '341172000000', '滁州经济技术开发区', NULL, 341172000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341181000000', '341100000000', 3, '341181000000', '天长市', NULL, 341181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341182000000', '341100000000', 3, '341182000000', '明光市', NULL, 341182000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341200000000', '340000000000', 2, '341200000000', '阜阳市', NULL, 341200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341202000000', '341200000000', 3, '341202000000', '颍州区', NULL, 341202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341203000000', '341200000000', 3, '341203000000', '颍东区', NULL, 341203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341204000000', '341200000000', 3, '341204000000', '颍泉区', NULL, 341204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341221000000', '341200000000', 3, '341221000000', '临泉县', NULL, 341221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341222000000', '341200000000', 3, '341222000000', '太和县', NULL, 341222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341225000000', '341200000000', 3, '341225000000', '阜南县', NULL, 341225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341226000000', '341200000000', 3, '341226000000', '颍上县', NULL, 341226000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341271000000', '341200000000', 3, '341271000000', '阜阳合肥现代产业园区', NULL, 341271000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341272000000', '341200000000', 3, '341272000000', '阜阳经济技术开发区', NULL, 341272000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341282000000', '341200000000', 3, '341282000000', '界首市', NULL, 341282000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341300000000', '340000000000', 2, '341300000000', '宿州市', NULL, 341300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341302000000', '341300000000', 3, '341302000000', '埇桥区', NULL, 341302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341321000000', '341300000000', 3, '341321000000', '砀山县', NULL, 341321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341322000000', '341300000000', 3, '341322000000', '萧县', NULL, 341322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341323000000', '341300000000', 3, '341323000000', '灵璧县', NULL, 341323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341324000000', '341300000000', 3, '341324000000', '泗县', NULL, 341324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341371000000', '341300000000', 3, '341371000000', '宿州马鞍山现代产业园区', NULL, 341371000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341372000000', '341300000000', 3, '341372000000', '宿州经济技术开发区', NULL, 341372000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341500000000', '340000000000', 2, '341500000000', '六安市', NULL, 341500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341502000000', '341500000000', 3, '341502000000', '金安区', NULL, 341502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341503000000', '341500000000', 3, '341503000000', '裕安区', NULL, 341503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341504000000', '341500000000', 3, '341504000000', '叶集区', NULL, 341504000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341522000000', '341500000000', 3, '341522000000', '霍邱县', NULL, 341522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341523000000', '341500000000', 3, '341523000000', '舒城县', NULL, 341523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341524000000', '341500000000', 3, '341524000000', '金寨县', NULL, 341524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341525000000', '341500000000', 3, '341525000000', '霍山县', NULL, 341525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341600000000', '340000000000', 2, '341600000000', '亳州市', NULL, 341600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341602000000', '341600000000', 3, '341602000000', '谯城区', NULL, 341602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341621000000', '341600000000', 3, '341621000000', '涡阳县', NULL, 341621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341622000000', '341600000000', 3, '341622000000', '蒙城县', NULL, 341622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341623000000', '341600000000', 3, '341623000000', '利辛县', NULL, 341623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341700000000', '340000000000', 2, '341700000000', '池州市', NULL, 341700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341702000000', '341700000000', 3, '341702000000', '贵池区', NULL, 341702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341721000000', '341700000000', 3, '341721000000', '东至县', NULL, 341721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341722000000', '341700000000', 3, '341722000000', '石台县', NULL, 341722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341723000000', '341700000000', 3, '341723000000', '青阳县', NULL, 341723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341800000000', '340000000000', 2, '341800000000', '宣城市', NULL, 341800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341802000000', '341800000000', 3, '341802000000', '宣州区', NULL, 341802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341821000000', '341800000000', 3, '341821000000', '郎溪县', NULL, 341821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341823000000', '341800000000', 3, '341823000000', '泾县', NULL, 341823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341824000000', '341800000000', 3, '341824000000', '绩溪县', NULL, 341824000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341825000000', '341800000000', 3, '341825000000', '旌德县', NULL, 341825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341871000000', '341800000000', 3, '341871000000', '宣城市经济开发区', NULL, 341871000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341881000000', '341800000000', 3, '341881000000', '宁国市', NULL, 341881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341882000000', '341800000000', 3, '341882000000', '广德市', NULL, 341882000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350000000000', '0', 1, '350000000000', '福建省', NULL, 350000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350100000000', '350000000000', 2, '350100000000', '福州市', NULL, 350100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350102000000', '350100000000', 3, '350102000000', '鼓楼区', NULL, 350102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350103000000', '350100000000', 3, '350103000000', '台江区', NULL, 350103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350104000000', '350100000000', 3, '350104000000', '仓山区', NULL, 350104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350105000000', '350100000000', 3, '350105000000', '马尾区', NULL, 350105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350111000000', '350100000000', 3, '350111000000', '晋安区', NULL, 350111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350112000000', '350100000000', 3, '350112000000', '长乐区', NULL, 350112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350121000000', '350100000000', 3, '350121000000', '闽侯县', NULL, 350121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350122000000', '350100000000', 3, '350122000000', '连江县', NULL, 350122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350123000000', '350100000000', 3, '350123000000', '罗源县', NULL, 350123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350124000000', '350100000000', 3, '350124000000', '闽清县', NULL, 350124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350125000000', '350100000000', 3, '350125000000', '永泰县', NULL, 350125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350128000000', '350100000000', 3, '350128000000', '平潭县', NULL, 350128000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350181000000', '350100000000', 3, '350181000000', '福清市', NULL, 350181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350200000000', '350000000000', 2, '350200000000', '厦门市', NULL, 350200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350203000000', '350200000000', 3, '350203000000', '思明区', NULL, 350203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350205000000', '350200000000', 3, '350205000000', '海沧区', NULL, 350205000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350206000000', '350200000000', 3, '350206000000', '湖里区', NULL, 350206000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350211000000', '350200000000', 3, '350211000000', '集美区', NULL, 350211000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350212000000', '350200000000', 3, '350212000000', '同安区', NULL, 350212000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350213000000', '350200000000', 3, '350213000000', '翔安区', NULL, 350213000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350300000000', '350000000000', 2, '350300000000', '莆田市', NULL, 350300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350302000000', '350300000000', 3, '350302000000', '城厢区', NULL, 350302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350303000000', '350300000000', 3, '350303000000', '涵江区', NULL, 350303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350304000000', '350300000000', 3, '350304000000', '荔城区', NULL, 350304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350305000000', '350300000000', 3, '350305000000', '秀屿区', NULL, 350305000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350322000000', '350300000000', 3, '350322000000', '仙游县', NULL, 350322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350400000000', '350000000000', 2, '350400000000', '三明市', NULL, 350400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350402000000', '350400000000', 3, '350402000000', '梅列区', NULL, 350402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350403000000', '350400000000', 3, '350403000000', '三元区', NULL, 350403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350421000000', '350400000000', 3, '350421000000', '明溪县', NULL, 350421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350423000000', '350400000000', 3, '350423000000', '清流县', NULL, 350423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350424000000', '350400000000', 3, '350424000000', '宁化县', NULL, 350424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350425000000', '350400000000', 3, '350425000000', '大田县', NULL, 350425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350426000000', '350400000000', 3, '350426000000', '尤溪县', NULL, 350426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350427000000', '350400000000', 3, '350427000000', '沙县', NULL, 350427000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350428000000', '350400000000', 3, '350428000000', '将乐县', NULL, 350428000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350429000000', '350400000000', 3, '350429000000', '泰宁县', NULL, 350429000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350430000000', '350400000000', 3, '350430000000', '建宁县', NULL, 350430000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350481000000', '350400000000', 3, '350481000000', '永安市', NULL, 350481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350500000000', '350000000000', 2, '350500000000', '泉州市', NULL, 350500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350502000000', '350500000000', 3, '350502000000', '鲤城区', NULL, 350502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350503000000', '350500000000', 3, '350503000000', '丰泽区', NULL, 350503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350504000000', '350500000000', 3, '350504000000', '洛江区', NULL, 350504000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350505000000', '350500000000', 3, '350505000000', '泉港区', NULL, 350505000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350521000000', '350500000000', 3, '350521000000', '惠安县', NULL, 350521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350524000000', '350500000000', 3, '350524000000', '安溪县', NULL, 350524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350525000000', '350500000000', 3, '350525000000', '永春县', NULL, 350525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350526000000', '350500000000', 3, '350526000000', '德化县', NULL, 350526000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350527000000', '350500000000', 3, '350527000000', '金门县', NULL, 350527000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350581000000', '350500000000', 3, '350581000000', '石狮市', NULL, 350581000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350582000000', '350500000000', 3, '350582000000', '晋江市', NULL, 350582000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350583000000', '350500000000', 3, '350583000000', '南安市', NULL, 350583000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350600000000', '350000000000', 2, '350600000000', '漳州市', NULL, 350600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350602000000', '350600000000', 3, '350602000000', '芗城区', NULL, 350602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350603000000', '350600000000', 3, '350603000000', '龙文区', NULL, 350603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350622000000', '350600000000', 3, '350622000000', '云霄县', NULL, 350622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350623000000', '350600000000', 3, '350623000000', '漳浦县', NULL, 350623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350624000000', '350600000000', 3, '350624000000', '诏安县', NULL, 350624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350625000000', '350600000000', 3, '350625000000', '长泰县', NULL, 350625000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350626000000', '350600000000', 3, '350626000000', '东山县', NULL, 350626000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350627000000', '350600000000', 3, '350627000000', '南靖县', NULL, 350627000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350628000000', '350600000000', 3, '350628000000', '平和县', NULL, 350628000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350629000000', '350600000000', 3, '350629000000', '华安县', NULL, 350629000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350681000000', '350600000000', 3, '350681000000', '龙海市', NULL, 350681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350700000000', '350000000000', 2, '350700000000', '南平市', NULL, 350700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350702000000', '350700000000', 3, '350702000000', '延平区', NULL, 350702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350703000000', '350700000000', 3, '350703000000', '建阳区', NULL, 350703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350721000000', '350700000000', 3, '350721000000', '顺昌县', NULL, 350721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350722000000', '350700000000', 3, '350722000000', '浦城县', NULL, 350722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350723000000', '350700000000', 3, '350723000000', '光泽县', NULL, 350723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350724000000', '350700000000', 3, '350724000000', '松溪县', NULL, 350724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350725000000', '350700000000', 3, '350725000000', '政和县', NULL, 350725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350781000000', '350700000000', 3, '350781000000', '邵武市', NULL, 350781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350782000000', '350700000000', 3, '350782000000', '武夷山市', NULL, 350782000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350783000000', '350700000000', 3, '350783000000', '建瓯市', NULL, 350783000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350800000000', '350000000000', 2, '350800000000', '龙岩市', NULL, 350800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350802000000', '350800000000', 3, '350802000000', '新罗区', NULL, 350802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350803000000', '350800000000', 3, '350803000000', '永定区', NULL, 350803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350821000000', '350800000000', 3, '350821000000', '长汀县', NULL, 350821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350823000000', '350800000000', 3, '350823000000', '上杭县', NULL, 350823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350824000000', '350800000000', 3, '350824000000', '武平县', NULL, 350824000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350825000000', '350800000000', 3, '350825000000', '连城县', NULL, 350825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350881000000', '350800000000', 3, '350881000000', '漳平市', NULL, 350881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350900000000', '350000000000', 2, '350900000000', '宁德市', NULL, 350900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350902000000', '350900000000', 3, '350902000000', '蕉城区', NULL, 350902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350921000000', '350900000000', 3, '350921000000', '霞浦县', NULL, 350921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350922000000', '350900000000', 3, '350922000000', '古田县', NULL, 350922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350923000000', '350900000000', 3, '350923000000', '屏南县', NULL, 350923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350924000000', '350900000000', 3, '350924000000', '寿宁县', NULL, 350924000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350925000000', '350900000000', 3, '350925000000', '周宁县', NULL, 350925000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350926000000', '350900000000', 3, '350926000000', '柘荣县', NULL, 350926000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350981000000', '350900000000', 3, '350981000000', '福安市', NULL, 350981000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350982000000', '350900000000', 3, '350982000000', '福鼎市', NULL, 350982000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360000000000', '0', 1, '360000000000', '江西省', NULL, 360000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360100000000', '360000000000', 2, '360100000000', '南昌市', NULL, 360100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360102000000', '360100000000', 3, '360102000000', '东湖区', NULL, 360102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360103000000', '360100000000', 3, '360103000000', '西湖区', NULL, 360103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360104000000', '360100000000', 3, '360104000000', '青云谱区', NULL, 360104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360105000000', '360100000000', 3, '360105000000', '湾里区', NULL, 360105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360111000000', '360100000000', 3, '360111000000', '青山湖区', NULL, 360111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360112000000', '360100000000', 3, '360112000000', '新建区', NULL, 360112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360121000000', '360100000000', 3, '360121000000', '南昌县', NULL, 360121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360123000000', '360100000000', 3, '360123000000', '安义县', NULL, 360123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360124000000', '360100000000', 3, '360124000000', '进贤县', NULL, 360124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360200000000', '360000000000', 2, '360200000000', '景德镇市', NULL, 360200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360202000000', '360200000000', 3, '360202000000', '昌江区', NULL, 360202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360203000000', '360200000000', 3, '360203000000', '珠山区', NULL, 360203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360222000000', '360200000000', 3, '360222000000', '浮梁县', NULL, 360222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360281000000', '360200000000', 3, '360281000000', '乐平市', NULL, 360281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360300000000', '360000000000', 2, '360300000000', '萍乡市', NULL, 360300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360302000000', '360300000000', 3, '360302000000', '安源区', NULL, 360302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360313000000', '360300000000', 3, '360313000000', '湘东区', NULL, 360313000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360321000000', '360300000000', 3, '360321000000', '莲花县', NULL, 360321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360322000000', '360300000000', 3, '360322000000', '上栗县', NULL, 360322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360323000000', '360300000000', 3, '360323000000', '芦溪县', NULL, 360323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360400000000', '360000000000', 2, '360400000000', '九江市', NULL, 360400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360402000000', '360400000000', 3, '360402000000', '濂溪区', NULL, 360402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360403000000', '360400000000', 3, '360403000000', '浔阳区', NULL, 360403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360404000000', '360400000000', 3, '360404000000', '柴桑区', NULL, 360404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360423000000', '360400000000', 3, '360423000000', '武宁县', NULL, 360423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360424000000', '360400000000', 3, '360424000000', '修水县', NULL, 360424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360425000000', '360400000000', 3, '360425000000', '永修县', NULL, 360425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360426000000', '360400000000', 3, '360426000000', '德安县', NULL, 360426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360428000000', '360400000000', 3, '360428000000', '都昌县', NULL, 360428000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360429000000', '360400000000', 3, '360429000000', '湖口县', NULL, 360429000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360430000000', '360400000000', 3, '360430000000', '彭泽县', NULL, 360430000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360481000000', '360400000000', 3, '360481000000', '瑞昌市', NULL, 360481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360482000000', '360400000000', 3, '360482000000', '共青城市', NULL, 360482000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360483000000', '360400000000', 3, '360483000000', '庐山市', NULL, 360483000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360500000000', '360000000000', 2, '360500000000', '新余市', NULL, 360500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360502000000', '360500000000', 3, '360502000000', '渝水区', NULL, 360502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360521000000', '360500000000', 3, '360521000000', '分宜县', NULL, 360521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360600000000', '360000000000', 2, '360600000000', '鹰潭市', NULL, 360600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360602000000', '360600000000', 3, '360602000000', '月湖区', NULL, 360602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360603000000', '360600000000', 3, '360603000000', '余江区', NULL, 360603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360681000000', '360600000000', 3, '360681000000', '贵溪市', NULL, 360681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360700000000', '360000000000', 2, '360700000000', '赣州市', NULL, 360700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360702000000', '360700000000', 3, '360702000000', '章贡区', NULL, 360702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360703000000', '360700000000', 3, '360703000000', '南康区', NULL, 360703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360704000000', '360700000000', 3, '360704000000', '赣县区', NULL, 360704000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360722000000', '360700000000', 3, '360722000000', '信丰县', NULL, 360722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360723000000', '360700000000', 3, '360723000000', '大余县', NULL, 360723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360724000000', '360700000000', 3, '360724000000', '上犹县', NULL, 360724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360725000000', '360700000000', 3, '360725000000', '崇义县', NULL, 360725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360726000000', '360700000000', 3, '360726000000', '安远县', NULL, 360726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360727000000', '360700000000', 3, '360727000000', '龙南县', NULL, 360727000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360728000000', '360700000000', 3, '360728000000', '定南县', NULL, 360728000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360729000000', '360700000000', 3, '360729000000', '全南县', NULL, 360729000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360730000000', '360700000000', 3, '360730000000', '宁都县', NULL, 360730000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360731000000', '360700000000', 3, '360731000000', '于都县', NULL, 360731000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360732000000', '360700000000', 3, '360732000000', '兴国县', NULL, 360732000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360733000000', '360700000000', 3, '360733000000', '会昌县', NULL, 360733000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360734000000', '360700000000', 3, '360734000000', '寻乌县', NULL, 360734000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360735000000', '360700000000', 3, '360735000000', '石城县', NULL, 360735000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360781000000', '360700000000', 3, '360781000000', '瑞金市', NULL, 360781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360800000000', '360000000000', 2, '360800000000', '吉安市', NULL, 360800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360802000000', '360800000000', 3, '360802000000', '吉州区', NULL, 360802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360803000000', '360800000000', 3, '360803000000', '青原区', NULL, 360803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360821000000', '360800000000', 3, '360821000000', '吉安县', NULL, 360821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360822000000', '360800000000', 3, '360822000000', '吉水县', NULL, 360822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360823000000', '360800000000', 3, '360823000000', '峡江县', NULL, 360823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360824000000', '360800000000', 3, '360824000000', '新干县', NULL, 360824000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360825000000', '360800000000', 3, '360825000000', '永丰县', NULL, 360825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360826000000', '360800000000', 3, '360826000000', '泰和县', NULL, 360826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360827000000', '360800000000', 3, '360827000000', '遂川县', NULL, 360827000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360828000000', '360800000000', 3, '360828000000', '万安县', NULL, 360828000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360829000000', '360800000000', 3, '360829000000', '安福县', NULL, 360829000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360830000000', '360800000000', 3, '360830000000', '永新县', NULL, 360830000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360881000000', '360800000000', 3, '360881000000', '井冈山市', NULL, 360881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360900000000', '360000000000', 2, '360900000000', '宜春市', NULL, 360900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360902000000', '360900000000', 3, '360902000000', '袁州区', NULL, 360902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360921000000', '360900000000', 3, '360921000000', '奉新县', NULL, 360921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360922000000', '360900000000', 3, '360922000000', '万载县', NULL, 360922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360923000000', '360900000000', 3, '360923000000', '上高县', NULL, 360923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360924000000', '360900000000', 3, '360924000000', '宜丰县', NULL, 360924000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360925000000', '360900000000', 3, '360925000000', '靖安县', NULL, 360925000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360926000000', '360900000000', 3, '360926000000', '铜鼓县', NULL, 360926000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360981000000', '360900000000', 3, '360981000000', '丰城市', NULL, 360981000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360982000000', '360900000000', 3, '360982000000', '樟树市', NULL, 360982000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360983000000', '360900000000', 3, '360983000000', '高安市', NULL, 360983000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361000000000', '360000000000', 2, '361000000000', '抚州市', NULL, 361000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361002000000', '361000000000', 3, '361002000000', '临川区', NULL, 361002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361003000000', '361000000000', 3, '361003000000', '东乡区', NULL, 361003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361021000000', '361000000000', 3, '361021000000', '南城县', NULL, 361021000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361022000000', '361000000000', 3, '361022000000', '黎川县', NULL, 361022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361023000000', '361000000000', 3, '361023000000', '南丰县', NULL, 361023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361024000000', '361000000000', 3, '361024000000', '崇仁县', NULL, 361024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361025000000', '361000000000', 3, '361025000000', '乐安县', NULL, 361025000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361026000000', '361000000000', 3, '361026000000', '宜黄县', NULL, 361026000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361027000000', '361000000000', 3, '361027000000', '金溪县', NULL, 361027000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361028000000', '361000000000', 3, '361028000000', '资溪县', NULL, 361028000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361030000000', '361000000000', 3, '361030000000', '广昌县', NULL, 361030000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361100000000', '360000000000', 2, '361100000000', '上饶市', NULL, 361100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361102000000', '361100000000', 3, '361102000000', '信州区', NULL, 361102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361103000000', '361100000000', 3, '361103000000', '广丰区', NULL, 361103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361104000000', '361100000000', 3, '361104000000', '广信区', NULL, 361104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361123000000', '361100000000', 3, '361123000000', '玉山县', NULL, 361123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361124000000', '361100000000', 3, '361124000000', '铅山县', NULL, 361124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361125000000', '361100000000', 3, '361125000000', '横峰县', NULL, 361125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361126000000', '361100000000', 3, '361126000000', '弋阳县', NULL, 361126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361127000000', '361100000000', 3, '361127000000', '余干县', NULL, 361127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361128000000', '361100000000', 3, '361128000000', '鄱阳县', NULL, 361128000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361129000000', '361100000000', 3, '361129000000', '万年县', NULL, 361129000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361130000000', '361100000000', 3, '361130000000', '婺源县', NULL, 361130000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361181000000', '361100000000', 3, '361181000000', '德兴市', NULL, 361181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370000000000', '0', 1, '370000000000', '山东省', NULL, 370000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370100000000', '370000000000', 2, '370100000000', '济南市', NULL, 370100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370102000000', '370100000000', 3, '370102000000', '历下区', NULL, 370102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370103000000', '370100000000', 3, '370103000000', '市中区', NULL, 370103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370104000000', '370100000000', 3, '370104000000', '槐荫区', NULL, 370104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370105000000', '370100000000', 3, '370105000000', '天桥区', NULL, 370105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370112000000', '370100000000', 3, '370112000000', '历城区', NULL, 370112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370113000000', '370100000000', 3, '370113000000', '长清区', NULL, 370113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370114000000', '370100000000', 3, '370114000000', '章丘区', NULL, 370114000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370115000000', '370100000000', 3, '370115000000', '济阳区', NULL, 370115000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370116000000', '370100000000', 3, '370116000000', '莱芜区', NULL, 370116000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370117000000', '370100000000', 3, '370117000000', '钢城区', NULL, 370117000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370124000000', '370100000000', 3, '370124000000', '平阴县', NULL, 370124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370126000000', '370100000000', 3, '370126000000', '商河县', NULL, 370126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370171000000', '370100000000', 3, '370171000000', '济南高新技术产业开发区', NULL, 370171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370200000000', '370000000000', 2, '370200000000', '青岛市', NULL, 370200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370202000000', '370200000000', 3, '370202000000', '市南区', NULL, 370202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370203000000', '370200000000', 3, '370203000000', '市北区', NULL, 370203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370211000000', '370200000000', 3, '370211000000', '黄岛区', NULL, 370211000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370212000000', '370200000000', 3, '370212000000', '崂山区', NULL, 370212000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370213000000', '370200000000', 3, '370213000000', '李沧区', NULL, 370213000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370214000000', '370200000000', 3, '370214000000', '城阳区', NULL, 370214000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370215000000', '370200000000', 3, '370215000000', '即墨区', NULL, 370215000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370271000000', '370200000000', 3, '370271000000', '青岛高新技术产业开发区', NULL, 370271000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370281000000', '370200000000', 3, '370281000000', '胶州市', NULL, 370281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370283000000', '370200000000', 3, '370283000000', '平度市', NULL, 370283000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370285000000', '370200000000', 3, '370285000000', '莱西市', NULL, 370285000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370300000000', '370000000000', 2, '370300000000', '淄博市', NULL, 370300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370302000000', '370300000000', 3, '370302000000', '淄川区', NULL, 370302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370303000000', '370300000000', 3, '370303000000', '张店区', NULL, 370303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370304000000', '370300000000', 3, '370304000000', '博山区', NULL, 370304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370305000000', '370300000000', 3, '370305000000', '临淄区', NULL, 370305000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370306000000', '370300000000', 3, '370306000000', '周村区', NULL, 370306000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370321000000', '370300000000', 3, '370321000000', '桓台县', NULL, 370321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370322000000', '370300000000', 3, '370322000000', '高青县', NULL, 370322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370323000000', '370300000000', 3, '370323000000', '沂源县', NULL, 370323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370400000000', '370000000000', 2, '370400000000', '枣庄市', NULL, 370400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370402000000', '370400000000', 3, '370402000000', '市中区', NULL, 370402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370403000000', '370400000000', 3, '370403000000', '薛城区', NULL, 370403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370404000000', '370400000000', 3, '370404000000', '峄城区', NULL, 370404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370405000000', '370400000000', 3, '370405000000', '台儿庄区', NULL, 370405000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370406000000', '370400000000', 3, '370406000000', '山亭区', NULL, 370406000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370481000000', '370400000000', 3, '370481000000', '滕州市', NULL, 370481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370500000000', '370000000000', 2, '370500000000', '东营市', NULL, 370500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370502000000', '370500000000', 3, '370502000000', '东营区', NULL, 370502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370503000000', '370500000000', 3, '370503000000', '河口区', NULL, 370503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370505000000', '370500000000', 3, '370505000000', '垦利区', NULL, 370505000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370522000000', '370500000000', 3, '370522000000', '利津县', NULL, 370522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370523000000', '370500000000', 3, '370523000000', '广饶县', NULL, 370523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370571000000', '370500000000', 3, '370571000000', '东营经济技术开发区', NULL, 370571000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370572000000', '370500000000', 3, '370572000000', '东营港经济开发区', NULL, 370572000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370600000000', '370000000000', 2, '370600000000', '烟台市', NULL, 370600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370602000000', '370600000000', 3, '370602000000', '芝罘区', NULL, 370602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370611000000', '370600000000', 3, '370611000000', '福山区', NULL, 370611000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370612000000', '370600000000', 3, '370612000000', '牟平区', NULL, 370612000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370613000000', '370600000000', 3, '370613000000', '莱山区', NULL, 370613000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370634000000', '370600000000', 3, '370634000000', '长岛县', NULL, 370634000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370671000000', '370600000000', 3, '370671000000', '烟台高新技术产业开发区', NULL, 370671000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370672000000', '370600000000', 3, '370672000000', '烟台经济技术开发区', NULL, 370672000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370681000000', '370600000000', 3, '370681000000', '龙口市', NULL, 370681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370682000000', '370600000000', 3, '370682000000', '莱阳市', NULL, 370682000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370683000000', '370600000000', 3, '370683000000', '莱州市', NULL, 370683000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370684000000', '370600000000', 3, '370684000000', '蓬莱市', NULL, 370684000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370685000000', '370600000000', 3, '370685000000', '招远市', NULL, 370685000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370686000000', '370600000000', 3, '370686000000', '栖霞市', NULL, 370686000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370687000000', '370600000000', 3, '370687000000', '海阳市', NULL, 370687000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370700000000', '370000000000', 2, '370700000000', '潍坊市', NULL, 370700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370702000000', '370700000000', 3, '370702000000', '潍城区', NULL, 370702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370703000000', '370700000000', 3, '370703000000', '寒亭区', NULL, 370703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370704000000', '370700000000', 3, '370704000000', '坊子区', NULL, 370704000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370705000000', '370700000000', 3, '370705000000', '奎文区', NULL, 370705000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370724000000', '370700000000', 3, '370724000000', '临朐县', NULL, 370724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370725000000', '370700000000', 3, '370725000000', '昌乐县', NULL, 370725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370772000000', '370700000000', 3, '370772000000', '潍坊滨海经济技术开发区', NULL, 370772000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370781000000', '370700000000', 3, '370781000000', '青州市', NULL, 370781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370782000000', '370700000000', 3, '370782000000', '诸城市', NULL, 370782000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370783000000', '370700000000', 3, '370783000000', '寿光市', NULL, 370783000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370784000000', '370700000000', 3, '370784000000', '安丘市', NULL, 370784000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370785000000', '370700000000', 3, '370785000000', '高密市', NULL, 370785000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370786000000', '370700000000', 3, '370786000000', '昌邑市', NULL, 370786000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370800000000', '370000000000', 2, '370800000000', '济宁市', NULL, 370800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370811000000', '370800000000', 3, '370811000000', '任城区', NULL, 370811000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370812000000', '370800000000', 3, '370812000000', '兖州区', NULL, 370812000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370826000000', '370800000000', 3, '370826000000', '微山县', NULL, 370826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370827000000', '370800000000', 3, '370827000000', '鱼台县', NULL, 370827000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370828000000', '370800000000', 3, '370828000000', '金乡县', NULL, 370828000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370829000000', '370800000000', 3, '370829000000', '嘉祥县', NULL, 370829000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370830000000', '370800000000', 3, '370830000000', '汶上县', NULL, 370830000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370831000000', '370800000000', 3, '370831000000', '泗水县', NULL, 370831000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370832000000', '370800000000', 3, '370832000000', '梁山县', NULL, 370832000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370871000000', '370800000000', 3, '370871000000', '济宁高新技术产业开发区', NULL, 370871000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370881000000', '370800000000', 3, '370881000000', '曲阜市', NULL, 370881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370883000000', '370800000000', 3, '370883000000', '邹城市', NULL, 370883000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370900000000', '370000000000', 2, '370900000000', '泰安市', NULL, 370900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370902000000', '370900000000', 3, '370902000000', '泰山区', NULL, 370902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370911000000', '370900000000', 3, '370911000000', '岱岳区', NULL, 370911000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370921000000', '370900000000', 3, '370921000000', '宁阳县', NULL, 370921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370923000000', '370900000000', 3, '370923000000', '东平县', NULL, 370923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370982000000', '370900000000', 3, '370982000000', '新泰市', NULL, 370982000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370983000000', '370900000000', 3, '370983000000', '肥城市', NULL, 370983000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371000000000', '370000000000', 2, '371000000000', '威海市', NULL, 371000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371002000000', '371000000000', 3, '371002000000', '环翠区', NULL, 371002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371003000000', '371000000000', 3, '371003000000', '文登区', NULL, 371003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371071000000', '371000000000', 3, '371071000000', '威海火炬高技术产业开发区', NULL, 371071000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371072000000', '371000000000', 3, '371072000000', '威海经济技术开发区', NULL, 371072000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371073000000', '371000000000', 3, '371073000000', '威海临港经济技术开发区', NULL, 371073000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371082000000', '371000000000', 3, '371082000000', '荣成市', NULL, 371082000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371083000000', '371000000000', 3, '371083000000', '乳山市', NULL, 371083000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371100000000', '370000000000', 2, '371100000000', '日照市', NULL, 371100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371102000000', '371100000000', 3, '371102000000', '东港区', NULL, 371102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371103000000', '371100000000', 3, '371103000000', '岚山区', NULL, 371103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371121000000', '371100000000', 3, '371121000000', '五莲县', NULL, 371121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371122000000', '371100000000', 3, '371122000000', '莒县', NULL, 371122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371171000000', '371100000000', 3, '371171000000', '日照经济技术开发区', NULL, 371171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371300000000', '370000000000', 2, '371300000000', '临沂市', NULL, 371300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371302000000', '371300000000', 3, '371302000000', '兰山区', NULL, 371302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371311000000', '371300000000', 3, '371311000000', '罗庄区', NULL, 371311000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371312000000', '371300000000', 3, '371312000000', '河东区', NULL, 371312000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371321000000', '371300000000', 3, '371321000000', '沂南县', NULL, 371321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371322000000', '371300000000', 3, '371322000000', '郯城县', NULL, 371322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371323000000', '371300000000', 3, '371323000000', '沂水县', NULL, 371323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371324000000', '371300000000', 3, '371324000000', '兰陵县', NULL, 371324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371325000000', '371300000000', 3, '371325000000', '费县', NULL, 371325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371326000000', '371300000000', 3, '371326000000', '平邑县', NULL, 371326000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371327000000', '371300000000', 3, '371327000000', '莒南县', NULL, 371327000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371328000000', '371300000000', 3, '371328000000', '蒙阴县', NULL, 371328000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371329000000', '371300000000', 3, '371329000000', '临沭县', NULL, 371329000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371371000000', '371300000000', 3, '371371000000', '临沂高新技术产业开发区', NULL, 371371000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371372000000', '371300000000', 3, '371372000000', '临沂经济技术开发区', NULL, 371372000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371373000000', '371300000000', 3, '371373000000', '临沂临港经济开发区', NULL, 371373000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371400000000', '370000000000', 2, '371400000000', '德州市', NULL, 371400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371402000000', '371400000000', 3, '371402000000', '德城区', NULL, 371402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371403000000', '371400000000', 3, '371403000000', '陵城区', NULL, 371403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371422000000', '371400000000', 3, '371422000000', '宁津县', NULL, 371422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371423000000', '371400000000', 3, '371423000000', '庆云县', NULL, 371423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371424000000', '371400000000', 3, '371424000000', '临邑县', NULL, 371424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371425000000', '371400000000', 3, '371425000000', '齐河县', NULL, 371425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371426000000', '371400000000', 3, '371426000000', '平原县', NULL, 371426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371427000000', '371400000000', 3, '371427000000', '夏津县', NULL, 371427000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371428000000', '371400000000', 3, '371428000000', '武城县', NULL, 371428000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371471000000', '371400000000', 3, '371471000000', '德州经济技术开发区', NULL, 371471000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371472000000', '371400000000', 3, '371472000000', '德州运河经济开发区', NULL, 371472000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371481000000', '371400000000', 3, '371481000000', '乐陵市', NULL, 371481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371482000000', '371400000000', 3, '371482000000', '禹城市', NULL, 371482000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371500000000', '370000000000', 2, '371500000000', '聊城市', NULL, 371500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371502000000', '371500000000', 3, '371502000000', '东昌府区', NULL, 371502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371503000000', '371500000000', 3, '371503000000', '茌平区', NULL, 371503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371521000000', '371500000000', 3, '371521000000', '阳谷县', NULL, 371521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371522000000', '371500000000', 3, '371522000000', '莘县', NULL, 371522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371524000000', '371500000000', 3, '371524000000', '东阿县', NULL, 371524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371525000000', '371500000000', 3, '371525000000', '冠县', NULL, 371525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371526000000', '371500000000', 3, '371526000000', '高唐县', NULL, 371526000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371581000000', '371500000000', 3, '371581000000', '临清市', NULL, 371581000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371600000000', '370000000000', 2, '371600000000', '滨州市', NULL, 371600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371602000000', '371600000000', 3, '371602000000', '滨城区', NULL, 371602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371603000000', '371600000000', 3, '371603000000', '沾化区', NULL, 371603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371621000000', '371600000000', 3, '371621000000', '惠民县', NULL, 371621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371622000000', '371600000000', 3, '371622000000', '阳信县', NULL, 371622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371623000000', '371600000000', 3, '371623000000', '无棣县', NULL, 371623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371625000000', '371600000000', 3, '371625000000', '博兴县', NULL, 371625000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371681000000', '371600000000', 3, '371681000000', '邹平市', NULL, 371681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371700000000', '370000000000', 2, '371700000000', '菏泽市', NULL, 371700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371702000000', '371700000000', 3, '371702000000', '牡丹区', NULL, 371702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371703000000', '371700000000', 3, '371703000000', '定陶区', NULL, 371703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371721000000', '371700000000', 3, '371721000000', '曹县', NULL, 371721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371722000000', '371700000000', 3, '371722000000', '单县', NULL, 371722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371723000000', '371700000000', 3, '371723000000', '成武县', NULL, 371723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371724000000', '371700000000', 3, '371724000000', '巨野县', NULL, 371724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371725000000', '371700000000', 3, '371725000000', '郓城县', NULL, 371725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371726000000', '371700000000', 3, '371726000000', '鄄城县', NULL, 371726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371728000000', '371700000000', 3, '371728000000', '东明县', NULL, 371728000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371771000000', '371700000000', 3, '371771000000', '菏泽经济技术开发区', NULL, 371771000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371772000000', '371700000000', 3, '371772000000', '菏泽高新技术开发区', NULL, 371772000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410000000000', '0', 1, '410000000000', '河南省', NULL, 410000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410100000000', '410000000000', 2, '410100000000', '郑州市', NULL, 410100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410102000000', '410100000000', 3, '410102000000', '中原区', NULL, 410102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410103000000', '410100000000', 3, '410103000000', '二七区', NULL, 410103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410104000000', '410100000000', 3, '410104000000', '管城回族区', NULL, 410104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410105000000', '410100000000', 3, '410105000000', '金水区', NULL, 410105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410106000000', '410100000000', 3, '410106000000', '上街区', NULL, 410106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410108000000', '410100000000', 3, '410108000000', '惠济区', NULL, 410108000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410122000000', '410100000000', 3, '410122000000', '中牟县', NULL, 410122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410171000000', '410100000000', 3, '410171000000', '郑州经济技术开发区', NULL, 410171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410172000000', '410100000000', 3, '410172000000', '郑州高新技术产业开发区', NULL, 410172000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410173000000', '410100000000', 3, '410173000000', '郑州航空港经济综合实验区', NULL, 410173000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410181000000', '410100000000', 3, '410181000000', '巩义市', NULL, 410181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410182000000', '410100000000', 3, '410182000000', '荥阳市', NULL, 410182000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410183000000', '410100000000', 3, '410183000000', '新密市', NULL, 410183000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410184000000', '410100000000', 3, '410184000000', '新郑市', NULL, 410184000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410185000000', '410100000000', 3, '410185000000', '登封市', NULL, 410185000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410200000000', '410000000000', 2, '410200000000', '开封市', NULL, 410200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410202000000', '410200000000', 3, '410202000000', '龙亭区', NULL, 410202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410203000000', '410200000000', 3, '410203000000', '顺河回族区', NULL, 410203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410204000000', '410200000000', 3, '410204000000', '鼓楼区', NULL, 410204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410205000000', '410200000000', 3, '410205000000', '禹王台区', NULL, 410205000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410212000000', '410200000000', 3, '410212000000', '祥符区', NULL, 410212000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410221000000', '410200000000', 3, '410221000000', '杞县', NULL, 410221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410222000000', '410200000000', 3, '410222000000', '通许县', NULL, 410222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410223000000', '410200000000', 3, '410223000000', '尉氏县', NULL, 410223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410225000000', '410200000000', 3, '410225000000', '兰考县', NULL, 410225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410300000000', '410000000000', 2, '410300000000', '洛阳市', NULL, 410300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410302000000', '410300000000', 3, '410302000000', '老城区', NULL, 410302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410303000000', '410300000000', 3, '410303000000', '西工区', NULL, 410303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410304000000', '410300000000', 3, '410304000000', '瀍河回族区', NULL, 410304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410305000000', '410300000000', 3, '410305000000', '涧西区', NULL, 410305000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410306000000', '410300000000', 3, '410306000000', '吉利区', NULL, 410306000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410311000000', '410300000000', 3, '410311000000', '洛龙区', NULL, 410311000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410322000000', '410300000000', 3, '410322000000', '孟津县', NULL, 410322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410323000000', '410300000000', 3, '410323000000', '新安县', NULL, 410323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410324000000', '410300000000', 3, '410324000000', '栾川县', NULL, 410324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410325000000', '410300000000', 3, '410325000000', '嵩县', NULL, 410325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410326000000', '410300000000', 3, '410326000000', '汝阳县', NULL, 410326000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410327000000', '410300000000', 3, '410327000000', '宜阳县', NULL, 410327000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410328000000', '410300000000', 3, '410328000000', '洛宁县', NULL, 410328000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410329000000', '410300000000', 3, '410329000000', '伊川县', NULL, 410329000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410371000000', '410300000000', 3, '410371000000', '洛阳高新技术产业开发区', NULL, 410371000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410381000000', '410300000000', 3, '410381000000', '偃师市', NULL, 410381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410400000000', '410000000000', 2, '410400000000', '平顶山市', NULL, 410400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410402000000', '410400000000', 3, '410402000000', '新华区', NULL, 410402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410403000000', '410400000000', 3, '410403000000', '卫东区', NULL, 410403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410404000000', '410400000000', 3, '410404000000', '石龙区', NULL, 410404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410411000000', '410400000000', 3, '410411000000', '湛河区', NULL, 410411000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410421000000', '410400000000', 3, '410421000000', '宝丰县', NULL, 410421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410422000000', '410400000000', 3, '410422000000', '叶县', NULL, 410422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410423000000', '410400000000', 3, '410423000000', '鲁山县', NULL, 410423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410425000000', '410400000000', 3, '410425000000', '郏县', NULL, 410425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410471000000', '410400000000', 3, '410471000000', '平顶山高新技术产业开发区', NULL, 410471000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410472000000', '410400000000', 3, '410472000000', '平顶山市城乡一体化示范区', NULL, 410472000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410481000000', '410400000000', 3, '410481000000', '舞钢市', NULL, 410481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410482000000', '410400000000', 3, '410482000000', '汝州市', NULL, 410482000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410500000000', '410000000000', 2, '410500000000', '安阳市', NULL, 410500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410502000000', '410500000000', 3, '410502000000', '文峰区', NULL, 410502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410503000000', '410500000000', 3, '410503000000', '北关区', NULL, 410503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410505000000', '410500000000', 3, '410505000000', '殷都区', NULL, 410505000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410506000000', '410500000000', 3, '410506000000', '龙安区', NULL, 410506000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410522000000', '410500000000', 3, '410522000000', '安阳县', NULL, 410522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410523000000', '410500000000', 3, '410523000000', '汤阴县', NULL, 410523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410526000000', '410500000000', 3, '410526000000', '滑县', NULL, 410526000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410527000000', '410500000000', 3, '410527000000', '内黄县', NULL, 410527000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410571000000', '410500000000', 3, '410571000000', '安阳高新技术产业开发区', NULL, 410571000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410581000000', '410500000000', 3, '410581000000', '林州市', NULL, 410581000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410600000000', '410000000000', 2, '410600000000', '鹤壁市', NULL, 410600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410602000000', '410600000000', 3, '410602000000', '鹤山区', NULL, 410602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410603000000', '410600000000', 3, '410603000000', '山城区', NULL, 410603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410611000000', '410600000000', 3, '410611000000', '淇滨区', NULL, 410611000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410621000000', '410600000000', 3, '410621000000', '浚县', NULL, 410621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410622000000', '410600000000', 3, '410622000000', '淇县', NULL, 410622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410671000000', '410600000000', 3, '410671000000', '鹤壁经济技术开发区', NULL, 410671000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410700000000', '410000000000', 2, '410700000000', '新乡市', NULL, 410700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410702000000', '410700000000', 3, '410702000000', '红旗区', NULL, 410702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410703000000', '410700000000', 3, '410703000000', '卫滨区', NULL, 410703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410704000000', '410700000000', 3, '410704000000', '凤泉区', NULL, 410704000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410711000000', '410700000000', 3, '410711000000', '牧野区', NULL, 410711000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410721000000', '410700000000', 3, '410721000000', '新乡县', NULL, 410721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410724000000', '410700000000', 3, '410724000000', '获嘉县', NULL, 410724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410725000000', '410700000000', 3, '410725000000', '原阳县', NULL, 410725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410726000000', '410700000000', 3, '410726000000', '延津县', NULL, 410726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410727000000', '410700000000', 3, '410727000000', '封丘县', NULL, 410727000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410771000000', '410700000000', 3, '410771000000', '新乡高新技术产业开发区', NULL, 410771000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410772000000', '410700000000', 3, '410772000000', '新乡经济技术开发区', NULL, 410772000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410773000000', '410700000000', 3, '410773000000', '新乡市平原城乡一体化示范区', NULL, 410773000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410781000000', '410700000000', 3, '410781000000', '卫辉市', NULL, 410781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410782000000', '410700000000', 3, '410782000000', '辉县市', NULL, 410782000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410783000000', '410700000000', 3, '410783000000', '长垣市', NULL, 410783000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410800000000', '410000000000', 2, '410800000000', '焦作市', NULL, 410800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410802000000', '410800000000', 3, '410802000000', '解放区', NULL, 410802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410803000000', '410800000000', 3, '410803000000', '中站区', NULL, 410803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410804000000', '410800000000', 3, '410804000000', '马村区', NULL, 410804000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410811000000', '410800000000', 3, '410811000000', '山阳区', NULL, 410811000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410821000000', '410800000000', 3, '410821000000', '修武县', NULL, 410821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410822000000', '410800000000', 3, '410822000000', '博爱县', NULL, 410822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410823000000', '410800000000', 3, '410823000000', '武陟县', NULL, 410823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410825000000', '410800000000', 3, '410825000000', '温县', NULL, 410825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410871000000', '410800000000', 3, '410871000000', '焦作城乡一体化示范区', NULL, 410871000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410882000000', '410800000000', 3, '410882000000', '沁阳市', NULL, 410882000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410883000000', '410800000000', 3, '410883000000', '孟州市', NULL, 410883000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410900000000', '410000000000', 2, '410900000000', '濮阳市', NULL, 410900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410902000000', '410900000000', 3, '410902000000', '华龙区', NULL, 410902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410922000000', '410900000000', 3, '410922000000', '清丰县', NULL, 410922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410923000000', '410900000000', 3, '410923000000', '南乐县', NULL, 410923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410926000000', '410900000000', 3, '410926000000', '范县', NULL, 410926000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410927000000', '410900000000', 3, '410927000000', '台前县', NULL, 410927000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410928000000', '410900000000', 3, '410928000000', '濮阳县', NULL, 410928000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410971000000', '410900000000', 3, '410971000000', '河南濮阳工业园区', NULL, 410971000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410972000000', '410900000000', 3, '410972000000', '濮阳经济技术开发区', NULL, 410972000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411000000000', '410000000000', 2, '411000000000', '许昌市', NULL, 411000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411002000000', '411000000000', 3, '411002000000', '魏都区', NULL, 411002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411003000000', '411000000000', 3, '411003000000', '建安区', NULL, 411003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411024000000', '411000000000', 3, '411024000000', '鄢陵县', NULL, 411024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411025000000', '411000000000', 3, '411025000000', '襄城县', NULL, 411025000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411071000000', '411000000000', 3, '411071000000', '许昌经济技术开发区', NULL, 411071000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411081000000', '411000000000', 3, '411081000000', '禹州市', NULL, 411081000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411082000000', '411000000000', 3, '411082000000', '长葛市', NULL, 411082000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411100000000', '410000000000', 2, '411100000000', '漯河市', NULL, 411100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411102000000', '411100000000', 3, '411102000000', '源汇区', NULL, 411102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411103000000', '411100000000', 3, '411103000000', '郾城区', NULL, 411103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411104000000', '411100000000', 3, '411104000000', '召陵区', NULL, 411104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411121000000', '411100000000', 3, '411121000000', '舞阳县', NULL, 411121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411122000000', '411100000000', 3, '411122000000', '临颍县', NULL, 411122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411171000000', '411100000000', 3, '411171000000', '漯河经济技术开发区', NULL, 411171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411200000000', '410000000000', 2, '411200000000', '三门峡市', NULL, 411200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411202000000', '411200000000', 3, '411202000000', '湖滨区', NULL, 411202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411203000000', '411200000000', 3, '411203000000', '陕州区', NULL, 411203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411221000000', '411200000000', 3, '411221000000', '渑池县', NULL, 411221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411224000000', '411200000000', 3, '411224000000', '卢氏县', NULL, 411224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411271000000', '411200000000', 3, '411271000000', '河南三门峡经济开发区', NULL, 411271000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411281000000', '411200000000', 3, '411281000000', '义马市', NULL, 411281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411282000000', '411200000000', 3, '411282000000', '灵宝市', NULL, 411282000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411300000000', '410000000000', 2, '411300000000', '南阳市', NULL, 411300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411302000000', '411300000000', 3, '411302000000', '宛城区', NULL, 411302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411303000000', '411300000000', 3, '411303000000', '卧龙区', NULL, 411303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411321000000', '411300000000', 3, '411321000000', '南召县', NULL, 411321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411322000000', '411300000000', 3, '411322000000', '方城县', NULL, 411322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411323000000', '411300000000', 3, '411323000000', '西峡县', NULL, 411323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411324000000', '411300000000', 3, '411324000000', '镇平县', NULL, 411324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411325000000', '411300000000', 3, '411325000000', '内乡县', NULL, 411325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411326000000', '411300000000', 3, '411326000000', '淅川县', NULL, 411326000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411327000000', '411300000000', 3, '411327000000', '社旗县', NULL, 411327000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411328000000', '411300000000', 3, '411328000000', '唐河县', NULL, 411328000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411329000000', '411300000000', 3, '411329000000', '新野县', NULL, 411329000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411330000000', '411300000000', 3, '411330000000', '桐柏县', NULL, 411330000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411371000000', '411300000000', 3, '411371000000', '南阳高新技术产业开发区', NULL, 411371000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411372000000', '411300000000', 3, '411372000000', '南阳市城乡一体化示范区', NULL, 411372000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411381000000', '411300000000', 3, '411381000000', '邓州市', NULL, 411381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411400000000', '410000000000', 2, '411400000000', '商丘市', NULL, 411400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411402000000', '411400000000', 3, '411402000000', '梁园区', NULL, 411402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411403000000', '411400000000', 3, '411403000000', '睢阳区', NULL, 411403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411421000000', '411400000000', 3, '411421000000', '民权县', NULL, 411421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411422000000', '411400000000', 3, '411422000000', '睢县', NULL, 411422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411423000000', '411400000000', 3, '411423000000', '宁陵县', NULL, 411423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411424000000', '411400000000', 3, '411424000000', '柘城县', NULL, 411424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411425000000', '411400000000', 3, '411425000000', '虞城县', NULL, 411425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411426000000', '411400000000', 3, '411426000000', '夏邑县', NULL, 411426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411471000000', '411400000000', 3, '411471000000', '豫东综合物流产业聚集区', NULL, 411471000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411472000000', '411400000000', 3, '411472000000', '河南商丘经济开发区', NULL, 411472000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411481000000', '411400000000', 3, '411481000000', '永城市', NULL, 411481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411500000000', '410000000000', 2, '411500000000', '信阳市', NULL, 411500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411502000000', '411500000000', 3, '411502000000', '浉河区', NULL, 411502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411503000000', '411500000000', 3, '411503000000', '平桥区', NULL, 411503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411521000000', '411500000000', 3, '411521000000', '罗山县', NULL, 411521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411522000000', '411500000000', 3, '411522000000', '光山县', NULL, 411522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411523000000', '411500000000', 3, '411523000000', '新县', NULL, 411523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411524000000', '411500000000', 3, '411524000000', '商城县', NULL, 411524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411525000000', '411500000000', 3, '411525000000', '固始县', NULL, 411525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411526000000', '411500000000', 3, '411526000000', '潢川县', NULL, 411526000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411527000000', '411500000000', 3, '411527000000', '淮滨县', NULL, 411527000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411528000000', '411500000000', 3, '411528000000', '息县', NULL, 411528000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411571000000', '411500000000', 3, '411571000000', '信阳高新技术产业开发区', NULL, 411571000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411600000000', '410000000000', 2, '411600000000', '周口市', NULL, 411600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411602000000', '411600000000', 3, '411602000000', '川汇区', NULL, 411602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411603000000', '411600000000', 3, '411603000000', '淮阳区', NULL, 411603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411621000000', '411600000000', 3, '411621000000', '扶沟县', NULL, 411621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411622000000', '411600000000', 3, '411622000000', '西华县', NULL, 411622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411623000000', '411600000000', 3, '411623000000', '商水县', NULL, 411623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411624000000', '411600000000', 3, '411624000000', '沈丘县', NULL, 411624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411625000000', '411600000000', 3, '411625000000', '郸城县', NULL, 411625000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411627000000', '411600000000', 3, '411627000000', '太康县', NULL, 411627000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411628000000', '411600000000', 3, '411628000000', '鹿邑县', NULL, 411628000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411671000000', '411600000000', 3, '411671000000', '河南周口经济开发区', NULL, 411671000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411681000000', '411600000000', 3, '411681000000', '项城市', NULL, 411681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411700000000', '410000000000', 2, '411700000000', '驻马店市', NULL, 411700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411702000000', '411700000000', 3, '411702000000', '驿城区', NULL, 411702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411721000000', '411700000000', 3, '411721000000', '西平县', NULL, 411721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411722000000', '411700000000', 3, '411722000000', '上蔡县', NULL, 411722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411723000000', '411700000000', 3, '411723000000', '平舆县', NULL, 411723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411724000000', '411700000000', 3, '411724000000', '正阳县', NULL, 411724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411725000000', '411700000000', 3, '411725000000', '确山县', NULL, 411725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411726000000', '411700000000', 3, '411726000000', '泌阳县', NULL, 411726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411727000000', '411700000000', 3, '411727000000', '汝南县', NULL, 411727000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411728000000', '411700000000', 3, '411728000000', '遂平县', NULL, 411728000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411729000000', '411700000000', 3, '411729000000', '新蔡县', NULL, 411729000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411771000000', '411700000000', 3, '411771000000', '河南驻马店经济开发区', NULL, 411771000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('419000000000', '410000000000', 2, '419000000000', '省直辖县级行政区划', NULL, 419000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('419001000000', '419000000000', 3, '419001000000', '济源市', NULL, 419001000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420000000000', '0', 1, '420000000000', '湖北省', NULL, 420000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420100000000', '420000000000', 2, '420100000000', '武汉市', NULL, 420100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420102000000', '420100000000', 3, '420102000000', '江岸区', NULL, 420102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420103000000', '420100000000', 3, '420103000000', '江汉区', NULL, 420103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420104000000', '420100000000', 3, '420104000000', '硚口区', NULL, 420104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420105000000', '420100000000', 3, '420105000000', '汉阳区', NULL, 420105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420106000000', '420100000000', 3, '420106000000', '武昌区', NULL, 420106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420107000000', '420100000000', 3, '420107000000', '青山区', NULL, 420107000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420111000000', '420100000000', 3, '420111000000', '洪山区', NULL, 420111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420112000000', '420100000000', 3, '420112000000', '东西湖区', NULL, 420112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420113000000', '420100000000', 3, '420113000000', '汉南区', NULL, 420113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420114000000', '420100000000', 3, '420114000000', '蔡甸区', NULL, 420114000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420115000000', '420100000000', 3, '420115000000', '江夏区', NULL, 420115000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420116000000', '420100000000', 3, '420116000000', '黄陂区', NULL, 420116000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420117000000', '420100000000', 3, '420117000000', '新洲区', NULL, 420117000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420200000000', '420000000000', 2, '420200000000', '黄石市', NULL, 420200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420202000000', '420200000000', 3, '420202000000', '黄石港区', NULL, 420202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420203000000', '420200000000', 3, '420203000000', '西塞山区', NULL, 420203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420204000000', '420200000000', 3, '420204000000', '下陆区', NULL, 420204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420205000000', '420200000000', 3, '420205000000', '铁山区', NULL, 420205000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420222000000', '420200000000', 3, '420222000000', '阳新县', NULL, 420222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420281000000', '420200000000', 3, '420281000000', '大冶市', NULL, 420281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420300000000', '420000000000', 2, '420300000000', '十堰市', NULL, 420300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420302000000', '420300000000', 3, '420302000000', '茅箭区', NULL, 420302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420303000000', '420300000000', 3, '420303000000', '张湾区', NULL, 420303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420304000000', '420300000000', 3, '420304000000', '郧阳区', NULL, 420304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420322000000', '420300000000', 3, '420322000000', '郧西县', NULL, 420322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420323000000', '420300000000', 3, '420323000000', '竹山县', NULL, 420323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420324000000', '420300000000', 3, '420324000000', '竹溪县', NULL, 420324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420325000000', '420300000000', 3, '420325000000', '房县', NULL, 420325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420381000000', '420300000000', 3, '420381000000', '丹江口市', NULL, 420381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420500000000', '420000000000', 2, '420500000000', '宜昌市', NULL, 420500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420502000000', '420500000000', 3, '420502000000', '西陵区', NULL, 420502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420503000000', '420500000000', 3, '420503000000', '伍家岗区', NULL, 420503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420504000000', '420500000000', 3, '420504000000', '点军区', NULL, 420504000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420505000000', '420500000000', 3, '420505000000', '猇亭区', NULL, 420505000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420506000000', '420500000000', 3, '420506000000', '夷陵区', NULL, 420506000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420525000000', '420500000000', 3, '420525000000', '远安县', NULL, 420525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420526000000', '420500000000', 3, '420526000000', '兴山县', NULL, 420526000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420527000000', '420500000000', 3, '420527000000', '秭归县', NULL, 420527000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420528000000', '420500000000', 3, '420528000000', '长阳土家族自治县', NULL, 420528000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420529000000', '420500000000', 3, '420529000000', '五峰土家族自治县', NULL, 420529000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420581000000', '420500000000', 3, '420581000000', '宜都市', NULL, 420581000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420582000000', '420500000000', 3, '420582000000', '当阳市', NULL, 420582000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420583000000', '420500000000', 3, '420583000000', '枝江市', NULL, 420583000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420600000000', '420000000000', 2, '420600000000', '襄阳市', NULL, 420600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420602000000', '420600000000', 3, '420602000000', '襄城区', NULL, 420602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420606000000', '420600000000', 3, '420606000000', '樊城区', NULL, 420606000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420607000000', '420600000000', 3, '420607000000', '襄州区', NULL, 420607000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420624000000', '420600000000', 3, '420624000000', '南漳县', NULL, 420624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420625000000', '420600000000', 3, '420625000000', '谷城县', NULL, 420625000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420626000000', '420600000000', 3, '420626000000', '保康县', NULL, 420626000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420682000000', '420600000000', 3, '420682000000', '老河口市', NULL, 420682000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420683000000', '420600000000', 3, '420683000000', '枣阳市', NULL, 420683000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420684000000', '420600000000', 3, '420684000000', '宜城市', NULL, 420684000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420700000000', '420000000000', 2, '420700000000', '鄂州市', NULL, 420700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420702000000', '420700000000', 3, '420702000000', '梁子湖区', NULL, 420702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420703000000', '420700000000', 3, '420703000000', '华容区', NULL, 420703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420704000000', '420700000000', 3, '420704000000', '鄂城区', NULL, 420704000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420800000000', '420000000000', 2, '420800000000', '荆门市', NULL, 420800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420802000000', '420800000000', 3, '420802000000', '东宝区', NULL, 420802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420804000000', '420800000000', 3, '420804000000', '掇刀区', NULL, 420804000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420822000000', '420800000000', 3, '420822000000', '沙洋县', NULL, 420822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420881000000', '420800000000', 3, '420881000000', '钟祥市', NULL, 420881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420882000000', '420800000000', 3, '420882000000', '京山市', NULL, 420882000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420900000000', '420000000000', 2, '420900000000', '孝感市', NULL, 420900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420902000000', '420900000000', 3, '420902000000', '孝南区', NULL, 420902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420921000000', '420900000000', 3, '420921000000', '孝昌县', NULL, 420921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420922000000', '420900000000', 3, '420922000000', '大悟县', NULL, 420922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420923000000', '420900000000', 3, '420923000000', '云梦县', NULL, 420923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420981000000', '420900000000', 3, '420981000000', '应城市', NULL, 420981000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420982000000', '420900000000', 3, '420982000000', '安陆市', NULL, 420982000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420984000000', '420900000000', 3, '420984000000', '汉川市', NULL, 420984000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421000000000', '420000000000', 2, '421000000000', '荆州市', NULL, 421000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421002000000', '421000000000', 3, '421002000000', '沙市区', NULL, 421002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421003000000', '421000000000', 3, '421003000000', '荆州区', NULL, 421003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421022000000', '421000000000', 3, '421022000000', '公安县', NULL, 421022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421023000000', '421000000000', 3, '421023000000', '监利县', NULL, 421023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421024000000', '421000000000', 3, '421024000000', '江陵县', NULL, 421024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421071000000', '421000000000', 3, '421071000000', '荆州经济技术开发区', NULL, 421071000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421081000000', '421000000000', 3, '421081000000', '石首市', NULL, 421081000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421083000000', '421000000000', 3, '421083000000', '洪湖市', NULL, 421083000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421087000000', '421000000000', 3, '421087000000', '松滋市', NULL, 421087000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421100000000', '420000000000', 2, '421100000000', '黄冈市', NULL, 421100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421102000000', '421100000000', 3, '421102000000', '黄州区', NULL, 421102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421121000000', '421100000000', 3, '421121000000', '团风县', NULL, 421121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421122000000', '421100000000', 3, '421122000000', '红安县', NULL, 421122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421123000000', '421100000000', 3, '421123000000', '罗田县', NULL, 421123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421124000000', '421100000000', 3, '421124000000', '英山县', NULL, 421124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421125000000', '421100000000', 3, '421125000000', '浠水县', NULL, 421125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421126000000', '421100000000', 3, '421126000000', '蕲春县', NULL, 421126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421127000000', '421100000000', 3, '421127000000', '黄梅县', NULL, 421127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421171000000', '421100000000', 3, '421171000000', '龙感湖管理区', NULL, 421171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421181000000', '421100000000', 3, '421181000000', '麻城市', NULL, 421181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421182000000', '421100000000', 3, '421182000000', '武穴市', NULL, 421182000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421200000000', '420000000000', 2, '421200000000', '咸宁市', NULL, 421200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421202000000', '421200000000', 3, '421202000000', '咸安区', NULL, 421202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421221000000', '421200000000', 3, '421221000000', '嘉鱼县', NULL, 421221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421222000000', '421200000000', 3, '421222000000', '通城县', NULL, 421222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421223000000', '421200000000', 3, '421223000000', '崇阳县', NULL, 421223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421224000000', '421200000000', 3, '421224000000', '通山县', NULL, 421224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421281000000', '421200000000', 3, '421281000000', '赤壁市', NULL, 421281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421300000000', '420000000000', 2, '421300000000', '随州市', NULL, 421300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421303000000', '421300000000', 3, '421303000000', '曾都区', NULL, 421303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421321000000', '421300000000', 3, '421321000000', '随县', NULL, 421321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421381000000', '421300000000', 3, '421381000000', '广水市', NULL, 421381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('422800000000', '420000000000', 2, '422800000000', '恩施土家族苗族自治州', NULL, 422800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('422801000000', '422800000000', 3, '422801000000', '恩施市', NULL, 422801000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('422802000000', '422800000000', 3, '422802000000', '利川市', NULL, 422802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('422822000000', '422800000000', 3, '422822000000', '建始县', NULL, 422822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('422823000000', '422800000000', 3, '422823000000', '巴东县', NULL, 422823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('422825000000', '422800000000', 3, '422825000000', '宣恩县', NULL, 422825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('422826000000', '422800000000', 3, '422826000000', '咸丰县', NULL, 422826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('422827000000', '422800000000', 3, '422827000000', '来凤县', NULL, 422827000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('422828000000', '422800000000', 3, '422828000000', '鹤峰县', NULL, 422828000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('429000000000', '420000000000', 2, '429000000000', '省直辖县级行政区划', NULL, 429000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('429004000000', '429000000000', 3, '429004000000', '仙桃市', NULL, 429004000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('429005000000', '429000000000', 3, '429005000000', '潜江市', NULL, 429005000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('429006000000', '429000000000', 3, '429006000000', '天门市', NULL, 429006000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('429021000000', '429000000000', 3, '429021000000', '神农架林区', NULL, 429021000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430000000000', '0', 1, '430000000000', '湖南省', NULL, 430000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430100000000', '430000000000', 2, '430100000000', '长沙市', NULL, 430100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430102000000', '430100000000', 3, '430102000000', '芙蓉区', NULL, 430102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430103000000', '430100000000', 3, '430103000000', '天心区', NULL, 430103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430104000000', '430100000000', 3, '430104000000', '岳麓区', NULL, 430104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430105000000', '430100000000', 3, '430105000000', '开福区', NULL, 430105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430111000000', '430100000000', 3, '430111000000', '雨花区', NULL, 430111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430112000000', '430100000000', 3, '430112000000', '望城区', NULL, 430112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430121000000', '430100000000', 3, '430121000000', '长沙县', NULL, 430121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430181000000', '430100000000', 3, '430181000000', '浏阳市', NULL, 430181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430182000000', '430100000000', 3, '430182000000', '宁乡市', NULL, 430182000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430200000000', '430000000000', 2, '430200000000', '株洲市', NULL, 430200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430202000000', '430200000000', 3, '430202000000', '荷塘区', NULL, 430202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430203000000', '430200000000', 3, '430203000000', '芦淞区', NULL, 430203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430204000000', '430200000000', 3, '430204000000', '石峰区', NULL, 430204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430211000000', '430200000000', 3, '430211000000', '天元区', NULL, 430211000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430212000000', '430200000000', 3, '430212000000', '渌口区', NULL, 430212000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430223000000', '430200000000', 3, '430223000000', '攸县', NULL, 430223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430224000000', '430200000000', 3, '430224000000', '茶陵县', NULL, 430224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430225000000', '430200000000', 3, '430225000000', '炎陵县', NULL, 430225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430271000000', '430200000000', 3, '430271000000', '云龙示范区', NULL, 430271000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430281000000', '430200000000', 3, '430281000000', '醴陵市', NULL, 430281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430300000000', '430000000000', 2, '430300000000', '湘潭市', NULL, 430300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430302000000', '430300000000', 3, '430302000000', '雨湖区', NULL, 430302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430304000000', '430300000000', 3, '430304000000', '岳塘区', NULL, 430304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430321000000', '430300000000', 3, '430321000000', '湘潭县', NULL, 430321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430371000000', '430300000000', 3, '430371000000', '湖南湘潭高新技术产业园区', NULL, 430371000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430372000000', '430300000000', 3, '430372000000', '湘潭昭山示范区', NULL, 430372000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430373000000', '430300000000', 3, '430373000000', '湘潭九华示范区', NULL, 430373000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430381000000', '430300000000', 3, '430381000000', '湘乡市', NULL, 430381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430382000000', '430300000000', 3, '430382000000', '韶山市', NULL, 430382000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430400000000', '430000000000', 2, '430400000000', '衡阳市', NULL, 430400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430405000000', '430400000000', 3, '430405000000', '珠晖区', NULL, 430405000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430406000000', '430400000000', 3, '430406000000', '雁峰区', NULL, 430406000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430407000000', '430400000000', 3, '430407000000', '石鼓区', NULL, 430407000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430408000000', '430400000000', 3, '430408000000', '蒸湘区', NULL, 430408000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430412000000', '430400000000', 3, '430412000000', '南岳区', NULL, 430412000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430421000000', '430400000000', 3, '430421000000', '衡阳县', NULL, 430421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430422000000', '430400000000', 3, '430422000000', '衡南县', NULL, 430422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430423000000', '430400000000', 3, '430423000000', '衡山县', NULL, 430423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430424000000', '430400000000', 3, '430424000000', '衡东县', NULL, 430424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430426000000', '430400000000', 3, '430426000000', '祁东县', NULL, 430426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430471000000', '430400000000', 3, '430471000000', '衡阳综合保税区', NULL, 430471000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430472000000', '430400000000', 3, '430472000000', '湖南衡阳高新技术产业园区', NULL, 430472000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430473000000', '430400000000', 3, '430473000000', '湖南衡阳松木经济开发区', NULL, 430473000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430481000000', '430400000000', 3, '430481000000', '耒阳市', NULL, 430481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430482000000', '430400000000', 3, '430482000000', '常宁市', NULL, 430482000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430500000000', '430000000000', 2, '430500000000', '邵阳市', NULL, 430500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430502000000', '430500000000', 3, '430502000000', '双清区', NULL, 430502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430503000000', '430500000000', 3, '430503000000', '大祥区', NULL, 430503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430511000000', '430500000000', 3, '430511000000', '北塔区', NULL, 430511000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430522000000', '430500000000', 3, '430522000000', '新邵县', NULL, 430522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430523000000', '430500000000', 3, '430523000000', '邵阳县', NULL, 430523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430524000000', '430500000000', 3, '430524000000', '隆回县', NULL, 430524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430525000000', '430500000000', 3, '430525000000', '洞口县', NULL, 430525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430527000000', '430500000000', 3, '430527000000', '绥宁县', NULL, 430527000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430528000000', '430500000000', 3, '430528000000', '新宁县', NULL, 430528000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430529000000', '430500000000', 3, '430529000000', '城步苗族自治县', NULL, 430529000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430581000000', '430500000000', 3, '430581000000', '武冈市', NULL, 430581000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430582000000', '430500000000', 3, '430582000000', '邵东市', NULL, 430582000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430600000000', '430000000000', 2, '430600000000', '岳阳市', NULL, 430600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430602000000', '430600000000', 3, '430602000000', '岳阳楼区', NULL, 430602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430603000000', '430600000000', 3, '430603000000', '云溪区', NULL, 430603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430611000000', '430600000000', 3, '430611000000', '君山区', NULL, 430611000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430621000000', '430600000000', 3, '430621000000', '岳阳县', NULL, 430621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430623000000', '430600000000', 3, '430623000000', '华容县', NULL, 430623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430624000000', '430600000000', 3, '430624000000', '湘阴县', NULL, 430624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430626000000', '430600000000', 3, '430626000000', '平江县', NULL, 430626000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430671000000', '430600000000', 3, '430671000000', '岳阳市屈原管理区', NULL, 430671000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430681000000', '430600000000', 3, '430681000000', '汨罗市', NULL, 430681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430682000000', '430600000000', 3, '430682000000', '临湘市', NULL, 430682000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430700000000', '430000000000', 2, '430700000000', '常德市', NULL, 430700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430702000000', '430700000000', 3, '430702000000', '武陵区', NULL, 430702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430703000000', '430700000000', 3, '430703000000', '鼎城区', NULL, 430703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430721000000', '430700000000', 3, '430721000000', '安乡县', NULL, 430721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430722000000', '430700000000', 3, '430722000000', '汉寿县', NULL, 430722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430723000000', '430700000000', 3, '430723000000', '澧县', NULL, 430723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430724000000', '430700000000', 3, '430724000000', '临澧县', NULL, 430724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430725000000', '430700000000', 3, '430725000000', '桃源县', NULL, 430725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430726000000', '430700000000', 3, '430726000000', '石门县', NULL, 430726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430771000000', '430700000000', 3, '430771000000', '常德市西洞庭管理区', NULL, 430771000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430781000000', '430700000000', 3, '430781000000', '津市市', NULL, 430781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430800000000', '430000000000', 2, '430800000000', '张家界市', NULL, 430800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430802000000', '430800000000', 3, '430802000000', '永定区', NULL, 430802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430811000000', '430800000000', 3, '430811000000', '武陵源区', NULL, 430811000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430821000000', '430800000000', 3, '430821000000', '慈利县', NULL, 430821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430822000000', '430800000000', 3, '430822000000', '桑植县', NULL, 430822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430900000000', '430000000000', 2, '430900000000', '益阳市', NULL, 430900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430902000000', '430900000000', 3, '430902000000', '资阳区', NULL, 430902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430903000000', '430900000000', 3, '430903000000', '赫山区', NULL, 430903000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430921000000', '430900000000', 3, '430921000000', '南县', NULL, 430921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430922000000', '430900000000', 3, '430922000000', '桃江县', NULL, 430922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430923000000', '430900000000', 3, '430923000000', '安化县', NULL, 430923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430971000000', '430900000000', 3, '430971000000', '益阳市大通湖管理区', NULL, 430971000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430972000000', '430900000000', 3, '430972000000', '湖南益阳高新技术产业园区', NULL, 430972000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430981000000', '430900000000', 3, '430981000000', '沅江市', NULL, 430981000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431000000000', '430000000000', 2, '431000000000', '郴州市', NULL, 431000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431002000000', '431000000000', 3, '431002000000', '北湖区', NULL, 431002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431003000000', '431000000000', 3, '431003000000', '苏仙区', NULL, 431003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431021000000', '431000000000', 3, '431021000000', '桂阳县', NULL, 431021000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431022000000', '431000000000', 3, '431022000000', '宜章县', NULL, 431022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431023000000', '431000000000', 3, '431023000000', '永兴县', NULL, 431023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431024000000', '431000000000', 3, '431024000000', '嘉禾县', NULL, 431024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431025000000', '431000000000', 3, '431025000000', '临武县', NULL, 431025000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431026000000', '431000000000', 3, '431026000000', '汝城县', NULL, 431026000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431027000000', '431000000000', 3, '431027000000', '桂东县', NULL, 431027000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431028000000', '431000000000', 3, '431028000000', '安仁县', NULL, 431028000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431081000000', '431000000000', 3, '431081000000', '资兴市', NULL, 431081000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431100000000', '430000000000', 2, '431100000000', '永州市', NULL, 431100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431102000000', '431100000000', 3, '431102000000', '零陵区', NULL, 431102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431103000000', '431100000000', 3, '431103000000', '冷水滩区', NULL, 431103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431121000000', '431100000000', 3, '431121000000', '祁阳县', NULL, 431121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431122000000', '431100000000', 3, '431122000000', '东安县', NULL, 431122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431123000000', '431100000000', 3, '431123000000', '双牌县', NULL, 431123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431124000000', '431100000000', 3, '431124000000', '道县', NULL, 431124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431125000000', '431100000000', 3, '431125000000', '江永县', NULL, 431125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431126000000', '431100000000', 3, '431126000000', '宁远县', NULL, 431126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431127000000', '431100000000', 3, '431127000000', '蓝山县', NULL, 431127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431128000000', '431100000000', 3, '431128000000', '新田县', NULL, 431128000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431129000000', '431100000000', 3, '431129000000', '江华瑶族自治县', NULL, 431129000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431171000000', '431100000000', 3, '431171000000', '永州经济技术开发区', NULL, 431171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431172000000', '431100000000', 3, '431172000000', '永州市金洞管理区', NULL, 431172000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431173000000', '431100000000', 3, '431173000000', '永州市回龙圩管理区', NULL, 431173000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431200000000', '430000000000', 2, '431200000000', '怀化市', NULL, 431200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431202000000', '431200000000', 3, '431202000000', '鹤城区', NULL, 431202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431221000000', '431200000000', 3, '431221000000', '中方县', NULL, 431221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431222000000', '431200000000', 3, '431222000000', '沅陵县', NULL, 431222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431223000000', '431200000000', 3, '431223000000', '辰溪县', NULL, 431223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431224000000', '431200000000', 3, '431224000000', '溆浦县', NULL, 431224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431225000000', '431200000000', 3, '431225000000', '会同县', NULL, 431225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431226000000', '431200000000', 3, '431226000000', '麻阳苗族自治县', NULL, 431226000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431227000000', '431200000000', 3, '431227000000', '新晃侗族自治县', NULL, 431227000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431228000000', '431200000000', 3, '431228000000', '芷江侗族自治县', NULL, 431228000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431229000000', '431200000000', 3, '431229000000', '靖州苗族侗族自治县', NULL, 431229000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431230000000', '431200000000', 3, '431230000000', '通道侗族自治县', NULL, 431230000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431271000000', '431200000000', 3, '431271000000', '怀化市洪江管理区', NULL, 431271000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431281000000', '431200000000', 3, '431281000000', '洪江市', NULL, 431281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431300000000', '430000000000', 2, '431300000000', '娄底市', NULL, 431300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431302000000', '431300000000', 3, '431302000000', '娄星区', NULL, 431302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431321000000', '431300000000', 3, '431321000000', '双峰县', NULL, 431321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431322000000', '431300000000', 3, '431322000000', '新化县', NULL, 431322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431381000000', '431300000000', 3, '431381000000', '冷水江市', NULL, 431381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431382000000', '431300000000', 3, '431382000000', '涟源市', NULL, 431382000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('433100000000', '430000000000', 2, '433100000000', '湘西土家族苗族自治州', NULL, 433100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('433101000000', '433100000000', 3, '433101000000', '吉首市', NULL, 433101000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('433122000000', '433100000000', 3, '433122000000', '泸溪县', NULL, 433122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('433123000000', '433100000000', 3, '433123000000', '凤凰县', NULL, 433123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('433124000000', '433100000000', 3, '433124000000', '花垣县', NULL, 433124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('433125000000', '433100000000', 3, '433125000000', '保靖县', NULL, 433125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('433126000000', '433100000000', 3, '433126000000', '古丈县', NULL, 433126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('433127000000', '433100000000', 3, '433127000000', '永顺县', NULL, 433127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('433130000000', '433100000000', 3, '433130000000', '龙山县', NULL, 433130000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('433173000000', '433100000000', 3, '433173000000', '湖南永顺经济开发区', NULL, 433173000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440000000000', '0', 1, '440000000000', '广东省', NULL, 440000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440100000000', '440000000000', 2, '440100000000', '广州市', NULL, 440100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440103000000', '440100000000', 3, '440103000000', '荔湾区', NULL, 440103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440104000000', '440100000000', 3, '440104000000', '越秀区', NULL, 440104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440105000000', '440100000000', 3, '440105000000', '海珠区', NULL, 440105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440106000000', '440100000000', 3, '440106000000', '天河区', NULL, 440106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440111000000', '440100000000', 3, '440111000000', '白云区', NULL, 440111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440112000000', '440100000000', 3, '440112000000', '黄埔区', NULL, 440112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440113000000', '440100000000', 3, '440113000000', '番禺区', NULL, 440113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440114000000', '440100000000', 3, '440114000000', '花都区', NULL, 440114000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440115000000', '440100000000', 3, '440115000000', '南沙区', NULL, 440115000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440117000000', '440100000000', 3, '440117000000', '从化区', NULL, 440117000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440118000000', '440100000000', 3, '440118000000', '增城区', NULL, 440118000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440200000000', '440000000000', 2, '440200000000', '韶关市', NULL, 440200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440203000000', '440200000000', 3, '440203000000', '武江区', NULL, 440203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440204000000', '440200000000', 3, '440204000000', '浈江区', NULL, 440204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440205000000', '440200000000', 3, '440205000000', '曲江区', NULL, 440205000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440222000000', '440200000000', 3, '440222000000', '始兴县', NULL, 440222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440224000000', '440200000000', 3, '440224000000', '仁化县', NULL, 440224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440229000000', '440200000000', 3, '440229000000', '翁源县', NULL, 440229000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440232000000', '440200000000', 3, '440232000000', '乳源瑶族自治县', NULL, 440232000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440233000000', '440200000000', 3, '440233000000', '新丰县', NULL, 440233000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440281000000', '440200000000', 3, '440281000000', '乐昌市', NULL, 440281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440282000000', '440200000000', 3, '440282000000', '南雄市', NULL, 440282000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440300000000', '440000000000', 2, '440300000000', '深圳市', NULL, 440300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440303000000', '440300000000', 3, '440303000000', '罗湖区', NULL, 440303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440304000000', '440300000000', 3, '440304000000', '福田区', NULL, 440304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440305000000', '440300000000', 3, '440305000000', '南山区', NULL, 440305000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440306000000', '440300000000', 3, '440306000000', '宝安区', NULL, 440306000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440307000000', '440300000000', 3, '440307000000', '龙岗区', NULL, 440307000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440308000000', '440300000000', 3, '440308000000', '盐田区', NULL, 440308000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440309000000', '440300000000', 3, '440309000000', '龙华区', NULL, 440309000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440310000000', '440300000000', 3, '440310000000', '坪山区', NULL, 440310000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440311000000', '440300000000', 3, '440311000000', '光明区', NULL, 440311000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440400000000', '440000000000', 2, '440400000000', '珠海市', NULL, 440400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440402000000', '440400000000', 3, '440402000000', '香洲区', NULL, 440402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440403000000', '440400000000', 3, '440403000000', '斗门区', NULL, 440403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440404000000', '440400000000', 3, '440404000000', '金湾区', NULL, 440404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440500000000', '440000000000', 2, '440500000000', '汕头市', NULL, 440500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440507000000', '440500000000', 3, '440507000000', '龙湖区', NULL, 440507000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440511000000', '440500000000', 3, '440511000000', '金平区', NULL, 440511000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440512000000', '440500000000', 3, '440512000000', '濠江区', NULL, 440512000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440513000000', '440500000000', 3, '440513000000', '潮阳区', NULL, 440513000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440514000000', '440500000000', 3, '440514000000', '潮南区', NULL, 440514000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440515000000', '440500000000', 3, '440515000000', '澄海区', NULL, 440515000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440523000000', '440500000000', 3, '440523000000', '南澳县', NULL, 440523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440600000000', '440000000000', 2, '440600000000', '佛山市', NULL, 440600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440604000000', '440600000000', 3, '440604000000', '禅城区', NULL, 440604000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440605000000', '440600000000', 3, '440605000000', '南海区', NULL, 440605000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440606000000', '440600000000', 3, '440606000000', '顺德区', NULL, 440606000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440607000000', '440600000000', 3, '440607000000', '三水区', NULL, 440607000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440608000000', '440600000000', 3, '440608000000', '高明区', NULL, 440608000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440700000000', '440000000000', 2, '440700000000', '江门市', NULL, 440700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440703000000', '440700000000', 3, '440703000000', '蓬江区', NULL, 440703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440704000000', '440700000000', 3, '440704000000', '江海区', NULL, 440704000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440705000000', '440700000000', 3, '440705000000', '新会区', NULL, 440705000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440781000000', '440700000000', 3, '440781000000', '台山市', NULL, 440781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440783000000', '440700000000', 3, '440783000000', '开平市', NULL, 440783000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440784000000', '440700000000', 3, '440784000000', '鹤山市', NULL, 440784000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440785000000', '440700000000', 3, '440785000000', '恩平市', NULL, 440785000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440800000000', '440000000000', 2, '440800000000', '湛江市', NULL, 440800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440802000000', '440800000000', 3, '440802000000', '赤坎区', NULL, 440802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440803000000', '440800000000', 3, '440803000000', '霞山区', NULL, 440803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440804000000', '440800000000', 3, '440804000000', '坡头区', NULL, 440804000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440811000000', '440800000000', 3, '440811000000', '麻章区', NULL, 440811000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440823000000', '440800000000', 3, '440823000000', '遂溪县', NULL, 440823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440825000000', '440800000000', 3, '440825000000', '徐闻县', NULL, 440825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440881000000', '440800000000', 3, '440881000000', '廉江市', NULL, 440881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440882000000', '440800000000', 3, '440882000000', '雷州市', NULL, 440882000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440883000000', '440800000000', 3, '440883000000', '吴川市', NULL, 440883000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440900000000', '440000000000', 2, '440900000000', '茂名市', NULL, 440900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440902000000', '440900000000', 3, '440902000000', '茂南区', NULL, 440902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440904000000', '440900000000', 3, '440904000000', '电白区', NULL, 440904000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440981000000', '440900000000', 3, '440981000000', '高州市', NULL, 440981000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440982000000', '440900000000', 3, '440982000000', '化州市', NULL, 440982000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440983000000', '440900000000', 3, '440983000000', '信宜市', NULL, 440983000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441200000000', '440000000000', 2, '441200000000', '肇庆市', NULL, 441200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441202000000', '441200000000', 3, '441202000000', '端州区', NULL, 441202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441203000000', '441200000000', 3, '441203000000', '鼎湖区', NULL, 441203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441204000000', '441200000000', 3, '441204000000', '高要区', NULL, 441204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441223000000', '441200000000', 3, '441223000000', '广宁县', NULL, 441223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441224000000', '441200000000', 3, '441224000000', '怀集县', NULL, 441224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441225000000', '441200000000', 3, '441225000000', '封开县', NULL, 441225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441226000000', '441200000000', 3, '441226000000', '德庆县', NULL, 441226000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441284000000', '441200000000', 3, '441284000000', '四会市', NULL, 441284000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441300000000', '440000000000', 2, '441300000000', '惠州市', NULL, 441300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441302000000', '441300000000', 3, '441302000000', '惠城区', NULL, 441302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441303000000', '441300000000', 3, '441303000000', '惠阳区', NULL, 441303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441322000000', '441300000000', 3, '441322000000', '博罗县', NULL, 441322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441323000000', '441300000000', 3, '441323000000', '惠东县', NULL, 441323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441324000000', '441300000000', 3, '441324000000', '龙门县', NULL, 441324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441400000000', '440000000000', 2, '441400000000', '梅州市', NULL, 441400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441402000000', '441400000000', 3, '441402000000', '梅江区', NULL, 441402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441403000000', '441400000000', 3, '441403000000', '梅县区', NULL, 441403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441422000000', '441400000000', 3, '441422000000', '大埔县', NULL, 441422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441423000000', '441400000000', 3, '441423000000', '丰顺县', NULL, 441423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441424000000', '441400000000', 3, '441424000000', '五华县', NULL, 441424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441426000000', '441400000000', 3, '441426000000', '平远县', NULL, 441426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441427000000', '441400000000', 3, '441427000000', '蕉岭县', NULL, 441427000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441481000000', '441400000000', 3, '441481000000', '兴宁市', NULL, 441481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441500000000', '440000000000', 2, '441500000000', '汕尾市', NULL, 441500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441502000000', '441500000000', 3, '441502000000', '城区', NULL, 441502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441521000000', '441500000000', 3, '441521000000', '海丰县', NULL, 441521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441523000000', '441500000000', 3, '441523000000', '陆河县', NULL, 441523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441581000000', '441500000000', 3, '441581000000', '陆丰市', NULL, 441581000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441600000000', '440000000000', 2, '441600000000', '河源市', NULL, 441600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441602000000', '441600000000', 3, '441602000000', '源城区', NULL, 441602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441621000000', '441600000000', 3, '441621000000', '紫金县', NULL, 441621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441622000000', '441600000000', 3, '441622000000', '龙川县', NULL, 441622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441623000000', '441600000000', 3, '441623000000', '连平县', NULL, 441623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441624000000', '441600000000', 3, '441624000000', '和平县', NULL, 441624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441625000000', '441600000000', 3, '441625000000', '东源县', NULL, 441625000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441700000000', '440000000000', 2, '441700000000', '阳江市', NULL, 441700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441702000000', '441700000000', 3, '441702000000', '江城区', NULL, 441702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441704000000', '441700000000', 3, '441704000000', '阳东区', NULL, 441704000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441721000000', '441700000000', 3, '441721000000', '阳西县', NULL, 441721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441781000000', '441700000000', 3, '441781000000', '阳春市', NULL, 441781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441800000000', '440000000000', 2, '441800000000', '清远市', NULL, 441800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441802000000', '441800000000', 3, '441802000000', '清城区', NULL, 441802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441803000000', '441800000000', 3, '441803000000', '清新区', NULL, 441803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441821000000', '441800000000', 3, '441821000000', '佛冈县', NULL, 441821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441823000000', '441800000000', 3, '441823000000', '阳山县', NULL, 441823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441825000000', '441800000000', 3, '441825000000', '连山壮族瑶族自治县', NULL, 441825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441826000000', '441800000000', 3, '441826000000', '连南瑶族自治县', NULL, 441826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441881000000', '441800000000', 3, '441881000000', '英德市', NULL, 441881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441882000000', '441800000000', 3, '441882000000', '连州市', NULL, 441882000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441900000000', '440000000000', 2, '441900000000', '东莞市', NULL, 441900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('442000000000', '440000000000', 2, '442000000000', '中山市', NULL, 442000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445100000000', '440000000000', 2, '445100000000', '潮州市', NULL, 445100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445102000000', '445100000000', 3, '445102000000', '湘桥区', NULL, 445102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445103000000', '445100000000', 3, '445103000000', '潮安区', NULL, 445103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445122000000', '445100000000', 3, '445122000000', '饶平县', NULL, 445122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445200000000', '440000000000', 2, '445200000000', '揭阳市', NULL, 445200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445202000000', '445200000000', 3, '445202000000', '榕城区', NULL, 445202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445203000000', '445200000000', 3, '445203000000', '揭东区', NULL, 445203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445222000000', '445200000000', 3, '445222000000', '揭西县', NULL, 445222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445224000000', '445200000000', 3, '445224000000', '惠来县', NULL, 445224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445281000000', '445200000000', 3, '445281000000', '普宁市', NULL, 445281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445300000000', '440000000000', 2, '445300000000', '云浮市', NULL, 445300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445302000000', '445300000000', 3, '445302000000', '云城区', NULL, 445302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445303000000', '445300000000', 3, '445303000000', '云安区', NULL, 445303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445321000000', '445300000000', 3, '445321000000', '新兴县', NULL, 445321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445322000000', '445300000000', 3, '445322000000', '郁南县', NULL, 445322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445381000000', '445300000000', 3, '445381000000', '罗定市', NULL, 445381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450000000000', '0', 1, '450000000000', '广西壮族自治区', NULL, 450000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450100000000', '450000000000', 2, '450100000000', '南宁市', NULL, 450100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450102000000', '450100000000', 3, '450102000000', '兴宁区', NULL, 450102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450103000000', '450100000000', 3, '450103000000', '青秀区', NULL, 450103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450105000000', '450100000000', 3, '450105000000', '江南区', NULL, 450105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450107000000', '450100000000', 3, '450107000000', '西乡塘区', NULL, 450107000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450108000000', '450100000000', 3, '450108000000', '良庆区', NULL, 450108000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450109000000', '450100000000', 3, '450109000000', '邕宁区', NULL, 450109000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450110000000', '450100000000', 3, '450110000000', '武鸣区', NULL, 450110000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450123000000', '450100000000', 3, '450123000000', '隆安县', NULL, 450123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450124000000', '450100000000', 3, '450124000000', '马山县', NULL, 450124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450125000000', '450100000000', 3, '450125000000', '上林县', NULL, 450125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450126000000', '450100000000', 3, '450126000000', '宾阳县', NULL, 450126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450127000000', '450100000000', 3, '450127000000', '横县', NULL, 450127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450200000000', '450000000000', 2, '450200000000', '柳州市', NULL, 450200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450202000000', '450200000000', 3, '450202000000', '城中区', NULL, 450202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450203000000', '450200000000', 3, '450203000000', '鱼峰区', NULL, 450203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450204000000', '450200000000', 3, '450204000000', '柳南区', NULL, 450204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450205000000', '450200000000', 3, '450205000000', '柳北区', NULL, 450205000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450206000000', '450200000000', 3, '450206000000', '柳江区', NULL, 450206000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450222000000', '450200000000', 3, '450222000000', '柳城县', NULL, 450222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450223000000', '450200000000', 3, '450223000000', '鹿寨县', NULL, 450223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450224000000', '450200000000', 3, '450224000000', '融安县', NULL, 450224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450225000000', '450200000000', 3, '450225000000', '融水苗族自治县', NULL, 450225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450226000000', '450200000000', 3, '450226000000', '三江侗族自治县', NULL, 450226000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450300000000', '450000000000', 2, '450300000000', '桂林市', NULL, 450300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450302000000', '450300000000', 3, '450302000000', '秀峰区', NULL, 450302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450303000000', '450300000000', 3, '450303000000', '叠彩区', NULL, 450303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450304000000', '450300000000', 3, '450304000000', '象山区', NULL, 450304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450305000000', '450300000000', 3, '450305000000', '七星区', NULL, 450305000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450311000000', '450300000000', 3, '450311000000', '雁山区', NULL, 450311000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450312000000', '450300000000', 3, '450312000000', '临桂区', NULL, 450312000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450321000000', '450300000000', 3, '450321000000', '阳朔县', NULL, 450321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450323000000', '450300000000', 3, '450323000000', '灵川县', NULL, 450323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450324000000', '450300000000', 3, '450324000000', '全州县', NULL, 450324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450325000000', '450300000000', 3, '450325000000', '兴安县', NULL, 450325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450326000000', '450300000000', 3, '450326000000', '永福县', NULL, 450326000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450327000000', '450300000000', 3, '450327000000', '灌阳县', NULL, 450327000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450328000000', '450300000000', 3, '450328000000', '龙胜各族自治县', NULL, 450328000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450329000000', '450300000000', 3, '450329000000', '资源县', NULL, 450329000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450330000000', '450300000000', 3, '450330000000', '平乐县', NULL, 450330000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450332000000', '450300000000', 3, '450332000000', '恭城瑶族自治县', NULL, 450332000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450381000000', '450300000000', 3, '450381000000', '荔浦市', NULL, 450381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450400000000', '450000000000', 2, '450400000000', '梧州市', NULL, 450400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450403000000', '450400000000', 3, '450403000000', '万秀区', NULL, 450403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450405000000', '450400000000', 3, '450405000000', '长洲区', NULL, 450405000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450406000000', '450400000000', 3, '450406000000', '龙圩区', NULL, 450406000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450421000000', '450400000000', 3, '450421000000', '苍梧县', NULL, 450421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450422000000', '450400000000', 3, '450422000000', '藤县', NULL, 450422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450423000000', '450400000000', 3, '450423000000', '蒙山县', NULL, 450423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450481000000', '450400000000', 3, '450481000000', '岑溪市', NULL, 450481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450500000000', '450000000000', 2, '450500000000', '北海市', NULL, 450500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450502000000', '450500000000', 3, '450502000000', '海城区', NULL, 450502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450503000000', '450500000000', 3, '450503000000', '银海区', NULL, 450503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450512000000', '450500000000', 3, '450512000000', '铁山港区', NULL, 450512000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450521000000', '450500000000', 3, '450521000000', '合浦县', NULL, 450521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450600000000', '450000000000', 2, '450600000000', '防城港市', NULL, 450600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450602000000', '450600000000', 3, '450602000000', '港口区', NULL, 450602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450603000000', '450600000000', 3, '450603000000', '防城区', NULL, 450603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450621000000', '450600000000', 3, '450621000000', '上思县', NULL, 450621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450681000000', '450600000000', 3, '450681000000', '东兴市', NULL, 450681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450700000000', '450000000000', 2, '450700000000', '钦州市', NULL, 450700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450702000000', '450700000000', 3, '450702000000', '钦南区', NULL, 450702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450703000000', '450700000000', 3, '450703000000', '钦北区', NULL, 450703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450721000000', '450700000000', 3, '450721000000', '灵山县', NULL, 450721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450722000000', '450700000000', 3, '450722000000', '浦北县', NULL, 450722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450800000000', '450000000000', 2, '450800000000', '贵港市', NULL, 450800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450802000000', '450800000000', 3, '450802000000', '港北区', NULL, 450802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450803000000', '450800000000', 3, '450803000000', '港南区', NULL, 450803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450804000000', '450800000000', 3, '450804000000', '覃塘区', NULL, 450804000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450821000000', '450800000000', 3, '450821000000', '平南县', NULL, 450821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450881000000', '450800000000', 3, '450881000000', '桂平市', NULL, 450881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450900000000', '450000000000', 2, '450900000000', '玉林市', NULL, 450900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450902000000', '450900000000', 3, '450902000000', '玉州区', NULL, 450902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450903000000', '450900000000', 3, '450903000000', '福绵区', NULL, 450903000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450921000000', '450900000000', 3, '450921000000', '容县', NULL, 450921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450922000000', '450900000000', 3, '450922000000', '陆川县', NULL, 450922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450923000000', '450900000000', 3, '450923000000', '博白县', NULL, 450923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450924000000', '450900000000', 3, '450924000000', '兴业县', NULL, 450924000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450981000000', '450900000000', 3, '450981000000', '北流市', NULL, 450981000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451000000000', '450000000000', 2, '451000000000', '百色市', NULL, 451000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451002000000', '451000000000', 3, '451002000000', '右江区', NULL, 451002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451003000000', '451000000000', 3, '451003000000', '田阳区', NULL, 451003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451022000000', '451000000000', 3, '451022000000', '田东县', NULL, 451022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451023000000', '451000000000', 3, '451023000000', '平果县', NULL, 451023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451024000000', '451000000000', 3, '451024000000', '德保县', NULL, 451024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451026000000', '451000000000', 3, '451026000000', '那坡县', NULL, 451026000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451027000000', '451000000000', 3, '451027000000', '凌云县', NULL, 451027000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451028000000', '451000000000', 3, '451028000000', '乐业县', NULL, 451028000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451029000000', '451000000000', 3, '451029000000', '田林县', NULL, 451029000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451030000000', '451000000000', 3, '451030000000', '西林县', NULL, 451030000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451031000000', '451000000000', 3, '451031000000', '隆林各族自治县', NULL, 451031000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451081000000', '451000000000', 3, '451081000000', '靖西市', NULL, 451081000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451100000000', '450000000000', 2, '451100000000', '贺州市', NULL, 451100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451102000000', '451100000000', 3, '451102000000', '八步区', NULL, 451102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451103000000', '451100000000', 3, '451103000000', '平桂区', NULL, 451103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451121000000', '451100000000', 3, '451121000000', '昭平县', NULL, 451121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451122000000', '451100000000', 3, '451122000000', '钟山县', NULL, 451122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451123000000', '451100000000', 3, '451123000000', '富川瑶族自治县', NULL, 451123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451200000000', '450000000000', 2, '451200000000', '河池市', NULL, 451200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451202000000', '451200000000', 3, '451202000000', '金城江区', NULL, 451202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451203000000', '451200000000', 3, '451203000000', '宜州区', NULL, 451203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451221000000', '451200000000', 3, '451221000000', '南丹县', NULL, 451221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451222000000', '451200000000', 3, '451222000000', '天峨县', NULL, 451222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451223000000', '451200000000', 3, '451223000000', '凤山县', NULL, 451223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451224000000', '451200000000', 3, '451224000000', '东兰县', NULL, 451224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451225000000', '451200000000', 3, '451225000000', '罗城仫佬族自治县', NULL, 451225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451226000000', '451200000000', 3, '451226000000', '环江毛南族自治县', NULL, 451226000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451227000000', '451200000000', 3, '451227000000', '巴马瑶族自治县', NULL, 451227000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451228000000', '451200000000', 3, '451228000000', '都安瑶族自治县', NULL, 451228000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451229000000', '451200000000', 3, '451229000000', '大化瑶族自治县', NULL, 451229000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451300000000', '450000000000', 2, '451300000000', '来宾市', NULL, 451300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451302000000', '451300000000', 3, '451302000000', '兴宾区', NULL, 451302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451321000000', '451300000000', 3, '451321000000', '忻城县', NULL, 451321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451322000000', '451300000000', 3, '451322000000', '象州县', NULL, 451322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451323000000', '451300000000', 3, '451323000000', '武宣县', NULL, 451323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451324000000', '451300000000', 3, '451324000000', '金秀瑶族自治县', NULL, 451324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451381000000', '451300000000', 3, '451381000000', '合山市', NULL, 451381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451400000000', '450000000000', 2, '451400000000', '崇左市', NULL, 451400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451402000000', '451400000000', 3, '451402000000', '江州区', NULL, 451402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451421000000', '451400000000', 3, '451421000000', '扶绥县', NULL, 451421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451422000000', '451400000000', 3, '451422000000', '宁明县', NULL, 451422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451423000000', '451400000000', 3, '451423000000', '龙州县', NULL, 451423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451424000000', '451400000000', 3, '451424000000', '大新县', NULL, 451424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451425000000', '451400000000', 3, '451425000000', '天等县', NULL, 451425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451481000000', '451400000000', 3, '451481000000', '凭祥市', NULL, 451481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460000000000', '0', 1, '460000000000', '海南省', NULL, 460000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460100000000', '460000000000', 2, '460100000000', '海口市', NULL, 460100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460105000000', '460100000000', 3, '460105000000', '秀英区', NULL, 460105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460106000000', '460100000000', 3, '460106000000', '龙华区', NULL, 460106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460107000000', '460100000000', 3, '460107000000', '琼山区', NULL, 460107000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460108000000', '460100000000', 3, '460108000000', '美兰区', NULL, 460108000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460200000000', '460000000000', 2, '460200000000', '三亚市', NULL, 460200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460202000000', '460200000000', 3, '460202000000', '海棠区', NULL, 460202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460203000000', '460200000000', 3, '460203000000', '吉阳区', NULL, 460203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460204000000', '460200000000', 3, '460204000000', '天涯区', NULL, 460204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460205000000', '460200000000', 3, '460205000000', '崖州区', NULL, 460205000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460300000000', '460000000000', 2, '460300000000', '三沙市', NULL, 460300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460321000000', '460300000000', 3, '460321000000', '西沙群岛', NULL, 460321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460322000000', '460300000000', 3, '460322000000', '南沙群岛', NULL, 460322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460323000000', '460300000000', 3, '460323000000', '中沙群岛的岛礁及其海域', NULL, 460323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460400000000', '460000000000', 2, '460400000000', '儋州市', NULL, 460400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469000000000', '460000000000', 2, '469000000000', '省直辖县级行政区划', NULL, 469000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469001000000', '469000000000', 3, '469001000000', '五指山市', NULL, 469001000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469002000000', '469000000000', 3, '469002000000', '琼海市', NULL, 469002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469005000000', '469000000000', 3, '469005000000', '文昌市', NULL, 469005000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469006000000', '469000000000', 3, '469006000000', '万宁市', NULL, 469006000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469007000000', '469000000000', 3, '469007000000', '东方市', NULL, 469007000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469021000000', '469000000000', 3, '469021000000', '定安县', NULL, 469021000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469022000000', '469000000000', 3, '469022000000', '屯昌县', NULL, 469022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469023000000', '469000000000', 3, '469023000000', '澄迈县', NULL, 469023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469024000000', '469000000000', 3, '469024000000', '临高县', NULL, 469024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469025000000', '469000000000', 3, '469025000000', '白沙黎族自治县', NULL, 469025000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469026000000', '469000000000', 3, '469026000000', '昌江黎族自治县', NULL, 469026000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469027000000', '469000000000', 3, '469027000000', '乐东黎族自治县', NULL, 469027000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469028000000', '469000000000', 3, '469028000000', '陵水黎族自治县', NULL, 469028000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469029000000', '469000000000', 3, '469029000000', '保亭黎族苗族自治县', NULL, 469029000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('469030000000', '469000000000', 3, '469030000000', '琼中黎族苗族自治县', NULL, 469030000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500000000000', '0', 1, '500000000000', '重庆市', NULL, 500000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500100000000', '500000000000', 2, '500100000000', '重庆市', NULL, 500100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, '2020-05-27 17:11:29', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_area` VALUES ('500101000000', '500100000000', 3, '500101000000', '万州区', NULL, 500101000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500102000000', '500100000000', 3, '500102000000', '涪陵区', NULL, 500102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500103000000', '500100000000', 3, '500103000000', '渝中区', NULL, 500103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500104000000', '500100000000', 3, '500104000000', '大渡口区', NULL, 500104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500105000000', '500100000000', 3, '500105000000', '江北区', NULL, 500105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500106000000', '500100000000', 3, '500106000000', '沙坪坝区', NULL, 500106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500107000000', '500100000000', 3, '500107000000', '九龙坡区', NULL, 500107000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500108000000', '500100000000', 3, '500108000000', '南岸区', NULL, 500108000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500109000000', '500100000000', 3, '500109000000', '北碚区', NULL, 500109000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500110000000', '500100000000', 3, '500110000000', '綦江区', NULL, 500110000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500111000000', '500100000000', 3, '500111000000', '大足区', NULL, 500111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500112000000', '500100000000', 3, '500112000000', '渝北区', NULL, 500112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500113000000', '500100000000', 3, '500113000000', '巴南区', NULL, 500113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500114000000', '500100000000', 3, '500114000000', '黔江区', NULL, 500114000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500115000000', '500100000000', 3, '500115000000', '长寿区', NULL, 500115000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500116000000', '500100000000', 3, '500116000000', '江津区', NULL, 500116000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500117000000', '500100000000', 3, '500117000000', '合川区', NULL, 500117000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500118000000', '500100000000', 3, '500118000000', '永川区', NULL, 500118000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500119000000', '500100000000', 3, '500119000000', '南川区', NULL, 500119000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500120000000', '500100000000', 3, '500120000000', '璧山区', NULL, 500120000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500151000000', '500100000000', 3, '500151000000', '铜梁区', NULL, 500151000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500152000000', '500100000000', 3, '500152000000', '潼南区', NULL, 500152000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500153000000', '500100000000', 3, '500153000000', '荣昌区', NULL, 500153000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500154000000', '500100000000', 3, '500154000000', '开州区', NULL, 500154000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500155000000', '500100000000', 3, '500155000000', '梁平区', NULL, 500155000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500156000000', '500100000000', 3, '500156000000', '武隆区', NULL, 500156000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500229000000', '500100000000', 3, '500229000000', '城口县', NULL, 500229000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500230000000', '500100000000', 3, '500230000000', '丰都县', NULL, 500230000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500231000000', '500100000000', 3, '500231000000', '垫江县', NULL, 500231000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500233000000', '500100000000', 3, '500233000000', '忠县', NULL, 500233000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500235000000', '500100000000', 3, '500235000000', '云阳县', NULL, 500235000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500236000000', '500100000000', 3, '500236000000', '奉节县', NULL, 500236000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500237000000', '500100000000', 3, '500237000000', '巫山县', NULL, 500237000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500238000000', '500100000000', 3, '500238000000', '巫溪县', NULL, 500238000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500240000000', '500100000000', 3, '500240000000', '石柱土家族自治县', NULL, 500240000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500241000000', '500100000000', 3, '500241000000', '秀山土家族苗族自治县', NULL, 500241000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500242000000', '500100000000', 3, '500242000000', '酉阳土家族苗族自治县', NULL, 500242000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500243000000', '500100000000', 3, '500243000000', '彭水苗族土家族自治县', NULL, 500243000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510000000000', '0', 1, '510000000000', '四川省', NULL, 510000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510100000000', '510000000000', 2, '510100000000', '成都市', NULL, 510100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510104000000', '510100000000', 3, '510104000000', '锦江区', NULL, 510104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510105000000', '510100000000', 3, '510105000000', '青羊区', NULL, 510105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510106000000', '510100000000', 3, '510106000000', '金牛区', NULL, 510106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510107000000', '510100000000', 3, '510107000000', '武侯区', NULL, 510107000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510108000000', '510100000000', 3, '510108000000', '成华区', NULL, 510108000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510112000000', '510100000000', 3, '510112000000', '龙泉驿区', NULL, 510112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510113000000', '510100000000', 3, '510113000000', '青白江区', NULL, 510113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510114000000', '510100000000', 3, '510114000000', '新都区', NULL, 510114000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510115000000', '510100000000', 3, '510115000000', '温江区', NULL, 510115000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510116000000', '510100000000', 3, '510116000000', '双流区', NULL, 510116000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510117000000', '510100000000', 3, '510117000000', '郫都区', NULL, 510117000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510121000000', '510100000000', 3, '510121000000', '金堂县', NULL, 510121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510129000000', '510100000000', 3, '510129000000', '大邑县', NULL, 510129000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510131000000', '510100000000', 3, '510131000000', '蒲江县', NULL, 510131000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510132000000', '510100000000', 3, '510132000000', '新津县', NULL, 510132000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510181000000', '510100000000', 3, '510181000000', '都江堰市', NULL, 510181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510182000000', '510100000000', 3, '510182000000', '彭州市', NULL, 510182000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510183000000', '510100000000', 3, '510183000000', '邛崃市', NULL, 510183000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510184000000', '510100000000', 3, '510184000000', '崇州市', NULL, 510184000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510185000000', '510100000000', 3, '510185000000', '简阳市', NULL, 510185000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510300000000', '510000000000', 2, '510300000000', '自贡市', NULL, 510300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510302000000', '510300000000', 3, '510302000000', '自流井区', NULL, 510302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510303000000', '510300000000', 3, '510303000000', '贡井区', NULL, 510303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510304000000', '510300000000', 3, '510304000000', '大安区', NULL, 510304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510311000000', '510300000000', 3, '510311000000', '沿滩区', NULL, 510311000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510321000000', '510300000000', 3, '510321000000', '荣县', NULL, 510321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510322000000', '510300000000', 3, '510322000000', '富顺县', NULL, 510322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510400000000', '510000000000', 2, '510400000000', '攀枝花市', NULL, 510400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510402000000', '510400000000', 3, '510402000000', '东区', NULL, 510402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510403000000', '510400000000', 3, '510403000000', '西区', NULL, 510403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510411000000', '510400000000', 3, '510411000000', '仁和区', NULL, 510411000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510421000000', '510400000000', 3, '510421000000', '米易县', NULL, 510421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510422000000', '510400000000', 3, '510422000000', '盐边县', NULL, 510422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510500000000', '510000000000', 2, '510500000000', '泸州市', NULL, 510500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510502000000', '510500000000', 3, '510502000000', '江阳区', NULL, 510502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510503000000', '510500000000', 3, '510503000000', '纳溪区', NULL, 510503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510504000000', '510500000000', 3, '510504000000', '龙马潭区', NULL, 510504000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510521000000', '510500000000', 3, '510521000000', '泸县', NULL, 510521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510522000000', '510500000000', 3, '510522000000', '合江县', NULL, 510522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510524000000', '510500000000', 3, '510524000000', '叙永县', NULL, 510524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510525000000', '510500000000', 3, '510525000000', '古蔺县', NULL, 510525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510600000000', '510000000000', 2, '510600000000', '德阳市', NULL, 510600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510603000000', '510600000000', 3, '510603000000', '旌阳区', NULL, 510603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510604000000', '510600000000', 3, '510604000000', '罗江区', NULL, 510604000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510623000000', '510600000000', 3, '510623000000', '中江县', NULL, 510623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510681000000', '510600000000', 3, '510681000000', '广汉市', NULL, 510681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510682000000', '510600000000', 3, '510682000000', '什邡市', NULL, 510682000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510683000000', '510600000000', 3, '510683000000', '绵竹市', NULL, 510683000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510700000000', '510000000000', 2, '510700000000', '绵阳市', NULL, 510700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510703000000', '510700000000', 3, '510703000000', '涪城区', NULL, 510703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510704000000', '510700000000', 3, '510704000000', '游仙区', NULL, 510704000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510705000000', '510700000000', 3, '510705000000', '安州区', NULL, 510705000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510722000000', '510700000000', 3, '510722000000', '三台县', NULL, 510722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510723000000', '510700000000', 3, '510723000000', '盐亭县', NULL, 510723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510725000000', '510700000000', 3, '510725000000', '梓潼县', NULL, 510725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510726000000', '510700000000', 3, '510726000000', '北川羌族自治县', NULL, 510726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510727000000', '510700000000', 3, '510727000000', '平武县', NULL, 510727000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510781000000', '510700000000', 3, '510781000000', '江油市', NULL, 510781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510800000000', '510000000000', 2, '510800000000', '广元市', NULL, 510800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510802000000', '510800000000', 3, '510802000000', '利州区', NULL, 510802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510811000000', '510800000000', 3, '510811000000', '昭化区', NULL, 510811000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510812000000', '510800000000', 3, '510812000000', '朝天区', NULL, 510812000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510821000000', '510800000000', 3, '510821000000', '旺苍县', NULL, 510821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510822000000', '510800000000', 3, '510822000000', '青川县', NULL, 510822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510823000000', '510800000000', 3, '510823000000', '剑阁县', NULL, 510823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510824000000', '510800000000', 3, '510824000000', '苍溪县', NULL, 510824000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510900000000', '510000000000', 2, '510900000000', '遂宁市', NULL, 510900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510903000000', '510900000000', 3, '510903000000', '船山区', NULL, 510903000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510904000000', '510900000000', 3, '510904000000', '安居区', NULL, 510904000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510921000000', '510900000000', 3, '510921000000', '蓬溪县', NULL, 510921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510923000000', '510900000000', 3, '510923000000', '大英县', NULL, 510923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510981000000', '510900000000', 3, '510981000000', '射洪市', NULL, 510981000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511000000000', '510000000000', 2, '511000000000', '内江市', NULL, 511000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511002000000', '511000000000', 3, '511002000000', '市中区', NULL, 511002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511011000000', '511000000000', 3, '511011000000', '东兴区', NULL, 511011000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511024000000', '511000000000', 3, '511024000000', '威远县', NULL, 511024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511025000000', '511000000000', 3, '511025000000', '资中县', NULL, 511025000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511071000000', '511000000000', 3, '511071000000', '内江经济开发区', NULL, 511071000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511083000000', '511000000000', 3, '511083000000', '隆昌市', NULL, 511083000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511100000000', '510000000000', 2, '511100000000', '乐山市', NULL, 511100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511102000000', '511100000000', 3, '511102000000', '市中区', NULL, 511102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511111000000', '511100000000', 3, '511111000000', '沙湾区', NULL, 511111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511112000000', '511100000000', 3, '511112000000', '五通桥区', NULL, 511112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511113000000', '511100000000', 3, '511113000000', '金口河区', NULL, 511113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511123000000', '511100000000', 3, '511123000000', '犍为县', NULL, 511123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511124000000', '511100000000', 3, '511124000000', '井研县', NULL, 511124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511126000000', '511100000000', 3, '511126000000', '夹江县', NULL, 511126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511129000000', '511100000000', 3, '511129000000', '沐川县', NULL, 511129000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511132000000', '511100000000', 3, '511132000000', '峨边彝族自治县', NULL, 511132000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511133000000', '511100000000', 3, '511133000000', '马边彝族自治县', NULL, 511133000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511181000000', '511100000000', 3, '511181000000', '峨眉山市', NULL, 511181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511300000000', '510000000000', 2, '511300000000', '南充市', NULL, 511300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511302000000', '511300000000', 3, '511302000000', '顺庆区', NULL, 511302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511303000000', '511300000000', 3, '511303000000', '高坪区', NULL, 511303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511304000000', '511300000000', 3, '511304000000', '嘉陵区', NULL, 511304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511321000000', '511300000000', 3, '511321000000', '南部县', NULL, 511321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511322000000', '511300000000', 3, '511322000000', '营山县', NULL, 511322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511323000000', '511300000000', 3, '511323000000', '蓬安县', NULL, 511323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511324000000', '511300000000', 3, '511324000000', '仪陇县', NULL, 511324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511325000000', '511300000000', 3, '511325000000', '西充县', NULL, 511325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511381000000', '511300000000', 3, '511381000000', '阆中市', NULL, 511381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511400000000', '510000000000', 2, '511400000000', '眉山市', NULL, 511400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511402000000', '511400000000', 3, '511402000000', '东坡区', NULL, 511402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511403000000', '511400000000', 3, '511403000000', '彭山区', NULL, 511403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511421000000', '511400000000', 3, '511421000000', '仁寿县', NULL, 511421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511423000000', '511400000000', 3, '511423000000', '洪雅县', NULL, 511423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511424000000', '511400000000', 3, '511424000000', '丹棱县', NULL, 511424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511425000000', '511400000000', 3, '511425000000', '青神县', NULL, 511425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511500000000', '510000000000', 2, '511500000000', '宜宾市', NULL, 511500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511502000000', '511500000000', 3, '511502000000', '翠屏区', NULL, 511502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511503000000', '511500000000', 3, '511503000000', '南溪区', NULL, 511503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511504000000', '511500000000', 3, '511504000000', '叙州区', NULL, 511504000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511523000000', '511500000000', 3, '511523000000', '江安县', NULL, 511523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511524000000', '511500000000', 3, '511524000000', '长宁县', NULL, 511524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511525000000', '511500000000', 3, '511525000000', '高县', NULL, 511525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511526000000', '511500000000', 3, '511526000000', '珙县', NULL, 511526000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511527000000', '511500000000', 3, '511527000000', '筠连县', NULL, 511527000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511528000000', '511500000000', 3, '511528000000', '兴文县', NULL, 511528000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511529000000', '511500000000', 3, '511529000000', '屏山县', NULL, 511529000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511600000000', '510000000000', 2, '511600000000', '广安市', NULL, 511600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511602000000', '511600000000', 3, '511602000000', '广安区', NULL, 511602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511603000000', '511600000000', 3, '511603000000', '前锋区', NULL, 511603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511621000000', '511600000000', 3, '511621000000', '岳池县', NULL, 511621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511622000000', '511600000000', 3, '511622000000', '武胜县', NULL, 511622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511623000000', '511600000000', 3, '511623000000', '邻水县', NULL, 511623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511681000000', '511600000000', 3, '511681000000', '华蓥市', NULL, 511681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511700000000', '510000000000', 2, '511700000000', '达州市', NULL, 511700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511702000000', '511700000000', 3, '511702000000', '通川区', NULL, 511702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511703000000', '511700000000', 3, '511703000000', '达川区', NULL, 511703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511722000000', '511700000000', 3, '511722000000', '宣汉县', NULL, 511722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511723000000', '511700000000', 3, '511723000000', '开江县', NULL, 511723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511724000000', '511700000000', 3, '511724000000', '大竹县', NULL, 511724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511725000000', '511700000000', 3, '511725000000', '渠县', NULL, 511725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511771000000', '511700000000', 3, '511771000000', '达州经济开发区', NULL, 511771000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511781000000', '511700000000', 3, '511781000000', '万源市', NULL, 511781000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511800000000', '510000000000', 2, '511800000000', '雅安市', NULL, 511800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511802000000', '511800000000', 3, '511802000000', '雨城区', NULL, 511802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511803000000', '511800000000', 3, '511803000000', '名山区', NULL, 511803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511822000000', '511800000000', 3, '511822000000', '荥经县', NULL, 511822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511823000000', '511800000000', 3, '511823000000', '汉源县', NULL, 511823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511824000000', '511800000000', 3, '511824000000', '石棉县', NULL, 511824000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511825000000', '511800000000', 3, '511825000000', '天全县', NULL, 511825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511826000000', '511800000000', 3, '511826000000', '芦山县', NULL, 511826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511827000000', '511800000000', 3, '511827000000', '宝兴县', NULL, 511827000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511900000000', '510000000000', 2, '511900000000', '巴中市', NULL, 511900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511902000000', '511900000000', 3, '511902000000', '巴州区', NULL, 511902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511903000000', '511900000000', 3, '511903000000', '恩阳区', NULL, 511903000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511921000000', '511900000000', 3, '511921000000', '通江县', NULL, 511921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511922000000', '511900000000', 3, '511922000000', '南江县', NULL, 511922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511923000000', '511900000000', 3, '511923000000', '平昌县', NULL, 511923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511971000000', '511900000000', 3, '511971000000', '巴中经济开发区', NULL, 511971000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('512000000000', '510000000000', 2, '512000000000', '资阳市', NULL, 512000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('512002000000', '512000000000', 3, '512002000000', '雁江区', NULL, 512002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('512021000000', '512000000000', 3, '512021000000', '安岳县', NULL, 512021000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('512022000000', '512000000000', 3, '512022000000', '乐至县', NULL, 512022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513200000000', '510000000000', 2, '513200000000', '阿坝藏族羌族自治州', NULL, 513200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513201000000', '513200000000', 3, '513201000000', '马尔康市', NULL, 513201000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513221000000', '513200000000', 3, '513221000000', '汶川县', NULL, 513221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513222000000', '513200000000', 3, '513222000000', '理县', NULL, 513222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513223000000', '513200000000', 3, '513223000000', '茂县', NULL, 513223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513224000000', '513200000000', 3, '513224000000', '松潘县', NULL, 513224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513225000000', '513200000000', 3, '513225000000', '九寨沟县', NULL, 513225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513226000000', '513200000000', 3, '513226000000', '金川县', NULL, 513226000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513227000000', '513200000000', 3, '513227000000', '小金县', NULL, 513227000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513228000000', '513200000000', 3, '513228000000', '黑水县', NULL, 513228000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513230000000', '513200000000', 3, '513230000000', '壤塘县', NULL, 513230000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513231000000', '513200000000', 3, '513231000000', '阿坝县', NULL, 513231000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513232000000', '513200000000', 3, '513232000000', '若尔盖县', NULL, 513232000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513233000000', '513200000000', 3, '513233000000', '红原县', NULL, 513233000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513300000000', '510000000000', 2, '513300000000', '甘孜藏族自治州', NULL, 513300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513301000000', '513300000000', 3, '513301000000', '康定市', NULL, 513301000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513322000000', '513300000000', 3, '513322000000', '泸定县', NULL, 513322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513323000000', '513300000000', 3, '513323000000', '丹巴县', NULL, 513323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513324000000', '513300000000', 3, '513324000000', '九龙县', NULL, 513324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513325000000', '513300000000', 3, '513325000000', '雅江县', NULL, 513325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513326000000', '513300000000', 3, '513326000000', '道孚县', NULL, 513326000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513327000000', '513300000000', 3, '513327000000', '炉霍县', NULL, 513327000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513328000000', '513300000000', 3, '513328000000', '甘孜县', NULL, 513328000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513329000000', '513300000000', 3, '513329000000', '新龙县', NULL, 513329000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513330000000', '513300000000', 3, '513330000000', '德格县', NULL, 513330000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513331000000', '513300000000', 3, '513331000000', '白玉县', NULL, 513331000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513332000000', '513300000000', 3, '513332000000', '石渠县', NULL, 513332000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513333000000', '513300000000', 3, '513333000000', '色达县', NULL, 513333000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513334000000', '513300000000', 3, '513334000000', '理塘县', NULL, 513334000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513335000000', '513300000000', 3, '513335000000', '巴塘县', NULL, 513335000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513336000000', '513300000000', 3, '513336000000', '乡城县', NULL, 513336000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513337000000', '513300000000', 3, '513337000000', '稻城县', NULL, 513337000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513338000000', '513300000000', 3, '513338000000', '得荣县', NULL, 513338000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513400000000', '510000000000', 2, '513400000000', '凉山彝族自治州', NULL, 513400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513401000000', '513400000000', 3, '513401000000', '西昌市', NULL, 513401000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513422000000', '513400000000', 3, '513422000000', '木里藏族自治县', NULL, 513422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513423000000', '513400000000', 3, '513423000000', '盐源县', NULL, 513423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513424000000', '513400000000', 3, '513424000000', '德昌县', NULL, 513424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513425000000', '513400000000', 3, '513425000000', '会理县', NULL, 513425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513426000000', '513400000000', 3, '513426000000', '会东县', NULL, 513426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513427000000', '513400000000', 3, '513427000000', '宁南县', NULL, 513427000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513428000000', '513400000000', 3, '513428000000', '普格县', NULL, 513428000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513429000000', '513400000000', 3, '513429000000', '布拖县', NULL, 513429000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513430000000', '513400000000', 3, '513430000000', '金阳县', NULL, 513430000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513431000000', '513400000000', 3, '513431000000', '昭觉县', NULL, 513431000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513432000000', '513400000000', 3, '513432000000', '喜德县', NULL, 513432000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513433000000', '513400000000', 3, '513433000000', '冕宁县', NULL, 513433000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513434000000', '513400000000', 3, '513434000000', '越西县', NULL, 513434000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513435000000', '513400000000', 3, '513435000000', '甘洛县', NULL, 513435000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513436000000', '513400000000', 3, '513436000000', '美姑县', NULL, 513436000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513437000000', '513400000000', 3, '513437000000', '雷波县', NULL, 513437000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520000000000', '0', 1, '520000000000', '贵州省', NULL, 520000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520100000000', '520000000000', 2, '520100000000', '贵阳市', NULL, 520100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520102000000', '520100000000', 3, '520102000000', '南明区', NULL, 520102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520103000000', '520100000000', 3, '520103000000', '云岩区', NULL, 520103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520111000000', '520100000000', 3, '520111000000', '花溪区', NULL, 520111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520112000000', '520100000000', 3, '520112000000', '乌当区', NULL, 520112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520113000000', '520100000000', 3, '520113000000', '白云区', NULL, 520113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520115000000', '520100000000', 3, '520115000000', '观山湖区', NULL, 520115000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520121000000', '520100000000', 3, '520121000000', '开阳县', NULL, 520121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520122000000', '520100000000', 3, '520122000000', '息烽县', NULL, 520122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520123000000', '520100000000', 3, '520123000000', '修文县', NULL, 520123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520181000000', '520100000000', 3, '520181000000', '清镇市', NULL, 520181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520200000000', '520000000000', 2, '520200000000', '六盘水市', NULL, 520200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520201000000', '520200000000', 3, '520201000000', '钟山区', NULL, 520201000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520203000000', '520200000000', 3, '520203000000', '六枝特区', NULL, 520203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520221000000', '520200000000', 3, '520221000000', '水城县', NULL, 520221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520281000000', '520200000000', 3, '520281000000', '盘州市', NULL, 520281000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520300000000', '520000000000', 2, '520300000000', '遵义市', NULL, 520300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520302000000', '520300000000', 3, '520302000000', '红花岗区', NULL, 520302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520303000000', '520300000000', 3, '520303000000', '汇川区', NULL, 520303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520304000000', '520300000000', 3, '520304000000', '播州区', NULL, 520304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520322000000', '520300000000', 3, '520322000000', '桐梓县', NULL, 520322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520323000000', '520300000000', 3, '520323000000', '绥阳县', NULL, 520323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520324000000', '520300000000', 3, '520324000000', '正安县', NULL, 520324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520325000000', '520300000000', 3, '520325000000', '道真仡佬族苗族自治县', NULL, 520325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520326000000', '520300000000', 3, '520326000000', '务川仡佬族苗族自治县', NULL, 520326000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520327000000', '520300000000', 3, '520327000000', '凤冈县', NULL, 520327000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520328000000', '520300000000', 3, '520328000000', '湄潭县', NULL, 520328000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520329000000', '520300000000', 3, '520329000000', '余庆县', NULL, 520329000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520330000000', '520300000000', 3, '520330000000', '习水县', NULL, 520330000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520381000000', '520300000000', 3, '520381000000', '赤水市', NULL, 520381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520382000000', '520300000000', 3, '520382000000', '仁怀市', NULL, 520382000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520400000000', '520000000000', 2, '520400000000', '安顺市', NULL, 520400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520402000000', '520400000000', 3, '520402000000', '西秀区', NULL, 520402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520403000000', '520400000000', 3, '520403000000', '平坝区', NULL, 520403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520422000000', '520400000000', 3, '520422000000', '普定县', NULL, 520422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520423000000', '520400000000', 3, '520423000000', '镇宁布依族苗族自治县', NULL, 520423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520424000000', '520400000000', 3, '520424000000', '关岭布依族苗族自治县', NULL, 520424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520425000000', '520400000000', 3, '520425000000', '紫云苗族布依族自治县', NULL, 520425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520500000000', '520000000000', 2, '520500000000', '毕节市', NULL, 520500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520502000000', '520500000000', 3, '520502000000', '七星关区', NULL, 520502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520521000000', '520500000000', 3, '520521000000', '大方县', NULL, 520521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520522000000', '520500000000', 3, '520522000000', '黔西县', NULL, 520522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520523000000', '520500000000', 3, '520523000000', '金沙县', NULL, 520523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520524000000', '520500000000', 3, '520524000000', '织金县', NULL, 520524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520525000000', '520500000000', 3, '520525000000', '纳雍县', NULL, 520525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520526000000', '520500000000', 3, '520526000000', '威宁彝族回族苗族自治县', NULL, 520526000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520527000000', '520500000000', 3, '520527000000', '赫章县', NULL, 520527000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520600000000', '520000000000', 2, '520600000000', '铜仁市', NULL, 520600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520602000000', '520600000000', 3, '520602000000', '碧江区', NULL, 520602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520603000000', '520600000000', 3, '520603000000', '万山区', NULL, 520603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520621000000', '520600000000', 3, '520621000000', '江口县', NULL, 520621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520622000000', '520600000000', 3, '520622000000', '玉屏侗族自治县', NULL, 520622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520623000000', '520600000000', 3, '520623000000', '石阡县', NULL, 520623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520624000000', '520600000000', 3, '520624000000', '思南县', NULL, 520624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520625000000', '520600000000', 3, '520625000000', '印江土家族苗族自治县', NULL, 520625000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520626000000', '520600000000', 3, '520626000000', '德江县', NULL, 520626000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520627000000', '520600000000', 3, '520627000000', '沿河土家族自治县', NULL, 520627000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520628000000', '520600000000', 3, '520628000000', '松桃苗族自治县', NULL, 520628000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522300000000', '520000000000', 2, '522300000000', '黔西南布依族苗族自治州', NULL, 522300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522301000000', '522300000000', 3, '522301000000', '兴义市', NULL, 522301000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522302000000', '522300000000', 3, '522302000000', '兴仁市', NULL, 522302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522323000000', '522300000000', 3, '522323000000', '普安县', NULL, 522323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522324000000', '522300000000', 3, '522324000000', '晴隆县', NULL, 522324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522325000000', '522300000000', 3, '522325000000', '贞丰县', NULL, 522325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522326000000', '522300000000', 3, '522326000000', '望谟县', NULL, 522326000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522327000000', '522300000000', 3, '522327000000', '册亨县', NULL, 522327000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522328000000', '522300000000', 3, '522328000000', '安龙县', NULL, 522328000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522600000000', '520000000000', 2, '522600000000', '黔东南苗族侗族自治州', NULL, 522600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522601000000', '522600000000', 3, '522601000000', '凯里市', NULL, 522601000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522622000000', '522600000000', 3, '522622000000', '黄平县', NULL, 522622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522623000000', '522600000000', 3, '522623000000', '施秉县', NULL, 522623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522624000000', '522600000000', 3, '522624000000', '三穗县', NULL, 522624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522625000000', '522600000000', 3, '522625000000', '镇远县', NULL, 522625000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522626000000', '522600000000', 3, '522626000000', '岑巩县', NULL, 522626000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522627000000', '522600000000', 3, '522627000000', '天柱县', NULL, 522627000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522628000000', '522600000000', 3, '522628000000', '锦屏县', NULL, 522628000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522629000000', '522600000000', 3, '522629000000', '剑河县', NULL, 522629000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522630000000', '522600000000', 3, '522630000000', '台江县', NULL, 522630000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522631000000', '522600000000', 3, '522631000000', '黎平县', NULL, 522631000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522632000000', '522600000000', 3, '522632000000', '榕江县', NULL, 522632000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522633000000', '522600000000', 3, '522633000000', '从江县', NULL, 522633000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522634000000', '522600000000', 3, '522634000000', '雷山县', NULL, 522634000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522635000000', '522600000000', 3, '522635000000', '麻江县', NULL, 522635000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522636000000', '522600000000', 3, '522636000000', '丹寨县', NULL, 522636000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522700000000', '520000000000', 2, '522700000000', '黔南布依族苗族自治州', NULL, 522700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522701000000', '522700000000', 3, '522701000000', '都匀市', NULL, 522701000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522702000000', '522700000000', 3, '522702000000', '福泉市', NULL, 522702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522722000000', '522700000000', 3, '522722000000', '荔波县', NULL, 522722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522723000000', '522700000000', 3, '522723000000', '贵定县', NULL, 522723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522725000000', '522700000000', 3, '522725000000', '瓮安县', NULL, 522725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522726000000', '522700000000', 3, '522726000000', '独山县', NULL, 522726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522727000000', '522700000000', 3, '522727000000', '平塘县', NULL, 522727000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522728000000', '522700000000', 3, '522728000000', '罗甸县', NULL, 522728000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522729000000', '522700000000', 3, '522729000000', '长顺县', NULL, 522729000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522730000000', '522700000000', 3, '522730000000', '龙里县', NULL, 522730000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522731000000', '522700000000', 3, '522731000000', '惠水县', NULL, 522731000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522732000000', '522700000000', 3, '522732000000', '三都水族自治县', NULL, 522732000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530000000000', '0', 1, '530000000000', '云南省', NULL, 530000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530100000000', '530000000000', 2, '530100000000', '昆明市', NULL, 530100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530102000000', '530100000000', 3, '530102000000', '五华区', NULL, 530102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530103000000', '530100000000', 3, '530103000000', '盘龙区', NULL, 530103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530111000000', '530100000000', 3, '530111000000', '官渡区', NULL, 530111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530112000000', '530100000000', 3, '530112000000', '西山区', NULL, 530112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530113000000', '530100000000', 3, '530113000000', '东川区', NULL, 530113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530114000000', '530100000000', 3, '530114000000', '呈贡区', NULL, 530114000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530115000000', '530100000000', 3, '530115000000', '晋宁区', NULL, 530115000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530124000000', '530100000000', 3, '530124000000', '富民县', NULL, 530124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530125000000', '530100000000', 3, '530125000000', '宜良县', NULL, 530125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530126000000', '530100000000', 3, '530126000000', '石林彝族自治县', NULL, 530126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530127000000', '530100000000', 3, '530127000000', '嵩明县', NULL, 530127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530128000000', '530100000000', 3, '530128000000', '禄劝彝族苗族自治县', NULL, 530128000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530129000000', '530100000000', 3, '530129000000', '寻甸回族彝族自治县', NULL, 530129000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530181000000', '530100000000', 3, '530181000000', '安宁市', NULL, 530181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530300000000', '530000000000', 2, '530300000000', '曲靖市', NULL, 530300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530302000000', '530300000000', 3, '530302000000', '麒麟区', NULL, 530302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530303000000', '530300000000', 3, '530303000000', '沾益区', NULL, 530303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530304000000', '530300000000', 3, '530304000000', '马龙区', NULL, 530304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530322000000', '530300000000', 3, '530322000000', '陆良县', NULL, 530322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530323000000', '530300000000', 3, '530323000000', '师宗县', NULL, 530323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530324000000', '530300000000', 3, '530324000000', '罗平县', NULL, 530324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530325000000', '530300000000', 3, '530325000000', '富源县', NULL, 530325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530326000000', '530300000000', 3, '530326000000', '会泽县', NULL, 530326000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530381000000', '530300000000', 3, '530381000000', '宣威市', NULL, 530381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530400000000', '530000000000', 2, '530400000000', '玉溪市', NULL, 530400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530402000000', '530400000000', 3, '530402000000', '红塔区', NULL, 530402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530403000000', '530400000000', 3, '530403000000', '江川区', NULL, 530403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530422000000', '530400000000', 3, '530422000000', '澄江县', NULL, 530422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530423000000', '530400000000', 3, '530423000000', '通海县', NULL, 530423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530424000000', '530400000000', 3, '530424000000', '华宁县', NULL, 530424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530425000000', '530400000000', 3, '530425000000', '易门县', NULL, 530425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530426000000', '530400000000', 3, '530426000000', '峨山彝族自治县', NULL, 530426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530427000000', '530400000000', 3, '530427000000', '新平彝族傣族自治县', NULL, 530427000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530428000000', '530400000000', 3, '530428000000', '元江哈尼族彝族傣族自治县', NULL, 530428000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530500000000', '530000000000', 2, '530500000000', '保山市', NULL, 530500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530502000000', '530500000000', 3, '530502000000', '隆阳区', NULL, 530502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530521000000', '530500000000', 3, '530521000000', '施甸县', NULL, 530521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530523000000', '530500000000', 3, '530523000000', '龙陵县', NULL, 530523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530524000000', '530500000000', 3, '530524000000', '昌宁县', NULL, 530524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530581000000', '530500000000', 3, '530581000000', '腾冲市', NULL, 530581000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530600000000', '530000000000', 2, '530600000000', '昭通市', NULL, 530600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530602000000', '530600000000', 3, '530602000000', '昭阳区', NULL, 530602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530621000000', '530600000000', 3, '530621000000', '鲁甸县', NULL, 530621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530622000000', '530600000000', 3, '530622000000', '巧家县', NULL, 530622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530623000000', '530600000000', 3, '530623000000', '盐津县', NULL, 530623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530624000000', '530600000000', 3, '530624000000', '大关县', NULL, 530624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530625000000', '530600000000', 3, '530625000000', '永善县', NULL, 530625000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530626000000', '530600000000', 3, '530626000000', '绥江县', NULL, 530626000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530627000000', '530600000000', 3, '530627000000', '镇雄县', NULL, 530627000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530628000000', '530600000000', 3, '530628000000', '彝良县', NULL, 530628000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530629000000', '530600000000', 3, '530629000000', '威信县', NULL, 530629000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530681000000', '530600000000', 3, '530681000000', '水富市', NULL, 530681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530700000000', '530000000000', 2, '530700000000', '丽江市', NULL, 530700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530702000000', '530700000000', 3, '530702000000', '古城区', NULL, 530702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530721000000', '530700000000', 3, '530721000000', '玉龙纳西族自治县', NULL, 530721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530722000000', '530700000000', 3, '530722000000', '永胜县', NULL, 530722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530723000000', '530700000000', 3, '530723000000', '华坪县', NULL, 530723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530724000000', '530700000000', 3, '530724000000', '宁蒗彝族自治县', NULL, 530724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530800000000', '530000000000', 2, '530800000000', '普洱市', NULL, 530800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530802000000', '530800000000', 3, '530802000000', '思茅区', NULL, 530802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530821000000', '530800000000', 3, '530821000000', '宁洱哈尼族彝族自治县', NULL, 530821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530822000000', '530800000000', 3, '530822000000', '墨江哈尼族自治县', NULL, 530822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530823000000', '530800000000', 3, '530823000000', '景东彝族自治县', NULL, 530823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530824000000', '530800000000', 3, '530824000000', '景谷傣族彝族自治县', NULL, 530824000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530825000000', '530800000000', 3, '530825000000', '镇沅彝族哈尼族拉祜族自治县', NULL, 530825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530826000000', '530800000000', 3, '530826000000', '江城哈尼族彝族自治县', NULL, 530826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530827000000', '530800000000', 3, '530827000000', '孟连傣族拉祜族佤族自治县', NULL, 530827000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530828000000', '530800000000', 3, '530828000000', '澜沧拉祜族自治县', NULL, 530828000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530829000000', '530800000000', 3, '530829000000', '西盟佤族自治县', NULL, 530829000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530900000000', '530000000000', 2, '530900000000', '临沧市', NULL, 530900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530902000000', '530900000000', 3, '530902000000', '临翔区', NULL, 530902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530921000000', '530900000000', 3, '530921000000', '凤庆县', NULL, 530921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530922000000', '530900000000', 3, '530922000000', '云县', NULL, 530922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530923000000', '530900000000', 3, '530923000000', '永德县', NULL, 530923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530924000000', '530900000000', 3, '530924000000', '镇康县', NULL, 530924000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530925000000', '530900000000', 3, '530925000000', '双江拉祜族佤族布朗族傣族自治县', NULL, 530925000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530926000000', '530900000000', 3, '530926000000', '耿马傣族佤族自治县', NULL, 530926000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530927000000', '530900000000', 3, '530927000000', '沧源佤族自治县', NULL, 530927000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532300000000', '530000000000', 2, '532300000000', '楚雄彝族自治州', NULL, 532300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532301000000', '532300000000', 3, '532301000000', '楚雄市', NULL, 532301000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532322000000', '532300000000', 3, '532322000000', '双柏县', NULL, 532322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532323000000', '532300000000', 3, '532323000000', '牟定县', NULL, 532323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532324000000', '532300000000', 3, '532324000000', '南华县', NULL, 532324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532325000000', '532300000000', 3, '532325000000', '姚安县', NULL, 532325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532326000000', '532300000000', 3, '532326000000', '大姚县', NULL, 532326000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532327000000', '532300000000', 3, '532327000000', '永仁县', NULL, 532327000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532328000000', '532300000000', 3, '532328000000', '元谋县', NULL, 532328000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532329000000', '532300000000', 3, '532329000000', '武定县', NULL, 532329000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532331000000', '532300000000', 3, '532331000000', '禄丰县', NULL, 532331000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532500000000', '530000000000', 2, '532500000000', '红河哈尼族彝族自治州', NULL, 532500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532501000000', '532500000000', 3, '532501000000', '个旧市', NULL, 532501000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532502000000', '532500000000', 3, '532502000000', '开远市', NULL, 532502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532503000000', '532500000000', 3, '532503000000', '蒙自市', NULL, 532503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532504000000', '532500000000', 3, '532504000000', '弥勒市', NULL, 532504000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532523000000', '532500000000', 3, '532523000000', '屏边苗族自治县', NULL, 532523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532524000000', '532500000000', 3, '532524000000', '建水县', NULL, 532524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532525000000', '532500000000', 3, '532525000000', '石屏县', NULL, 532525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532527000000', '532500000000', 3, '532527000000', '泸西县', NULL, 532527000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532528000000', '532500000000', 3, '532528000000', '元阳县', NULL, 532528000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532529000000', '532500000000', 3, '532529000000', '红河县', NULL, 532529000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532530000000', '532500000000', 3, '532530000000', '金平苗族瑶族傣族自治县', NULL, 532530000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532531000000', '532500000000', 3, '532531000000', '绿春县', NULL, 532531000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532532000000', '532500000000', 3, '532532000000', '河口瑶族自治县', NULL, 532532000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532600000000', '530000000000', 2, '532600000000', '文山壮族苗族自治州', NULL, 532600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532601000000', '532600000000', 3, '532601000000', '文山市', NULL, 532601000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532622000000', '532600000000', 3, '532622000000', '砚山县', NULL, 532622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532623000000', '532600000000', 3, '532623000000', '西畴县', NULL, 532623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532624000000', '532600000000', 3, '532624000000', '麻栗坡县', NULL, 532624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532625000000', '532600000000', 3, '532625000000', '马关县', NULL, 532625000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532626000000', '532600000000', 3, '532626000000', '丘北县', NULL, 532626000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532627000000', '532600000000', 3, '532627000000', '广南县', NULL, 532627000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532628000000', '532600000000', 3, '532628000000', '富宁县', NULL, 532628000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532800000000', '530000000000', 2, '532800000000', '西双版纳傣族自治州', NULL, 532800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532801000000', '532800000000', 3, '532801000000', '景洪市', NULL, 532801000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532822000000', '532800000000', 3, '532822000000', '勐海县', NULL, 532822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532823000000', '532800000000', 3, '532823000000', '勐腊县', NULL, 532823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532900000000', '530000000000', 2, '532900000000', '大理白族自治州', NULL, 532900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532901000000', '532900000000', 3, '532901000000', '大理市', NULL, 532901000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532922000000', '532900000000', 3, '532922000000', '漾濞彝族自治县', NULL, 532922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532923000000', '532900000000', 3, '532923000000', '祥云县', NULL, 532923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532924000000', '532900000000', 3, '532924000000', '宾川县', NULL, 532924000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532925000000', '532900000000', 3, '532925000000', '弥渡县', NULL, 532925000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532926000000', '532900000000', 3, '532926000000', '南涧彝族自治县', NULL, 532926000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532927000000', '532900000000', 3, '532927000000', '巍山彝族回族自治县', NULL, 532927000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532928000000', '532900000000', 3, '532928000000', '永平县', NULL, 532928000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532929000000', '532900000000', 3, '532929000000', '云龙县', NULL, 532929000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532930000000', '532900000000', 3, '532930000000', '洱源县', NULL, 532930000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532931000000', '532900000000', 3, '532931000000', '剑川县', NULL, 532931000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532932000000', '532900000000', 3, '532932000000', '鹤庆县', NULL, 532932000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533100000000', '530000000000', 2, '533100000000', '德宏傣族景颇族自治州', NULL, 533100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533102000000', '533100000000', 3, '533102000000', '瑞丽市', NULL, 533102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533103000000', '533100000000', 3, '533103000000', '芒市', NULL, 533103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533122000000', '533100000000', 3, '533122000000', '梁河县', NULL, 533122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533123000000', '533100000000', 3, '533123000000', '盈江县', NULL, 533123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533124000000', '533100000000', 3, '533124000000', '陇川县', NULL, 533124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533300000000', '530000000000', 2, '533300000000', '怒江傈僳族自治州', NULL, 533300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533301000000', '533300000000', 3, '533301000000', '泸水市', NULL, 533301000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533323000000', '533300000000', 3, '533323000000', '福贡县', NULL, 533323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533324000000', '533300000000', 3, '533324000000', '贡山独龙族怒族自治县', NULL, 533324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533325000000', '533300000000', 3, '533325000000', '兰坪白族普米族自治县', NULL, 533325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533400000000', '530000000000', 2, '533400000000', '迪庆藏族自治州', NULL, 533400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533401000000', '533400000000', 3, '533401000000', '香格里拉市', NULL, 533401000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533422000000', '533400000000', 3, '533422000000', '德钦县', NULL, 533422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533423000000', '533400000000', 3, '533423000000', '维西傈僳族自治县', NULL, 533423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540000000000', '0', 1, '540000000000', '西藏自治区', NULL, 540000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540100000000', '540000000000', 2, '540100000000', '拉萨市', NULL, 540100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540102000000', '540100000000', 3, '540102000000', '城关区', NULL, 540102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540103000000', '540100000000', 3, '540103000000', '堆龙德庆区', NULL, 540103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540104000000', '540100000000', 3, '540104000000', '达孜区', NULL, 540104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540121000000', '540100000000', 3, '540121000000', '林周县', NULL, 540121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540122000000', '540100000000', 3, '540122000000', '当雄县', NULL, 540122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540123000000', '540100000000', 3, '540123000000', '尼木县', NULL, 540123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540124000000', '540100000000', 3, '540124000000', '曲水县', NULL, 540124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540127000000', '540100000000', 3, '540127000000', '墨竹工卡县', NULL, 540127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540171000000', '540100000000', 3, '540171000000', '格尔木藏青工业园区', NULL, 540171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540172000000', '540100000000', 3, '540172000000', '拉萨经济技术开发区', NULL, 540172000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540173000000', '540100000000', 3, '540173000000', '西藏文化旅游创意园区', NULL, 540173000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540174000000', '540100000000', 3, '540174000000', '达孜工业园区', NULL, 540174000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540200000000', '540000000000', 2, '540200000000', '日喀则市', NULL, 540200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540202000000', '540200000000', 3, '540202000000', '桑珠孜区', NULL, 540202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540221000000', '540200000000', 3, '540221000000', '南木林县', NULL, 540221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540222000000', '540200000000', 3, '540222000000', '江孜县', NULL, 540222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540223000000', '540200000000', 3, '540223000000', '定日县', NULL, 540223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540224000000', '540200000000', 3, '540224000000', '萨迦县', NULL, 540224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540225000000', '540200000000', 3, '540225000000', '拉孜县', NULL, 540225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540226000000', '540200000000', 3, '540226000000', '昂仁县', NULL, 540226000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540227000000', '540200000000', 3, '540227000000', '谢通门县', NULL, 540227000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540228000000', '540200000000', 3, '540228000000', '白朗县', NULL, 540228000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540229000000', '540200000000', 3, '540229000000', '仁布县', NULL, 540229000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540230000000', '540200000000', 3, '540230000000', '康马县', NULL, 540230000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540231000000', '540200000000', 3, '540231000000', '定结县', NULL, 540231000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540232000000', '540200000000', 3, '540232000000', '仲巴县', NULL, 540232000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540233000000', '540200000000', 3, '540233000000', '亚东县', NULL, 540233000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540234000000', '540200000000', 3, '540234000000', '吉隆县', NULL, 540234000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540235000000', '540200000000', 3, '540235000000', '聂拉木县', NULL, 540235000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540236000000', '540200000000', 3, '540236000000', '萨嘎县', NULL, 540236000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540237000000', '540200000000', 3, '540237000000', '岗巴县', NULL, 540237000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540300000000', '540000000000', 2, '540300000000', '昌都市', NULL, 540300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540302000000', '540300000000', 3, '540302000000', '卡若区', NULL, 540302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540321000000', '540300000000', 3, '540321000000', '江达县', NULL, 540321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540322000000', '540300000000', 3, '540322000000', '贡觉县', NULL, 540322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540323000000', '540300000000', 3, '540323000000', '类乌齐县', NULL, 540323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540324000000', '540300000000', 3, '540324000000', '丁青县', NULL, 540324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540325000000', '540300000000', 3, '540325000000', '察雅县', NULL, 540325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540326000000', '540300000000', 3, '540326000000', '八宿县', NULL, 540326000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540327000000', '540300000000', 3, '540327000000', '左贡县', NULL, 540327000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540328000000', '540300000000', 3, '540328000000', '芒康县', NULL, 540328000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540329000000', '540300000000', 3, '540329000000', '洛隆县', NULL, 540329000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540330000000', '540300000000', 3, '540330000000', '边坝县', NULL, 540330000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540400000000', '540000000000', 2, '540400000000', '林芝市', NULL, 540400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540402000000', '540400000000', 3, '540402000000', '巴宜区', NULL, 540402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540421000000', '540400000000', 3, '540421000000', '工布江达县', NULL, 540421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540422000000', '540400000000', 3, '540422000000', '米林县', NULL, 540422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540423000000', '540400000000', 3, '540423000000', '墨脱县', NULL, 540423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540424000000', '540400000000', 3, '540424000000', '波密县', NULL, 540424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540425000000', '540400000000', 3, '540425000000', '察隅县', NULL, 540425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540426000000', '540400000000', 3, '540426000000', '朗县', NULL, 540426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540500000000', '540000000000', 2, '540500000000', '山南市', NULL, 540500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540502000000', '540500000000', 3, '540502000000', '乃东区', NULL, 540502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540521000000', '540500000000', 3, '540521000000', '扎囊县', NULL, 540521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540522000000', '540500000000', 3, '540522000000', '贡嘎县', NULL, 540522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540523000000', '540500000000', 3, '540523000000', '桑日县', NULL, 540523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540524000000', '540500000000', 3, '540524000000', '琼结县', NULL, 540524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540525000000', '540500000000', 3, '540525000000', '曲松县', NULL, 540525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540526000000', '540500000000', 3, '540526000000', '措美县', NULL, 540526000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540527000000', '540500000000', 3, '540527000000', '洛扎县', NULL, 540527000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540528000000', '540500000000', 3, '540528000000', '加查县', NULL, 540528000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540529000000', '540500000000', 3, '540529000000', '隆子县', NULL, 540529000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540530000000', '540500000000', 3, '540530000000', '错那县', NULL, 540530000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540531000000', '540500000000', 3, '540531000000', '浪卡子县', NULL, 540531000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540600000000', '540000000000', 2, '540600000000', '那曲市', NULL, 540600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540602000000', '540600000000', 3, '540602000000', '色尼区', NULL, 540602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540621000000', '540600000000', 3, '540621000000', '嘉黎县', NULL, 540621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540622000000', '540600000000', 3, '540622000000', '比如县', NULL, 540622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540623000000', '540600000000', 3, '540623000000', '聂荣县', NULL, 540623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540624000000', '540600000000', 3, '540624000000', '安多县', NULL, 540624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540625000000', '540600000000', 3, '540625000000', '申扎县', NULL, 540625000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540626000000', '540600000000', 3, '540626000000', '索县', NULL, 540626000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540627000000', '540600000000', 3, '540627000000', '班戈县', NULL, 540627000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540628000000', '540600000000', 3, '540628000000', '巴青县', NULL, 540628000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540629000000', '540600000000', 3, '540629000000', '尼玛县', NULL, 540629000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540630000000', '540600000000', 3, '540630000000', '双湖县', NULL, 540630000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542500000000', '540000000000', 2, '542500000000', '阿里地区', NULL, 542500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542521000000', '542500000000', 3, '542521000000', '普兰县', NULL, 542521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542522000000', '542500000000', 3, '542522000000', '札达县', NULL, 542522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542523000000', '542500000000', 3, '542523000000', '噶尔县', NULL, 542523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542524000000', '542500000000', 3, '542524000000', '日土县', NULL, 542524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542525000000', '542500000000', 3, '542525000000', '革吉县', NULL, 542525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542526000000', '542500000000', 3, '542526000000', '改则县', NULL, 542526000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542527000000', '542500000000', 3, '542527000000', '措勤县', NULL, 542527000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610000000000', '0', 1, '610000000000', '陕西省', NULL, 610000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610100000000', '610000000000', 2, '610100000000', '西安市', NULL, 610100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610102000000', '610100000000', 3, '610102000000', '新城区', NULL, 610102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610103000000', '610100000000', 3, '610103000000', '碑林区', NULL, 610103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610104000000', '610100000000', 3, '610104000000', '莲湖区', NULL, 610104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610111000000', '610100000000', 3, '610111000000', '灞桥区', NULL, 610111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610112000000', '610100000000', 3, '610112000000', '未央区', NULL, 610112000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610113000000', '610100000000', 3, '610113000000', '雁塔区', NULL, 610113000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610114000000', '610100000000', 3, '610114000000', '阎良区', NULL, 610114000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610115000000', '610100000000', 3, '610115000000', '临潼区', NULL, 610115000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610116000000', '610100000000', 3, '610116000000', '长安区', NULL, 610116000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610117000000', '610100000000', 3, '610117000000', '高陵区', NULL, 610117000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610118000000', '610100000000', 3, '610118000000', '鄠邑区', NULL, 610118000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610122000000', '610100000000', 3, '610122000000', '蓝田县', NULL, 610122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610124000000', '610100000000', 3, '610124000000', '周至县', NULL, 610124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610200000000', '610000000000', 2, '610200000000', '铜川市', NULL, 610200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610202000000', '610200000000', 3, '610202000000', '王益区', NULL, 610202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610203000000', '610200000000', 3, '610203000000', '印台区', NULL, 610203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610204000000', '610200000000', 3, '610204000000', '耀州区', NULL, 610204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610222000000', '610200000000', 3, '610222000000', '宜君县', NULL, 610222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610300000000', '610000000000', 2, '610300000000', '宝鸡市', NULL, 610300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610302000000', '610300000000', 3, '610302000000', '渭滨区', NULL, 610302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610303000000', '610300000000', 3, '610303000000', '金台区', NULL, 610303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610304000000', '610300000000', 3, '610304000000', '陈仓区', NULL, 610304000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610322000000', '610300000000', 3, '610322000000', '凤翔县', NULL, 610322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610323000000', '610300000000', 3, '610323000000', '岐山县', NULL, 610323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610324000000', '610300000000', 3, '610324000000', '扶风县', NULL, 610324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610326000000', '610300000000', 3, '610326000000', '眉县', NULL, 610326000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610327000000', '610300000000', 3, '610327000000', '陇县', NULL, 610327000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610328000000', '610300000000', 3, '610328000000', '千阳县', NULL, 610328000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610329000000', '610300000000', 3, '610329000000', '麟游县', NULL, 610329000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610330000000', '610300000000', 3, '610330000000', '凤县', NULL, 610330000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610331000000', '610300000000', 3, '610331000000', '太白县', NULL, 610331000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610400000000', '610000000000', 2, '610400000000', '咸阳市', NULL, 610400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610402000000', '610400000000', 3, '610402000000', '秦都区', NULL, 610402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610403000000', '610400000000', 3, '610403000000', '杨陵区', NULL, 610403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610404000000', '610400000000', 3, '610404000000', '渭城区', NULL, 610404000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610422000000', '610400000000', 3, '610422000000', '三原县', NULL, 610422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610423000000', '610400000000', 3, '610423000000', '泾阳县', NULL, 610423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610424000000', '610400000000', 3, '610424000000', '乾县', NULL, 610424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610425000000', '610400000000', 3, '610425000000', '礼泉县', NULL, 610425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610426000000', '610400000000', 3, '610426000000', '永寿县', NULL, 610426000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610428000000', '610400000000', 3, '610428000000', '长武县', NULL, 610428000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610429000000', '610400000000', 3, '610429000000', '旬邑县', NULL, 610429000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610430000000', '610400000000', 3, '610430000000', '淳化县', NULL, 610430000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610431000000', '610400000000', 3, '610431000000', '武功县', NULL, 610431000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610481000000', '610400000000', 3, '610481000000', '兴平市', NULL, 610481000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610482000000', '610400000000', 3, '610482000000', '彬州市', NULL, 610482000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610500000000', '610000000000', 2, '610500000000', '渭南市', NULL, 610500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610502000000', '610500000000', 3, '610502000000', '临渭区', NULL, 610502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610503000000', '610500000000', 3, '610503000000', '华州区', NULL, 610503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610522000000', '610500000000', 3, '610522000000', '潼关县', NULL, 610522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610523000000', '610500000000', 3, '610523000000', '大荔县', NULL, 610523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610524000000', '610500000000', 3, '610524000000', '合阳县', NULL, 610524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610525000000', '610500000000', 3, '610525000000', '澄城县', NULL, 610525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610526000000', '610500000000', 3, '610526000000', '蒲城县', NULL, 610526000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610527000000', '610500000000', 3, '610527000000', '白水县', NULL, 610527000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610528000000', '610500000000', 3, '610528000000', '富平县', NULL, 610528000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610581000000', '610500000000', 3, '610581000000', '韩城市', NULL, 610581000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610582000000', '610500000000', 3, '610582000000', '华阴市', NULL, 610582000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610600000000', '610000000000', 2, '610600000000', '延安市', NULL, 610600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610602000000', '610600000000', 3, '610602000000', '宝塔区', NULL, 610602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610603000000', '610600000000', 3, '610603000000', '安塞区', NULL, 610603000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610621000000', '610600000000', 3, '610621000000', '延长县', NULL, 610621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610622000000', '610600000000', 3, '610622000000', '延川县', NULL, 610622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610625000000', '610600000000', 3, '610625000000', '志丹县', NULL, 610625000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610626000000', '610600000000', 3, '610626000000', '吴起县', NULL, 610626000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610627000000', '610600000000', 3, '610627000000', '甘泉县', NULL, 610627000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610628000000', '610600000000', 3, '610628000000', '富县', NULL, 610628000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610629000000', '610600000000', 3, '610629000000', '洛川县', NULL, 610629000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610630000000', '610600000000', 3, '610630000000', '宜川县', NULL, 610630000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610631000000', '610600000000', 3, '610631000000', '黄龙县', NULL, 610631000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610632000000', '610600000000', 3, '610632000000', '黄陵县', NULL, 610632000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610681000000', '610600000000', 3, '610681000000', '子长市', NULL, 610681000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610700000000', '610000000000', 2, '610700000000', '汉中市', NULL, 610700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610702000000', '610700000000', 3, '610702000000', '汉台区', NULL, 610702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610703000000', '610700000000', 3, '610703000000', '南郑区', NULL, 610703000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610722000000', '610700000000', 3, '610722000000', '城固县', NULL, 610722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610723000000', '610700000000', 3, '610723000000', '洋县', NULL, 610723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610724000000', '610700000000', 3, '610724000000', '西乡县', NULL, 610724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610725000000', '610700000000', 3, '610725000000', '勉县', NULL, 610725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610726000000', '610700000000', 3, '610726000000', '宁强县', NULL, 610726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610727000000', '610700000000', 3, '610727000000', '略阳县', NULL, 610727000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610728000000', '610700000000', 3, '610728000000', '镇巴县', NULL, 610728000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610729000000', '610700000000', 3, '610729000000', '留坝县', NULL, 610729000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610730000000', '610700000000', 3, '610730000000', '佛坪县', NULL, 610730000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610800000000', '610000000000', 2, '610800000000', '榆林市', NULL, 610800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610802000000', '610800000000', 3, '610802000000', '榆阳区', NULL, 610802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610803000000', '610800000000', 3, '610803000000', '横山区', NULL, 610803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610822000000', '610800000000', 3, '610822000000', '府谷县', NULL, 610822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610824000000', '610800000000', 3, '610824000000', '靖边县', NULL, 610824000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610825000000', '610800000000', 3, '610825000000', '定边县', NULL, 610825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610826000000', '610800000000', 3, '610826000000', '绥德县', NULL, 610826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610827000000', '610800000000', 3, '610827000000', '米脂县', NULL, 610827000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610828000000', '610800000000', 3, '610828000000', '佳县', NULL, 610828000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610829000000', '610800000000', 3, '610829000000', '吴堡县', NULL, 610829000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610830000000', '610800000000', 3, '610830000000', '清涧县', NULL, 610830000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610831000000', '610800000000', 3, '610831000000', '子洲县', NULL, 610831000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610881000000', '610800000000', 3, '610881000000', '神木市', NULL, 610881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610900000000', '610000000000', 2, '610900000000', '安康市', NULL, 610900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610902000000', '610900000000', 3, '610902000000', '汉滨区', NULL, 610902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610921000000', '610900000000', 3, '610921000000', '汉阴县', NULL, 610921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610922000000', '610900000000', 3, '610922000000', '石泉县', NULL, 610922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610923000000', '610900000000', 3, '610923000000', '宁陕县', NULL, 610923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610924000000', '610900000000', 3, '610924000000', '紫阳县', NULL, 610924000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610925000000', '610900000000', 3, '610925000000', '岚皋县', NULL, 610925000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610926000000', '610900000000', 3, '610926000000', '平利县', NULL, 610926000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610927000000', '610900000000', 3, '610927000000', '镇坪县', NULL, 610927000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610928000000', '610900000000', 3, '610928000000', '旬阳县', NULL, 610928000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610929000000', '610900000000', 3, '610929000000', '白河县', NULL, 610929000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('611000000000', '610000000000', 2, '611000000000', '商洛市', NULL, 611000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('611002000000', '611000000000', 3, '611002000000', '商州区', NULL, 611002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('611021000000', '611000000000', 3, '611021000000', '洛南县', NULL, 611021000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('611022000000', '611000000000', 3, '611022000000', '丹凤县', NULL, 611022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('611023000000', '611000000000', 3, '611023000000', '商南县', NULL, 611023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('611024000000', '611000000000', 3, '611024000000', '山阳县', NULL, 611024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('611025000000', '611000000000', 3, '611025000000', '镇安县', NULL, 611025000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('611026000000', '611000000000', 3, '611026000000', '柞水县', NULL, 611026000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620000000000', '0', 1, '620000000000', '甘肃省', NULL, 620000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620100000000', '620000000000', 2, '620100000000', '兰州市', NULL, 620100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620102000000', '620100000000', 3, '620102000000', '城关区', NULL, 620102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620103000000', '620100000000', 3, '620103000000', '七里河区', NULL, 620103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620104000000', '620100000000', 3, '620104000000', '西固区', NULL, 620104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620105000000', '620100000000', 3, '620105000000', '安宁区', NULL, 620105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620111000000', '620100000000', 3, '620111000000', '红古区', NULL, 620111000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620121000000', '620100000000', 3, '620121000000', '永登县', NULL, 620121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620122000000', '620100000000', 3, '620122000000', '皋兰县', NULL, 620122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620123000000', '620100000000', 3, '620123000000', '榆中县', NULL, 620123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620171000000', '620100000000', 3, '620171000000', '兰州新区', NULL, 620171000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620200000000', '620000000000', 2, '620200000000', '嘉峪关市', NULL, 620200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620300000000', '620000000000', 2, '620300000000', '金昌市', NULL, 620300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620302000000', '620300000000', 3, '620302000000', '金川区', NULL, 620302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620321000000', '620300000000', 3, '620321000000', '永昌县', NULL, 620321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620400000000', '620000000000', 2, '620400000000', '白银市', NULL, 620400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620402000000', '620400000000', 3, '620402000000', '白银区', NULL, 620402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620403000000', '620400000000', 3, '620403000000', '平川区', NULL, 620403000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620421000000', '620400000000', 3, '620421000000', '靖远县', NULL, 620421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620422000000', '620400000000', 3, '620422000000', '会宁县', NULL, 620422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620423000000', '620400000000', 3, '620423000000', '景泰县', NULL, 620423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620500000000', '620000000000', 2, '620500000000', '天水市', NULL, 620500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620502000000', '620500000000', 3, '620502000000', '秦州区', NULL, 620502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620503000000', '620500000000', 3, '620503000000', '麦积区', NULL, 620503000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620521000000', '620500000000', 3, '620521000000', '清水县', NULL, 620521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620522000000', '620500000000', 3, '620522000000', '秦安县', NULL, 620522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620523000000', '620500000000', 3, '620523000000', '甘谷县', NULL, 620523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620524000000', '620500000000', 3, '620524000000', '武山县', NULL, 620524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620525000000', '620500000000', 3, '620525000000', '张家川回族自治县', NULL, 620525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620600000000', '620000000000', 2, '620600000000', '武威市', NULL, 620600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620602000000', '620600000000', 3, '620602000000', '凉州区', NULL, 620602000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620621000000', '620600000000', 3, '620621000000', '民勤县', NULL, 620621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620622000000', '620600000000', 3, '620622000000', '古浪县', NULL, 620622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620623000000', '620600000000', 3, '620623000000', '天祝藏族自治县', NULL, 620623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620700000000', '620000000000', 2, '620700000000', '张掖市', NULL, 620700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620702000000', '620700000000', 3, '620702000000', '甘州区', NULL, 620702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620721000000', '620700000000', 3, '620721000000', '肃南裕固族自治县', NULL, 620721000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620722000000', '620700000000', 3, '620722000000', '民乐县', NULL, 620722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620723000000', '620700000000', 3, '620723000000', '临泽县', NULL, 620723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620724000000', '620700000000', 3, '620724000000', '高台县', NULL, 620724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620725000000', '620700000000', 3, '620725000000', '山丹县', NULL, 620725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620800000000', '620000000000', 2, '620800000000', '平凉市', NULL, 620800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620802000000', '620800000000', 3, '620802000000', '崆峒区', NULL, 620802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620821000000', '620800000000', 3, '620821000000', '泾川县', NULL, 620821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620822000000', '620800000000', 3, '620822000000', '灵台县', NULL, 620822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620823000000', '620800000000', 3, '620823000000', '崇信县', NULL, 620823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620825000000', '620800000000', 3, '620825000000', '庄浪县', NULL, 620825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620826000000', '620800000000', 3, '620826000000', '静宁县', NULL, 620826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620881000000', '620800000000', 3, '620881000000', '华亭市', NULL, 620881000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620900000000', '620000000000', 2, '620900000000', '酒泉市', NULL, 620900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620902000000', '620900000000', 3, '620902000000', '肃州区', NULL, 620902000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620921000000', '620900000000', 3, '620921000000', '金塔县', NULL, 620921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620922000000', '620900000000', 3, '620922000000', '瓜州县', NULL, 620922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620923000000', '620900000000', 3, '620923000000', '肃北蒙古族自治县', NULL, 620923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620924000000', '620900000000', 3, '620924000000', '阿克塞哈萨克族自治县', NULL, 620924000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620981000000', '620900000000', 3, '620981000000', '玉门市', NULL, 620981000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620982000000', '620900000000', 3, '620982000000', '敦煌市', NULL, 620982000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621000000000', '620000000000', 2, '621000000000', '庆阳市', NULL, 621000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621002000000', '621000000000', 3, '621002000000', '西峰区', NULL, 621002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621021000000', '621000000000', 3, '621021000000', '庆城县', NULL, 621021000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621022000000', '621000000000', 3, '621022000000', '环县', NULL, 621022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621023000000', '621000000000', 3, '621023000000', '华池县', NULL, 621023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621024000000', '621000000000', 3, '621024000000', '合水县', NULL, 621024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621025000000', '621000000000', 3, '621025000000', '正宁县', NULL, 621025000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621026000000', '621000000000', 3, '621026000000', '宁县', NULL, 621026000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621027000000', '621000000000', 3, '621027000000', '镇原县', NULL, 621027000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621100000000', '620000000000', 2, '621100000000', '定西市', NULL, 621100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621102000000', '621100000000', 3, '621102000000', '安定区', NULL, 621102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621121000000', '621100000000', 3, '621121000000', '通渭县', NULL, 621121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621122000000', '621100000000', 3, '621122000000', '陇西县', NULL, 621122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621123000000', '621100000000', 3, '621123000000', '渭源县', NULL, 621123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621124000000', '621100000000', 3, '621124000000', '临洮县', NULL, 621124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621125000000', '621100000000', 3, '621125000000', '漳县', NULL, 621125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621126000000', '621100000000', 3, '621126000000', '岷县', NULL, 621126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621200000000', '620000000000', 2, '621200000000', '陇南市', NULL, 621200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621202000000', '621200000000', 3, '621202000000', '武都区', NULL, 621202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621221000000', '621200000000', 3, '621221000000', '成县', NULL, 621221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621222000000', '621200000000', 3, '621222000000', '文县', NULL, 621222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621223000000', '621200000000', 3, '621223000000', '宕昌县', NULL, 621223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621224000000', '621200000000', 3, '621224000000', '康县', NULL, 621224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621225000000', '621200000000', 3, '621225000000', '西和县', NULL, 621225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621226000000', '621200000000', 3, '621226000000', '礼县', NULL, 621226000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621227000000', '621200000000', 3, '621227000000', '徽县', NULL, 621227000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621228000000', '621200000000', 3, '621228000000', '两当县', NULL, 621228000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('622900000000', '620000000000', 2, '622900000000', '临夏回族自治州', NULL, 622900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('622901000000', '622900000000', 3, '622901000000', '临夏市', NULL, 622901000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('622921000000', '622900000000', 3, '622921000000', '临夏县', NULL, 622921000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('622922000000', '622900000000', 3, '622922000000', '康乐县', NULL, 622922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('622923000000', '622900000000', 3, '622923000000', '永靖县', NULL, 622923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('622924000000', '622900000000', 3, '622924000000', '广河县', NULL, 622924000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('622925000000', '622900000000', 3, '622925000000', '和政县', NULL, 622925000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('622926000000', '622900000000', 3, '622926000000', '东乡族自治县', NULL, 622926000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('622927000000', '622900000000', 3, '622927000000', '积石山保安族东乡族撒拉族自治县', NULL, 622927000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('623000000000', '620000000000', 2, '623000000000', '甘南藏族自治州', NULL, 623000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('623001000000', '623000000000', 3, '623001000000', '合作市', NULL, 623001000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('623021000000', '623000000000', 3, '623021000000', '临潭县', NULL, 623021000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('623022000000', '623000000000', 3, '623022000000', '卓尼县', NULL, 623022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('623023000000', '623000000000', 3, '623023000000', '舟曲县', NULL, 623023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('623024000000', '623000000000', 3, '623024000000', '迭部县', NULL, 623024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('623025000000', '623000000000', 3, '623025000000', '玛曲县', NULL, 623025000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('623026000000', '623000000000', 3, '623026000000', '碌曲县', NULL, 623026000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('623027000000', '623000000000', 3, '623027000000', '夏河县', NULL, 623027000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630000000000', '0', 1, '630000000000', '青海省', NULL, 630000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630100000000', '630000000000', 2, '630100000000', '西宁市', NULL, 630100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630102000000', '630100000000', 3, '630102000000', '城东区', NULL, 630102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630103000000', '630100000000', 3, '630103000000', '城中区', NULL, 630103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630104000000', '630100000000', 3, '630104000000', '城西区', NULL, 630104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630105000000', '630100000000', 3, '630105000000', '城北区', NULL, 630105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630121000000', '630100000000', 3, '630121000000', '大通回族土族自治县', NULL, 630121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630122000000', '630100000000', 3, '630122000000', '湟中县', NULL, 630122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630123000000', '630100000000', 3, '630123000000', '湟源县', NULL, 630123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630200000000', '630000000000', 2, '630200000000', '海东市', NULL, 630200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630202000000', '630200000000', 3, '630202000000', '乐都区', NULL, 630202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630203000000', '630200000000', 3, '630203000000', '平安区', NULL, 630203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630222000000', '630200000000', 3, '630222000000', '民和回族土族自治县', NULL, 630222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630223000000', '630200000000', 3, '630223000000', '互助土族自治县', NULL, 630223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630224000000', '630200000000', 3, '630224000000', '化隆回族自治县', NULL, 630224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630225000000', '630200000000', 3, '630225000000', '循化撒拉族自治县', NULL, 630225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632200000000', '630000000000', 2, '632200000000', '海北藏族自治州', NULL, 632200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632221000000', '632200000000', 3, '632221000000', '门源回族自治县', NULL, 632221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632222000000', '632200000000', 3, '632222000000', '祁连县', NULL, 632222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632223000000', '632200000000', 3, '632223000000', '海晏县', NULL, 632223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632224000000', '632200000000', 3, '632224000000', '刚察县', NULL, 632224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632300000000', '630000000000', 2, '632300000000', '黄南藏族自治州', NULL, 632300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632321000000', '632300000000', 3, '632321000000', '同仁县', NULL, 632321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632322000000', '632300000000', 3, '632322000000', '尖扎县', NULL, 632322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632323000000', '632300000000', 3, '632323000000', '泽库县', NULL, 632323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632324000000', '632300000000', 3, '632324000000', '河南蒙古族自治县', NULL, 632324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632500000000', '630000000000', 2, '632500000000', '海南藏族自治州', NULL, 632500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632521000000', '632500000000', 3, '632521000000', '共和县', NULL, 632521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632522000000', '632500000000', 3, '632522000000', '同德县', NULL, 632522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632523000000', '632500000000', 3, '632523000000', '贵德县', NULL, 632523000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632524000000', '632500000000', 3, '632524000000', '兴海县', NULL, 632524000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632525000000', '632500000000', 3, '632525000000', '贵南县', NULL, 632525000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632600000000', '630000000000', 2, '632600000000', '果洛藏族自治州', NULL, 632600000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632621000000', '632600000000', 3, '632621000000', '玛沁县', NULL, 632621000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632622000000', '632600000000', 3, '632622000000', '班玛县', NULL, 632622000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632623000000', '632600000000', 3, '632623000000', '甘德县', NULL, 632623000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632624000000', '632600000000', 3, '632624000000', '达日县', NULL, 632624000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632625000000', '632600000000', 3, '632625000000', '久治县', NULL, 632625000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632626000000', '632600000000', 3, '632626000000', '玛多县', NULL, 632626000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632700000000', '630000000000', 2, '632700000000', '玉树藏族自治州', NULL, 632700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632701000000', '632700000000', 3, '632701000000', '玉树市', NULL, 632701000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632722000000', '632700000000', 3, '632722000000', '杂多县', NULL, 632722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632723000000', '632700000000', 3, '632723000000', '称多县', NULL, 632723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632724000000', '632700000000', 3, '632724000000', '治多县', NULL, 632724000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632725000000', '632700000000', 3, '632725000000', '囊谦县', NULL, 632725000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632726000000', '632700000000', 3, '632726000000', '曲麻莱县', NULL, 632726000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632800000000', '630000000000', 2, '632800000000', '海西蒙古族藏族自治州', NULL, 632800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632801000000', '632800000000', 3, '632801000000', '格尔木市', NULL, 632801000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632802000000', '632800000000', 3, '632802000000', '德令哈市', NULL, 632802000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632803000000', '632800000000', 3, '632803000000', '茫崖市', NULL, 632803000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632821000000', '632800000000', 3, '632821000000', '乌兰县', NULL, 632821000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632822000000', '632800000000', 3, '632822000000', '都兰县', NULL, 632822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632823000000', '632800000000', 3, '632823000000', '天峻县', NULL, 632823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632857000000', '632800000000', 3, '632857000000', '大柴旦行政委员会', NULL, 632857000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640000000000', '0', 1, '640000000000', '宁夏回族自治区', NULL, 640000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640100000000', '640000000000', 2, '640100000000', '银川市', NULL, 640100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640104000000', '640100000000', 3, '640104000000', '兴庆区', NULL, 640104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640105000000', '640100000000', 3, '640105000000', '西夏区', NULL, 640105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640106000000', '640100000000', 3, '640106000000', '金凤区', NULL, 640106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640121000000', '640100000000', 3, '640121000000', '永宁县', NULL, 640121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640122000000', '640100000000', 3, '640122000000', '贺兰县', NULL, 640122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640181000000', '640100000000', 3, '640181000000', '灵武市', NULL, 640181000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640200000000', '640000000000', 2, '640200000000', '石嘴山市', NULL, 640200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640202000000', '640200000000', 3, '640202000000', '大武口区', NULL, 640202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640205000000', '640200000000', 3, '640205000000', '惠农区', NULL, 640205000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640221000000', '640200000000', 3, '640221000000', '平罗县', NULL, 640221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640300000000', '640000000000', 2, '640300000000', '吴忠市', NULL, 640300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640302000000', '640300000000', 3, '640302000000', '利通区', NULL, 640302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640303000000', '640300000000', 3, '640303000000', '红寺堡区', NULL, 640303000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640323000000', '640300000000', 3, '640323000000', '盐池县', NULL, 640323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640324000000', '640300000000', 3, '640324000000', '同心县', NULL, 640324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640381000000', '640300000000', 3, '640381000000', '青铜峡市', NULL, 640381000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640400000000', '640000000000', 2, '640400000000', '固原市', NULL, 640400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640402000000', '640400000000', 3, '640402000000', '原州区', NULL, 640402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640422000000', '640400000000', 3, '640422000000', '西吉县', NULL, 640422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640423000000', '640400000000', 3, '640423000000', '隆德县', NULL, 640423000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640424000000', '640400000000', 3, '640424000000', '泾源县', NULL, 640424000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640425000000', '640400000000', 3, '640425000000', '彭阳县', NULL, 640425000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640500000000', '640000000000', 2, '640500000000', '中卫市', NULL, 640500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640502000000', '640500000000', 3, '640502000000', '沙坡头区', NULL, 640502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640521000000', '640500000000', 3, '640521000000', '中宁县', NULL, 640521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640522000000', '640500000000', 3, '640522000000', '海原县', NULL, 640522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650000000000', '0', 1, '650000000000', '新疆维吾尔自治区', NULL, 650000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650100000000', '650000000000', 2, '650100000000', '乌鲁木齐市', NULL, 650100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650102000000', '650100000000', 3, '650102000000', '天山区', NULL, 650102000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650103000000', '650100000000', 3, '650103000000', '沙依巴克区', NULL, 650103000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650104000000', '650100000000', 3, '650104000000', '新市区', NULL, 650104000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650105000000', '650100000000', 3, '650105000000', '水磨沟区', NULL, 650105000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650106000000', '650100000000', 3, '650106000000', '头屯河区', NULL, 650106000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650107000000', '650100000000', 3, '650107000000', '达坂城区', NULL, 650107000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650109000000', '650100000000', 3, '650109000000', '米东区', NULL, 650109000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650121000000', '650100000000', 3, '650121000000', '乌鲁木齐县', NULL, 650121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650200000000', '650000000000', 2, '650200000000', '克拉玛依市', NULL, 650200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650202000000', '650200000000', 3, '650202000000', '独山子区', NULL, 650202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650203000000', '650200000000', 3, '650203000000', '克拉玛依区', NULL, 650203000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650204000000', '650200000000', 3, '650204000000', '白碱滩区', NULL, 650204000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650205000000', '650200000000', 3, '650205000000', '乌尔禾区', NULL, 650205000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650400000000', '650000000000', 2, '650400000000', '吐鲁番市', NULL, 650400000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650402000000', '650400000000', 3, '650402000000', '高昌区', NULL, 650402000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650421000000', '650400000000', 3, '650421000000', '鄯善县', NULL, 650421000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650422000000', '650400000000', 3, '650422000000', '托克逊县', NULL, 650422000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650500000000', '650000000000', 2, '650500000000', '哈密市', NULL, 650500000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650502000000', '650500000000', 3, '650502000000', '伊州区', NULL, 650502000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650521000000', '650500000000', 3, '650521000000', '巴里坤哈萨克自治县', NULL, 650521000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650522000000', '650500000000', 3, '650522000000', '伊吾县', NULL, 650522000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652300000000', '650000000000', 2, '652300000000', '昌吉回族自治州', NULL, 652300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652301000000', '652300000000', 3, '652301000000', '昌吉市', NULL, 652301000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652302000000', '652300000000', 3, '652302000000', '阜康市', NULL, 652302000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652323000000', '652300000000', 3, '652323000000', '呼图壁县', NULL, 652323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652324000000', '652300000000', 3, '652324000000', '玛纳斯县', NULL, 652324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652325000000', '652300000000', 3, '652325000000', '奇台县', NULL, 652325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652327000000', '652300000000', 3, '652327000000', '吉木萨尔县', NULL, 652327000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652328000000', '652300000000', 3, '652328000000', '木垒哈萨克自治县', NULL, 652328000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652700000000', '650000000000', 2, '652700000000', '博尔塔拉蒙古自治州', NULL, 652700000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652701000000', '652700000000', 3, '652701000000', '博乐市', NULL, 652701000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652702000000', '652700000000', 3, '652702000000', '阿拉山口市', NULL, 652702000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652722000000', '652700000000', 3, '652722000000', '精河县', NULL, 652722000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652723000000', '652700000000', 3, '652723000000', '温泉县', NULL, 652723000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652800000000', '650000000000', 2, '652800000000', '巴音郭楞蒙古自治州', NULL, 652800000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652801000000', '652800000000', 3, '652801000000', '库尔勒市', NULL, 652801000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652822000000', '652800000000', 3, '652822000000', '轮台县', NULL, 652822000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652823000000', '652800000000', 3, '652823000000', '尉犁县', NULL, 652823000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652824000000', '652800000000', 3, '652824000000', '若羌县', NULL, 652824000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652825000000', '652800000000', 3, '652825000000', '且末县', NULL, 652825000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652826000000', '652800000000', 3, '652826000000', '焉耆回族自治县', NULL, 652826000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652827000000', '652800000000', 3, '652827000000', '和静县', NULL, 652827000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652828000000', '652800000000', 3, '652828000000', '和硕县', NULL, 652828000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652829000000', '652800000000', 3, '652829000000', '博湖县', NULL, 652829000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652871000000', '652800000000', 3, '652871000000', '库尔勒经济技术开发区', NULL, 652871000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652900000000', '650000000000', 2, '652900000000', '阿克苏地区', NULL, 652900000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652901000000', '652900000000', 3, '652901000000', '阿克苏市', NULL, 652901000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652922000000', '652900000000', 3, '652922000000', '温宿县', NULL, 652922000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652923000000', '652900000000', 3, '652923000000', '库车县', NULL, 652923000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652924000000', '652900000000', 3, '652924000000', '沙雅县', NULL, 652924000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652925000000', '652900000000', 3, '652925000000', '新和县', NULL, 652925000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652926000000', '652900000000', 3, '652926000000', '拜城县', NULL, 652926000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652927000000', '652900000000', 3, '652927000000', '乌什县', NULL, 652927000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652928000000', '652900000000', 3, '652928000000', '阿瓦提县', NULL, 652928000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652929000000', '652900000000', 3, '652929000000', '柯坪县', NULL, 652929000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653000000000', '650000000000', 2, '653000000000', '克孜勒苏柯尔克孜自治州', NULL, 653000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653001000000', '653000000000', 3, '653001000000', '阿图什市', NULL, 653001000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653022000000', '653000000000', 3, '653022000000', '阿克陶县', NULL, 653022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653023000000', '653000000000', 3, '653023000000', '阿合奇县', NULL, 653023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653024000000', '653000000000', 3, '653024000000', '乌恰县', NULL, 653024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653100000000', '650000000000', 2, '653100000000', '喀什地区', NULL, 653100000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653101000000', '653100000000', 3, '653101000000', '喀什市', NULL, 653101000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653121000000', '653100000000', 3, '653121000000', '疏附县', NULL, 653121000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653122000000', '653100000000', 3, '653122000000', '疏勒县', NULL, 653122000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653123000000', '653100000000', 3, '653123000000', '英吉沙县', NULL, 653123000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653124000000', '653100000000', 3, '653124000000', '泽普县', NULL, 653124000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653125000000', '653100000000', 3, '653125000000', '莎车县', NULL, 653125000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653126000000', '653100000000', 3, '653126000000', '叶城县', NULL, 653126000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653127000000', '653100000000', 3, '653127000000', '麦盖提县', NULL, 653127000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653128000000', '653100000000', 3, '653128000000', '岳普湖县', NULL, 653128000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653129000000', '653100000000', 3, '653129000000', '伽师县', NULL, 653129000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653130000000', '653100000000', 3, '653130000000', '巴楚县', NULL, 653130000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653131000000', '653100000000', 3, '653131000000', '塔什库尔干塔吉克自治县', NULL, 653131000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653200000000', '650000000000', 2, '653200000000', '和田地区', NULL, 653200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653201000000', '653200000000', 3, '653201000000', '和田市', NULL, 653201000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653221000000', '653200000000', 3, '653221000000', '和田县', NULL, 653221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653222000000', '653200000000', 3, '653222000000', '墨玉县', NULL, 653222000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653223000000', '653200000000', 3, '653223000000', '皮山县', NULL, 653223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653224000000', '653200000000', 3, '653224000000', '洛浦县', NULL, 653224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653225000000', '653200000000', 3, '653225000000', '策勒县', NULL, 653225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653226000000', '653200000000', 3, '653226000000', '于田县', NULL, 653226000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653227000000', '653200000000', 3, '653227000000', '民丰县', NULL, 653227000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654000000000', '650000000000', 2, '654000000000', '伊犁哈萨克自治州', NULL, 654000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654002000000', '654000000000', 3, '654002000000', '伊宁市', NULL, 654002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654003000000', '654000000000', 3, '654003000000', '奎屯市', NULL, 654003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654004000000', '654000000000', 3, '654004000000', '霍尔果斯市', NULL, 654004000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654021000000', '654000000000', 3, '654021000000', '伊宁县', NULL, 654021000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654022000000', '654000000000', 3, '654022000000', '察布查尔锡伯自治县', NULL, 654022000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654023000000', '654000000000', 3, '654023000000', '霍城县', NULL, 654023000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654024000000', '654000000000', 3, '654024000000', '巩留县', NULL, 654024000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654025000000', '654000000000', 3, '654025000000', '新源县', NULL, 654025000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654026000000', '654000000000', 3, '654026000000', '昭苏县', NULL, 654026000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654027000000', '654000000000', 3, '654027000000', '特克斯县', NULL, 654027000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654028000000', '654000000000', 3, '654028000000', '尼勒克县', NULL, 654028000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654200000000', '650000000000', 2, '654200000000', '塔城地区', NULL, 654200000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654201000000', '654200000000', 3, '654201000000', '塔城市', NULL, 654201000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654202000000', '654200000000', 3, '654202000000', '乌苏市', NULL, 654202000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654221000000', '654200000000', 3, '654221000000', '额敏县', NULL, 654221000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654223000000', '654200000000', 3, '654223000000', '沙湾县', NULL, 654223000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654224000000', '654200000000', 3, '654224000000', '托里县', NULL, 654224000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654225000000', '654200000000', 3, '654225000000', '裕民县', NULL, 654225000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654226000000', '654200000000', 3, '654226000000', '和布克赛尔蒙古自治县', NULL, 654226000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654300000000', '650000000000', 2, '654300000000', '阿勒泰地区', NULL, 654300000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654301000000', '654300000000', 3, '654301000000', '阿勒泰市', NULL, 654301000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654321000000', '654300000000', 3, '654321000000', '布尔津县', NULL, 654321000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654322000000', '654300000000', 3, '654322000000', '富蕴县', NULL, 654322000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654323000000', '654300000000', 3, '654323000000', '福海县', NULL, 654323000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654324000000', '654300000000', 3, '654324000000', '哈巴河县', NULL, 654324000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654325000000', '654300000000', 3, '654325000000', '青河县', NULL, 654325000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654326000000', '654300000000', 3, '654326000000', '吉木乃县', NULL, 654326000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('659000000000', '650000000000', 2, '659000000000', '自治区直辖县级行政区划', NULL, 659000000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('659001000000', '659000000000', 3, '659001000000', '石河子市', NULL, 659001000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('659002000000', '659000000000', 3, '659002000000', '阿拉尔市', NULL, 659002000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('659003000000', '659000000000', 3, '659003000000', '图木舒克市', NULL, 659003000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('659004000000', '659000000000', 3, '659004000000', '五家渠市', NULL, 659004000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('659006000000', '659000000000', 3, '659006000000', '铁门关市', NULL, 659006000000, 0, 1, NULL, '2020-05-27 15:00:07', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_codegeneratelog
-- ----------------------------
DROP TABLE IF EXISTS `sys_codegeneratelog`;
CREATE TABLE `sys_codegeneratelog`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `F_Code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '条码',
  `F_RuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规则id',
  `F_RuleName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规则名称',
  `F_PrintJson` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '打印Json',
  `F_PrintCount` int NULL DEFAULT NULL COMMENT '打印次数',
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '条码生成记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_codegeneratelog
-- ----------------------------

-- ----------------------------
-- Table structure for sys_coderule
-- ----------------------------
DROP TABLE IF EXISTS `sys_coderule`;
CREATE TABLE `sys_coderule`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `F_RuleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `F_RuleJson` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '规则内容',
  `F_Reset` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '重设机制',
  `F_TemplateId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '打印模板Id',
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '条码规则' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_coderule
-- ----------------------------

-- ----------------------------
-- Table structure for sys_coderulelog
-- ----------------------------
DROP TABLE IF EXISTS `sys_coderulelog`;
CREATE TABLE `sys_coderulelog`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `F_RuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规则Id',
  `F_Key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'key',
  `F_Value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'value',
  `F_Score` int NULL DEFAULT NULL COMMENT '计数',
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_coderulelog
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dataprivilegerule
-- ----------------------------
DROP TABLE IF EXISTS `sys_dataprivilegerule`;
CREATE TABLE `sys_dataprivilegerule`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_ModuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ModuleCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_PrivilegeRules` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_SortCode` int NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_dataprivilegerule_key1`(`F_ModuleId`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dataprivilegerule
-- ----------------------------

-- ----------------------------
-- Table structure for sys_filterip
-- ----------------------------
DROP TABLE IF EXISTS `sys_filterip`;
CREATE TABLE `sys_filterip`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_Type` tinyint NULL DEFAULT NULL,
  `F_StartIP` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_EndIP` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_SortCode` int NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_EndTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_filterip
-- ----------------------------

-- ----------------------------
-- Table structure for sys_flowscheme
-- ----------------------------
DROP TABLE IF EXISTS `sys_flowscheme`;
CREATE TABLE `sys_flowscheme`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键Id',
  `F_SchemeCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '流程编号',
  `F_SchemeName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '流程名称',
  `F_SchemeType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '流程分类',
  `F_SchemeVersion` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '流程内容版本',
  `F_SchemeCanUser` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '流程模板使用者',
  `F_SchemeContent` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '流程内容',
  `F_FrmId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '表单ID',
  `F_FrmType` int NOT NULL DEFAULT 0 COMMENT '表单类型',
  `F_AuthorizeType` int NOT NULL DEFAULT 0 COMMENT '模板权限类型：0完全公开,1指定部门/人员',
  `F_SortCode` int NULL DEFAULT NULL COMMENT '排序码',
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL COMMENT '删除标记',
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL COMMENT '有效',
  `F_Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `F_CreatorTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户主键',
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建用户',
  `F_LastModifyTime` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修改用户主键',
  `F_LastModifyUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修改用户',
  `F_OrganizeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '所属部门',
  `F_DeleteTime` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '删除人',
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_flowscheme_key1`(`F_SchemeCode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '工作流模板信息表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_flowscheme
-- ----------------------------

-- ----------------------------
-- Table structure for sys_form
-- ----------------------------
DROP TABLE IF EXISTS `sys_form`;
CREATE TABLE `sys_form`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '表单模板Id',
  `F_Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '表单名称',
  `F_FrmType` int NULL DEFAULT 0 COMMENT '表单类型，0：默认动态表单；1：Web自定义表单',
  `F_WebId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '系统页面标识，当表单类型为用Web自定义的表单时，需要标识加载哪个页面',
  `F_Fields` int NULL DEFAULT NULL COMMENT '字段个数',
  `F_ContentData` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '表单中的控件属性描述',
  `F_ContentParse` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '表单控件位置模板',
  `F_Content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '表单原html模板未经处理的',
  `F_SortCode` int NULL DEFAULT NULL COMMENT '排序码',
  `F_EnabledMark` tinyint NULL DEFAULT NULL COMMENT '是否启用',
  `F_DeleteMark` tinyint NULL DEFAULT NULL COMMENT '逻辑删除标志',
  `F_CreatorTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  `F_LastModifyTime` datetime NULL DEFAULT NULL COMMENT '最后修改时间',
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `F_DeleteTime` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '删除人',
  `F_Description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '内容',
  `F_OrganizeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '所属组织',
  `F_DbName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '数据库名称',
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_form_key1`(`F_Name`) USING BTREE COMMENT '唯一'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '表单模板表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_form
-- ----------------------------

-- ----------------------------
-- Table structure for sys_items
-- ----------------------------
DROP TABLE IF EXISTS `sys_items`;
CREATE TABLE `sys_items`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_IsTree` tinyint(1) NULL DEFAULT NULL,
  `F_Layers` int NULL DEFAULT NULL,
  `F_SortCode` int NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_items_key1`(`F_EnCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_items
-- ----------------------------
INSERT INTO `sys_items` VALUES ('00F76465-DBBA-484A-B75C-E81DEE9313E6', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'Education', '学历', 0, 2, 8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('08daa75d-8081-4460-8cec-88e1bf314c5f', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'PrintType', '打印方式', 0, 2, 19, 0, 1, '', '2022-10-06 13:42:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('08daa800-7d0b-41e5-86f5-ab10853267d7', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'RuleReset', '规则重设类型', 0, 2, 20, 0, 1, '', '2022-10-07 09:08:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('0DF5B725-5FB8-487F-B0E4-BC563A77EB04', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'DbType', '数据库类型', 0, 2, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('15023A4E-4856-44EB-BE71-36A106E2AA59', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '103', '民族', 0, 2, 14, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('2748F35F-4EE2-417C-A907-3453146AAF67', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'Certificate', '证件名称', 0, 2, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('39fc87c0-7ff4-eeae-a897-b7418aeb4851', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'JobType', '任务类型', 0, 2, 18, 0, 1, '', '2021-05-16 22:28:02', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2021-05-16 22:28:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_items` VALUES ('64c10822-0c85-4516-9b59-879b818547ae', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'MessageType', '信息类型', 0, 2, 16, 0, 1, '', '2020-07-29 16:51:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('77070117-3F1A-41BA-BF81-B8B85BF10D5E', '0', 'Sys_Items', '通用字典', 1, 1, 1, 0, 1, NULL, NULL, NULL, '2020-04-20 17:17:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_items` VALUES ('8CEB2F71-026C-4FA6-9A61-378127AE7320', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '102', '生育', 0, 2, 13, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'AuditState', '审核状态', 0, 2, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('9a7079bd-0660-4549-9c2d-db5e8616619f', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'DbLogType', '系统日志', 0, 2, 17, 0, 1, '', '2016-07-19 17:09:45', NULL, '2022-10-06 13:41:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_items` VALUES ('9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'OrganizeCategory', '机构分类', 0, 2, 2, 0, 1, NULL, NULL, NULL, '2020-04-28 09:07:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_items` VALUES ('BDD797C3-2323-4868-9A63-C8CC3437AEAA', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '104', '性别', 0, 2, 15, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'RoleType', '角色类型', 0, 2, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('FA7537E2-1C64-4431-84BF-66158DD63269', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '101', '婚姻', 0, 2, 12, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_itemsdetail
-- ----------------------------
DROP TABLE IF EXISTS `sys_itemsdetail`;
CREATE TABLE `sys_itemsdetail`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_ItemId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ItemCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ItemName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_SimpleSpelling` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_IsDefault` tinyint(1) NULL DEFAULT NULL,
  `F_Layers` int NULL DEFAULT NULL,
  `F_SortCode` int NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_itemsdetail_key1`(`F_ItemId`, `F_ItemCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_itemsdetail
-- ----------------------------
INSERT INTO `sys_itemsdetail` VALUES ('0096ad81-4317-486e-9144-a6a02999ff19', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '4', '护照', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('04aba88d-f09b-46c6-bd90-a38471399b0e', 'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, '2', '业务角色', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('08daa75d-8dd6-4447-8cbe-3a9b7914e88c', '08daa75d-8081-4460-8cec-88e1bf314c5f', NULL, '1', 'FastReport', NULL, 0, NULL, 1, 0, 1, '', '2022-10-06 13:42:28', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('08daa75d-91a6-49e4-8423-89711305954d', '08daa75d-8081-4460-8cec-88e1bf314c5f', NULL, '2', '水晶报表', NULL, 0, NULL, 2, 0, 1, '', '2022-10-06 13:42:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('08daa75d-95ec-4b27-8f78-291616a91adb', '08daa75d-8081-4460-8cec-88e1bf314c5f', NULL, '3', 'HTML', NULL, 0, NULL, 3, 0, 1, '', '2022-10-06 13:42:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('08daa75d-9a7d-43a1-86ac-10223e692e16', '08daa75d-8081-4460-8cec-88e1bf314c5f', NULL, '4', 'PDF', NULL, 0, NULL, 4, 0, 1, '', '2022-10-06 13:42:49', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('08daa75d-a05d-40f0-86ec-76b7782f8b91', '08daa75d-8081-4460-8cec-88e1bf314c5f', NULL, '5', '图片', NULL, 0, NULL, 5, 0, 1, '', '2022-10-06 13:42:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('08daa75d-a401-49f0-8ff2-a6c8171d92f9', '08daa75d-8081-4460-8cec-88e1bf314c5f', NULL, '6', 'Bartender', NULL, 0, NULL, 6, 0, 1, '', '2022-10-06 13:43:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('08daa800-9785-4ba1-861c-8aea35c7df50', '08daa800-7d0b-41e5-86f5-ab10853267d7', NULL, 'yyyy', '年', NULL, 0, NULL, 0, 0, 1, '', '2022-10-07 09:09:32', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('08daa800-a00c-434c-8568-07eac1bbaa9e', '08daa800-7d0b-41e5-86f5-ab10853267d7', NULL, 'yyyy-MM', '月', NULL, 0, NULL, 1, 0, 1, '', '2022-10-07 09:09:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('08daa800-a6f0-4bd7-85ab-6fcd16124192', '08daa800-7d0b-41e5-86f5-ab10853267d7', NULL, 'yyyy-MM-dd', '日', NULL, 0, NULL, 2, 0, 1, '', '2022-10-07 09:09:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('08daa800-aeb3-4274-839c-98145f5e7fd3', '08daa800-7d0b-41e5-86f5-ab10853267d7', NULL, 'yyyy-MM-WW', '周', NULL, 0, NULL, 3, 0, 1, '', '2022-10-07 09:10:11', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('0a2ba6b9-716f-410f-8e89-929ec2277333', '64c10822-0c85-4516-9b59-879b818547ae', NULL, '1', '私信', NULL, 0, NULL, 1, 0, 1, '', '2020-07-29 16:51:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('1950efdf-8685-4341-8d2c-ac85ac7addd0', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '1', '小学', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('19EE595A-E775-409D-A48F-B33CF9F262C7', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'WorkGroup', '小组', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('24e39617-f04e-4f6f-9209-ad71e870e7c6', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Submit', '提交', NULL, 0, NULL, 7, 0, 1, NULL, '2016-07-19 17:11:19', NULL, '2016-07-19 18:20:54', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('27e85cb8-04e7-447b-911d-dd1e97dfab83', '0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, 'Oracle', 'Oracle', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('2B540AC5-6E64-4688-BB60-E0C01DFA982C', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'SubCompany', '子公司', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('2C3715AC-16F7-48FC-AB40-B0931DB1E729', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'Area', '区域', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('34222d46-e0c6-446e-8150-dbefc47a1d5f', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '6', '本科', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('34a642b2-44d4-485f-b3fc-6cce24f68b0f', '0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, 'MySql', 'MySql', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('355ad7a4-c4f8-4bd3-9c72-ff07983da0f0', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '9', '其他', NULL, 0, NULL, 9, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('392f88a8-02c2-49eb-8aed-b2acf474272a', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Update', '修改', NULL, 0, NULL, 6, 0, 1, NULL, '2016-07-19 17:11:14', NULL, '2016-07-19 18:20:49', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('39fc87c0-fa31-803c-198e-0c33e32ce183', '39fc87c0-7ff4-eeae-a897-b7418aeb4851', NULL, '0', 'Run', NULL, 0, NULL, 0, 0, 1, '', '2021-05-16 22:28:33', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('39fc87c1-15a9-292d-a4ad-27b3bdc43c99', '39fc87c0-7ff4-eeae-a897-b7418aeb4851', NULL, '1', 'Get', NULL, 0, NULL, 1, 0, 1, '', '2021-05-16 22:28:40', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('39fc87c1-2fe4-c8ac-324f-9b9546888a47', '39fc87c0-7ff4-eeae-a897-b7418aeb4851', NULL, '2', 'Post', NULL, 0, NULL, 2, 0, 1, '', '2021-05-16 22:28:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('39fc87c1-4dda-99fc-b451-2fe5a9d5214c', '39fc87c0-7ff4-eeae-a897-b7418aeb4851', NULL, '3', 'Put', NULL, 0, NULL, 3, 0, 1, '', '2021-05-16 22:28:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('39fc87c1-679d-0818-ab56-79c34e727672', '39fc87c0-7ff4-eeae-a897-b7418aeb4851', NULL, '4', 'Delete', NULL, 0, NULL, 4, 0, 1, '', '2021-05-16 22:29:01', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('39fc87c1-679d-0818-ab56-79c34e999999', '39fc87c0-7ff4-eeae-a897-b7418aeb4851', NULL, '5', 'Sql', NULL, 0, NULL, 5, 0, 1, '', '2022-06-09 09:29:01', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('39fcc061-aaf8-2e3a-dfa3-138de46b189e', '39fcc059-5908-10be-14d9-a6bc5e7e9cfd', NULL, '0', '原料', NULL, 0, NULL, 0, 0, 1, '', '2021-05-27 22:22:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('39fcc061-c67e-7581-6a38-2d294231a9aa', '39fcc059-5908-10be-14d9-a6bc5e7e9cfd', NULL, '1', '半成品', NULL, 0, NULL, 1, 0, 1, '', '2021-05-27 22:22:55', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('39fcc061-e55e-4899-68f5-668e335fa285', '39fcc059-5908-10be-14d9-a6bc5e7e9cfd', NULL, '2', '成品', NULL, 0, NULL, 2, 0, 1, '', '2021-05-27 22:23:03', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2021-05-27 22:23:32', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('39fcc062-0c61-f8ec-51ec-bb313fd5a423', '39fcc05b-4d9a-ea9d-c621-49c4295ece65', NULL, '0', '正常收货', NULL, 0, NULL, 0, 0, 1, '', '2021-05-27 22:23:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('39fcc062-2e81-0762-1d29-e8bbdc62cbf8', '39fcc05b-4d9a-ea9d-c621-49c4295ece65', NULL, '1', '退货收货', NULL, 0, NULL, 1, 0, 1, '', '2021-05-27 22:23:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('3c884a03-4f34-4150-b134-966387f1de2a', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Exit', '退出', NULL, 0, NULL, 2, 0, 1, NULL, '2016-07-19 17:10:49', NULL, '2016-07-19 18:20:23', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('3f280e2b-92f6-466c-8cc3-d7c8ff48cc8d', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '7', '硕士', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('41053517-215d-4e11-81cd-367c0e9578d7', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '3', '通过', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('433511a9-78bd-41a0-ab25-e4d4b3423055', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '2', '初中', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('486a82e3-1950-425e-b2ce-b5d98f33016a', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '5', '大专', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('48c4e0f5-f570-4601-8946-6078762db3bf', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '3', '军官证', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('49300258-1227-4b85-b6a2-e948dbbe57a4', '15023A4E-4856-44EB-BE71-36A106E2AA59', NULL, '汉族', '汉族', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('49b68663-ad01-4c43-b084-f98e3e23fee8', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '7', '废弃', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('4c2f2428-2e00-4336-b9ce-5a61f24193f6', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '2', '士兵证', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('582e0b66-2ee9-4885-9f0c-3ce3ebf96e12', '8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, '1', '已育', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('5d6def0e-e2a7-48eb-b43c-cc3631f60dd7', 'BDD797C3-2323-4868-9A63-C8CC3437AEAA', NULL, '1', '男', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('63acf96d-6115-4d76-a994-438f59419aad', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '5', '退回', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('643209c8-931b-4641-9e04-b8bdd11800af', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Login', '登录', NULL, 0, NULL, 1, 0, 1, NULL, '2016-07-19 17:10:39', NULL, '2016-07-19 18:20:17', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('738edf2a-d59f-4992-97ef-d847db23bcb8', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '1', '已婚', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('795f2695-497a-4f5e-ab1d-706095c1edb9', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Other', '其他', NULL, 0, NULL, 0, 0, 1, NULL, '2016-07-19 17:10:33', NULL, '2016-07-19 18:20:09', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('7a6d1bc4-3ec7-4c57-be9b-b4c97d60d5f6', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '1', '草稿', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('7c1135be-0148-43eb-ae49-62a1e16ebbe3', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '5', '其他', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('7fc8fa11-4acf-409a-a771-aaf1eb81e814', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Exception', '异常', NULL, 0, NULL, 8, 0, 1, NULL, '2016-07-19 17:11:25', NULL, '2016-07-19 18:21:01', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('822baf7c-abdb-4257-9b78-1f550806f544', 'BDD797C3-2323-4868-9A63-C8CC3437AEAA', NULL, '0', '女', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('8892186f-22ff-40c4-9907-e80721f9c5fe', '64c10822-0c85-4516-9b59-879b818547ae', NULL, '2', '待办', NULL, 0, NULL, 2, 0, 1, '', '2020-07-29 16:52:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-31 17:33:40', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('8b7b38bf-07c5-4f71-a853-41c5add4a94e', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '6', '完成', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('930b8de2-049f-4753-b9fd-87f484911ee4', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '8', '博士', NULL, 0, NULL, 8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('9b6a2225-6138-4cf2-9845-1bbecdf9b3ed', '8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, '3', '其他', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('a13ccf0d-ac8f-44ac-a522-4a54edf1f0fa', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Delete', '删除', NULL, 0, NULL, 5, 0, 1, NULL, '2016-07-19 17:11:09', NULL, '2016-07-19 18:20:43', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('a4974810-d88d-4d54-82cc-fd779875478f', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '4', '中专', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('A64EBB80-6A24-48AF-A10E-B6A532C32CA6', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'Department', '部门', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('a6f271f9-8653-4c5c-86cf-4cd00324b3c3', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '4', '丧偶', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('a7c4aba2-a891-4558-9b0a-bd7a1100a645', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '2', '未婚', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('acb128a6-ff63-4e25-b1e8-0a336ed3ab18', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '3', '高中', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('ace2d5e8-56d4-4c8b-8409-34bc272df404', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '5', '其它', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('B97BD7F5-B212-40C1-A1F7-DD9A2E63EEF2', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'Group', '集团', NULL, 0, NULL, 1, 0, 1, '', NULL, NULL, '2020-06-29 17:35:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('ba1d27db-cf19-4cc0-9b18-0745e98f8088', '64c10822-0c85-4516-9b59-879b818547ae', NULL, '0', '通知', NULL, 0, NULL, 0, 0, 1, '', '2020-07-29 16:51:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('cc6daa5c-a71c-4b2c-9a98-336bc3ee13c8', 'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, '3', '其他角色', NULL, 0, NULL, 3, 0, 1, '', NULL, NULL, '2020-06-18 10:15:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('ccc8e274-75da-4eb8-bed0-69008ab7c41c', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Visit', '访问', NULL, 0, NULL, 3, 0, 1, NULL, '2016-07-19 17:10:55', NULL, '2016-07-19 18:20:29', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('ce340c73-5048-4940-b86e-e3b3d53fdb2c', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '2', '提交', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('D082BDB9-5C34-49BF-BD51-4E85D7BFF646', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'Company', '公司', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('D1F439B9-D80E-4547-9EF0-163391854AB5', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'SubDepartment', '子部门', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('d69cb819-2bb3-4e1d-9917-33b9a439233d', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '1', '身份证', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('de2167f3-40fe-4bf7-b8cb-5b1c554bad7a', '8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, '2', '未育', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('e1979a4f-7fc1-42b9-a0e2-52d7059e8fb9', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '4', '待审', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('e5079bae-a8c0-4209-9019-6a2b4a3a7dac', 'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, '1', '系统角色', NULL, 0, NULL, 1, 0, 1, '', NULL, NULL, '2020-06-24 09:08:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('e545061c-93fd-4ca2-ab29-b43db9db798b', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Create', '新增', NULL, 0, NULL, 4, 0, 1, NULL, '2016-07-19 17:11:03', NULL, '2016-07-19 18:20:35', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('f9609400-7caf-49af-ae3c-7671a9292fb3', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '3', '离异', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('fa6c1873-888c-4b70-a2cc-59fccbb22078', '0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, 'SqlServer', 'SqlServer', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_Date` datetime NULL DEFAULT NULL,
  `F_Account` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_NickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_IPAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_IPAddressName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ModuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ModuleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Result` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_KeyValue` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CompanyId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Layers` int NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_UrlAddress` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_Target` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_IsMenu` tinyint(1) NULL DEFAULT NULL,
  `F_IsExpand` tinyint(1) NULL DEFAULT NULL,
  `F_IsFields` tinyint(1) NULL DEFAULT NULL,
  `F_IsPublic` tinyint(1) UNSIGNED ZEROFILL NULL DEFAULT 0,
  `F_AllowEdit` tinyint(1) NULL DEFAULT NULL,
  `F_AllowDelete` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Authorize` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_module_key1`(`F_EnCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_module
-- ----------------------------
INSERT INTO `sys_module` VALUES ('01849cc9-c6da-4184-92f8-34875dac1d42', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'CodeGenerator', '代码生成', 'fa fa-code', '/SystemManage/CodeGenerator/Index', 'iframe', 1, 0, 0, 0, 0, 0, 2, 0, 1, '', '2020-05-06 13:11:32', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-16 09:27:33', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('06bb3ea8-ec7f-4556-a427-8ff0ce62e873', '873e2274-6884-4849-b636-7f04cca8242c', 2, 'TextTool', '富文本编辑器', 'fa fa-credit-card', '../page/editor.html', 'expand', 1, 0, 0, 0, 0, 0, 5, 0, 1, '', '2020-06-23 11:07:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-02 08:44:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('08d94532-39d1-4822-80b3-0c25a8183155', '87dc2de3-ccbc-4dab-bb90-89fc68cbde4f', 2, 'OrderManagement', '订单管理', 'fa fa-first-order', NULL, 'expand', 1, 1, 0, 0, 0, 0, 7, 0, 1, '', '2021-07-12 20:40:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, '');
INSERT INTO `sys_module` VALUES ('08d94532-98ac-4751-8cd4-c6c5ec4048e6', '08d94532-39d1-4822-80b3-0c25a8183155', 3, 'Order', '订单信息', 'fa fa-anchor', '/OrderManagement/Order/Index', 'iframe', 1, 0, 0, 0, 0, 0, 1, 0, 1, '', '2021-07-12 20:43:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2021-07-13 09:45:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, '');
INSERT INTO `sys_module` VALUES ('08daa74b-eb27-4112-8675-2f20f9ea5f8c', '462027E0-0848-41DD-BCC3-025DCAE65555', 3, 'Coderule', '条码规则', 'fa fa-barcode', '/SystemManage/Coderule/Index', 'iframe', 1, 0, 0, 0, 0, 0, 10, 0, 1, '', '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2022-10-06 11:37:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, '');
INSERT INTO `sys_module` VALUES ('08daa761-e8bd-4385-8260-70452b199643', '462027E0-0848-41DD-BCC3-025DCAE65555', 3, 'Template', '打印模板', 'fa fa-codepen', '/SystemManage/Template/Index', 'iframe', 1, 0, 0, 0, 0, 0, 11, 0, 1, '', '2022-10-06 14:13:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2022-10-06 14:14:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, '');
INSERT INTO `sys_module` VALUES ('08daa762-eb69-45bf-8b79-a2bece3f91d7', '462027E0-0848-41DD-BCC3-025DCAE65555', 3, 'Codegeneratelog', '条码生成记录', 'fa fa-file-code-o', '/SystemManage/Codegeneratelog/Index', 'iframe', 1, 0, 0, 0, 0, 0, 12, 0, 1, '', '2022-10-06 14:20:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2022-10-06 14:21:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, '');
INSERT INTO `sys_module` VALUES ('152a8e93-cebb-4574-ae74-2a86595ff986', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'ModuleFields', '字段管理', 'fa fa-table', '/SystemManage/ModuleFields/Index', 'iframe', 0, 0, 0, 0, 0, 0, 4, 0, 1, '', '2020-05-21 14:39:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-15 14:55:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('1dff096a-db2f-410c-af2f-12294bdbeccd', '873e2274-6884-4849-b636-7f04cca8242c', 2, 'UploadTool', '文件上传', 'fa fa-arrow-up', '../page/upload.html', 'expand', 1, 0, 0, 0, 0, 0, 4, 0, 1, '', '2020-06-23 11:06:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-02 08:42:17', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('1e60fce5-3164-439d-8d29-4950b33011e2', '873e2274-6884-4849-b636-7f04cca8242c', 2, 'ColorTool', '颜色选择', 'fa fa-dashboard', '../page/color-select.html', 'expand', 1, 0, 0, 0, 0, 0, 2, 0, 1, '', '2020-06-23 11:05:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-02 08:41:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('253646c6-ffd8-4c7f-9673-f349bbafcbe5', '87dc2de3-ccbc-4dab-bb90-89fc68cbde4f', 2, 'SystemOrganize', '单位组织', 'fa fa-reorder', NULL, 'expand', 1, 1, 0, 0, 0, 0, 0, 0, 1, '', '2020-06-15 14:52:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-10-14 10:35:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('2536fbf0-53ff-40a6-a093-73aa0a8fc035', '873e2274-6884-4849-b636-7f04cca8242c', 2, 'IconSelect', '图标选择', 'fa fa-adn', '../page/icon-picker.html', 'expand', 1, 0, 0, 0, 0, 0, 1, 0, 1, '', '2020-06-23 11:05:01', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-02 08:41:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('262ca754-1c73-436c-a9a2-b6374451a845', '253646c6-ffd8-4c7f-9673-f349bbafcbe5', 2, 'DataPrivilegeRule', '数据权限', 'fa fa-database', '/SystemOrganize/DataPrivilegeRule/Index', 'iframe', 1, 0, 0, 0, 0, 0, 3, 0, 1, '', '2020-06-01 09:44:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-16 08:11:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('26452c9a-243d-4c81-97b9-a3ad581c3bf4', '253646c6-ffd8-4c7f-9673-f349bbafcbe5', 3, 'Organize', '机构管理', 'fa fa-sitemap', '/SystemOrganize/Organize/Index', 'iframe', 1, 0, 0, 0, 0, 0, 2, 0, 1, '', '2020-04-09 15:24:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-10-14 10:33:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('2c2ddbce-ee87-4134-9b32-54d0bd572910', '462027E0-0848-41DD-BCC3-025DCAE65555', 3, 'Form', '表单设计', 'fa fa-wpforms', '/SystemManage/Form/Index', 'iframe', 1, 0, 0, 0, 0, 0, 8, 0, 1, '', '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-08 15:26:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('30c629a0-910e-404b-8c29-a73a6291fd95', '73FD1267-79BA-4E23-A152-744AF73117E9', 3, 'AppLog', '系统日志', 'fa fa-file', '/SystemSecurity/AppLog/Index', 'iframe', 1, 0, 0, 0, 0, 0, 0, 0, 1, '', '2020-07-08 10:12:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-08 10:14:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('337A4661-99A5-4E5E-B028-861CACAF9917', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'Area', '区域管理', 'fa fa-area-chart', '/SystemManage/Area/Index', 'iframe', 1, 0, 0, 0, 0, 0, 7, 0, 1, '', NULL, NULL, '2020-06-15 14:57:10', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('38CA5A66-C993-4410-AF95-50489B22939C', '253646c6-ffd8-4c7f-9673-f349bbafcbe5', 2, 'User', '用户管理', 'fa fa-address-card-o', '/SystemOrganize/User/Index', 'iframe', 1, 0, 0, 0, 0, 0, 6, 0, 1, '', NULL, NULL, '2020-06-16 08:11:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('39fcc5ad-48af-7778-53a5-4c3c9d18cbd3', '873e2274-6884-4849-b636-7f04cca8242c', 3, 'MoreTools', '更多组件', 'fa fa-paper-plane-o', 'https://fly.layui.com/extend/', 'blank', 1, 0, 0, 0, 0, 0, 9, 0, 1, '', '2021-05-28 23:03:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2021-05-28 23:04:11', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, '');
INSERT INTO `sys_module` VALUES ('423A200B-FA5F-4B29-B7B7-A3F5474B725F', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'ItemsData', '数据字典', 'fa fa-align-justify', '/SystemManage/ItemsData/Index', 'iframe', 1, 0, 0, 0, 0, 0, 5, 0, 1, '', NULL, NULL, '2020-06-15 14:57:31', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('462027E0-0848-41DD-BCC3-025DCAE65555', '87dc2de3-ccbc-4dab-bb90-89fc68cbde4f', 2, 'SystemManage', '系统管理', 'fa fa-gears', NULL, 'expand', 1, 1, 0, 0, 0, 0, 1, 0, 1, '', NULL, NULL, '2020-06-23 10:38:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('484269cb-9aea-4af1-b7f6-f99e7e396ad1', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'SystemOptions', '系统配置', 'fa fa-gears', '/SystemOrganize/SystemSet/SetForm', 'iframe', 1, 0, 1, 0, 0, 0, 0, 0, 1, '', '2020-06-12 14:32:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-16 09:27:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', '73FD1267-79BA-4E23-A152-744AF73117E9', 3, 'ServerMonitoring', '服务器监控', 'fa fa-desktop', '/SystemSecurity/ServerMonitoring/Index', 'expand', 1, 0, 0, 0, 0, 0, 4, 0, 1, '', NULL, NULL, '2020-07-02 08:45:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('4efd6f84-a4a9-4176-aedd-153e7748cbac', 'bcd52760-009f-4673-80e5-ff166aa07687', 2, 'ArticleCategory', '新闻类别', 'fa fa-clone', '/ContentManage/ArticleCategory/Index', 'iframe', 1, 0, 0, 0, 0, 0, 1, 0, 1, '', '2020-06-09 19:42:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-23 15:59:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('5f9873e9-0308-4a8e-84b7-1c4c61f37654', '87dc2de3-ccbc-4dab-bb90-89fc68cbde4f', 2, 'FlowManage', '流程中心', 'fa fa-stack-overflow', NULL, 'expand', 1, 1, 0, 0, 0, 0, 3, 0, 1, '', '2020-07-14 15:39:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-08-12 11:17:33', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('605444e5-704f-4cca-8d00-75175e2aef05', '5f9873e9-0308-4a8e-84b7-1c4c61f37654', 3, 'ToDoFlow', '待处理流程', 'fa fa-volume-control-phone', '/FlowManage/Flowinstance/ToDoFlow', 'iframe', 1, 0, 0, 0, 0, 0, 1, 0, 1, '', '2020-07-15 15:03:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('64A1C550-2C61-4A8C-833D-ACD0C012260F', '462027E0-0848-41DD-BCC3-025DCAE65555', 3, 'Module', '系统菜单', 'fa fa-music', '/SystemManage/Module/Index', 'iframe', 1, 0, 0, 0, 0, 0, 1, 0, 1, '测试', NULL, NULL, '2020-07-14 15:45:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('6b196514-0df1-41aa-ae64-9bb598960709', '87dc2de3-ccbc-4dab-bb90-89fc68cbde4f', 2, 'FileManage', '文件中心', 'fa fa-file-text-o', NULL, 'expand', 1, 1, 0, 0, 0, 0, 4, 0, 1, '', '2020-07-22 11:43:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-08-12 11:17:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('73FD1267-79BA-4E23-A152-744AF73117E9', '87dc2de3-ccbc-4dab-bb90-89fc68cbde4f', 2, 'SystemSecurity', '系统安全', 'fa fa-desktop', NULL, 'expand', 1, 1, 0, 0, 0, 0, 2, 0, 1, '', NULL, NULL, '2020-06-23 10:54:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('7cb65e00-8af2-4cf2-b318-8ba28b3c154e', '6b196514-0df1-41aa-ae64-9bb598960709', 3, 'Uploadfile', '文件管理', 'fa fa-file-text-o', '/FileManage/Uploadfile/Index', 'iframe', 1, 0, 0, 0, 0, 0, 1, 0, 1, '', '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-22 17:20:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('7e4e4a48-4d51-4159-a113-2a211186f13a', '253646c6-ffd8-4c7f-9673-f349bbafcbe5', 3, 'Notice', '系统公告', 'fa fa-book', '/SystemOrganize/Notice/Index', 'iframe', 1, 0, 1, 0, 0, 0, 0, 0, 1, '', '2020-04-14 15:39:29', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-10-14 10:35:17', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('873e2274-6884-4849-b636-7f04cca8242c', '87dc2de3-ccbc-4dab-bb90-89fc68cbde4f', 2, 'ToolManage', '组件管理', 'fa fa-connectdevelop', NULL, 'expand', 1, 1, 0, 0, 0, 0, 99, 0, 1, '', '2020-06-23 11:02:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-08-12 11:19:29', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('87dc2de3-ccbc-4dab-bb90-89fc68cbde4f', '0', 1, 'GeneralManage', '常规管理', '', NULL, 'expand', 1, 1, 0, 0, 0, 0, 0, 0, 1, '', '2020-06-23 10:37:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-10-14 10:35:23', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('8e52143d-2f97-49e5-89a4-13469f66fc77', '873e2274-6884-4849-b636-7f04cca8242c', 2, 'SelectTool', '下拉选择', 'fa fa-angle-double-down', '../page/table-select.html', 'expand', 1, 0, 0, 0, 0, 0, 3, 0, 1, '', '2020-06-23 11:06:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-02 08:42:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '253646c6-ffd8-4c7f-9673-f349bbafcbe5', 2, 'Role', '角色管理', 'fa fa-user-circle', '/SystemOrganize/Role/Index', 'iframe', 1, 0, 0, 0, 0, 0, 4, 0, 1, '', NULL, NULL, '2020-06-16 08:11:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('96EE855E-8CD2-47FC-A51D-127C131C9FB9', '73FD1267-79BA-4E23-A152-744AF73117E9', 3, 'Log', '操作日志', 'fa fa-clock-o', '/SystemSecurity/Log/Index', 'iframe', 1, 0, 0, 0, 0, 0, 1, 0, 1, '', NULL, NULL, '2020-07-08 10:13:23', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('a303cbe1-60eb-437b-9a69-77ff8b48f173', '253646c6-ffd8-4c7f-9673-f349bbafcbe5', 3, 'SystemSet', '租户设置', 'fa fa-connectdevelop', '/SystemOrganize/SystemSet/Index', 'iframe', 1, 0, 0, 0, 0, 0, 1, 0, 1, '', '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2021-05-30 21:37:32', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, '');
INSERT INTO `sys_module` VALUES ('a3a4742d-ca39-42ec-b95a-8552a6fae579', '73FD1267-79BA-4E23-A152-744AF73117E9', 2, 'FilterIP', '访问控制', 'fa fa-filter', '/SystemSecurity/FilterIP/Index', 'iframe', 1, 0, 0, 0, 0, 0, 2, 0, 1, NULL, '2016-07-17 22:06:10', NULL, '2020-04-16 14:10:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('a5b323e7-db24-468f-97d7-a17bf5396742', '87dc2de3-ccbc-4dab-bb90-89fc68cbde4f', 2, 'InfoManage', '信息中心', 'fa fa-info', NULL, 'expand', 1, 1, 0, 0, 0, 0, 5, 0, 1, '', '2020-07-29 16:40:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-08-12 11:17:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('bcd52760-009f-4673-80e5-ff166aa07687', '87dc2de3-ccbc-4dab-bb90-89fc68cbde4f', 2, 'ContentManage', '内容管理', 'fa fa-building-o', NULL, 'expand', 1, 1, 0, 0, 0, 0, 6, 0, 1, '', '2020-06-08 20:07:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-08-12 11:18:03', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('c14ab4f2-a1cf-4abd-953b-bacd70e78e8c', '873e2274-6884-4849-b636-7f04cca8242c', 2, 'AreaTool', '省市县区选择器', 'fa fa-rocket', '../page/area.html', 'expand', 1, 0, 0, 0, 0, 0, 6, 0, 1, '', '2020-06-23 11:08:09', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-02 08:42:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('c87cd44f-d064-4d3c-a43e-de01a7a8785e', '5f9873e9-0308-4a8e-84b7-1c4c61f37654', 3, 'Flowinstance', '我的流程', 'fa fa-user-o', '/FlowManage/Flowinstance/Index', 'iframe', 1, 0, 0, 0, 0, 0, 0, 0, 1, '', '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-24 15:59:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('ca45b5ae-0252-4783-a23d-8633fc35e7e3', '873e2274-6884-4849-b636-7f04cca8242c', 3, 'cardTable', '卡片表格', 'fa fa-cc-mastercard', '../page/cardTable.html', 'expand', 1, 0, 0, 0, 0, 0, 7, 0, 1, '', '2020-12-21 10:34:17', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-12-21 10:34:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('d419160a-0a54-4da2-98fe-fc57f2461a2d', '873e2274-6884-4849-b636-7f04cca8242c', 2, 'IconTool', '图标列表', 'fa fa-dot-circle-o', '../page/icon.html', 'expand', 1, 0, 0, 0, 0, 0, 0, 0, 1, '', '2020-06-23 11:03:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-02 08:40:56', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('d742c96e-b61c-4cea-afeb-81805789687b', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'ItemsType', '字典分类', 'fa fa-align-justify', '/SystemManage/ItemsType/Index', 'iframe', 0, 0, 0, 0, 0, 0, 6, 0, 1, '', '2020-04-27 16:51:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-15 14:57:37', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('e3188a69-de3a-40ef-a5ff-5eaf460f5d20', '73FD1267-79BA-4E23-A152-744AF73117E9', 3, 'OpenJobs', '定时任务', 'fa fa-paper-plane-o', '/SystemSecurity/OpenJobs/Index', 'iframe', 1, 0, 0, 0, 0, 0, 3, 0, 1, '', '2020-05-26 13:55:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-08 10:13:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('e5dc1c07-4234-46d1-bddb-d0442196c6b6', '87dc2de3-ccbc-4dab-bb90-89fc68cbde4f', 2, 'SmartScreen', '自适应大屏', 'fa fa-tv', '../page/smartscreen.html', 'blank', 1, 0, 0, 0, 0, 0, 100, 0, 1, '', '2021-01-11 12:23:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2021-01-29 10:58:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('e9190a56-e173-4483-8a3e-f17b86e4766e', 'a5b323e7-db24-468f-97d7-a17bf5396742', 3, 'Message', '通知管理', 'fa fa-info-circle', '/InfoManage/Message/Index', 'iframe', 1, 0, 0, 0, 0, 0, 1, 0, 1, '', '2020-07-29 16:44:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-08-03 16:13:56', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('ed757a25-82d5-43cc-89f4-ed26a51fb4f0', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'ModuleButton', '菜单按钮', 'fa fa-arrows-alt', '/SystemManage/ModuleButton/Index', 'iframe', 0, 0, 0, 0, 0, 0, 3, 0, 1, '', '2020-04-27 16:56:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-15 14:55:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('ee136db7-178a-4bb0-b878-51287a5e2e2b', '5f9873e9-0308-4a8e-84b7-1c4c61f37654', 3, 'DoneFlow', '已处理流程', 'fa fa-history', '/FlowManage/Flowinstance/DoneFlow', 'iframe', 1, 0, 0, 0, 0, 0, 2, 0, 1, '', '2020-07-15 15:05:33', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('F298F868-B689-4982-8C8B-9268CBF0308D', '253646c6-ffd8-4c7f-9673-f349bbafcbe5', 2, 'Duty', '岗位管理', 'fa fa-users', '/SystemOrganize/Duty/Index', 'iframe', 1, 0, 0, 0, 0, 0, 5, 0, 1, '', NULL, NULL, '2020-06-16 08:11:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('f3277ddd-1bf1-4202-8a4b-15c29a405bd5', 'bcd52760-009f-4673-80e5-ff166aa07687', 2, 'ArticleNews', '新闻管理', 'fa fa-bell-o', '/ContentManage/ArticleNews/Index', 'iframe', 1, 0, 0, 0, 0, 0, 2, 0, 1, '', '2020-06-09 19:43:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-23 16:00:03', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_module` VALUES ('f82fd629-5f3a-45d6-8681-5ec47e66a807', '462027E0-0848-41DD-BCC3-025DCAE65555', 3, 'Flowscheme', '流程设计', 'fa fa-list-alt', '/SystemManage/Flowscheme/Index', 'iframe', 1, 0, 0, 0, 0, 0, 9, 0, 1, '', '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-14 08:53:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_modulebutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_modulebutton`;
CREATE TABLE `sys_modulebutton`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_ModuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Layers` int NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Location` int NULL DEFAULT NULL,
  `F_JsEvent` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_UrlAddress` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_Split` tinyint(1) NULL DEFAULT NULL,
  `F_IsPublic` tinyint(1) UNSIGNED ZEROFILL NULL DEFAULT 0,
  `F_AllowEdit` tinyint(1) NULL DEFAULT NULL,
  `F_AllowDelete` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Authorize` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_modulebutton_key1`(`F_ModuleId`, `F_ParentId`, `F_EnCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_modulebutton
-- ----------------------------
INSERT INTO `sys_modulebutton` VALUES ('01600a2b-c218-48d6-bb37-842daa727248', '152a8e93-cebb-4574-ae74-2a86595ff986', '0', 1, 'NF-delete', '删除字段', NULL, 2, 'delete', '/SystemManage/ModuleFields/DeleteForm', 0, 0, 0, 0, 2, 0, 1, '', '2020-05-21 14:39:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-21 15:15:16', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('071f5982-efb2-4fa3-a6cf-a02f3f1f9d92', 'ed757a25-82d5-43cc-89f4-ed26a51fb4f0', '0', 1, 'NF-add', '新增按钮', NULL, 1, 'add', '/SystemManage/ModuleButton/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2020-04-27 16:56:56', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('08d94532-98b0-4b60-86a7-eca606765531', '08d94532-98ac-4751-8cd4-c6c5ec4048e6', '0', 1, 'NF-add', '新增', NULL, 1, 'add', '/OrderManagement/Order/Form', 0, 0, 0, 0, 0, 0, 1, NULL, '2021-07-12 20:43:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('08d94532-98b0-4b92-8a2f-4da9f59afa21', '08d94532-98ac-4751-8cd4-c6c5ec4048e6', '0', 1, 'NF-edit', '修改', NULL, 2, 'edit', '/OrderManagement/Order/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2021-07-12 20:43:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('08d94532-98b0-4ba2-87b3-6c976665cb6b', '08d94532-98ac-4751-8cd4-c6c5ec4048e6', '0', 1, 'NF-delete', '删除', NULL, 2, 'delete', '/OrderManagement/Order/DeleteForm', 0, 0, 0, 0, 2, 0, 1, NULL, '2021-07-12 20:43:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('08d94532-98b0-4bac-8e49-471d5b61be95', '08d94532-98ac-4751-8cd4-c6c5ec4048e6', '0', 1, 'NF-details', '查看', NULL, 2, 'details', '/OrderManagement/Order/Details', 0, 0, 0, 0, 3, 0, 1, NULL, '2021-07-12 20:43:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('08d9bde2-f14d-4b33-8f9b-2af0bf40812b', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', '0', 1, 'NF-cancle', '撤回', NULL, 1, 'cancle', '/FlowManage/Flowinstance/CancleForm', NULL, 0, 0, 0, 4, 0, 1, '', '2021-12-13 10:47:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, '');
INSERT INTO `sys_modulebutton` VALUES ('08daa74b-eb2c-4564-81ea-b0a247e2d1c1', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', '0', 1, 'NF-add', '新增', NULL, 1, 'add', '/SystemManage/Coderule/Form', 0, 0, 0, 0, 0, 0, 1, NULL, '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('08daa74b-eb2c-45a2-8f15-de416e949b49', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', '0', 1, 'NF-edit', '修改', NULL, 2, 'edit', '/SystemManage/Coderule/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('08daa74b-eb2c-45ae-826d-f3daa858a373', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', '0', 1, 'NF-delete', '删除', NULL, 2, 'delete', '/SystemManage/Coderule/DeleteForm', 0, 0, 0, 0, 2, 0, 1, NULL, '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('08daa74b-eb2c-45b7-838a-e638b9b5fbc4', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', '0', 1, 'NF-details', '查看', NULL, 2, 'details', '/SystemManage/Coderule/Details', 0, 0, 0, 0, 3, 0, 1, NULL, '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('08daa761-e8c2-451d-82bd-42a949ca6b2b', '08daa761-e8bd-4385-8260-70452b199643', '0', 1, 'NF-add', '新增', NULL, 1, 'add', '/SystemManage/Template/Form', 0, 0, 0, 0, 0, 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('08daa761-e8c2-455c-8aa1-2631fcd858ef', '08daa761-e8bd-4385-8260-70452b199643', '0', 1, 'NF-edit', '修改', NULL, 2, 'edit', '/SystemManage/Template/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('08daa761-e8c2-4568-8044-b7d35d082d6f', '08daa761-e8bd-4385-8260-70452b199643', '0', 1, 'NF-delete', '删除', NULL, 2, 'delete', '/SystemManage/Template/DeleteForm', 0, 0, 0, 0, 2, 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('08daa761-e8c2-4571-8673-5f693d4dd7a7', '08daa761-e8bd-4385-8260-70452b199643', '0', 1, 'NF-details', '查看', NULL, 2, 'details', '/SystemManage/Template/Details', 0, 0, 0, 0, 3, 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('08daa762-eb70-4380-80e1-6c505d95ff84', '08daa762-eb69-45bf-8b79-a2bece3f91d7', '0', 1, 'NF-reprint', '补印', NULL, 2, 'reprint', '/SystemManage/Codegeneratelog/Reprint', 0, 0, 0, 0, 0, 0, 1, '', '2022-10-06 14:20:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2022-10-06 14:28:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, '');
INSERT INTO `sys_modulebutton` VALUES ('08daa908-83be-459b-85f6-2280b2aa3323', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', '0', 1, 'NF-create', '生成条码', NULL, 2, 'create', '/SystemManage/Coderule/CreateForm', NULL, 0, 0, 0, 4, 0, 1, '', '2022-10-08 16:38:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, '');
INSERT INTO `sys_modulebutton` VALUES ('0a1ba1d7-b4f3-45a4-a4da-e70fb25bb766', 'e9190a56-e173-4483-8a3e-f17b86e4766e', '0', 1, 'NF-delete', '删除', NULL, 2, 'delete', '/InfoManage/Message/DeleteForm', 0, 0, 0, 0, 2, 0, 1, NULL, '2020-07-29 16:44:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('0b1b307b-2aac-456b-acfb-484a05c71bd7', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', '0', 1, 'NF-edit', '修改机构', NULL, 2, 'edit', '/SystemOrganize/Organize/Form', 0, 0, 0, 0, 2, 0, 1, '', NULL, NULL, '2020-07-23 10:47:04', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('0d777b07-041a-4205-a393-d1a009aaafc7', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', 1, 'NF-edit', '修改字典', NULL, 2, 'edit', '/SystemManage/ItemsData/Form', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 15:37:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('0e156a57-8133-4d1b-9d0f-9b7554e7b1fc', 'd742c96e-b61c-4cea-afeb-81805789687b', '0', 1, 'NF-edit', '修改分类', NULL, 2, 'edit', '/SystemManage/ItemsType/Form', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-27 16:52:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('0fa5e0a8-c786-40af-81af-b133b42dded5', '262ca754-1c73-436c-a9a2-b6374451a845', '0', 1, 'NF-delete', '删除', NULL, 2, 'delete', '/SystemOrganize/DataPrivilegeRule/DeleteForm', 0, 0, 0, 0, 2, 0, 1, '', '2020-06-01 09:44:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-16 08:13:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('104bcc01-0cfd-433f-87f4-29a8a3efb313', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', 1, 'NF-add', '新建字典', NULL, 1, 'add', '/SystemManage/ItemsData/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:37:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('13c9a15f-c50d-4f09-8344-fd0050f70086', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-add', '新建岗位', NULL, 1, 'add', '/SystemOrganize/Duty/Form', 0, 0, 0, 0, 1, 0, 1, '', NULL, NULL, '2020-06-16 08:13:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('14617a4f-bfef-4bc2-b943-d18d3ff8d22f', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-delete', '删除用户', NULL, 2, 'delete', '/SystemOrganize/User/DeleteForm', 0, 0, 0, 0, 3, 0, 1, '', NULL, NULL, '2020-06-16 08:14:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('15362a59-b242-494a-bc6e-413b4a63580e', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-disabled', '禁用', NULL, 2, 'disabled', '/SystemOrganize/User/DisabledAccount', 0, 0, 0, 0, 6, 0, 1, '', '2016-07-25 15:25:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-16 08:14:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('153e4773-7425-403f-abf7-42db13f84c8d', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', '0', 1, 'NF-details', '进度', NULL, 2, 'details', '/FlowManage/Flowinstance/Details', 0, 0, 0, 0, 3, 0, 1, '', '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-14 13:58:40', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('17a0e46f-28f9-4787-832c-0da25c321ce4', '7cb65e00-8af2-4cf2-b318-8ba28b3c154e', '0', 1, 'NF-download', '下载', NULL, 1, 'download', '/FileManage/Uploadfile/Download', 0, 0, 0, 0, 0, 0, 1, '', '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-22 14:47:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('1a588a3b-95d7-4b3a-b50a-d3bc40de9fe3', '7cb65e00-8af2-4cf2-b318-8ba28b3c154e', '0', 1, 'NF-details', '查看', NULL, 2, 'details', '/FileManage/Uploadfile/Details', 0, 0, 0, 0, 1, 0, 1, '', '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-22 14:47:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('1b72be70-e44d-43d6-91d0-dc3ad628d22e', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', '0', 1, 'NF-details', '查看机构', NULL, 2, 'details', '/SystemOrganize/Organize/Details', 0, 0, 0, 0, 4, 0, 1, '', NULL, NULL, '2020-07-23 10:47:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('1d1e71a6-dd8b-4052-8093-f1d7d347b9bc', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', '0', 1, 'NF-details', '查看', NULL, 2, 'details', '/SystemOrganize/SystemSet/Details', 0, 0, 0, 0, 2, 0, 1, '', '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-16 08:12:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('1ee1c46b-e767-4532-8636-936ea4c12003', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', 1, 'NF-delete', '删除字典', NULL, 2, 'delete', '/SystemManage/ItemsData/DeleteForm', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2016-07-25 15:37:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('208c2915-d6d0-4bb0-8ec4-154f86561f5a', 'e3188a69-de3a-40ef-a5ff-5eaf460f5d20', '0', 1, 'NF-enabled', '启用', NULL, 2, 'enabled', '/SystemSecurity/OpenJobs/ChangeStatus', 0, 0, 0, 0, 4, 0, 1, '', '2020-05-26 13:55:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-27 08:42:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('23780fa8-b92c-4c0e-830e-ddcbe6cf4463', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-modulefields', '字段管理', NULL, 2, 'modulefields', '/SystemManage/ModuleFields/Index', 0, 0, 0, 0, 6, 0, 1, '', '2020-05-21 14:28:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('239077ff-13e1-4720-84e1-67b6f0276979', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', 1, 'NF-delete', '删除角色', NULL, 2, 'delete', '/SystemOrganize/Role/DeleteForm', 0, 0, 0, 0, 3, 0, 1, '', NULL, NULL, '2020-06-16 08:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('29306956-f9b2-4e76-bc23-4b8f02d21be3', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-import', '导入', NULL, 1, 'import', '/SystemOrganize/Duty/Import', NULL, 0, 0, 0, 5, 0, 1, '', '2020-08-12 10:17:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-08-12 10:17:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('2a8f5342-5eb7-491c-a1a9-a2631d8eb5d6', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-enabled', '启用', NULL, 2, 'enabled', '/SystemOrganize/User/EnabledAccount', 0, 0, 0, 0, 7, 0, 1, '', '2016-07-25 15:28:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-16 08:14:33', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('2cde1cd0-cfc8-4901-96ef-1fe0c8bf997c', '2c2ddbce-ee87-4134-9b32-54d0bd572910', '0', 1, 'NF-view', '视图模型', NULL, 1, 'view', '/SystemManage/Form/Index', NULL, 0, 0, 0, 5, 0, 1, '', '2020-07-09 12:06:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('30bf72ed-f62f-49a9-adfc-49693871605f', 'd742c96e-b61c-4cea-afeb-81805789687b', '0', 1, 'NF-details', '查看分类', NULL, 2, 'details', '/SystemManage/ItemsType/Details', 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, '2020-04-27 16:52:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('310bb831-a46f-4117-9d02-a3e551611dcf', 'e3188a69-de3a-40ef-a5ff-5eaf460f5d20', '0', 1, 'NF-delete', '删除任务', NULL, 2, 'delete', '/SystemSecurity/OpenJobs/DeleteForm', 0, 0, 0, 0, 3, 0, 1, '', '2020-05-26 13:55:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-26 13:56:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('329c0326-ce68-4a24-904d-aade67a90fc7', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', 1, 'NF-details', '查看策略', NULL, 2, 'details', '/SystemSecurity/FilterIP/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-17 12:51:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('35fc1b7c-40b0-42b8-a0f9-c67087566289', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', '0', 1, 'NF-edit', '修改', NULL, 2, 'edit', '/SystemManage/Flowscheme/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('38e39592-6e86-42fb-8f72-adea0c82cbc1', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-revisepassword', '密码重置', NULL, 2, 'revisepassword', '/SystemOrganize/User/RevisePassword', 0, 0, 0, 0, 5, 0, 1, '', '2016-07-25 14:18:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-16 08:14:26', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('39fc8a42-6335-1ed5-6c73-a055419b61c8', 'e3188a69-de3a-40ef-a5ff-5eaf460f5d20', '0', 1, 'NF-doNow', '执行', NULL, 1, 'doNow', '/SystemSecurity/OpenJobs/DoNow', NULL, 0, 0, 0, 4, 0, 1, '', '2021-05-17 10:09:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, '');
INSERT INTO `sys_modulebutton` VALUES ('3a35c662-a356-45e4-953d-00ebd981cad6', '96EE855E-8CD2-47FC-A51D-127C131C9FB9', '0', 1, 'NF-removelog', '清空日志', NULL, 1, 'removeLog', '/SystemSecurity/Log/RemoveLog', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2020-04-07 14:34:56', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('3c8bc8ed-4cc4-43bc-accd-d4acb2a0358d', '30c629a0-910e-404b-8c29-a73a6291fd95', '0', 1, 'NF-details', '查看日志', NULL, 2, 'details', '/SystemSecurity/AppLog/Details', 0, 1, 0, 0, 0, 0, 1, '', '2020-07-08 10:41:26', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-08 11:04:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('3d0e99d1-a150-43dc-84ae-f0e2e0ad2217', 'ed757a25-82d5-43cc-89f4-ed26a51fb4f0', '0', 1, 'NF-edit', '修改按钮', NULL, 2, 'edit', '/SystemManage/ModuleButton/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2020-04-27 16:57:01', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('3f69d32f-cb3b-4fa0-863b-98b9a090d7e9', '7e4e4a48-4d51-4159-a113-2a211186f13a', '0', 1, 'NF-add', '新建公告', NULL, 1, 'add', '/SystemOrganize/Notice/Form', 0, 0, 0, 0, 1, 0, 1, '', NULL, NULL, '2020-06-16 08:12:18', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('43e09a61-c2b0-46c1-9b81-76d686b390d4', 'ed757a25-82d5-43cc-89f4-ed26a51fb4f0', '0', 1, 'NF-clonebutton', '克隆按钮', NULL, 1, 'clonebutton', '/SystemManage/ModuleButton/CloneButton', 0, 0, 0, 0, 5, 0, 1, NULL, '2020-04-28 09:54:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-11 14:55:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('4727adf7-5525-4c8c-9de5-39e49c268349', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-edit', '修改用户', NULL, 2, 'edit', '/SystemOrganize/User/Form', 0, 0, 0, 0, 2, 0, 1, '', NULL, NULL, '2020-06-16 08:14:16', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('48afe7b3-e158-4256-b50c-cd0ee7c6dcc9', '337A4661-99A5-4E5E-B028-861CACAF9917', '0', 1, 'NF-add', '新建区域', NULL, 1, 'add', '/SystemManage/Area/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:32:26', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('4b876abc-1b85-47b0-abc7-96e313b18ed8', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', 1, 'NF-itemstype', '分类管理', NULL, 1, 'itemstype', '/SystemManage/ItemsType/Index', 0, 0, 0, 0, 2, 0, 1, NULL, '2016-07-25 15:36:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-07 14:33:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('4bb19533-8e81-419b-86a1-7ee56bf1dd45', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', 1, 'NF-delete', '删除机构', NULL, 2, 'delete', '/SystemManage/Organize/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-07 14:22:56', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('4c794628-9b09-4d60-8fb5-63c1a37b2b60', '2c2ddbce-ee87-4134-9b32-54d0bd572910', '0', 1, 'NF-edit', '修改', NULL, 2, 'edit', '/SystemManage/Form/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('4f727b61-0aa4-45f0-83b5-7fcddfe034e8', 'ed757a25-82d5-43cc-89f4-ed26a51fb4f0', '0', 1, 'NF-delete', '删除按钮', NULL, 2, 'delete', '/SystemManage/ModuleButton/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-27 16:57:10', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('55cc5aba-8121-4151-8df5-f6846396d1a3', '2c2ddbce-ee87-4134-9b32-54d0bd572910', '0', 1, 'NF-add', '新增', NULL, 1, 'add', '/SystemManage/Form/Form', 0, 0, 0, 0, 0, 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('5c321b1f-4f56-4276-a1aa-dd23ce12a1fc', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', '0', 1, 'NF-delete', '删除', NULL, 2, 'delete', '/FlowManage/Flowinstance/DeleteForm', 0, 0, 0, 0, 2, 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('5d708d9d-6ebe-40ea-8589-e3efce9e74ec', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', 1, 'NF-add', '新建角色', NULL, 1, 'add', '/SystemOrganize/Role/Form', 0, 0, 0, 0, 1, 0, 1, '', NULL, NULL, '2020-06-16 08:13:32', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('63cd2162-ab5f-4b7f-9bbd-5c2e7625e639', '152a8e93-cebb-4574-ae74-2a86595ff986', '0', 1, 'NF-details', '查看字段', NULL, 2, 'details', '/SystemManage/ModuleFields/Details', 0, 0, 0, 0, 3, 0, 1, '', '2020-05-21 14:39:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-21 15:11:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('6cd4c3ac-048c-485a-bd4d-e0923f8d7f6e', 'f3277ddd-1bf1-4202-8a4b-15c29a405bd5', '0', 1, 'NF-edit', '修改新闻', NULL, 2, 'edit', '/ContentManage/ArticleNews/Form', 0, 0, 0, 0, 2, 0, 1, '', '2020-06-23 15:29:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-23 16:00:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('6f872aa0-1aae-4f42-a3ba-a61079057749', 'e9190a56-e173-4483-8a3e-f17b86e4766e', '0', 1, 'NF-edit', '修改', NULL, 2, 'edit', '/InfoManage/Message/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2020-07-29 16:44:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('709a4a7b-4d98-462d-b47c-351ef11db06f', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', 1, 'NF-Details', '查看机构', NULL, 2, 'details', '/SystemManage/Organize/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-07 14:23:01', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('73ac1957-7558-49f6-8642-59946d05b8e6', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', '0', 1, 'NF-details', '查看', NULL, 2, 'details', '/SystemManage/Flowscheme/Details', 0, 0, 0, 0, 3, 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('746629aa-858b-4c5e-9335-71b0fa08a584', 'ed757a25-82d5-43cc-89f4-ed26a51fb4f0', '0', 1, 'NF-details', '查看按钮', NULL, 2, 'details', '/SystemManage/ModuleButton/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-27 17:37:40', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('74eecdfb-3bee-405d-be07-27a78219c179', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-add', '新建用户', NULL, 1, 'add', '/SystemOrganize/User/Form', 0, 0, 0, 0, 1, 0, 1, '', NULL, NULL, '2020-06-16 08:14:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('761f50a6-c1b2-4234-b0af-8f515ec74fe8', 'f3277ddd-1bf1-4202-8a4b-15c29a405bd5', '0', 1, 'NF-details', '查看新闻', NULL, 2, 'details', '/ContentManage/ArticleNews/Details', 0, 0, 0, 0, 4, 0, 1, '', '2020-06-23 15:29:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-23 16:00:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('772eb88a-5f67-4bb1-a122-0c83a2bdb5ef', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', '0', 1, 'NF-add', '申请', NULL, 1, 'add', '/FlowManage/Flowinstance/Form', 0, 0, 0, 0, 0, 0, 1, '', '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-14 13:58:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('7e10a7ac-8b65-4c7c-8eee-92d69d7dcbd9', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', '0', 1, 'NF-add', '新建机构', NULL, 1, 'add', '/SystemOrganize/Organize/Form', 0, 0, 0, 0, 1, 0, 1, '', NULL, NULL, '2020-07-23 10:46:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('7ee3ff62-ab18-4886-9451-89b1d152172e', '7e4e4a48-4d51-4159-a113-2a211186f13a', '0', 1, 'NF-details', '查看公告', NULL, 2, 'details', '/SystemOrganize/Notice/Details', 0, 0, 0, 0, 4, 0, 1, '', NULL, NULL, '2020-06-16 08:12:28', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('82b2f4a2-55a1-4f44-b667-3449739643f6', '262ca754-1c73-436c-a9a2-b6374451a845', '0', 1, 'NF-edit', '修改', NULL, 2, 'edit', '/SystemOrganize/DataPrivilegeRule/Form', 0, 0, 0, 0, 1, 0, 1, '', '2020-06-01 09:44:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-16 08:13:18', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('82f162cb-beb9-4a79-8924-cd1860e26e2e', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', 1, 'NF-details', '查看字典', NULL, 2, 'details', '/SystemManage/ItemsData/Details', 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, '2020-04-17 12:50:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('832f5195-f3ab-4683-82ad-a66a71735ffc', '2c2ddbce-ee87-4134-9b32-54d0bd572910', '0', 1, 'NF-details', '查看', NULL, 2, 'details', '/SystemManage/Form/Details', 0, 0, 0, 0, 3, 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8379135e-5b13-4236-bfb1-9289e6129034', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', 1, 'NF-delete', '删除策略', NULL, 2, 'delete', '/SystemSecurity/FilterIP/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 15:57:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('85bfbb9d-24f0-4a6f-8bb8-0f87826d04fa', '152a8e93-cebb-4574-ae74-2a86595ff986', '0', 1, 'NF-add', '新增字段', NULL, 1, 'add', '/SystemManage/ModuleFields/Form', 0, 0, 0, 0, 0, 0, 1, '', '2020-05-21 14:39:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-21 15:38:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('85F5212F-E321-4124-B155-9374AA5D9C10', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-delete', '删除菜单', NULL, 2, 'delete', '/SystemManage/Module/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 15:41:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('87068c95-42c8-4f20-b786-27cb9d3d5ff7', 'e3188a69-de3a-40ef-a5ff-5eaf460f5d20', '0', 1, 'NF-add', '新建任务', NULL, 1, 'add', '/SystemSecurity/OpenJobs/Form', 0, 0, 0, 0, 1, 0, 1, '', '2020-05-26 13:55:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-26 13:56:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('88f7b3a8-fd6d-4f8e-a861-11405f434868', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-details', '查看岗位', NULL, 2, 'details', '/SystemOrganize/Duty/Details', 0, 0, 0, 0, 4, 0, 1, '', NULL, NULL, '2020-06-16 08:14:01', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('89d7a69d-b953-4ce2-9294-db4f50f2a157', '337A4661-99A5-4E5E-B028-861CACAF9917', '0', 1, 'NF-edit', '修改区域', NULL, 2, 'edit', '/SystemManage/Area/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2016-07-25 15:32:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8a9993af-69b2-4d8a-85b3-337745a1f428', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-delete', '删除岗位', NULL, 2, 'delete', '/SystemOrganize/Duty/DeleteForm', 0, 0, 0, 0, 3, 0, 1, '', NULL, NULL, '2020-06-16 08:13:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8c7013a9-3682-4367-8bc6-c77ca89f346b', '337A4661-99A5-4E5E-B028-861CACAF9917', '0', 1, 'NF-delete', '删除区域', NULL, 2, 'delete', '/SystemManage/Area/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 15:32:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8f32069f-20f3-48c9-8e35-cd245fffcf64', '01849cc9-c6da-4184-92f8-34875dac1d42', '0', 1, 'NF-add', '模板生成', NULL, 2, 'add', '/SystemManage/CodeGenerator/Form', 0, 0, 0, 0, 0, 0, 1, '', NULL, NULL, '2020-07-23 15:36:31', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8f698747-a1c3-468d-9279-99990987e0f9', '7e4e4a48-4d51-4159-a113-2a211186f13a', '0', 1, 'NF-delete', '删除公告', NULL, 2, 'delete', '/SystemOrganize/Notice/DeleteForm', 0, 0, 0, 0, 3, 0, 1, '', NULL, NULL, '2020-06-16 08:12:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('91be873e-ccb7-434f-9a3b-d312d6d5798a', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', 1, 'NF-edit', '修改机构', NULL, 2, 'edit', '/SystemManage/Organize/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2020-04-07 14:22:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('91d768bb-fb68-4807-b3b6-db355bdd6e09', '2c2ddbce-ee87-4134-9b32-54d0bd572910', '0', 1, 'NF-delete', '删除', NULL, 2, 'delete', '/SystemManage/Form/DeleteForm', 0, 0, 0, 0, 2, 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('926ae4a9-0ecb-4d5e-a66e-5bae15ae27c2', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', '0', 1, 'NF-edit', '修改', NULL, 2, 'edit', '/SystemOrganize/SystemSet/Form', 0, 0, 0, 0, 1, 0, 1, '', '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-16 08:12:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('9450c723-d64d-459c-9c52-555773a8b50e', '4efd6f84-a4a9-4176-aedd-153e7748cbac', '0', 1, 'NF-add', '新建类别', NULL, 1, 'add', '/ContentManage/ArticleCategory/Form', 0, 0, 0, 0, 1, 0, 1, '', '2020-06-23 15:27:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-23 16:00:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('957a355d-d931-40f6-9da0-dddfd9135fe0', 'e9190a56-e173-4483-8a3e-f17b86e4766e', '0', 1, 'NF-details', '查看', NULL, 2, 'details', '/InfoManage/Message/Details', 0, 0, 0, 0, 3, 0, 1, NULL, '2020-07-29 16:44:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('98c2519c-b39f-4bf3-9543-5cc2630a4bbd', '152a8e93-cebb-4574-ae74-2a86595ff986', '0', 1, 'NF-clonefields', '克隆字段', NULL, 1, 'clonefields', '/SystemManage/ModuleFields/CloneFields', 0, 0, 0, 0, 5, 0, 1, '', '2020-05-21 15:39:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-21 15:40:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('9fc77888-bbca-4996-9240-a0f389819f6f', '7e4e4a48-4d51-4159-a113-2a211186f13a', '0', 1, 'NF-edit', '修改公告', NULL, 2, 'edit', '/SystemOrganize/Notice/Form', 0, 0, 0, 0, 2, 0, 1, '', NULL, NULL, '2020-06-16 08:12:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('9FD543DB-C5BB-4789-ACFF-C5865AFB032C', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-add', '新增菜单', NULL, 1, 'add', '/SystemManage/Module/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:41:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('a0a41d87-494b-40b5-bd03-0f75c75be7cb', '337A4661-99A5-4E5E-B028-861CACAF9917', '0', 1, 'NF-details', '查看区域', NULL, 2, 'details', '/SystemManage/Area/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-27 17:38:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('a2e2a8ba-9311-4699-bcef-b79a2b59b08f', '4efd6f84-a4a9-4176-aedd-153e7748cbac', '0', 1, 'NF-delete', '删除类别', NULL, 2, 'delete', '/ContentManage/ArticleCategory/DeleteForm', 0, 0, 0, 0, 3, 0, 1, '', '2020-06-23 15:27:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-23 16:00:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('a5619a09-f283-4ed7-82e0-9609815cb62a', 'f3277ddd-1bf1-4202-8a4b-15c29a405bd5', '0', 1, 'NF-delete', '删除新闻', NULL, 2, 'delete', '/ContentManage/ArticleNews/DeleteForm', 0, 0, 0, 0, 3, 0, 1, '', '2020-06-23 15:29:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-23 16:00:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('aaf58c1b-4af2-4e5f-a3e4-c48e86378191', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', 1, 'NF-edit', '修改策略', NULL, 2, 'edit', '/SystemSecurity/FilterIP/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2016-07-25 15:57:49', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('abfdff21-8ebf-4024-8555-401b4df6acd9', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-details', '查看用户', NULL, 2, 'details', '/SystemOrganize/User/Details', 0, 0, 0, 0, 4, 0, 1, '', NULL, NULL, '2020-06-16 08:14:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('b4be6eee-3509-4685-8064-34b9cacc690a', 'ee136db7-178a-4bb0-b878-51287a5e2e2b', '0', 1, 'NF-details', '进度', NULL, 2, 'details', '/FlowManage/Flowinstance/Details', 0, 0, 0, 0, 1, 0, 1, '', '2020-07-15 15:05:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-15 15:04:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('b83c84e4-6264-4b8e-b319-a49fbf34860d', '262ca754-1c73-436c-a9a2-b6374451a845', '0', 1, 'NF-add', '新增', NULL, 1, 'add', '/SystemOrganize/DataPrivilegeRule/Form', 0, 0, 0, 0, 0, 0, 1, '', '2020-06-01 09:44:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-16 08:13:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('ba72435b-1185-4108-8020-7310c5a70233', '01849cc9-c6da-4184-92f8-34875dac1d42', '0', 1, 'NF-details', '查看数据表', NULL, 2, 'details', '/SystemManage/CodeGenerator/Details', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2020-05-06 13:12:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('c8eed325-56ad-4210-b610-3e3bb68eb0be', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', '0', 1, 'NF-edit', '修改', NULL, 2, 'edit', '/FlowManage/Flowinstance/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('cba403cb-6418-44b7-868d-19e04af673ce', 'd742c96e-b61c-4cea-afeb-81805789687b', '0', 1, 'NF-delete', '删除分类', NULL, 2, 'delete', '/SystemManage/ItemsType/DeleteForm', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-27 16:52:32', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('cc115cef-c2d1-4b97-adbc-ea885aea6190', 'e3188a69-de3a-40ef-a5ff-5eaf460f5d20', '0', 1, 'NF-log', '日志', NULL, 1, 'log', '/SystemSecurity/OpenJobs/Details', NULL, 0, 0, 0, 6, 0, 1, '', '2020-12-02 13:14:32', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('cd65e50a-0bea-45a9-b82e-f2eacdbd209e', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', 1, 'NF-add', '新建机构', NULL, 1, 'add', '/SystemManage/Organize/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2020-04-07 14:22:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d1086ccf-e605-44a4-9777-629810cec02d', '152a8e93-cebb-4574-ae74-2a86595ff986', '0', 1, 'NF-edit', '修改字段', NULL, 2, 'edit', '/SystemManage/ModuleFields/Form', 0, 0, 0, 0, 1, 0, 1, '', '2020-05-21 14:39:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-21 15:15:11', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d26da420-7e73-41ef-8361-86551b8dd1bb', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', '0', 1, 'NF-add', '新增', NULL, 1, 'add', '/SystemOrganize/SystemSet/Form', 0, 0, 0, 0, 0, 0, 1, '', '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-16 08:12:37', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d2ecb5e8-e5cc-49c8-ba86-dbd7e51ca20b', 'e3188a69-de3a-40ef-a5ff-5eaf460f5d20', '0', 1, 'NF-edit', '修改任务', NULL, 2, 'edit', '/SystemSecurity/OpenJobs/Form', 0, 0, 0, 0, 2, 0, 1, '', '2020-05-26 13:55:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-26 13:56:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d30ff0f3-39da-4033-a320-56f26edd5b51', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', '0', 1, 'NF-delete', '删除', NULL, 2, 'delete', '/SystemManage/Flowscheme/DeleteForm', 0, 0, 0, 0, 2, 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d3a41d48-6288-49ec-90c5-952fa676591f', 'f3277ddd-1bf1-4202-8a4b-15c29a405bd5', '0', 1, 'NF-add', '新建新闻', NULL, 1, 'add', '/ContentManage/ArticleNews/Form', 0, 0, 0, 0, 1, 0, 1, '', '2020-06-23 15:29:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-23 16:00:40', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d4074121-0d4f-465e-ad37-409bbe15bf8a', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', 1, 'NF-add', '新建策略', NULL, 1, 'add', '/SystemSecurity/FilterIP/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:57:40', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d42aaaae-4973-427c-ad86-7a6b20b09325', '605444e5-704f-4cca-8d00-75175e2aef05', '0', 1, 'NF-vft', '处理', NULL, 1, 'vft', '/FlowManage/Flowinstance/Verification', 0, 0, 0, 0, 0, 0, 1, '', '2020-07-15 15:03:33', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-15 15:04:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('D4FCAFED-7640-449E-80B7-622DDACD5012', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-details', '查看菜单', NULL, 2, 'details', '/SystemManage/Module/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-27 17:37:29', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d6ed1d69-84f8-4933-9072-4009a3fcba85', '4efd6f84-a4a9-4176-aedd-153e7748cbac', '0', 1, 'NF-edit', '修改类别', NULL, 2, 'edit', '/ContentManage/ArticleCategory/Form', 0, 0, 0, 0, 2, 0, 1, '', '2020-06-23 15:27:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-23 16:00:16', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d7a452f3-3596-4339-8803-d61fb4eec013', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-export', '导出', NULL, 1, 'export', '/SystemOrganize/Duty/Export', NULL, 0, 0, 0, 6, 0, 1, '', '2020-08-12 10:17:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-08-12 10:18:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d9e74251-61ff-4472-adec-ad316cb9a307', 'd742c96e-b61c-4cea-afeb-81805789687b', '0', 1, 'NF-add', '新建分类', NULL, 1, 'add', '/SystemManage/ItemsType/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2020-04-27 16:52:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('de205812-51c2-4a64-857d-b5638c06c65c', '4efd6f84-a4a9-4176-aedd-153e7748cbac', '0', 1, 'NF-details', '查看类别', NULL, 2, 'details', '/ContentManage/ArticleCategory/Details', 0, 0, 0, 0, 4, 0, 1, '', '2020-06-23 15:27:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-23 16:00:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('e06965bc-b693-4b91-96f9-fc10ca2aa1f0', 'e3188a69-de3a-40ef-a5ff-5eaf460f5d20', '0', 1, 'NF-disabled', '关闭', NULL, 2, 'disabled', '/SystemSecurity/OpenJobs/ChangeStatus', 0, 0, 0, 0, 5, 0, 1, '', '2020-05-26 13:55:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-27 08:42:32', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('E29FCBA7-F848-4A8B-BC41-A3C668A9005D', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-edit', '修改菜单', NULL, 2, 'edit', '/SystemManage/Module/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2016-07-25 15:41:02', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('e376d482-023e-4715-a9c8-2a393c24426e', '605444e5-704f-4cca-8d00-75175e2aef05', '0', 1, 'NF-details', '进度', NULL, 2, 'details', '/FlowManage/Flowinstance/Details', 0, 0, 0, 0, 1, 0, 1, '', '2020-07-15 15:03:33', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-15 15:04:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('e6514544-1436-431d-acbc-c44802831ea8', '01849cc9-c6da-4184-92f8-34875dac1d42', '0', 1, 'NF-entitycode', '实体生成', NULL, 2, 'entitycode', '/SystemManage/CodeGenerator/EntityCode', NULL, 0, 0, 0, 1, 0, 1, '', '2020-07-23 15:36:23', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-07-23 15:36:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('e75e4efc-d461-4334-a764-56992fec38e6', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-edit', '修改岗位', NULL, 2, 'edit', '/SystemOrganize/Duty/Form', 0, 0, 0, 0, 2, 0, 1, '', NULL, NULL, '2020-06-16 08:13:55', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('ec452d72-4969-4880-b52f-316ffdfa19bd', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', '0', 1, 'NF-add', '新增', NULL, 1, 'add', '/SystemManage/Flowscheme/Form', 0, 0, 0, 0, 0, 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('f51da6f6-8511-49f3-982b-a30ed0946706', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', '0', 1, 'NF-delete', '删除机构', NULL, 2, 'delete', '/SystemOrganize/Organize/DeleteForm', 0, 0, 0, 0, 3, 0, 1, '', NULL, NULL, '2020-07-23 10:47:09', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('f93763ff-51a1-478d-9585-3c86084c54f3', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', 1, 'NF-details', '查看角色', NULL, 2, 'details', '/SystemOrganize/Role/Details', 0, 0, 0, 0, 4, 0, 1, '', NULL, NULL, '2020-06-16 08:13:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('fcb4d9f0-63f0-4bd0-9779-eed26da5c4b3', 'e9190a56-e173-4483-8a3e-f17b86e4766e', '0', 1, 'NF-add', '新增', NULL, 1, 'add', '/InfoManage/Message/Form', 0, 0, 0, 0, 0, 0, 1, NULL, '2020-07-29 16:44:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('FD3D073C-4F88-467A-AE3B-CDD060952CE6', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-modulebutton', '按钮管理', NULL, 2, 'modulebutton', '/SystemManage/ModuleButton/Index', 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, '2020-04-07 14:34:09', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('ffffe7f8-900c-413a-9970-bee7d6599cce', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', 1, 'NF-edit', '修改角色', NULL, 2, 'edit', '/SystemOrganize/Role/Form', 0, 0, 0, 0, 2, 0, 1, '', NULL, NULL, '2020-06-16 08:13:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_modulefields
-- ----------------------------
DROP TABLE IF EXISTS `sys_modulefields`;
CREATE TABLE `sys_modulefields`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_ModuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_IsPublic` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_modulefields_key1`(`F_ModuleId`, `F_EnCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_modulefields
-- ----------------------------
INSERT INTO `sys_modulefields` VALUES ('00a79cc3-a490-4772-909a-38567e3ea6da', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_ProjectName', '项目名称', 0, 1, '', '2020-06-12 14:33:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-12 16:13:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('035d9296-1e17-42b7-9d8f-c9cc3b1d8e3f', '7cb65e00-8af2-4cf2-b318-8ba28b3c154e', 'F_FileExtension', '文件扩展名', 0, 1, NULL, '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08d94532-98b0-4bb9-843f-6a42d29d5b04', '08d94532-98ac-4751-8cd4-c6c5ec4048e6', 'F_OrderCode', '订单编号', 0, 1, NULL, '2021-07-12 20:43:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08d94532-98b0-4bca-822e-9e44e86864e5', '08d94532-98ac-4751-8cd4-c6c5ec4048e6', 'F_OrderState', '订单状态(0待确认，待采购，1已完成)', 0, 1, NULL, '2021-07-12 20:43:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08d94532-98b0-4bd5-8ba3-fc7834814f3e', '08d94532-98ac-4751-8cd4-c6c5ec4048e6', 'F_NeedTime', '需求时间', 0, 1, NULL, '2021-07-12 20:43:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08d94532-98b0-4be2-8991-3b929d082f6c', '08d94532-98ac-4751-8cd4-c6c5ec4048e6', 'F_ActualTime', '实际时间', 0, 1, NULL, '2021-07-12 20:43:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08d94532-98b0-4beb-89d3-425505eb2d36', '08d94532-98ac-4751-8cd4-c6c5ec4048e6', 'F_EnabledMark', 'F_EnabledMark', 0, 1, NULL, '2021-07-12 20:43:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08d94532-98b0-4bf6-82f3-9f62b0b5cec6', '08d94532-98ac-4751-8cd4-c6c5ec4048e6', 'F_Description', 'F_Description', 0, 1, NULL, '2021-07-12 20:43:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08d94532-98b0-4c01-86ff-7b056e669066', '08d94532-98ac-4751-8cd4-c6c5ec4048e6', 'F_CreatorTime', 'F_CreatorTime', 0, 1, NULL, '2021-07-12 20:43:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08d94532-98b0-4c0c-81e2-b66009a2420f', '08d94532-98ac-4751-8cd4-c6c5ec4048e6', 'F_CreatorUserName', 'F_CreatorUserName', 0, 1, NULL, '2021-07-12 20:43:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa74b-eb2c-45c0-8fca-14d20aa11839', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', 'F_RuleName', '规则名称', 0, 1, NULL, '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa74b-eb2c-45cd-88fa-d18628637b4d', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', 'F_RuleJson', '规则内容', 0, 1, NULL, '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa74b-eb2c-45d6-8015-6d6aa8e4af15', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', 'F_Reset', '重设机制', 0, 1, NULL, '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa74b-eb2c-45de-8d9e-dd704382c544', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', 'F_TemplateName', '模板名称', 0, 1, '', '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2022-10-06 14:01:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa74b-eb2c-45e7-807f-4868b3841e50', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', 'F_PrintType', '打印方式', 0, 1, NULL, '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa74b-eb2c-45ef-87ef-ff950508caab', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', 'F_EnabledMark', '状态', 0, 1, NULL, '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa74b-eb2c-45f7-8b88-5c6644b10c49', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', 'F_Description', 'F_Description', 0, 1, NULL, '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa74b-eb2c-45ff-8f80-36e16ccf7d20', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', 'F_CreatorTime', 'F_CreatorTime', 0, 1, NULL, '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa74b-eb2c-4608-8b0c-38d830774de0', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', 'F_CreatorUserId', 'F_CreatorUserId', 0, 1, NULL, '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa74b-eb2c-4611-8c9c-d8c06a5ba0fe', '08daa74b-eb27-4112-8675-2f20f9ea5f8c', 'F_CreatorUserName', 'F_CreatorUserName', 0, 1, NULL, '2022-10-06 11:36:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa761-e8c2-457a-8a3a-b0f493f50238', '08daa761-e8bd-4385-8260-70452b199643', 'F_TemplateName', '模板名称', 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa761-e8c2-4588-8e53-8869fe05743d', '08daa761-e8bd-4385-8260-70452b199643', 'F_TemplateFile', '模板文件', 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa761-e8c2-4591-8969-e850aeed97f4', '08daa761-e8bd-4385-8260-70452b199643', 'F_TemplateDBProvider', '模板执行库', 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa761-e8c2-4599-8e1e-9253e585a63d', '08daa761-e8bd-4385-8260-70452b199643', 'F_TemplateSql', '模板执行sql', 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa761-e8c2-45a8-83d0-70dea211f165', '08daa761-e8bd-4385-8260-70452b199643', 'F_TemplateSqlParm', '模板执行参数', 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa761-e8c2-45b1-8801-767f6291f9f4', '08daa761-e8bd-4385-8260-70452b199643', 'F_PrintType', '打印方式', 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa761-e8c2-45ba-80ef-659402507dbe', '08daa761-e8bd-4385-8260-70452b199643', 'F_EnabledMark', '状态', 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa761-e8c2-45c2-8400-9fa89a641a13', '08daa761-e8bd-4385-8260-70452b199643', 'F_Description', 'F_Description', 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa761-e8c2-45cb-8078-b67bb629ed7d', '08daa761-e8bd-4385-8260-70452b199643', 'F_CreatorTime', 'F_CreatorTime', 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa761-e8c2-45d3-8cd5-1883780a9c9b', '08daa761-e8bd-4385-8260-70452b199643', 'F_CreatorUserId', 'F_CreatorUserId', 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa761-e8c2-45dc-8c40-450d9a90b426', '08daa761-e8bd-4385-8260-70452b199643', 'F_CreatorUserName', 'F_CreatorUserName', 0, 1, NULL, '2022-10-06 14:13:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa762-eb70-43bc-84b7-298916956a3f', '08daa762-eb69-45bf-8b79-a2bece3f91d7', 'F_Code', '条码', 0, 1, NULL, '2022-10-06 14:20:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa762-eb70-43ce-84d2-dd171ecc46bf', '08daa762-eb69-45bf-8b79-a2bece3f91d7', 'F_RuleId', '规则id', 0, 1, NULL, '2022-10-06 14:20:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa762-eb70-43d8-84e5-1375f17164cb', '08daa762-eb69-45bf-8b79-a2bece3f91d7', 'F_RuleName', '规则名称', 0, 1, NULL, '2022-10-06 14:20:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa762-eb70-43e1-8caa-692428dbdf47', '08daa762-eb69-45bf-8b79-a2bece3f91d7', 'F_PrintJson', '打印Json', 0, 1, NULL, '2022-10-06 14:20:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa762-eb70-43eb-8395-79cb1a24cb52', '08daa762-eb69-45bf-8b79-a2bece3f91d7', 'F_PrintCount', '打印次数', 0, 1, NULL, '2022-10-06 14:20:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa762-eb70-43f5-82ae-3be048c23b6f', '08daa762-eb69-45bf-8b79-a2bece3f91d7', 'F_EnabledMark', '状态', 0, 1, NULL, '2022-10-06 14:20:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa762-eb70-4400-8d08-5962b9662150', '08daa762-eb69-45bf-8b79-a2bece3f91d7', 'F_Description', 'F_Description', 0, 1, NULL, '2022-10-06 14:20:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa762-eb70-440b-8ddd-65b1f1a89189', '08daa762-eb69-45bf-8b79-a2bece3f91d7', 'F_CreatorTime', '创建时间', 0, 1, NULL, '2022-10-06 14:20:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa762-eb70-4416-8101-0f994fa4c0e4', '08daa762-eb69-45bf-8b79-a2bece3f91d7', 'F_CreatorUserId', 'F_CreatorUserId', 0, 1, NULL, '2022-10-06 14:20:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('08daa762-eb70-441f-8c4c-5fdf38c7534b', '08daa762-eb69-45bf-8b79-a2bece3f91d7', 'F_CreatorUserName', 'F_CreatorUserName', 0, 1, NULL, '2022-10-06 14:20:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('0917606f-f448-49d3-b78d-e08a17a1cc4f', '2c2ddbce-ee87-4134-9b32-54d0bd572910', 'F_CreatorTime', '创建时间', 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('0927895a-9d35-435c-b980-13f7102043c3', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_PrincipalMan', '联系人', 0, 1, NULL, '2020-06-12 14:33:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('0986da5b-16a3-4330-8449-0508699c93e3', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_SchemeName', '流程名称', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('0d216246-f372-48fb-8c2f-dda9924a4625', '2c2ddbce-ee87-4134-9b32-54d0bd572910', 'F_Content', '表单原html模板未经处理的', 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('1406d021-de90-4246-af02-6950716214c1', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_Description', '备注', 0, 1, NULL, '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('1641a15d-87cf-4658-8d39-a1197fb26c43', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_ActivityName', '当前节点名称', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('186b9cc1-f4d2-43ad-9369-3f34c1dd7b90', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_Code', '实例编号', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('18d606fa-4baf-49e7-987d-8dde8561385a', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_LogoCode', 'Logo编号', 0, 1, NULL, '2020-06-12 14:33:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('1ba8ebaf-b89c-4699-be3a-520b16efeeb4', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_FrmId', '表单ID', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('1cecc967-7ea1-46d0-b4fa-f90a15783d1c', '7e4e4a48-4d51-4159-a113-2a211186f13a', 'F_Title', '标题', 0, 1, '', '2020-05-22 16:41:18', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-23 09:12:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('1ffb5d50-2dc3-41f0-b863-93c45afd7709', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_LastModifyUserName', '修改用户', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('21a53e80-9887-4ca3-908f-a858c2def860', '7cb65e00-8af2-4cf2-b318-8ba28b3c154e', 'F_FilePath', '文件路径', 0, 1, NULL, '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('21d40431-d289-415f-bfaf-5a23bf4dac9c', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_AdminPassword', '系统密码', 0, 1, '', '2020-06-12 14:33:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-15 14:23:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('22289940-a299-4d46-b68a-204bfab51b01', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_EnabledMark', '有效', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('25612b64-9499-46fd-9a3d-779362a3cba2', '7cb65e00-8af2-4cf2-b318-8ba28b3c154e', 'F_CreatorUserName', '创建用户', 0, 1, NULL, '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('263acbf3-44b2-4be5-82ce-8a038d43a5c5', '7cb65e00-8af2-4cf2-b318-8ba28b3c154e', 'F_Description', '备注', 0, 1, NULL, '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('309c622d-2217-499f-aa83-2eccd72205a1', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_CreatorTime', '创建时间', 0, 1, '', '2020-06-12 14:33:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-12 14:35:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('33f55a8a-1daf-4adb-9931-1b6cace1c13a', '2c2ddbce-ee87-4134-9b32-54d0bd572910', 'F_EnabledMark', '是否启用', 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('344cf340-e664-446f-ba79-6d37e466f9d8', '7cb65e00-8af2-4cf2-b318-8ba28b3c154e', 'F_FileSize', '文件大小', 0, 1, NULL, '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('36df66b8-bcf1-43bf-92d5-ea915faa8b94', '2c2ddbce-ee87-4134-9b32-54d0bd572910', 'F_Description', '内容', 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('3961f233-46ef-4fd2-815e-733bb288946c', '2c2ddbce-ee87-4134-9b32-54d0bd572910', 'F_ContentData', '表单中的控件属性描述', 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('3b304c8d-a54d-47b7-ad21-e6d01c283904', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', 'F_CreatorUserName', '创建人', 0, 1, '', '2020-06-03 09:57:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('3fee41bd-64a6-4280-ac93-0ce835fecf41', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_CreatorTime', '创建时间', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('45f62f54-8ad4-45f2-9f37-a7f0d15ee815', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_Description', '备注', 0, 1, NULL, '2020-06-12 14:33:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('47b8d043-aa5e-4a09-98b1-aaf24d6589dd', '7cb65e00-8af2-4cf2-b318-8ba28b3c154e', 'F_FileBy', '文件所属', 0, 1, NULL, '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('49d6a83e-646f-48af-b71e-8f8d60f73396', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_DbString', '连接字符串', 0, 1, '', '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-12 13:57:26', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('4b2b3c5b-22f0-4a64-9857-c794f1d8a181', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_LogoCode', 'Logo编号', 0, 1, NULL, '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('4e90e4dc-fc8d-456e-aa7d-2420e31212c2', 'e9190a56-e173-4483-8a3e-f17b86e4766e', 'F_ToUserId', '收件人主键', 0, 1, NULL, '2020-07-29 16:44:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('5a218598-40b4-4046-a61e-e7b4f8dd0d85', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_SchemeContent', '流程内容', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('5b2cb54c-5fe8-4f8f-b281-d6de27dcfc18', '7cb65e00-8af2-4cf2-b318-8ba28b3c154e', 'F_FileType', '文件类型', 0, 1, NULL, '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('642e8c4b-7762-42b6-9fbd-8495c54606a2', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_Logo', 'Logo图标', 0, 1, NULL, '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('6d1a0016-9634-4425-b840-af55f4fb383f', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_DBProvider', '数据库类型', 0, 1, '', '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-12 13:57:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('6e177e5f-4ce8-4f7b-b790-b320bb2659db', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_EnabledMark', '有效', 0, 1, NULL, '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('6ec6ed61-884c-4519-904c-2f3cb717aef7', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_PrincipalMan', '联系人', 0, 1, NULL, '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('702f2c2e-b66e-44e8-a846-fd96c38027e3', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_CustomName', '实例名称', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('7496086e-32ec-4875-8013-73ce1c2784a2', 'e9190a56-e173-4483-8a3e-f17b86e4766e', 'F_CreatorUserId', '创建用户主键', 0, 1, NULL, '2020-07-29 16:44:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('756ce041-ad4f-4895-b184-d9c9c4df9a04', '38CA5A66-C993-4410-AF95-50489B22939C', 'F_OrganizeId', '部门Id', 0, 1, '', '2020-06-08 16:25:17', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('76cbcdd9-ffeb-41a1-8f9c-51dea4a02fa2', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_EndTime', '到期时间', 0, 1, NULL, '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('76e64bb6-cb36-45c4-852f-6a044d5b2c3d', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_SchemeType', '流程分类', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('770af4b6-29ef-47b1-aea8-6092562d9800', '2c2ddbce-ee87-4134-9b32-54d0bd572910', 'F_ContentParse', '表单控件位置模板', 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('78a9a6c0-e854-4225-b75e-5e7cfaf46c67', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_ProjectName', '项目名称', 0, 1, '', '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-12 13:56:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('7dfa39c1-a8d3-4460-922b-5a770d6e307f', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_SchemeCode', '流程编号', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('8024dfbc-8236-4a86-8869-d09e59c3dfe3', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', 'F_CreatorTime', '创建时间', 0, 1, '', '2020-06-03 09:57:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-22 17:06:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('80899139-2938-4e0a-9f80-16bf70d00658', '7cb65e00-8af2-4cf2-b318-8ba28b3c154e', 'F_CreatorTime', '创建时间', 0, 1, NULL, '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('81d404d1-5639-4d5a-8ac1-d47b0414c321', 'e9190a56-e173-4483-8a3e-f17b86e4766e', 'F_MessageType', '信息类型（通知、私信、处理）', 0, 1, NULL, '2020-07-29 16:44:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('81d74921-21be-4360-bae3-653d0fade184', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_CreatorUserName', '创建用户', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('823b9649-030c-4dbb-b790-b184565f4746', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_MakerList', '执行人', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('82f21e4c-0d14-4559-92d4-657b34640a47', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_SortCode', '排序码', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('83584b47-0a29-446d-8ff2-6c6d3eccca3d', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_FrmId', '表单ID', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('8376537c-b23b-4b51-a6f0-75fc3467c574', '2c2ddbce-ee87-4134-9b32-54d0bd572910', 'F_Fields', '字段个数', 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('84b3ac62-5d85-4263-946d-e12be86cbfa1', '7cb65e00-8af2-4cf2-b318-8ba28b3c154e', 'F_FileName', '文件名称', 0, 1, NULL, '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('889fc780-cd2f-45c9-b07c-030e6d3ddc29', 'e9190a56-e173-4483-8a3e-f17b86e4766e', 'F_CreatorUserName', '创建用户', 0, 1, NULL, '2020-07-29 16:44:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('8ba0c532-4b85-4a02-aec8-499d93b97dcb', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_CreatorTime', '创建时间', 0, 1, NULL, '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('8cf11fd0-8ee5-408d-9d5d-15c4342befda', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_OrganizeId', '所属部门', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('8f5ce993-986c-4825-b3bc-f34f54d4f37f', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_FlowLevel', '等级', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('90386357-54f8-4aeb-8b24-f45ee8c08ba4', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_OrganizeId', '所属部门', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('91b3ca56-61e8-444d-b506-7dec452f1daa', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_SchemeContent', '流程模板内容', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('936023df-503f-4322-b243-47158c9617a6', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_EndTime', '到期时间', 0, 1, NULL, '2020-06-16 09:38:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('9507a93a-a258-4ba1-93db-d51798268c5e', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_CreatorUserId', '创建人Id', 0, 1, '', '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-12 13:57:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('98e7930d-37f0-4499-874d-b89207657eaa', '7cb65e00-8af2-4cf2-b318-8ba28b3c154e', 'F_OrganizeId', '所属部门', 0, 1, NULL, '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('99ecc5e7-2b02-49d8-b091-ee1aec8130ee', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_Description', '备注', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('a24c6ed3-8c91-4ade-a5c1-8c5eb9719368', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_AdminAccount', '系统账户', 0, 1, '', '2020-06-12 14:33:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-15 14:23:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('a619715a-46b9-4b3e-81d2-a450038dceb6', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_Description', '实例备注', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('a6320b89-1c15-4afa-9c30-2e1f508212e2', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_HostUrl', '域名', 0, 1, '', '2020-06-15 17:01:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-15 17:01:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('a983cc2e-d045-4c35-a53e-2f0775edf639', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_CreatorUserName', '创建用户', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('aa75975a-bf00-429b-8c58-825b43d29eb4', '2c2ddbce-ee87-4134-9b32-54d0bd572910', 'F_SortCode', '排序码', 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('b06b2f6f-c392-473f-bea7-96bcf04a025d', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_IsFinish', '是否完成', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('b2e8a59b-99ce-432b-b5ed-e7c8859dcfad', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_SchemeType', '流程类型', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('b3e6bab9-7e4c-4f87-83ff-d0f1bf6f9df8', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_FrmType', '表单类型', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('b56a98de-4f9d-4753-ae06-e3bea339dc9f', '2c2ddbce-ee87-4134-9b32-54d0bd572910', 'F_WebId', '系统页面标识，当表单类型为用Web自定义的表单时，需要标识加载哪个页面', 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('b67b5eb6-ecae-4156-8ef8-9e80b7a1345a', '7e4e4a48-4d51-4159-a113-2a211186f13a', 'F_CreatorUserName', '创建人', 0, 1, '', '2020-05-22 16:53:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('b68b00b4-6f56-4832-8774-eab1d02e2fc1', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_AdminPassword', '系统密码', 0, 1, NULL, '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('b765ca2a-4337-4e24-b330-9c923ca793f0', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_CreatorUserId', '创建用户主键', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('b8e360f7-817f-4dc7-82c4-11fd51fc77de', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_FrmContentParse', '表单控件位置模板', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('bd8b0f82-43fd-44ed-9814-de1876fced8c', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_SchemeCanUser', '流程模板使用者', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('be804654-d6d7-44d1-8950-6841a2626720', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_CreatorUserId', '创建人Id', 0, 1, '', '2020-06-12 14:33:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-12 13:57:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('bf5a2919-281c-44e2-a83b-74576e08743e', '7e4e4a48-4d51-4159-a113-2a211186f13a', 'F_EnabledMark', '状态', 0, 1, '', '2020-05-22 16:53:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-08 16:49:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('bfbe0195-3fae-42d2-9d46-6bf5400d64ea', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_DbString', '连接字符串', 0, 1, '', '2020-06-12 14:33:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-12 13:57:26', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('c077b982-c595-43e8-9095-711bee01e830', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_AuthorizeType', '模板权限类型：0完全公开,1指定部门/人员', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('c0a08cd8-43bc-4d57-844a-2a39c4a408e6', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_CompanyName', '公司名称', 0, 1, NULL, '2020-06-12 14:33:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('c4a2499d-780c-42db-a2a4-a3c1084533ca', 'e9190a56-e173-4483-8a3e-f17b86e4766e', 'F_MessageInfo', '内容', 0, 1, NULL, '2020-07-29 16:44:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('c4c5840c-90a5-4a4e-aea4-9f284ece3921', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_AdminAccount', '系统账户', 0, 1, '', '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-12 13:56:32', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('c87b90e3-6949-47f3-b8c5-c4f69af92200', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_CompanyName', '公司名称', 0, 1, NULL, '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('cba04ab7-b1b2-406e-a889-53484469cfe7', '7e4e4a48-4d51-4159-a113-2a211186f13a', 'F_CreatorUserId', '创建人Id', 0, 0, '', '2020-06-03 16:42:33', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-23 09:05:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('cddfb494-6d34-408d-8364-1c0bf270d4cd', '2c2ddbce-ee87-4134-9b32-54d0bd572910', 'F_FrmType', '表单类型，0：默认动态表单；1：Web自定义表单', 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('d4b49a55-491e-494c-b2d2-082a414bcbb9', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_Logo', 'Logo图标', 0, 1, NULL, '2020-06-12 14:33:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('d52c6878-9283-45d7-82f9-b465fa33a89b', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_DBProvider', '数据库类型', 0, 1, '', '2020-06-12 14:33:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-06-12 13:57:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('d53cf640-037a-4126-9b75-daa77fa712b3', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_FrmContentData', '表单中的控件属性描述', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('d782d010-89af-4c1d-8e96-35833c38c3d8', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_SchemeVersion', '流程内容版本', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('d88a3d04-4a0d-4bfe-b34f-4130eb0accc9', '2c2ddbce-ee87-4134-9b32-54d0bd572910', 'F_Name', '表单名称', 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('d9e2a9fe-8a87-4266-aaae-f8e47b63187b', 'c87cd44f-d064-4d3c-a43e-de01a7a8785e', 'F_FrmData', '表单数据', 0, 1, NULL, '2020-07-14 09:21:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('dc4cd5fd-8933-44f8-9500-fc36285f50b2', '7e4e4a48-4d51-4159-a113-2a211186f13a', 'F_CreatorTime', '创建时间', 0, 1, '', '2020-05-22 16:53:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-22 17:06:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('ddd93ca7-d821-4abd-a342-9be1782dabe9', '7e4e4a48-4d51-4159-a113-2a211186f13a', 'F_Content', '内容', 0, 1, '', '2020-05-22 16:42:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-05-22 16:53:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, 0);
INSERT INTO `sys_modulefields` VALUES ('e175859e-9284-47fd-a168-d1a12ddd125d', 'a303cbe1-60eb-437b-9a69-77ff8b48f173', 'F_MobilePhone', '联系方式', 0, 1, NULL, '2020-06-12 13:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('e7a49b29-0c59-4665-9e73-5f495fced4d4', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_CreatorTime', '创建时间', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('eb6b22e7-a804-4f6d-b969-d5c6db5f3043', '2c2ddbce-ee87-4134-9b32-54d0bd572910', 'F_CreatorUserId', '创建人', 0, 1, NULL, '2020-07-08 14:34:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('ec413c38-4472-4e36-b406-84f883d48609', 'e9190a56-e173-4483-8a3e-f17b86e4766e', 'F_CreatorTime', '创建时间', 0, 1, NULL, '2020-07-29 16:44:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('ed938b87-a291-40cd-8a23-204e15f81cb3', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_EnabledMark', '有效', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('edeabb1a-de3c-48d0-b677-5d35807632dc', '7cb65e00-8af2-4cf2-b318-8ba28b3c154e', 'F_EnabledMark', '有效', 0, 1, NULL, '2020-07-22 12:05:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('edf1d2cb-07dd-41cb-a475-41b982c43dff', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_MobilePhone', '联系方式', 0, 1, NULL, '2020-06-12 14:33:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('f0e838e8-c07c-4f24-9dd3-0c1727074441', '484269cb-9aea-4af1-b7f6-f99e7e396ad1', 'F_EnabledMark', '有效', 0, 1, NULL, '2020-06-16 09:38:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('f2c75a6b-ad06-49b2-93cf-7a7312c97ff5', 'e9190a56-e173-4483-8a3e-f17b86e4766e', 'F_EnabledMark', '有效', 0, 1, NULL, '2020-07-29 16:44:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('f8a85900-44e6-4786-ad64-e219eb8cffbe', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_FrmType', '表单类型', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('fc7f572d-6dc2-4592-8d67-4b3155b49dd9', 'e9190a56-e173-4483-8a3e-f17b86e4766e', 'F_ToUserName', '收件人', 0, 1, NULL, '2020-07-29 16:44:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_modulefields` VALUES ('ff60fd1e-d0df-4847-bc5a-1bf4c3310c9c', 'f82fd629-5f3a-45d6-8681-5ec47e66a807', 'F_CreatorUserId', '创建用户主键', 0, 1, NULL, '2020-07-10 08:50:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` timestamp NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_Notice`(`F_Title`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8baa1', '1.0.0版本说明', '2020/7/23 \n功能变更：\n1、增加表单设计；\n2、增加流程设计；\n3、增加流程中心；\n4、增加文件管理。\n4、去除Respository实现类和接口\n5、代码生成增加实体生成功能\nbug修复：\n1、tab iframe刷新tab iframe问题；\n2、流程中心处理界面显示问题。\n3、修复公告换行问题', 0, 1, NULL, '2020-07-23 11:44:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-08-12 11:11:28', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8baa2', '1.0.1版本更新', '2020/8/3\n功能变更：\n1、增加信息中心；\n2、完善通知功能（除私信）；\nbug修复：\n1、当前用户信息对象为空问题；\n2、流程中心部分问题；\n3、代码生成实体生成显示问题；', 0, 1, NULL, '2020-08-03 17:22:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-08-12 11:11:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8baa3', '1.0.2版本更新', '2020/8/10\n功能变更：\n1、更新流程2张表和信息历史表名称长度\n2、修改清空缓存功能，只对管理员开放，成功跳转登录页\n3、增加oracle数据库脚本\n4、信息和流程删除设置为假删\n5、更新tableselect插件\n6、修改系统设置提交关闭问题\n7、选择弹框增加清除方法\n8、选择弹框增加双击事件\n9、区域查询把下级数据也加进去\nbug修复：\n1、通知中心加载问题修复；\n2、修复oracle数据库查询服务bug\n3、修复流程新增缺少EnabledMark字段问题\n4、修复用户查看明细显示问题\n5、模板修复树生成问题\n6、修复选择组织、角色、用户弹窗 鉴权异常\n7、修复用户中角色和部门显示问题\n8、二次确认框解决确认没有关闭的问题\n9、修复检测图片 gif异常问题\n', 0, 1, NULL, '2020-08-12 11:11:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8baa4', '1.0.3版本更新', '2020/8/12\n功能变更：\n1、upload报错信息改为动态信息；\n2、upload上传地址修改；\n3、导入文件路径修改，增加日期\n4、修改弹窗，改为top.layer.open，修改相应界面\n6、去掉界面中的isMax参数\n7、弹窗大小取消判断\nbug修复：\n1、修复多列模板样式问题；', 0, 1, NULL, '2020-08-12 11:15:16', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8baa5', '1.0.4版本更新', '2020/8/12\n功能变更：\n1、upload增加excel类别；\n2、岗位管理增加导入导出功能；\n3、菜单全移入常规管理以便二次开发使用新模块\n4、数据库更新、增加导入导出按钮，菜单更新', 0, 1, NULL, '2020-08-12 11:24:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8baa6', '1.0.5版本更新', '2020/8/17\n功能变更：\n1、增加字典管理分类查询功能\n2、增加字段管理分类的滚动条\n3、模板生成表单，input增加默认显示\n4、自定义测试表单，添加创建人名称\nBUG修复：\n1、修复首次启动更新信息的问题\n2、修复表单设计中date 点击不出现的bug\n3、权限bug修复\n4、修复弹窗超出界面bug\n5、修改addform返回有效的数据\n6、submitPost方法取消关闭loading修复\n7、模板修复是否树的引用\n8、修改modalOpen方法 增加返回值index\n9、修改modalOpen方法 高度宽度不对问题\n10、修复获取用户信息bug', 0, 1, NULL, '2020-08-20 16:48:40', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2021-05-28 08:32:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bab0', '1.0.6版本更新', '2020/8/27\n功能变更：\n1、删除多余字体文件\n2、修复选择弹窗机构显示异常问题，\n3、增加pdf导出示例，在岗位管理里\n4、验证码颜色背景改成白色\n5、表格权限字段，不存在就跳过\n6、common中table和treetable增加字段权限开关，默认开启\nBUG修复：\n1、修改modalOpen方法 高度宽度不对问题\n2、修复登录日志异常问题，\n3、pdf导出样式修改', 0, 1, NULL, '2020-08-20 16:50:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-08-27 14:48:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bab1', '1.1.0版本更新', '2020/8/27\n功能变更：\n1、去除引用tablePlug插件\n2、下拉框遮挡引用改为optimizeSelectOption\n3、删除多余sqlkey、删除Id列\n4、修改tree折叠列\n5、引入soul-table插件，table增加自动列宽、右键菜单、拖动列、tips显示、导出数据功能\n6、新增formatDate方法\n7、table和treetable去掉hideAlways参数', 0, 1, NULL, '2020-08-27 14:51:55', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-09-02 09:11:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bab2', '1.1.1版本更新', '2020/8/31\n功能变更：\n1、新增soul-table后台筛选，岗位管理实现\n2、搜索框样式调整 删除margin\nBUG修复：\n1、修复ClientsData null异常问题\n2、数据权限显示问题修复\n3、数据权限null判断修复', 0, 1, NULL, '2020-09-02 09:04:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bab3', '1.1.2版本更新', '2020/9/1\n功能变更：\n1、loading优化\n2、去除内容管理 url验证\n3、模板调整，分页参数使用soul的\n4、筛选的实现\n5、有效标识改成文字显示', 0, 1, NULL, '2020-09-02 09:08:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-09-09 11:35:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bab4', '1.1.3版本更新', '2020/9/2\nBUG修复：\n1、访问控制显示问题修复', 0, 1, NULL, '2020-09-09 11:47:49', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-09-09 11:50:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bab5', '1.1.4版本更新', '2020/9/4\n功能变更：\n1、下拉选择样式调整，打开窗体大小调整\n2、首页用户增加下拉箭头\n3、过滤插件微调，防止静态数据去请求后端\n4、前端格式化显示的数据筛选功能调整，后端反格式化数据，只支持\"等于\"\nBug修复：\n1、layui table合计行小数问题修复', 0, 1, NULL, '2020-09-09 11:50:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bab6', '1.1.5版本更新', '2020/9/9\n功能变更：\n1、日志方法独立出来，简化控制层代码，保留原日志方法，相应模板修改\nBug修复：\n1、修复代码生成新增字段bug', 0, 1, NULL, '2020-09-09 11:52:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bab7', '1.1.6版本更新', '2020/9/29\n功能变更：\n1、chat.js增加重连log提示\n2、soultable和table从common中独立出来\n3、控制器删除多余引用\n4、前端删除多余模块\n\nBug修复：\n1、修复缓存浅copy问题\n2、修复日志，没有模块异常问题（方式className直接传文字即可）\n3、修改JsonHelper中的方法，去掉Serenity引用\n4、修复ToJson时间问题', 0, 1, NULL, '2020-09-29 14:23:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-09-29 14:42:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bab8', '1.1.7版本更新', '2020/10/19\n功能变更：\n1、错误页关闭直接返回登录页\n2、quarz优化\n3、ajax请求修改默认为异步\n\nBug修复：\n1、修复系统日志没有自适应问题\n2、前端修复时间null 问题\n3、修复拦截器未拦截的问题\n4、修复多线程中IDbContext复用问题\n', 0, 1, NULL, '2020-10-19 14:59:03', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bab9', '1.1.8版本更新', '2020/11/02\n功能变更：\n1、增加数据库超时\n2、操作日志增加配置（redis/sql）\n3、操作日志移除数据权限\n4、默认配置设置为不用redis\n\nBug修复：\n1、修复前端浏览器时间解析异常问题，时间格式统一为“yyyy/MM/dd HH:mm:ss”\n2、 修复定时任务反射异常问题，反射取指定前后缀的dll', 0, 1, NULL, '2020-11-02 16:49:17', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bac0', '1.1.9版本更新', '2020/11/10\n功能变更：\n1、流程中角色增加当前部门选项\n2、优化流程和信息提醒', 0, 1, NULL, '2020-11-10 12:34:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-11-12 12:36:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bac1', '1.2.0版本更新', '2020/11/12\nBUG修复：\n1、流程驳回bug修复\n2、流程驳回信息提示修复\n3、流程连线条件bug修复\n4、流程修改前端增加限制条件\n5、待处理流程列表显示BUG修复\n6、修复IE连接signalr异常问题', 0, 1, NULL, '2020-11-12 12:36:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-11-12 12:36:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bac2', '1.3.0版本更新', '2020/11/23\n功能变更：\n1、插件更新\n2、流程中compare全转小写\n3、layui-form-label手机端样式修改\n4、代码生成主页显示调整\n5、增加搜索工具按钮\n6、优化按钮显示，宽度小于500隐藏打印按钮\n7、常用参数修改，配置文件增加管理员账号信息等参数\n8、程序启动修改管理员账户\n9、框架新增调用chloe的rollback方法\n10、首页改动\n\nBUG修复：\n1、修复流程发起人无法修改的bug\n2、修复流程处理的IE异常\n3、修复流程中的图片显示异常问题\n4、修复流程执行过程中，线条丢失参数M的问题\n5、修复流程图第一次打开自适应问题\n6、修复异常日志添加问题，事务没有回滚，无法添加的问题\n7、修复直接访问首页websocket异常的问题\n8、修复用户资料，没有更新的问题', 0, 1, NULL, '2020-11-23 10:09:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-11-23 10:10:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bac3', '1.4.0版本更新', '2020/11/25\n功能变更：\n1、增加全局模型认证\n2、信息界面显示微调\n3、Domain增加模型验证、模板调整\n4、更新数据库记录的数据连接\n5、主题保存到localstorage中\n6、设置全局ValidateAntiForgeryToken\n7、js修改参数提交方式，删除原特性\n8、导入实例去掉搜索图标\n9、代码优化\n\nBUG修复：\n1、修复导入案例中删除异常问题\n2、修复上传文件没有保存问题\n3、修复获取session异常问题', 0, 1, NULL, '2020-11-25 09:20:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bac4', '1.5.0版本更新', '2020/11/25\n功能变更：\n框架升级从.netcore3.1升级到.net5', 0, 1, NULL, '2020-11-25 10:21:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-11-25 10:21:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bac5', '1.6.0版本更新', '2020/12/03\n功能变更：\n1、新增定时器日志\n\nBUG修复：\n1、修复流程回调第三方失效的BUG\n2、修复代码生成自增Id的异常\n3、修复缓存查询int问题\n4、修复字典缓存异常问题\n5、修复定时器数据连接关闭异常\n6、修复用户管理修改密码缓存异常', 0, 1, NULL, '2020-12-03 21:00:37', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bac6', '1.7.0版本更新', '2020/12/15\n功能变更：\n1、webapi允许body重用\n2、增加sql打印功能，开发模式开启\n3、类名获取，修改方式，代码生成修改\n4、全局去掉className\n5、优化查询 count问题，在order之前处理count\n6、优化前端加载初始化信息，不再使用top.clients存放基础信息\n7、去除UE编辑器，使用wang编辑器\n8、内容管理多选启用人性化设置，修改代码生成器\n9、为了多选人性化，全局Index按钮去除layui-hide样式，\n10、上传接口改成多文件，接口文件地址修改\n11、数据库文件地址修改，logo统一加前缀/icon/,其他统一加前缀/file/\n12、内容管理图片点击预览修改\n13、优化代码生成界面的排序，增加创建时间\n14、更新流程插件，增加右键打开方法，修改默认名称中文\n15、增加流程插件区域修改方法\n\nBUG修复：\n1、修复岗位soultable演示异常\n2、修复岗位导入excel异常\n3、修复快捷入口 清空时对象为空异常', 0, 1, NULL, '2020-12-15 11:14:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-12-15 11:14:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bac7', '1.8.0版本更新', '2020/12/15\n功能变更：\n1、审核流程样式优化\n2、流程、表单改成左右表结构，左边部门，右边流程、表单\n3、字典管理增加条数显示\n4、流程修改，只能获取当前部门的可用流程\n5、代码生成增加可选缓存，默认不带缓存\n6、规范返回结果，AjaxResult修改为AlwaysResult，AjaxResultDTree修改为DTreeResult，AjaxResult文件修改重命名全局即可\n7、更新oracle查询数据库表\n8、更新登录缓存滑动过期，默认1小时\n9、更新全局多选单选界面以及soultable，common和commonTable新增行选中按钮控制方法\n10、修复按钮显示隐藏自适应问题\n11、更新api启动，网站启动，优化api\n12、增加卡片表格示例\n\nBUG修复：\n1、修复下载文件异常\n2、修复表单设计器属性没有更新的问题\n3、修复流程寻找下一节点 当前部门不是申请人的bug', 0, 1, NULL, '2020-12-21 12:14:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bac8', '1.9.0版本更新', '2020/12/30\n功能变更：\n1、api更新模型验证和打印sql\n2、微调卡片表格插件\n3、界面主页地址存放到appsetting中\n4、修改项目中的admin，使用配置文件中的账号\n5、主页布局修改，增加按钮tohome\n6、字段权限方法修复，集成到数据权限中，使用select lambda方式\n7、查询条件全放到数据权限之前，模板修改\n8、登录对cookie密码加密\n9、优化数据权限界面显示\n10、流程设计线条增加条件，增加in not in\n\nBUG修复：\n1、修复批量上传过快，文件名称重复的bug\n2、修复公共属性没有显示的bug', 0, 1, NULL, '2020-12-30 16:32:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-12-30 16:33:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bac9', '2.0.0版本更新', '2020/01/05\n功能变更：\n1、增加防重复锁特性，用户本身默认5秒\n2、优化.Result改成同步方式执行\n3、api增加防重复验证，用户本身默认5秒\n4、优化soultable过滤\n\nBUG修复：\n1、修复用户管理按钮bug\n2、修复上传安全问题，指定文件格式\n3、权限问题修复\n4、api修复刷新token问题\n5、datetime2生成问题修复\n6、修复oracle number参数生成问题\n7、修复快捷菜单显示非菜单模块的Bug', 0, 1, NULL, '2021-01-05 22:10:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bad0', '2.1.0版本更新', '2020/01/10\n功能变更：\n1、前端新增单个按钮权限控制方法\n2、按钮界面增加编号显示\n3、修复token文字\n4、修改流程图配置，增加自定义显示功能\n5、替换前端流程样式', 0, 1, NULL, '2021-01-10 12:43:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2021-01-10 12:44:02', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bad1', '2.2.0版本更新', '2020/01/29\n功能变更：\n1、更新日志传入key 类型\n2、岗位导入前端显示增加soultable\n3、更新信息服务 hub默认不传\n4、给系统设置加上管理员验证\n5、前端增加参数null删除表单元素的方法\n6、消息未读查询优化\n7、增加自适应大屏\nBUG修复：\n1、岗位导入修复文件名重复异常\n2、修复定时任务没有后台启动的BUG\n3、修复ip控制多选bug\n4、修复数据库连接保留问题\n5、修复字段权限对象为空的bug', 0, 1, NULL, '2021-01-29 10:24:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2021-01-29 10:24:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bad2', '2.3.0版本更新', '2020/02/10\n功能变更：\n1、更新信息即时通知，改成http调用，方便api调用，需要修改配置文件配合\n2、更新ip获取地址方法，增加配置是否本地局域网\n3、删除多余前端文件\n4、更新echarts文件，删除主题\n5、增加权限验证方法，可根据参数进行验证，菜单和按钮增加字段Authorize\n6、新增api权限验证\n\nBUG修复：\n1、table修复点击按钮触发行点击事件的bug\n2、修复获取ip的bug', 0, 1, NULL, '2021-02-10 13:50:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bad3', '2.4.0版本更新', '2020/02/26\n功能变更：\n1、更新树形表格插件，增加复选框联动设置\n2、重构代码生成\n3、表单设计器优化，表单设计增加表头和上传url设置\n4、优化实时通讯，支持其他客户端登录者连接\n5、表单设计增加表头和上传url设置\n6、前端优化重复提交方式，统一放到submitForm中\n\nBUG修复：\n1、修复api 登录参数异常', 0, 1, NULL, '2021-02-26 10:02:33', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2021-02-26 10:17:33', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bad4', '2.5.0版本更新', '2020/03/10\n功能变更：\n1、启动增加清理缓存，快捷菜单优化\n2、表单设计器赋值优化，实体模板删除多余\n3、定时任务增加cron表达式\n\nBUG修复：\n1、修复树形单选不触发行点击事件bug', 0, 1, NULL, '2021-03-10 16:01:40', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2021-03-10 16:01:49', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bad5', '2.6.0版本更新', '2020/03/23\n功能变更：\n1、更新前端插件，如layui、soultable\n2、增加雪花id方法\n3、更新layui库，改成layui，方便以后升级\n4、配置增加后台定时任务开关\n5、优化权限判断，优先使用缓存数据\n6、更正配置跨域参数名称\n7、代码生成新增删除字段和创建字段，优化代码生成\n8、代码生成列表增加上下移动\n9、删除cardtable中的 缓存验证\n10、新增树形表格插件，增加soultable支持，更新代码生成\n\nBUG修复：\n1、修复菜单按钮 关键字查询无效BUG\n2、修复表单number验证问题\n3、修复省市区联动初始化赋值示例\n4、修复消息提示全部清空无效的BUG\n5、修复权限验证登录验证 读取缓存的BUG\n6、修复ie11访问异常问题\n7、修复用户查询报错问题，暂时去掉岗位部门的过滤\n8、修复获取lanip方法iv6异常的BUG\n9、修复代码生成添加字段失败的BUG\n10、解决表单设计器日期的BUG\n11、修复一些界面操作列还存在按钮的BUG', 0, 1, NULL, '2021-03-23 16:26:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2021-03-23 16:26:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bad6', '2.7.0版本更新', '2021/4/15\n功能变更：\n1、更新表格树形；\n2、更新卡片表格组件;\n3、更新上传示例，增加loading；\n4、前端新增单选绑定；\n5、优化前端多选绑定；\n\nbug修复：\n1、修复卡片表格bug；\n2、修复上传后在筛选状态删除数据的bug；\n3、修复缓存延时bug问题；\n4、修复日志菜单的异常；\n5、修复树形表格刷新点击事件重复的问题；\n6、修复过滤 float等类型异常；\n7、修复代码生成异常；', 0, 1, NULL, '2021-04-15 21:59:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bad7', '2.8.0版本更新', '2021/4/30\n功能变更：\n1、更新卡片组件；\n2、代码生成 mssql增加视图；\n3、更新select 默认值问题；\n4、修改菜单，允许无路由菜单添加按钮；\n5、流程申请增加指定角色或者指定用户；\n6、流程申请界面优化\n7、流程增加显示当前审批人；\n\nbug修复：\n1、修复定时任务不显示删除按钮的bug；\n2、修复代码生成模板bug；\n3、修复流程修改后没有申请人和所属部门bug；\n4、修复soultable 排序引起的分页插件配置异常；\n5、修复微端 表单显示问题；\n6、修复sql 传输级错误问题；\n7、修复startup使用数据库连接，没有包using问题；\n8、解决resize()，表格最底行点击异常问题；\n9、修复用户组织异常', 0, 1, NULL, '2021-04-30 14:08:23', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fc76fe-f79d-a2ce-2b2c-54bb04e8bad8', '2.9.0版本更新', '2021/5/13\n功能变更：\n1、表单设计器样式调整；\n2、修改dbhelper文件；\n3、配置数据库类型简化；\n4、ORM改成SqlSugar;\n5、去除所有service缓存；\n6、id默认使用连续集合id；\n7、修改部分文件名；\n\nbug修复：\n1、修复soultable类型bug;\n2、修复ChloeIQuery类型bug；\n3、修复流程设计自适应问题；', 0, 1, NULL, '2021-05-13 16:22:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('39fcc2c9-894f-48c7-5e87-bb2f4505cbe1', '2.10.0版本更新', '2021/5/28\n功能变更：\n1、增加单库事务和多库事务区分；\n2、增加多库及多租户实现；(多租户只缺少实体CodeFirst)\n3、定时任务增加远程调用功能；\n4、定时任务增加执行功能；\n5、定时任务增加租户号；\n6、更新layui2.6.7；\n7、去除前端格式化时间；\n\nbug修复：\n1、修复切换orm的各种问题；\n2、修复webapi 唯一登录问题；\n3、修复筛选bool类型和时间类型问题；', 0, 1, NULL, '2021-05-28 09:35:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('40d92cb5-f58f-4673-8f37-f7419ff3f79a', '2.11.0版本更新', '2021/6/11\n功能变更：\n1、通知样式调整；\n2、实体类修改，多租户codefirst完善；\n3、更新自增Guid；\n4、更新soultable；\n5、signalr增加登录计数；\n6、登录账号封禁，改成IP禁用\nip禁用表增加到期时间字段；\n\nbug修复：\n1、修复定时任务立即执行事务问题；\n2、修复定时任务界面显示；\n3、修复treetable滚动条出现时，表头宽度不对的问题；', 0, 1, NULL, '2021-06-11 16:50:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('40d93a04-3e4e-4548-8597-e49c235af6f7', '2.12.0版本更新', '2021/6/28\n功能变更：\n1、IP控制移到服务切换数据库之后；\n2、定时任务调用服务切换数据库连接，远程调用请求头增加租户号参数；\n3、项目中的watercloud前缀修改成可配置；\n4、增加配置是否重置主系统管理员账户；\n5、增加菜单定位，默认记录最后一次菜单位置，正常退出不记录，基于mini的hash功能；\n6、重新登录增加非后台界面跳转；\n7、表单设计器美化；\n8、为了记录非菜单打开的tab，minitab的sessionStorage改成cookie；\n\nbug修复：\n1、修复表格倒序BUG；\n2、修复字段权限模块为null的异常问题\n3、修复select 默认选中的问题；\n4、修复密码长度设置，导致验证提示失效问题；\n5、修复定时任务切换数据库的BUG;\n', 0, 1, NULL, '2021-06-28 15:13:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('41d945ba-19d4-40d8-88b0-ada458a8cda5', '2.13.0版本更新', '2021/7/13\n功能变更：\n1、优化加载，layui模块放到登陆页加载；\n2、修改更新租户，禁止修改数据库连接有关参数；\n3、规范化；\n4、新增主从表案例，含数据库文件；\n\nbug修复：\n1、修复定时任务切换数据库的BUG；\n2、修复soultable过滤导致的分页插件问题；\n3、修复日志keyValue长度过长问题；\n4、修复内容管理预览图片问题；', 0, 1, NULL, '2021-07-13 12:53:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('41d945ba-19d4-40d8-88b0-ada458a8cda6', '2.14.0版本更新', '2021/9/14\n功能变更：\n1、更新插件版本；\n2、减少miniTab 记录的cookie；\n3、配置增加登录错误次数；\n4、退出登录优化；\n\nbug修复：\n1、修复cookie中文乱码问题；\n2、修复订单删除问题；\n3、修复oracle查询数据库的问题；\n4、修复soultable 不带过滤，后台排序失效的问题，Pagination中的sort统一改成field；\n5、修复前端排序问题；\n6、修复layuiedit的问题；\n7、修复流程预览图片异常；\n8、修复流程界面参数显示问题；', 0, 1, NULL, '2021-09-14 15:40:17', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('41d945ba-19d4-40d8-88b0-ada458a8cda7', '2.15.0版本更新', '2021/10/27\n功能变更：\n1、菜单界面新增复制，修改排序，排序自增功能；\n2、更新layui文档地址；\n3、多库连接改成数组；\n4、更新系统页面可以单页使用；\n\nbug修复：\n1、修复框架弹窗重复出现问题;\n2、修复文件中心组织筛选问题', 0, 1, NULL, '2021-10-27 15:02:28', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('41d945ba-19d4-40d8-88b0-ada458a8cda8', '2.16.0版本更新', '2021/11/16\n功能变更：\n1、删除多余参数sqlkey；\n2、支持单页使用；\n3、前端用户参数转移到clientdata里面；\n4、修改不存在角色，设置为游客角色；\n5、增加定时任务集群并优化(冬天提供及测试)；\n\nbug修复：\n1、修复无角色时，基础数据异常；\n2、修复定时任务执行问题；', 0, 1, NULL, '2021-11-16 15:37:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('41d945bb-19d4-40d8-88b0-ada458a8cda8', '2.17.0版本更新', '2021/12/13\n功能变更：\n1、新增parentWindow()方法，获取父界面;\n2、新增传值方式，common.modalOpen（新增父子界面关系绑定)，原data参数改成dataJson参数，子界面使用common.parentWindow().dataJson即可获取传值的参数；\n3、前端框架优化；\n4、增加cron表达式判断；\n5、删除配置中的超管信息；\n6、重命名IsSystem，改成IsSuperAdmin;\n7、优化数据库注入方式，多租户创建完成后，无需重启应用；\n8、soultable增加时间范围；\n9、优化打印sql；\n10、优化数据库类型以orm的为准；\n11、代码生成器优化，实体类中增加codefirst必要参数（除了唯一键）；\n12、实体类租户修改，使用orm的TenantAttribute特性；\n13、流程增加撤回功能。', 0, 1, NULL, '2021-12-13 12:52:16', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', NULL, NULL, NULL, NULL);
INSERT INTO `sys_notice` VALUES ('41d945bb-19d4-40d8-88b0-ada458a8cda9', '2.18.0版本更新', '2021/12/29\n功能变更：\n1、[工作流] 流程中心显示优化；\n2、[后台框架] 优化代码、去除警告；\n3、[后台框架] 升级net6，去除警告；\n\nbug修复：\n1、[工作流] 修复流程新增BUG；\n2、[代码生成器] 修复代码生成器自增ID问题', 0, 1, NULL, '2021-12-29 08:47:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2022-09-07 15:18:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('41d945bb-19d4-40d8-88b0-ada458a8cdb1', '2.19.0版本更新', '2022/01/27\n功能变更：\n1、[后台框架] 解决session不能使用的问题；\n2、[后台框架] 优化查询的反格式化，把中文放dictionary的value中；\n3、[后台框架] 优化代码判断存在改成any()；\n4、[后台框架] 优化第一次请求页面判断逻辑；\n5、[前台框架] 表单设计器更换插件；\n6、[后台框架] 仓储增加切换数据库方法；\n7、[前台框架] 更新soultable插件；\n\nbug修复：\n1、[定时任务] 修复定时任务null object异常；\n2、[后台框架] 修复表达式 or改成orelse， and改成andalso；\n3、[后台框架] 修复数据权限界面Bug；\n4、[前台框架] 修复系统设置上传图片Bug；\n5、[定时任务] 修复定时任务执行异常bug；\n6、[后台框架] 修复创建租户问题；\n7、[后台框架] 修复管理员权限控制问题，默认超管，false为管理员；\n8、[后台框架] 修复租户修改上传文件，没有更新问题', 0, 1, NULL, '2022-01-27 20:20:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2022-09-07 15:17:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('41d945bb-19d4-40d8-88b0-ada458a8cdb2', '2.20.0版本更新', '2022/3/7\n功能变更：\n1、[前台框架] tab切换增加动作执行table resize方法；\n2、[后台框架] 优化卡片表格组件；\n3、[代码生成器] 删除IDatabaseTable封装，使用sqlsugar获取表数据和结构，加强兼容性；\n4、[后台框架] 优化数据库注入，增加扩展库注入；\n5、[代码生成器] 增加数据库选择；\n6、[后台框架] 租户数据库类型，前端写死改为后端获取DbType枚举；\n7、[后台框架] 完善二级缓存，优化缓存方法；\n8、[后台框架] 优化管理数据库连接；\n\nbug修复：\n1、[后台框架] 修复时间导入格式问题；\n2、[前台框架] 修复首页粒子特效问题；\n3、[后台框架] 修复ChangeEntityDb方法切换数据库未生效问题；\n4、[后台框架] 修复数据权限无法设置无效的问题；', 0, 1, NULL, '2022-03-07 21:18:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2022-09-07 15:16:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('41d945bb-19d4-40d8-88b0-ada458a8cdb3', '2.21.0版本更新', '2022/4/11\n功能变更：\n1、[前台框架] 增加表格人性化开关，在home页面控制，默认开启;\n2、[定时任务] 定时任务执行job，增加格式化显示；\n3、[后台框架] 优化结构、控制器的权限特性等；\n4、[后台框架] 增加rabbitmq的帮助类及引用；\n5、[前台框架] 优化soultable日期范围选择；\n6、[后台框架] 优化获取服务，区分root服务和scope服务；\n7、[后台框架] 优化获取模块名称方法；\n\nbug修复：\n1、[后台框架] 修复其他数据库没有打印sql的问题;\n2、[代码生成器] 修复代码生成若干bug\n3、[后台框架] 修复租户生成(sqlserver)异常问题；\n4、[后台框架] 修复多数据库的异常；\n5、[工作流] 修复自定义流程出现的异常；\n6、[前台框架] 修复tab切换，刷新异常的问题；', 0, 1, NULL, '2022-04-11 08:37:32', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2022-09-07 15:14:56', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('41d945bb-19d4-40d8-88b0-ada458a8cdb4', '2.22.0版本更新', '2022/5/31\n功能变更：\n1、[后台框架] 去除仓储OrderList方法，改成扩展方法;\n2、[后台框架] 优化仓储，优化注册SqlSugar方法，重写获取服务的方法；\n3、[配置] 增加rabbit安装文件，增加使用rabbitmq案例，消息推送使用mq，默认开启；\n4、[前台框架] 升级layui 2.6.9；\n5、[配置] 增加sqlite脚本；\n6、[配置] 升级nuget，去除sqlprofiler文件；\n7、[前台框架] 手机端去除表格的固定列；\n8、[后台框架] 重写登录验证和权限验证；\n\nbug修复：\n1、[前台框架] 修复表单设计器ice编辑器问题；\n2、[代码生成器] 修复模板问题；\n3、[后台框架] 修复管理员权限卡控问题；\n4、[前台框架] 修复弹窗选择清除按钮失效问题；', 0, 1, NULL, '2022-06-06 16:50:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2022-09-07 15:13:28', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_notice` VALUES ('41d945bb-19d4-40d8-88b0-ada458a8cdb5', '2.23.0版本更新', '2022/9/7\n功能变更：\n1、[框架底层] 服务注册器去除瞬时服务判断；\n2、[代码生成器] 优化模板；\n3、[前端框架] 更新layui 2.7.5;\n4、[定时任务] 远程请求，增加类型，默认json，成功返回json；\n5、[前端框架] layuimini增加是否缩放参数，默认否；\n6、[定时任务] 代码优化，新增sql执行；\n7、[配置] rabbitmq默认设置关闭；\n8、[配置] 重置密码时，清除缓存；\n9、[后台框架] 增加租户生成忽视创建类的列表；\n10、[前端框架] 优化top.iframesList；\n11、[后台框架] WaterCloud.Web 集成API，优化登录信息存储；\n12、[后台框架] MVC定义的基类ControllerBase重命名BaseController；\n\nbug修复：\n1、[前端框架] 修复framework-ui绑定radio数据问题；\n2、[前端框架] 修复表格高度带搜索框异常的问题；\n3、[前端框架] 修复 Iframe无法关闭的问题；\n4、[后台框架] 修复realreturnurl不生效的问题；\n5、[前端框架] 修复cron的部分异常；', 0, 1, NULL, '2022-09-07 15:07:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2022-09-07 15:11:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);

-- ----------------------------
-- Table structure for sys_openjob
-- ----------------------------
DROP TABLE IF EXISTS `sys_openjob`;
CREATE TABLE `sys_openjob`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_FileName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_JobName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_JobGroup` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_StarRunTime` datetime NULL DEFAULT NULL,
  `F_EndRunTime` datetime NULL DEFAULT NULL,
  `F_CronExpress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteMark` tinyint NULL DEFAULT NULL,
  `F_EnabledMark` tinyint NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastRunTime` datetime NULL DEFAULT NULL,
  `F_LastRunMark` tinyint NULL DEFAULT NULL,
  `F_LastRunErrTime` datetime NULL DEFAULT NULL,
  `F_LastRunErrMsg` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_JobType` int NOT NULL,
  `F_IsLog` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_RequestHeaders` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_RequestString` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_RequestUrl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_DbNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_JobSql` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_JobSqlParm` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_JobDBProvider` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_openjob
-- ----------------------------

-- ----------------------------
-- Table structure for sys_openjoblog
-- ----------------------------
DROP TABLE IF EXISTS `sys_openjoblog`;
CREATE TABLE `sys_openjoblog`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_JobId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '任务Id',
  `F_Description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '任务信息',
  `F_CreatorTime` datetime NULL DEFAULT NULL COMMENT '执行时间',
  `F_EnabledMark` tinyint NOT NULL COMMENT '执行状态',
  `F_JobName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '任务名称',
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_openjoblog
-- ----------------------------

-- ----------------------------
-- Table structure for sys_organize
-- ----------------------------
DROP TABLE IF EXISTS `sys_organize`;
CREATE TABLE `sys_organize`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Layers` int NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ShortName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_CategoryId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ManagerId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_TelePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_MobilePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_WeChat` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_AreaId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_AllowEdit` tinyint(1) NULL DEFAULT NULL,
  `F_AllowDelete` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_organize_key1`(`F_EnCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_organize
-- ----------------------------
INSERT INTO `sys_organize` VALUES ('5AB270C0-5D33-4203-A54F-4552699FDA3C', '0', 1, 'Company', '水之云', NULL, 'Company', '', NULL, NULL, NULL, NULL, NULL, NULL, '上海市', 0, 0, 1, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_quickmodule
-- ----------------------------
DROP TABLE IF EXISTS `sys_quickmodule`;
CREATE TABLE `sys_quickmodule`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_ModuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_quickmodule_key1`(`F_ModuleId`, `F_CreatorUserId`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_quickmodule
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_CompanyId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Category` int NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_AllowEdit` tinyint(1) NULL DEFAULT NULL,
  `F_AllowDelete` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_role_key1`(`F_EnCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_roleauthorize
-- ----------------------------
DROP TABLE IF EXISTS `sys_roleauthorize`;
CREATE TABLE `sys_roleauthorize`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_ItemType` int NULL DEFAULT NULL,
  `F_ItemId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ObjectType` int NULL DEFAULT NULL,
  `F_ObjectId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_SortCode` int NULL DEFAULT NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_roleauthorize
-- ----------------------------

-- ----------------------------
-- Table structure for sys_serverstate
-- ----------------------------
DROP TABLE IF EXISTS `sys_serverstate`;
CREATE TABLE `sys_serverstate`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_WebSite` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ARM` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_CPU` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_IIS` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Date` date NULL DEFAULT NULL,
  `F_Cout` int NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_ServerState`(`F_WebSite`, `F_Date`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_serverstate
-- ----------------------------

-- ----------------------------
-- Table structure for sys_systemset
-- ----------------------------
DROP TABLE IF EXISTS `sys_systemset`;
CREATE TABLE `sys_systemset`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_Logo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_LogoCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ProjectName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_CompanyName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_AdminAccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_AdminPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_MobilePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_PrincipalMan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_EndTime` datetime NULL DEFAULT NULL,
  `F_DbString` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_DBProvider` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_HostUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DbNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_systemset_key1`(`F_DbNumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_systemset
-- ----------------------------
INSERT INTO `sys_systemset` VALUES ('d69fd66a-6a77-4011-8a25-53a79bdf5001', '/icon/favicon.ico', 'WaterCloud', '水之云信息系统', '水之云', 'admin', '0000', 0, 1, '', '2020-06-12 16:30:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2021-06-09 13:22:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, '13621551864', 'MonsterUncle', '2032-06-26 00:00:00', 'data source=localhost;database=watercloudnetdb;uid=root;pwd=root;', 'MySql.Data.MySqlClient', 'localhost', '0');

-- ----------------------------
-- Table structure for sys_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_template`;
CREATE TABLE `sys_template`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `F_TemplateName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板名称',
  `F_TemplateFile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模板文件',
  `F_TemplateDBProvider` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板执行库',
  `F_TemplateSql` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板执行sql',
  `F_TemplateSqlParm` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板执行参数',
  `F_PrintType` int NULL DEFAULT NULL COMMENT '打印方式',
  `F_Batch` tinyint(1) NULL DEFAULT NULL COMMENT '是否批量',
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '模板' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_template
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_Account` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_RealName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_NickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_HeadIcon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Gender` tinyint(1) NULL DEFAULT NULL,
  `F_Birthday` datetime NULL DEFAULT NULL,
  `F_MobilePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_WeChat` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ManagerId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_SecurityLevel` int NULL DEFAULT NULL,
  `F_Signature` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CompanyId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_OrganizeId` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_RoleId` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_DutyId` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_IsAdmin` tinyint(1) NULL DEFAULT NULL,
  `F_IsBoss` tinyint(1) NULL DEFAULT NULL,
  `F_IsLeaderInDepts` tinyint(1) NULL DEFAULT NULL,
  `F_IsSenior` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CreatorTime` datetime NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LastModifyTime` datetime NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DeleteTime` datetime NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DingTalkUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DingTalkUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_DingTalkAvatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_WxOpenId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_WxNickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_HeadImgUrl` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_user_key1`(`F_Account`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'admin', '超级管理员', '超级管理员', NULL, 1, '2020-03-27 00:00:00', '13600000000', '3333', NULL, NULL, NULL, NULL, 'd69fd66a-6a77-4011-8a25-53a79bdf5001', '5AB270C0-5D33-4203-A54F-4552699FDA3C', NULL, NULL, 1, 0, 0, 0, NULL, 0, 1, '系统内置账户', '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '闫志辉', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_userlogon
-- ----------------------------
DROP TABLE IF EXISTS `sys_userlogon`;
CREATE TABLE `sys_userlogon`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F_UserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_UserPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_UserSecretkey` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_AllowStartTime` datetime NULL DEFAULT NULL,
  `F_AllowEndTime` datetime NULL DEFAULT NULL,
  `F_LockStartDate` datetime NULL DEFAULT NULL,
  `F_LockEndDate` datetime NULL DEFAULT NULL,
  `F_FirstVisitTime` datetime NULL DEFAULT NULL,
  `F_PreviousVisitTime` datetime NULL DEFAULT NULL,
  `F_LastVisitTime` datetime NULL DEFAULT NULL,
  `F_ChangePasswordDate` datetime NULL DEFAULT NULL,
  `F_MultiUserLogin` tinyint(1) NULL DEFAULT NULL,
  `F_LogOnCount` int NULL DEFAULT NULL,
  `F_UserOnLine` tinyint(1) NULL DEFAULT NULL,
  `F_Question` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_AnswerQuestion` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `F_CheckIPAddress` tinyint(1) NULL DEFAULT NULL,
  `F_Language` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_Theme` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_LoginSession` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `F_ErrorNum` int NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `sys_userlogon_key1`(`F_UserId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_userlogon
-- ----------------------------
INSERT INTO `sys_userlogon` VALUES ('9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '99e5c8431f64527c0acd80b34a3dce3c', '74aeb85d04e4b485', NULL, NULL, NULL, NULL, NULL, '2020-04-17 14:47:44', '2020-04-17 14:59:58', NULL, 0, 360, 0, NULL, NULL, 0, NULL, NULL, 'evrcyibdv42f3ykhfy1yz3ur', 0);

ALTER TABLE `oms_flowinstanceinfo` ADD COLUMN `F_FrmData` varchar(1000) NULL COMMENT '表单数据';

SET FOREIGN_KEY_CHECKS = 1;

