/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80041 (8.0.41)
 Source Host           : localhost:3306
 Source Schema         : springboot0c5eb675

 Target Server Type    : MySQL
 Target Server Version : 80041 (8.0.41)
 File Encoding         : 65001

 Date: 09/06/2026 17:01:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2024-05-15 17:12:23', 11, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2024-05-15 17:12:23', 12, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2024-05-15 17:12:23', 13, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2024-05-15 17:12:23', 14, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2024-05-15 17:12:23', 15, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2024-05-15 17:12:23', 16, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (7, '2024-05-15 17:12:23', 17, '宇宙银河系黑洞1号', '黑某', '13823888887', '是');
INSERT INTO `address` VALUES (8, '2024-05-15 17:12:23', 18, '宇宙银河系地球1号', '地某', '13823888888', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'shangpinxinxi' COMMENT '图书表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '图书id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图书名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` double NULL DEFAULT NULL COMMENT '单价',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复',
  `isreply` int NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '在线客服' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (61, '2024-05-15 17:12:22', 1, 1, '提问1', '回复1', 1);
INSERT INTO `chat` VALUES (62, '2024-05-15 17:12:22', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (63, '2024-05-15 17:12:22', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (64, '2024-05-15 17:12:22', 4, 4, '提问4', '回复4', 4);
INSERT INTO `chat` VALUES (65, '2024-05-15 17:12:22', 5, 5, '提问5', '回复5', 5);
INSERT INTO `chat` VALUES (66, '2024-05-15 17:12:22', 6, 6, '提问6', '回复6', 6);
INSERT INTO `chat` VALUES (67, '2024-05-15 17:12:22', 7, 7, '提问7', '回复7', 7);
INSERT INTO `chat` VALUES (68, '2024-05-15 17:12:22', 8, 8, '提问8', '回复8', 8);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg', NULL);
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg', NULL);
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg', NULL);

-- ----------------------------
-- Table structure for discussshangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE `discussshangpinxinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '图书信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussshangpinxinxi
-- ----------------------------

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '帖子内容',
  `parentid` bigint NULL DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `isdone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态',
  `istop` int NULL DEFAULT 0 COMMENT '是否置顶',
  `toptime` datetime NULL DEFAULT NULL COMMENT '置顶时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '交流论坛' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (71, '2024-05-15 17:12:22', '帖子标题1', '帖子内容1', 0, 1, '用户名1', 'upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg', '开放', 0, '2024-05-15 17:12:22');
INSERT INTO `forum` VALUES (72, '2024-05-15 17:12:22', '帖子标题2', '帖子内容2', 0, 2, '用户名2', 'upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg', '开放', 0, '2024-05-15 17:12:22');
INSERT INTO `forum` VALUES (73, '2024-05-15 17:12:22', '帖子标题3', '帖子内容3', 0, 3, '用户名3', 'upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg', '开放', 0, '2024-05-15 17:12:22');
INSERT INTO `forum` VALUES (74, '2024-05-15 17:12:22', '帖子标题4', '帖子内容4', 0, 4, '用户名4', 'upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg', '开放', 0, '2024-05-15 17:12:22');
INSERT INTO `forum` VALUES (75, '2024-05-15 17:12:22', '帖子标题5', '帖子内容5', 0, 5, '用户名5', 'upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg', '开放', 0, '2024-05-15 17:12:22');
INSERT INTO `forum` VALUES (76, '2024-05-15 17:12:22', '帖子标题6', '帖子内容6', 0, 6, '用户名6', 'upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg', '开放', 0, '2024-05-15 17:12:22');
INSERT INTO `forum` VALUES (77, '2024-05-15 17:12:22', '帖子标题7', '帖子内容7', 0, 7, '用户名7', 'upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg', '开放', 0, '2024-05-15 17:12:22');
INSERT INTO `forum` VALUES (78, '2024-05-15 17:12:23', '帖子标题8', '帖子内容8', 0, 8, '用户名8', 'upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg', '开放', 0, '2024-05-15 17:12:23');

-- ----------------------------
-- Table structure for gonggaoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `gonggaoxinxi`;
CREATE TABLE `gonggaoxinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `jianjie` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '简介',
  `fabushijian` date NULL DEFAULT NULL COMMENT '发布时间',
  `fengmian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '封面',
  `neirong` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '内容',
  `clicknum` int NULL DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gonggaoxinxi
-- ----------------------------
INSERT INTO `gonggaoxinxi` VALUES (51, '2024-05-15 17:12:22', '标题1', '简介1', '2024-05-15', 'upload/gonggaoxinxi_fengmian1.jpg,upload/gonggaoxinxi_fengmian2.jpg,upload/gonggaoxinxi_fengmian3.jpg', '内容1', 1);
INSERT INTO `gonggaoxinxi` VALUES (52, '2024-05-15 17:12:22', '标题2', '简介2', '2024-05-15', 'upload/gonggaoxinxi_fengmian2.jpg,upload/gonggaoxinxi_fengmian3.jpg,upload/gonggaoxinxi_fengmian4.jpg', '内容2', 2);
INSERT INTO `gonggaoxinxi` VALUES (53, '2024-05-15 17:12:22', '标题3', '简介3', '2024-05-15', 'upload/gonggaoxinxi_fengmian3.jpg,upload/gonggaoxinxi_fengmian4.jpg,upload/gonggaoxinxi_fengmian5.jpg', '内容3', 3);
INSERT INTO `gonggaoxinxi` VALUES (54, '2024-05-15 17:12:22', '标题4', '简介4', '2024-05-15', 'upload/gonggaoxinxi_fengmian4.jpg,upload/gonggaoxinxi_fengmian5.jpg,upload/gonggaoxinxi_fengmian6.jpg', '内容4', 4);
INSERT INTO `gonggaoxinxi` VALUES (55, '2024-05-15 17:12:22', '标题5', '简介5', '2024-05-15', 'upload/gonggaoxinxi_fengmian5.jpg,upload/gonggaoxinxi_fengmian6.jpg,upload/gonggaoxinxi_fengmian7.jpg', '内容5', 5);
INSERT INTO `gonggaoxinxi` VALUES (56, '2024-05-15 17:12:22', '标题6', '简介6', '2024-05-15', 'upload/gonggaoxinxi_fengmian6.jpg,upload/gonggaoxinxi_fengmian7.jpg,upload/gonggaoxinxi_fengmian8.jpg', '内容6', 6);
INSERT INTO `gonggaoxinxi` VALUES (57, '2024-05-15 17:12:22', '标题7', '简介7', '2024-05-15', 'upload/gonggaoxinxi_fengmian7.jpg,upload/gonggaoxinxi_fengmian8.jpg,upload/gonggaoxinxi_fengmian9.jpg', '内容7', 7);
INSERT INTO `gonggaoxinxi` VALUES (58, '2024-05-15 17:12:22', '标题8', '简介8', '2024-05-15', 'upload/gonggaoxinxi_fengmian8.jpg,upload/gonggaoxinxi_fengmian9.jpg,upload/gonggaoxinxi_fengmian10.jpg', '内容8', 8);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'shangpinxinxi' COMMENT '图书表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '图书id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图书名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图书图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` double NOT NULL DEFAULT 0 COMMENT '价格',
  `total` double NOT NULL DEFAULT 0 COMMENT '总价格',
  `type` int NULL DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `logistics` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '物流',
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商户名称',
  `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '审核回复',
  `role` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户角色',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for shangjia
-- ----------------------------
DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE `shangjia`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商家账号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `dianpuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '店铺名',
  `dianpudizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '店铺地址',
  `fuzeren` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '封面',
  `yingyezhizhao` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '营业执照',
  `jf` double NULL DEFAULT 0 COMMENT '积分',
  `money` double NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shangjiazhanghao`(`shangjiazhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商家' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangjia
-- ----------------------------
INSERT INTO `shangjia` VALUES (21, '2024-05-15 17:12:22', '商家账号1', '123456', '店铺名1', '店铺地址1', '负责人1', '13823888881', '773890001@qq.com', 'upload/shangjia_touxiang1.jpg', '', 10000, 200);
INSERT INTO `shangjia` VALUES (22, '2024-05-15 17:12:22', '商家账号2', '123456', '店铺名2', '店铺地址2', '负责人2', '13823888882', '773890002@qq.com', 'upload/shangjia_touxiang2.jpg', '', 10000, 200);
INSERT INTO `shangjia` VALUES (23, '2024-05-15 17:12:22', '商家账号3', '123456', '店铺名3', '店铺地址3', '负责人3', '13823888883', '773890003@qq.com', 'upload/shangjia_touxiang3.jpg', '', 10000, 200);
INSERT INTO `shangjia` VALUES (24, '2024-05-15 17:12:22', '商家账号4', '123456', '店铺名4', '店铺地址4', '负责人4', '13823888884', '773890004@qq.com', 'upload/shangjia_touxiang4.jpg', '', 10000, 200);
INSERT INTO `shangjia` VALUES (25, '2024-05-15 17:12:22', '商家账号5', '123456', '店铺名5', '店铺地址5', '负责人5', '13823888885', '773890005@qq.com', 'upload/shangjia_touxiang5.jpg', '', 10000, 200);
INSERT INTO `shangjia` VALUES (26, '2024-05-15 17:12:22', '商家账号6', '123456', '店铺名6', '店铺地址6', '负责人6', '13823888886', '773890006@qq.com', 'upload/shangjia_touxiang6.jpg', '', 10000, 200);
INSERT INTO `shangjia` VALUES (27, '2024-05-15 17:12:22', '商家账号7', '123456', '店铺名7', '店铺地址7', '负责人7', '13823888887', '773890007@qq.com', 'upload/shangjia_touxiang7.jpg', '', 10000, 200);
INSERT INTO `shangjia` VALUES (28, '2024-05-15 17:12:22', '商家账号8', '123456', '店铺名8', '店铺地址8', '负责人8', '13823888888', '773890008@qq.com', 'upload/shangjia_touxiang8.jpg', '', 10000, 200);

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图书分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shangpinfenlei`(`shangpinfenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '图书分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES (31, '2024-05-15 17:12:22', '图书分类1');
INSERT INTO `shangpinfenlei` VALUES (32, '2024-05-15 17:12:22', '图书分类2');
INSERT INTO `shangpinfenlei` VALUES (33, '2024-05-15 17:12:22', '图书分类3');
INSERT INTO `shangpinfenlei` VALUES (34, '2024-05-15 17:12:22', '图书分类4');
INSERT INTO `shangpinfenlei` VALUES (35, '2024-05-15 17:12:22', '图书分类5');
INSERT INTO `shangpinfenlei` VALUES (36, '2024-05-15 17:12:22', '图书分类6');
INSERT INTO `shangpinfenlei` VALUES (37, '2024-05-15 17:12:22', '图书分类7');
INSERT INTO `shangpinfenlei` VALUES (38, '2024-05-15 17:12:22', '图书分类8');

-- ----------------------------
-- Table structure for shangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图书名称',
  `dianpuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '店铺名',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图书分类',
  `pinpai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '品牌',
  `guige` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格',
  `shangjiariqi` date NULL DEFAULT NULL COMMENT '上架日期',
  `shangpinjieshao` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图书介绍',
  `shangjiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商家账号',
  `fengmian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '封面',
  `onelimittimes` int NULL DEFAULT NULL COMMENT '单限',
  `alllimittimes` int NULL DEFAULT NULL COMMENT '库存',
  `thumbsupnum` int NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int NULL DEFAULT 0 COMMENT '踩',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int NULL DEFAULT 0 COMMENT '点击次数',
  `discussnum` int NULL DEFAULT 0 COMMENT '评论数',
  `jf` int NULL DEFAULT -1 COMMENT '积分',
  `price` double NOT NULL COMMENT '价格',
  `storeupnum` int NULL DEFAULT 0 COMMENT '收藏数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '图书信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES (41, '2024-05-15 17:12:22', '图书名称1', '店铺名1', '图书分类1', '品牌1', '规格1', '2024-05-15', '图书介绍1', '商家账号1', 'upload/shangpinxinxi_fengmian1.jpg,upload/shangpinxinxi_fengmian2.jpg,upload/shangpinxinxi_fengmian3.jpg', 1, 99, 1, 1, '2024-05-15 17:12:22', 1, 0, 10000, 99.9, 1);
INSERT INTO `shangpinxinxi` VALUES (42, '2024-05-15 17:12:22', '图书名称2', '店铺名2', '图书分类2', '品牌2', '规格2', '2024-05-15', '图书介绍2', '商家账号2', 'upload/shangpinxinxi_fengmian2.jpg,upload/shangpinxinxi_fengmian3.jpg,upload/shangpinxinxi_fengmian4.jpg', 2, 99, 2, 2, '2024-05-15 17:12:22', 2, 0, 10000, 99.9, 2);
INSERT INTO `shangpinxinxi` VALUES (43, '2024-05-15 17:12:22', '图书名称3', '店铺名3', '图书分类3', '品牌3', '规格3', '2024-05-15', '图书介绍3', '商家账号3', 'upload/shangpinxinxi_fengmian3.jpg,upload/shangpinxinxi_fengmian4.jpg,upload/shangpinxinxi_fengmian5.jpg', 3, 99, 3, 3, '2024-05-15 17:12:22', 3, 0, 10000, 99.9, 3);
INSERT INTO `shangpinxinxi` VALUES (44, '2024-05-15 17:12:22', '图书名称4', '店铺名4', '图书分类4', '品牌4', '规格4', '2024-05-15', '图书介绍4', '商家账号4', 'upload/shangpinxinxi_fengmian4.jpg,upload/shangpinxinxi_fengmian5.jpg,upload/shangpinxinxi_fengmian6.jpg', 4, 99, 4, 4, '2024-05-15 17:12:22', 4, 0, 10000, 99.9, 4);
INSERT INTO `shangpinxinxi` VALUES (45, '2024-05-15 17:12:22', '图书名称5', '店铺名5', '图书分类5', '品牌5', '规格5', '2024-05-15', '图书介绍5', '商家账号5', 'upload/shangpinxinxi_fengmian5.jpg,upload/shangpinxinxi_fengmian6.jpg,upload/shangpinxinxi_fengmian7.jpg', 5, 99, 5, 5, '2024-05-15 17:12:22', 5, 0, 10000, 99.9, 5);
INSERT INTO `shangpinxinxi` VALUES (46, '2024-05-15 17:12:22', '图书名称6', '店铺名6', '图书分类6', '品牌6', '规格6', '2024-05-15', '图书介绍6', '商家账号6', 'upload/shangpinxinxi_fengmian6.jpg,upload/shangpinxinxi_fengmian7.jpg,upload/shangpinxinxi_fengmian8.jpg', 6, 99, 6, 6, '2024-05-15 17:12:22', 6, 0, 10000, 99.9, 6);
INSERT INTO `shangpinxinxi` VALUES (47, '2024-05-15 17:12:22', '图书名称7', '店铺名7', '图书分类7', '品牌7', '规格7', '2024-05-15', '图书介绍7', '商家账号7', 'upload/shangpinxinxi_fengmian7.jpg,upload/shangpinxinxi_fengmian8.jpg,upload/shangpinxinxi_fengmian9.jpg', 7, 99, 7, 7, '2024-05-15 17:12:22', 7, 0, 10000, 99.9, 7);
INSERT INTO `shangpinxinxi` VALUES (48, '2024-05-15 17:12:22', '图书名称8', '店铺名8', '图书分类8', '品牌8', '规格8', '2024-05-15', '图书介绍8', '商家账号8', 'upload/shangpinxinxi_fengmian8.jpg,upload/shangpinxinxi_fengmian9.jpg,upload/shangpinxinxi_fengmian10.jpg', 8, 99, 8, 8, '2024-05-15 17:12:22', 8, 0, 10000, 99.9, 8);

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint NULL DEFAULT NULL COMMENT '图书id',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `image` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', 'upload/image1.jpg', '管理员', '2024-05-15 17:12:23');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `jf` double NULL DEFAULT 0 COMMENT '积分',
  `money` double NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2024-05-15 17:12:22', '账号1', '123456', '姓名1', '男', '13823888881', 'upload/yonghu_touxiang1.jpg', 10000, 200);
INSERT INTO `yonghu` VALUES (12, '2024-05-15 17:12:22', '账号2', '123456', '姓名2', '男', '13823888882', 'upload/yonghu_touxiang2.jpg', 10000, 200);
INSERT INTO `yonghu` VALUES (13, '2024-05-15 17:12:22', '账号3', '123456', '姓名3', '男', '13823888883', 'upload/yonghu_touxiang3.jpg', 10000, 200);
INSERT INTO `yonghu` VALUES (14, '2024-05-15 17:12:22', '账号4', '123456', '姓名4', '男', '13823888884', 'upload/yonghu_touxiang4.jpg', 10000, 200);
INSERT INTO `yonghu` VALUES (15, '2024-05-15 17:12:22', '账号5', '123456', '姓名5', '男', '13823888885', 'upload/yonghu_touxiang5.jpg', 10000, 200);
INSERT INTO `yonghu` VALUES (16, '2024-05-15 17:12:22', '账号6', '123456', '姓名6', '男', '13823888886', 'upload/yonghu_touxiang6.jpg', 10000, 200);
INSERT INTO `yonghu` VALUES (17, '2024-05-15 17:12:22', '账号7', '123456', '姓名7', '男', '13823888887', 'upload/yonghu_touxiang7.jpg', 10000, 200);
INSERT INTO `yonghu` VALUES (18, '2024-05-15 17:12:22', '账号8', '123456', '姓名8', '男', '13823888888', 'upload/yonghu_touxiang8.jpg', 10000, 200);

SET FOREIGN_KEY_CHECKS = 1;
