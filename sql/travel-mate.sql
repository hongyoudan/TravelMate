/*
 Navicat Premium Data Transfer

 Source Server         : 172.16.192.8
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : 172.16.192.8:3306
 Source Schema         : travel-mate

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 18/02/2023 03:11:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2044 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 'M', '0', '0', '', 'system', 'admin', '2023-02-08 12:07:07', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-02-08 12:07:07', 'admin', '2023-02-10 08:39:40', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-02-08 12:07:07', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-02-08 12:07:07', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-02-08 12:07:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '轮播图', 2043, 1, 'banner', 'uni/banner/index', NULL, 1, 'C', '0', '0', 'uni:banner:list', 'icon', 'admin', '2023-02-08 23:38:34', 'admin', '2023-02-10 08:46:44', '轮播图菜单');
INSERT INTO `sys_menu` VALUES (2008, '轮播图查询', 2007, 1, '#', '', NULL, 1, 'F', '0', '0', 'system:banner:query', '#', 'admin', '2023-02-08 23:38:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '轮播图新增', 2007, 2, '#', '', NULL, 1, 'F', '0', '0', 'system:banner:add', '#', 'admin', '2023-02-08 23:38:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '轮播图修改', 2007, 3, '#', '', NULL, 1, 'F', '0', '0', 'system:banner:edit', '#', 'admin', '2023-02-08 23:38:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '轮播图删除', 2007, 4, '#', '', NULL, 1, 'F', '0', '0', 'system:banner:remove', '#', 'admin', '2023-02-08 23:38:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '轮播图导出', 2007, 5, '#', '', NULL, 1, 'F', '0', '0', 'system:banner:export', '#', 'admin', '2023-02-08 23:38:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '景点信息', 2043, 1, 'spot', 'uni/scenic_spot/index', NULL, 1, 'C', '0', '0', 'uni:spot:list', 'form', 'admin', '2023-02-09 04:25:28', 'admin', '2023-02-10 08:47:15', '景点信息菜单');
INSERT INTO `sys_menu` VALUES (2026, '景点信息查询', 2025, 1, '#', '', NULL, 1, 'F', '0', '0', 'system:spot:query', '#', 'admin', '2023-02-09 04:25:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '景点信息新增', 2025, 2, '#', '', NULL, 1, 'F', '0', '0', 'system:spot:add', '#', 'admin', '2023-02-09 04:25:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '景点信息修改', 2025, 3, '#', '', NULL, 1, 'F', '0', '0', 'system:spot:edit', '#', 'admin', '2023-02-09 04:25:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '景点信息删除', 2025, 4, '#', '', NULL, 1, 'F', '0', '0', 'system:spot:remove', '#', 'admin', '2023-02-09 04:25:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '景点信息导出', 2025, 5, '#', '', NULL, 1, 'F', '0', '0', 'system:spot:export', '#', 'admin', '2023-02-09 04:25:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '要闻', 2043, 1, 'news', 'uni/news/index', NULL, 1, 'C', '0', '0', 'uni:news:list', 'documentation', 'admin', '2023-02-09 11:22:47', 'admin', '2023-02-10 08:47:29', '要闻菜单');
INSERT INTO `sys_menu` VALUES (2032, '要闻查询', 2031, 1, '#', '', NULL, 1, 'F', '0', '0', 'system:news:query', '#', 'admin', '2023-02-09 11:22:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '要闻新增', 2031, 2, '#', '', NULL, 1, 'F', '0', '0', 'system:news:add', '#', 'admin', '2023-02-09 11:22:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '要闻修改', 2031, 3, '#', '', NULL, 1, 'F', '0', '0', 'system:news:edit', '#', 'admin', '2023-02-09 11:22:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '要闻删除', 2031, 4, '#', '', NULL, 1, 'F', '0', '0', 'system:news:remove', '#', 'admin', '2023-02-09 11:22:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '要闻导出', 2031, 5, '#', '', NULL, 1, 'F', '0', '0', 'system:news:export', '#', 'admin', '2023-02-09 11:22:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '文章', 2043, 1, 'article', 'uni/article/index', NULL, 1, 'C', '0', '0', 'uni:article:list', 'documentation', 'admin', '2023-02-09 23:22:36', 'admin', '2023-02-10 08:47:39', '文章菜单');
INSERT INTO `sys_menu` VALUES (2038, '文章查询', 2037, 1, '#', '', NULL, 1, 'F', '0', '0', 'system:article:query', '#', 'admin', '2023-02-09 23:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '文章新增', 2037, 2, '#', '', NULL, 1, 'F', '0', '0', 'system:article:add', '#', 'admin', '2023-02-09 23:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '文章修改', 2037, 3, '#', '', NULL, 1, 'F', '0', '0', 'system:article:edit', '#', 'admin', '2023-02-09 23:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '文章删除', 2037, 4, '#', '', NULL, 1, 'F', '0', '0', 'system:article:remove', '#', 'admin', '2023-02-09 23:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '文章导出', 2037, 5, '#', '', NULL, 1, 'F', '0', '0', 'system:article:export', '#', 'admin', '2023-02-09 23:22:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '小程序管理', 0, 0, 'uni', NULL, NULL, 1, 'M', '0', '0', NULL, 'bug', 'admin', '2023-02-10 08:42:11', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, '0', '0', 'admin', '2023-02-08 12:07:07', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, '0', '0', 'admin', '2023-02-08 12:07:07', 'admin', '2023-02-13 03:22:22', '普通角色');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (2, 2037);
INSERT INTO `sys_role_menu` VALUES (2, 2038);
INSERT INTO `sys_role_menu` VALUES (2, 2039);
INSERT INTO `sys_role_menu` VALUES (2, 2040);
INSERT INTO `sys_role_menu` VALUES (2, 2043);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'admin', '超级管理员', '00', '13067843910@qq.com', '13067843910', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-02-18 03:08:54', 'admin', '2023-02-08 12:07:07', '', '2023-02-17 19:08:54', '超级管理员');
INSERT INTO `sys_user` VALUES (2, 'test', '测试用户', '00', '13067843910@qq.com', '13067843910', '0', '', '$2a$10$4F6Vg3OHn9rXgsar8Vuy4.K9S9zAfPkc5X1HvWDKoE0wjTddGrKK.', '0', '0', '192.168.0.102', '2023-02-13 11:23:16', 'admin', '2023-02-08 12:07:07', 'admin', '2023-02-13 03:23:15', '测试用户');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_cache
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_cache`;
CREATE TABLE `sys_user_cache` (
  `cache_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户缓存ID',
  `user_key` varchar(255) NOT NULL DEFAULT '' COMMENT '缓存key',
  `login_user` varchar(1000) NOT NULL DEFAULT '' COMMENT '缓存value',
  PRIMARY KEY (`cache_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户信息缓存';

-- ----------------------------
-- Records of sys_user_cache
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_cache` VALUES (26, 'login_tokens:9e18c89c-c344-4413-b654-117326345087', '{\"browser\":\"Chrome 10\",\"ipaddr\":\"127.0.0.1\",\"loginLocation\":\"内网IP\",\"loginTime\":1676658252592,\"os\":\"Mac OS X\",\"permissions\":[\"*:*:*\"],\"token\":\"9e18c89c-c344-4413-b654-117326345087\",\"user\":{\"admin\":true,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-08 12:07:07\",\"delFlag\":\"0\",\"email\":\"13067843910@qq.com\",\"loginDate\":\"2023-02-18 02:20:23\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"超级管理员\",\"params\":{},\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"phonenumber\":\"13067843910\",\"remark\":\"超级管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":1,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"},\"userId\":1,\"username\":\"admin\"}');
INSERT INTO `sys_user_cache` VALUES (27, 'login_tokens:224bc70c-8c26-4b61-8951-cd9a634f4047', '{\"browser\":\"Chrome 10\",\"ipaddr\":\"127.0.0.1\",\"loginLocation\":\"内网IP\",\"loginTime\":1676660934370,\"os\":\"Mac OS X\",\"permissions\":[\"*:*:*\"],\"token\":\"224bc70c-8c26-4b61-8951-cd9a634f4047\",\"user\":{\"admin\":true,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-08 12:07:07\",\"delFlag\":\"0\",\"email\":\"13067843910@qq.com\",\"loginDate\":\"2023-02-18 02:24:13\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"超级管理员\",\"params\":{},\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"phonenumber\":\"13067843910\",\"remark\":\"超级管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":1,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"},\"userId\":1,\"username\":\"admin\"}');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Table structure for uni_article
-- ----------------------------
DROP TABLE IF EXISTS `uni_article`;
CREATE TABLE `uni_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `title` varchar(63) NOT NULL DEFAULT '' COMMENT '文章标题',
  `img_url` varchar(255) NOT NULL COMMENT '图片地址',
  `introduction` varchar(255) NOT NULL COMMENT '文章简介',
  `content` varchar(2048) NOT NULL DEFAULT '' COMMENT '文章内容',
  `type` varchar(1) NOT NULL DEFAULT '0' COMMENT '文章类型 0 官方攻略 1 热门活动 2 头条资讯 3 热门资讯',
  `is_display` varchar(1) NOT NULL DEFAULT '0' COMMENT '是否在首页展示 0 不展示 1 展示',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of uni_article
-- ----------------------------
BEGIN;
INSERT INTO `uni_article` VALUES (20, '《大鱼海棠》取景地超详攻略', 'http://192.168.0.102:2301/profile/upload/2023/02/10/《大鱼海棠》_20230210101723A001.jpeg', '《大鱼海棠》取景地超详攻路，厦门的周未约起！  这是云水谣古镇里边景点的分布图，景点非常集中，走路过去就行了，不像A线那边交通不方便。另外要进景区得先在售票处买票。', '<p><span style=\"color: rgb(51, 51, 51);\">《大鱼海棠》取景地超详攻路，厦门的周未约起！</span></p><p><span style=\"color: rgb(51, 51, 51);\">这是云水谣古镇里边景点的分布图，景点非常集中，走路过去就行了，不像A线那边交通不方便。另外要进景区得先在售票处买票。</span></p><p><span style=\"color: rgb(51, 51, 51);\">【门票】</span></p><p><span style=\"color: rgb(51, 51, 51);\">1，云水谣古镇联票是90元一位，网上可以订，</span></p><p><span style=\"color: rgb(51, 51, 51);\">一般门票几天都可以用，住宿主要集中在景区里边，所以去住的地方都要先买票才给进。</span></p><p><span style=\"color: rgb(51, 51, 51);\">2，田螺坑土楼群线路门票100元，需要到另外一个购票点购买。</span></p><p><span style=\"color: rgb(51, 51, 51);\">【住宿】</span></p><p><span style=\"color: rgb(51, 51, 51);\">一般都住云水谣景区里边，云水谣是走路都能到景点，所以基本不存在交通不便利问题。另外一条线则住宿比较少也很分散，也可以考虑住云水谣然后白天包车去逛田螺坑土楼景点。</span></p><p><span style=\"color: rgb(51, 51, 51);\">【美食】</span></p><p><span style=\"color: rgb(51, 51, 51);\">因为开发程度不大，所以云水谣基本没什么好吃的，吃饭地方主要集中在景区中心点。</span></p><p><span style=\"color: rgb(51, 51, 51);\">【注意事项】</span></p><p><span style=\"color: rgb(51, 51, 51);\">1，较好不要穿高跟鞋，因为云水谣古道都是由鹅卵石铺成的，高跟鞋不好走路，容易扭到。</span></p><p><span style=\"color: rgb(51, 51, 51);\">2，夏天蚊子比较多，备万金油什么的。</span></p><p><span style=\"color: rgb(51, 51, 51);\">3，玩水的时候注意安全。</span></p><p><span style=\"color: rgb(51, 51, 51);\">4，云水谣的路比较窄，节假日开车可能会比较拥挤，停车也不方便。</span></p><p><span style=\"color: rgb(51, 51, 51);\">5，云水谣适合慢游，较好还是在那边过一个晚上。</span></p><p><span style=\"color: rgb(51, 51, 51);\">6. 今年1月18号大右讨夫．冬季可以看到满园的油菜花．非常漂高，这里四季如春．都适合旅游.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\"><span class=\"ql-cursor\">﻿</span></span><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/《大鱼海棠》_20230210080205A001.jpeg\"></p>', '0', '1', '2023-02-10 08:02:56', '2023-02-10 10:17:43');
INSERT INTO `uni_article` VALUES (21, '崇武大咋一日游成半日游，风兩无情人有情', 'http://192.168.0.102:2301/profile/upload/2023/02/10/崇武大咋_20230210101757A002.jpg', '往年的清明小长假，我是很少组织活动的，考虑的因素很多。其-  清明节大多数人要回家扫墓祭祖，抽不出时间;其二，由于国南地区的风俗，清时节不适宜组织外出活动；其三，清明小  长假的交通容易拥堵。所以，每年有队员问我清明假期要不要组织活动，都毫不犹豫地回答说，不考虑组织。', '<p><span style=\"color: rgb(51, 51, 51);\">往年的清明小长假，我是很少组织活动的，考虑的因素很多。其-</span></p><p><span style=\"color: rgb(51, 51, 51);\">清明节大多数人要回家扫墓祭祖，抽不出时间;其二，由于国南地区的风俗，清时节不适宜组织外出活动；其三，清明小</span></p><p><span style=\"color: rgb(51, 51, 51);\">长假的交通容易拥堵。所以，每年有队员问我清明假期要不要组织活动，都毫不犹豫地回答说，不考虑组织。</span></p><p><span style=\"color: rgb(51, 51, 51);\">但今年却是个例外，因为问的人太多了，我是个心软的人，经不起大家一再的咨询，因此拋开各种因索，破天荒地靠前次在清明节组织活动。天气预报说是6号会下兩，还会降温，但我别无</span></p><p><span style=\"color: rgb(51, 51, 51);\">选择，因为5号清明节当天，和7号返程都是交通高峰期，不想被堵在路上的我，只能挑在小长假的第二天来组织活动。</span></p><p><span style=\"color: rgb(51, 51, 51);\">我诜了二条线路让大家参考． 名数队员洗择了惠安崇武大咋这条线路．其实大多数队员的要求并不高，去哪里玩也并不重要， 重要的是有组织活动就行。</span></p><p><span style=\"color: rgb(51, 51, 51);\">活动招募站一经发出，原计划的20个名额，早早地就报满，直到临出发前一天，还有许多队员加入，后一统计，竟然有近40个队员报名参加此次的惠安崇武大炸之旅。这其中，还有两位国际友人，每一次活动出发前一天，我都会建微信群，并发布活动通知，告知活动的一些注意事项，提醒大家不要迟到。这次考虑到会下雨降温，而且海边风大，我还特别提醒大家准备好足够的装备物资。</span></p><p><span style=\"color: rgb(51, 51, 51);\">也许前一阵子天气太热了，而且此时已经四月初了，在南方已是初夏，大家心想再如何下雨降温，也不至于太冷吧。于是，大多数人并不在意天气变化，还很兴奋地穿着短袖短裙，想来一次海边的初夏浪漫之旅呢。</span></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/崇武大咋_20230210080708A002.jpg\"></p>', '0', '1', '2023-02-10 08:07:15', '2023-02-10 10:18:00');
INSERT INTO `uni_article` VALUES (22, '和平古镇--福建美的“城堡式古镇”', 'http://192.168.0.102:2301/profile/upload/2023/02/10/和平古镇_20230210101804A003.jpg', '几年前，一个学生提到她家在和平古镇并邀我去古镇参观时，自己就对和平古镇有了很大的兴趣。可是因为当时交通不是很便利就给耽搁了（当时只能坐很久的绿皮火车到邵武，然后再转汽车去和平镇），没想到一晃这么多年过去了。前些日子，央视的“乡愁”节目让我真正认识了这个福建美的城堡式古镇，', '<p><span style=\"color: rgb(51, 51, 51);\">几年前，一个学生提到她家在和平古镇并邀我去古镇参观时，自己就对和平古镇有了很大的兴趣。可是因为当时交通不是很便利就给耽搁了（当时只能坐很久的绿皮火车到邵武，然后再转汽车去和平镇），没想到一晃这么多年过去了。前些日子，央视的“乡愁”节目让我真正认识了这个福建美的城堡式古镇，于是就有了果断前往那里的冲动，和平古镇位于国西北的邵武境内，古称“禾坪”• （禾苗的禾，草坪的坪） 意为地势平坦，盛产粮食，是一座古城堡。其始建于唐朝，是福建历史为悠久的古镇之一，也是全国罕见的具有城堡和谯楼的古村镇。和平古镇保留了完整的古街巷。古街巷的特色多为中间铺青石板，两边铺鸭卵石，有些较小的巷子则全部铺鸭卵石。城堡内以南北走向的古巷为主街，虽有点蜿蜓，但在城堡内是直的一条街道了。此街道贯穿南北城门，是古镇为繁华的商业街，被誉为\"福建靠前街”。古街全长600余米，宽6-8米，以中心青石板两旁鹅卵石铺筑，因北高南低的地形关系，街道随形就势形成“九曲十三弯”，宛如一条勝空欲飞的青龙。</span></p><p><span style=\"color: rgb(51, 51, 51);\">和平古镇里有近200间青砖琉瓦、雕梁面栋、气派非凡的明清时代的豪宅。即使是普通的木结构民居，其建筑风格也十分精致。古镇里的和平书院创办于五代后唐，是中国创办早的书院之一。此外，古镇还是太极祖师张三丰的逐生地.</span></p><p><span style=\"color: rgb(51, 51, 51);\">去过那么多的古镇，有一个共同点就是：每次自己来古镇几乎都会下雨。时第是来时阴雨连绵，然后第二天就转晴了。而这次则是来时还是晴空万里，阳光普照，没想到刚逛了一个小时，就乌云翻滚，雷雨交加。在古镇的三个小时，也是雷爾和阳光交替。对于拍摄古镇来说，这样交替的天气是很完美的，蓝天白云的晴好天气可以为我的拍摄增添了美丽的天空背景，而雨水更增添了古镇街道和建筑的色彩和质感。</span></p><p><span style=\"color: rgb(51, 51, 51);\">古镇南门虽然是后来修缮的，却是古镇的主城门，也是古镇的主要名片之一，因为它位于中轴线-—\"福建靠前街\"的起点。在古镇的四大城门中，只有北门和东门是较为完好地保留下来的古城门。</span></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/和平古镇_20230210080737A003.jpg\"></p>', '0', '1', '2023-02-10 08:07:41', '2023-02-10 10:18:13');
INSERT INTO `uni_article` VALUES (23, '穿越千年的繁华，福建泉州超详攻略', 'http://192.168.0.102:2301/profile/upload/2023/02/10/泉州_20230210101819A004.jpeg', '【交通】  注：因每人出发点不一致，百度查得到的公交路线就不熬述，  1，泉州离厦门和福州都很近，动车1小时内可达，潮汕站到泉州为2小时；', '<p><span style=\"color: rgb(51, 51, 51);\">【交通】</span></p><p><span style=\"color: rgb(51, 51, 51);\">注：因每人出发点不一致，百度查得到的公交路线就不熬述，</span></p><p><span style=\"color: rgb(51, 51, 51);\">1，泉州离厦门和福州都很近，动车1小时内可达，潮汕站到泉州为2小时；</span></p><p><span style=\"color: rgb(51, 51, 51);\">2，泉州站距离市区7公里左右，可以选择坐公交和打的士，的士价格为30元左右。</span></p><p><span style=\"color: rgb(51, 51, 51);\">3，去崇武古城可到泉州客运中心站做车，票价15元，行程1小时；</span></p><p><span style=\"color: rgb(51, 51, 51);\">4，洛阳桥距泉州城区13公里，古代汉族桥梁建筑的杰作之一，看图片感兴趣的可以前往一看；</span></p><p><span style=\"color: rgb(51, 51, 51);\">5，其他景点滴滴、公交或共享单车都可以到达，</span></p><p><span style=\"color: rgb(51, 51, 51);\">【门票】</span></p><p><span style=\"color: rgb(51, 51, 51);\">1， 泉州清源山网购价65元，游玩当天15;00的可下单。</span></p><p><span style=\"color: rgb(51, 51, 51);\">2，崇武古城网购价45元，游玩当天15:00前可下单。</span></p><p><span style=\"color: rgb(51, 51, 51);\">3，天后宮门票10元，其余景点皆免费。</span></p><p><span style=\"color: rgb(51, 51, 51);\">【住宿】</span></p><p><span style=\"color: rgb(51, 51, 51);\">建议住西街附近，有很多小吃，晚上和白天都可以逛这条古街。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">﻿</span><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/泉州_20230210080805A004.jpeg\"></p>', '0', '0', '2023-02-10 08:08:07', '2023-02-10 10:18:26');
INSERT INTO `uni_article` VALUES (24, '去福建武夷山游玩，看这篇攻略就够', 'http://192.168.0.102:2301/profile/upload/2023/02/10/武夷山_20230210101838A006.jpeg', '【交通】  注：因每人出发点不一致，百度查得到的公交路线就不熬述，  1，泉州离厦门和福州都很近，动车1小时内可达，潮汕站到泉州为2小时；', '<p><span style=\"color: rgb(51, 51, 51);\">桂林山水甲天下，不及武夷一小丘”，</span></p><p><span style=\"color: rgb(51, 51, 51);\">•“武爽占尽人间美，愿乘长风我再来”，多少名人雅士前往武夷山写下山中绝句，</span></p><p><span style=\"color: rgb(51, 51, 51);\">去福建武夷山游玩，看这篇就够！上海前往仅需3小时</span></p><p><span style=\"color: rgb(51, 51, 51);\">我的确再来了，13年一次偶然的机会跟朋友说走就走地去了一趟武夷山，那时的高铁还没开通，去之前对武夷山一点了解也没有。时隔4年多，第二次前往这片神奇的土地，念念不忘，</span></p><p><span style=\"color: rgb(51, 51, 51);\">必有回响，除了美好回忆，这次还带回来了一份详细的攻略，希望对前往武夷山的朋友有所帮助。</span></p><p><span style=\"color: rgb(51, 51, 51);\">去福建武夷山游玩，看这篇就够！上海前往仅需3小时</span></p><p><span style=\"color: rgb(51, 51, 51);\">【武夷山有什么好玩的】</span></p><p><span style=\"color: rgb(51, 51, 51);\">1，天游峰，“其不临溪而能尽九曲之胜，此峰固应靠前也。“先看看来自旅行专家徐霞客对它的五星好评。天游峰位于九曲溪中的六曲溪北面，中心海拔408.8米，为武夷靠前险峰。若有云海，游此山峰，恍若置身莲莱仙境，畅游天宫琼阁，\"天游\"一词因此得名，去福建武夷山游玩，看这篇就够！上海前往仅需3小时去福建武夷山游玩，看这篇就够！上海前往仅需3小时</span></p><p><span style=\"color: rgb(51, 51, 51);\">2，武夷桃源洞，位于武夷山六曲畔内，天游峰旁，四面环山，桃林片片，仙气阵阵，日月潭布列其中，相传在唐朝天宝年间，大批道士因武夷仙灵之说来此隐居修炼。去福建武夷山游玩，看这篇就够！上海前往仅需3小时去福建武夷山游玩，看这篇就够！上海前往仅需3小时</span></p><p><span style=\"color: rgb(51, 51, 51);\">3，九曲溪，全长10公里，因地质断裂构造作用，折为九溪，有八滩五潭。“溪流九曲污云液，山光倒浸清涟漪”，可以说这九曲十八弯是武夷山精华中的精华，去福建武夷山游玩，看这篇就够！上海前往仅需3小时去福建武夷山游玩，看这篇就够！上海前往仅需3小时</span></p><p><span style=\"color: rgb(51, 51, 51);\">4，武夷宫，自然风光，园林建筑，朱子理学，民俗风情，宗教艺术，自然人文景观于一体，异彩缤纷，引人入胜。其中仿宋的宋街是亮点，不长但很有年代的味道。去福建武夷山游玩，看这篇就够！上海前往仅需3小时去福建武夷山游玩，看这篇就够！上海前往仅需3小时</span></p><p><span style=\"color: rgb(51, 51, 51);\">5.</span></p><p><span style=\"color: rgb(51, 51, 51);\">一线天，武夷的奇的岩洞，素有\"鬼斧神工之奇\"的称号。又称灵岩”，岩体受东西向断裂构造和垂直节理作用裂开一缝隙，长178米，宽约1米，较高处49米，窄处0.3米，名贵衣服戴于身者慎入。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">﻿</span><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/武夷山_20230210080827A005.jpeg\"></p>', '0', '0', '2023-02-10 08:08:29', '2023-02-10 10:18:41');
INSERT INTO `uni_article` VALUES (25, '福安观里村：安静纯朴的古民居', 'http://192.168.0.102:2301/profile/upload/2023/02/10/福安观里村-1_20230210101918A008.jpeg', '走进福安甘棠镇观里村，缠绕于山间的云要、耸立巷翠的林木、安静纯朴的古民居、多彩红土地上的峥蝶事迹，这所有的美好构成了别样的乡村美景。  观里村，又称鹤里，位于福安市甘棠镇西北部，距镇区所在地约5.5公里，是沈海复线高速公路甘棠互通口所在地。', '<p><span style=\"color: rgb(51, 51, 51);\">走进福安甘棠镇观里村，缠绕于山间的云要、耸立巷翠的林木、安静纯朴的古民居、多彩红土地上的峥蝶事迹，这所有的美好构成了别样的乡村美景。</span></p><p><span style=\"color: rgb(51, 51, 51);\">观里村，又称鹤里，位于福安市甘棠镇西北部，距镇区所在地约5.5公里，是沈海复线高速公路甘棠互通口所在地。</span></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/福安观里村-1_20230210081622A006.jpeg\"></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/福安观里村-2_20230210081629A007.jpeg\"></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/福安观里村-3_20230210081634A008.jpg\"></p>', '1', '0', '2023-02-10 08:16:36', '2023-02-10 10:19:21');
INSERT INTO `uni_article` VALUES (26, '全网爆红！宁德福安“最美乡村田园”美如画', 'http://192.168.0.102:2301/profile/upload/2023/02/10/宁德福安-1_20230210101943A010.jpg', '金秋时节，福安乡村正值收获期的金黄水稻与周边建筑构成了一幅美好的田园丰收画卷。', '<p><span style=\"color: rgb(51, 51, 51);\">金秋时节，福安乡村正值收获期的金黄水稻与周边建筑构成了一幅美好的田园丰收画卷。</span></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/宁德福安-1_20230210081823A016.jpg\"></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/宁德福安-2_20230210081827A017.jpeg\"></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/宁德福安-3_20230210081830A018.jpeg\"></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/宁德福安-4_20230210081833A019.jpeg\"></p>', '1', '1', '2023-02-10 08:17:11', '2023-02-10 10:19:47');
INSERT INTO `uni_article` VALUES (27, '福州罗源：花卉产业助力乡村振兴', 'http://192.168.0.102:2301/profile/upload/2023/02/10/福州罗源-1_20230210101954A011.jpeg', '近年来，福建省福州市罗源县答里乡西洋村引1导当地农民因地制宜发展特色花卉产业，拓宽农民增收渠道，全面推进乡村振兴。据了解，这个小村庄占据了福建省园林绿化苗木市场份额的半壁江山，福州市区80％以上用于城市绿化的花卉苗木都产自这里，西洋村的年产值达到5亿元，户均年收入超过25万元。', '<p><span style=\"color: rgb(51, 51, 51);\">近年来，福建省福州市罗源县答里乡西洋村引1导当地农民因地制宜发展特色花卉产业，拓宽农民增收渠道，全面推进乡村振兴。据了解，这个小村庄占据了福建省园林绿化苗木市场份额的半壁江山，福州市区80％以上用于城市绿化的花卉苗木都产自这里，西洋村的年产值达到5亿元，户均年收入超过25万元。</span></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/福州罗源-1_20230210081900A020.jpeg\"></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/福州罗源-2_20230210081903A021.jpg\"></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/福州罗源-3_20230210081906A022.jpeg\"></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/福州罗源-4_20230210081908A023.jpeg\"></p>', '1', '0', '2023-02-10 08:17:55', '2023-02-10 10:20:00');
INSERT INTO `uni_article` VALUES (28, '2017年春运火车票即将开抢！这份攻略请收好', 'http://192.168.0.102:2301/profile/upload/2023/02/10/2017年_20230210102012A012.png', '2017年的春节比往年来得早了一些，所以，2017年的春运也来得早了一些。据了解，2017年春运将从1月13日开始，比今年提前了11天，是五年来最早的春运。  这意味着，今年你可以比往年更早放假、回家过年！  但是！由于春运开始得早，学生流、务工流相互叠加，出行高峰将来得早、时间长、峰值高。简单说：回家过年的车票更加难买了！', '<p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/2017年_20230210082355A024.png\"></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">2017年的春节比往年来得早了一些，所以，2017年的春运也来得早了一些。据了解，2017年春运将从1月13日开始，比今年提前了11天，是五年来最早的春运。</span></p><p><span style=\"color: rgb(51, 51, 51);\">这意味着，今年你可以比往年更早放假、回家过年！</span></p><p><span style=\"color: rgb(51, 51, 51);\">但是！由于春运开始得早，学生流、务工流相互叠加，出行高峰将来得早、时间长、峰值高。简单说：回家过年的车票更加难买了！</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">按现行的电话、网络、客户端订票的预售期为30天的规则，农历小年 （2017年1月20日） 的票将于12月22日开抢，除夕 （2017年1月27日） 的票将于12月25日开</span></p><p><span style=\"color: rgb(51, 51, 51);\">抢，如果你想顺利地搞定车票，回家过年，请①设好提醒，②调好闹钟，③仔细阅读井收藏这份攻路，准备抢票吧！</span></p><p><span style=\"color: rgb(51, 51, 51);\">有了这些攻略</span></p><p><span style=\"color: rgb(51, 51, 51);\">买票就会容易很多呢</span></p><p><span style=\"color: rgb(51, 51, 51);\">最后</span></p><p><span style=\"color: rgb(51, 51, 51);\">在这里祝愿大家</span></p><p><span style=\"color: rgb(51, 51, 51);\">都能早日买到回家的火车票</span></p>', '2', '0', '2023-02-10 08:22:03', '2023-02-10 10:20:21');
INSERT INTO `uni_article` VALUES (29, '福州新区发展规划出炉！未来的福州新区将这样！', 'http://192.168.0.102:2301/profile/upload/2023/02/10/福州新区_20230210102024A013.png', '福建台政府近日作出正式批复  原则同意 《福州新区发展规划》  《规划》的规划期为2016年至2030年  是指导福州新区当前和今后一段时期开发建设的行动纲领和编制相关专项规划的重要依据。  让我们一起来了解下福州新区发展规划', '<p><span style=\"color: rgb(51, 51, 51);\">福建台政府近日作出正式批复</span></p><p><span style=\"color: rgb(51, 51, 51);\">原则同意 《福州新区发展规划》</span></p><p><span style=\"color: rgb(51, 51, 51);\">《规划》的规划期为2016年至2030年</span></p><p><span style=\"color: rgb(51, 51, 51);\">是指导福州新区当前和今后一段时期开发建设的行动纲领和编制相关专项规划的重要依据。</span></p><p><span style=\"color: rgb(51, 51, 51);\">让我们一起来了解下福州新区发展规划吧~</span></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/福州新区_20230210082424A025.png\"></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">福州新区有多大</span></p><p><span style=\"color: rgb(51, 51, 51);\">福州新区规划控制总面积1892平方公里，涉及福州沿海、沿江6个县（市）区部分乡镇（街道）。其中初期规划面积800平方公里，规划范围涉及福州沿海、沿江4个市、区26个乡镇（街道），涵盖7个国家级和3个省级经济开发区。</span></p>', '2', '1', '2023-02-10 08:24:25', '2023-02-12 23:37:34');
INSERT INTO `uni_article` VALUES (30, '2023年“国际博物馆日”中国主会场活动协调会在榕召开', 'http://192.168.0.102:2301/profile/upload/2023/02/10/国际博物馆日-1_20230210114330A001.png', '为切实做好2023年“5•18国际博物馆日”中国主会场活动筹备工作，2月1日，国家文物局副局长顾玉才带队来闽，召开主会场协调会并进行工作调研。', '<p><span style=\"color: rgb(51, 51, 51);\">为切实做好2023年“5•18国际博物馆日”中国主会场活动筹备工作，2月1日，国家文物局副局长顾玉才带队来闽，召开主会场协调会并进行工作调研。福建省人民政府副省长、省文化和旅游厅厅 长王金福，福建省政府副秘书长颜志煌，福建省文化和旅游厅副厅 长、省文物局局长、福建博物院院长傅染生，以及福州市副市长朱训志等领导陪同调研。</span></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/国际博物馆日-1_20230210114343A002.png\"></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">今年1月，经国家文物局批复同意，2023年〝5°18国际博物馆日”中国主会场设在福建博物院，福州市为主会场活动举办城市。主会场活动由国家文物局和福建省人民政府共同主办，福建省文化和旅游厅、福建省文物局、福州市人民政府和中国博物馆协会联合承办。</span></p><p><span style=\"color: rgb(51, 51, 51);\">为进一步完善主会场活动策划工作，2月1日下午，2023年\"5-18国际博物馆日”中国主会场活动协调会在福建博物院召开。会议听取各参会单位意见建议，共同谋划活动方案，并对福建省文物局提出的主会场活动策划方案进行集中研究讨论。国家文物局领导、博物馆司领导及博物馆处负责人出席会议并讲话，福建省文化和旅游厅、省文物局及相关处室、厅属文博单位、福州市政府、福州市文物局等单位的领导参加会议。</span></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/国际博物馆日-2_20230210114350A003.png\"></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">福州市人民政府副市长朱训志也在会上进行了发言。他表示，在国家文物局、福建省政府和各相关部门的指导下，福州一定将全力做好各项保障工作；在今后的城市发展中，福州还将深入挖掘利用好丰富的文化遗产资源，让博物馆日更好成为保护和传承“福文化”的重要殿堂。</span></p><p><span style=\"color: rgb(51, 51, 51);\">国家文物局博物馆与社会文物司、福建省文化和旅游厅、省文物局及相关处室负责人，部分厅属文博单位和福州市政府、福州市文物局等负责人也在会上作了交流发言。</span></p><p><span style=\"color: rgb(51, 51, 51);\">另据介绍，当日在福州参加主会场活动协调会之余，顾玉才等国家文物局领导还先后参观检查了福建博物院、林觉民故居、严复故居、福建民俗博物馆、黄巷小黃楼、水榭戏台等文博单位（场所），详细了解文物保护管理情况，并提出意见建议。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\"><span class=\"ql-cursor\">﻿</span></span><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/国际博物馆日-3_20230210114358A004.png\"></p>', '3', '0', '2023-02-10 08:25:11', '2023-02-10 11:44:02');
INSERT INTO `uni_article` VALUES (31, '福清海口：千年古镇闹元宵', 'http://192.168.0.102:2301/profile/upload/2023/02/10/福清海口-1_20230210114429A005.jpg', '旅网讯（念彬、章松青） 2月5日晚．正值农历正月十五元育节，福建著名侨乡福清市海口古镇正月十五闹元育拉开帷幕，吸引了众多当地民众和侨胞乡亲踊跃参与。', '<p><span style=\"color: rgb(51, 51, 51);\">福旅网讯（念彬、章松青） 2月5日晚．正值农历正月十五元育节，福建著名侨乡福清市海口古镇正月十五闹元育拉开帷幕，吸引了众多当地民众和侨胞乡亲踊跃参与。该活动由福清市海口镇人民政府丰办．福清市破姓体中心，福清市文化体音和旅游局协办福清市融媒传媒有限公司承办。旨在更好传承传统文化。藑造浓豆的文化祭用。</span></p><p><br></p><p><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/福清海口-1_20230210114442A006.jpg\"></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">千年古镇，千年一族间，梦幻时空。当晚，民俗文化活动在晚上6时开展游灯活动，按照千年来的风俗，两条长约80米的长龙双龙游龙江，在龙汇古桥桥头．途经塔下十字街、元载文化中心、最后在瑞峰寺出现。现场热闹非凡，人山人海。天上朗月清辉，倒影龙江。地上花市如昼，人流交织。海口镇各村开展游灯活动，有舞龙、舞狮、十番及游灯队等参与，快闪表演，花秀．上千落花灯游走在古街的街头巷尾，景一番天上人间景色。</span></p><p><span style=\"color: rgb(51, 51, 51);\">千年古镇，千年一瞬间，梦幻时空。当晚，民俗文化活动在晚上6时开展游灯活动，按照千年来的风俗，两条长约80米的长龙双龙游龙江，在龙江古桥桥头、送经塔下十字街、元载文化中心、最后在瑞峰寺出现。现场热闹非凡，人山人海。天上朗月清辉，倒影龙江。地上花市如昼，人流交织。海口镇各村开展游灯活动，有舞龙、舞狮、十番及游灯队等参与，快闪表演，烟花秀，上千盏花灯游走在古街的街头巷尾，是一番天上人间景色。</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\"><span class=\"ql-cursor\">﻿</span></span><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/福清海口-2_20230210114449A007.jpg\"></p>', '3', '1', '2023-02-10 08:25:26', '2023-02-10 11:44:51');
COMMIT;

-- ----------------------------
-- Table structure for uni_banner
-- ----------------------------
DROP TABLE IF EXISTS `uni_banner`;
CREATE TABLE `uni_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播图ID',
  `title` varchar(63) NOT NULL DEFAULT '' COMMENT '轮播图标题',
  `link` varchar(1000) NOT NULL DEFAULT '' COMMENT '轮播图链接地址',
  `img_url` varchar(255) NOT NULL DEFAULT '' COMMENT '轮播图图片地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='轮播图表';

-- ----------------------------
-- Records of uni_banner
-- ----------------------------
BEGIN;
INSERT INTO `uni_banner` VALUES (20, '福建旅游必去十大景点?福建福州十大旅游景点 福建十大旅游景点', 'https://image.baidu.com/search/detail?ct=503316480&z=undefined&tn=baiduimagedetail&ipn=d&word=%E7%A6%8F%E5%BB%BA%E6%97%85%E6%B8%B8%E5%9B%BE%E7%89%87&step_word=&ie=utf-8&in=&cl=2&lm=-1&st=undefined&hd=undefined&latest=undefined&copyright=undefined&cs=3390693675,1841418945&os=3086333804,2582306020&simid=1128474,745110103&pn=0&rn=1&di=7169026086108397569&ln=1446&fr=&fmq=1675918358001_R&fm=&ic=undefined&s=undefined&se=&sme=&tab=0&width=undefined&height=undefined&face=undefined&is=0,0&istype=0&ist=&jit=&bdtype=0&spn=0&pi=0&gsm=1e&objurl=https%3A%2F%2Fc4-q.mafengwo.net%2Fs9%2FM00%2FAB%2F3F%2FwKgBs1fJToSAUdGdACNHjm_5KTE47.jpeg&rpstart=0&rpnum=0&adpicid=0&nojc=undefined&dyTabStr=MCwzLDQsMSw2LDUsOCw3LDIsOQ%3D%3D', 'http://192.168.0.102:2301/profile/upload/2023/02/09/banner1_20230209125255A002.jpg', '2023-02-09 12:52:59', '2023-02-12 20:59:59');
INSERT INTO `uni_banner` VALUES (21, '【福建旅游图片——南靖 田螺坑土楼摄影图片】风光摄影_太...', '撒打算', 'http://192.168.0.102:2301/profile/upload/2023/02/09/banner2_20230209133719A006.jpg', '2023-02-09 13:37:21', '2023-02-12 21:00:35');
INSERT INTO `uni_banner` VALUES (22, '在福建十大旅游景点中,都靠近山和水,其中有六个是福建旅游...', 'asdq', 'http://192.168.0.102:2301/profile/upload/2023/02/09/banner3_20230209133736A007.jpg', '2023-02-09 13:37:37', '2023-02-12 21:00:53');
COMMIT;

-- ----------------------------
-- Table structure for uni_news
-- ----------------------------
DROP TABLE IF EXISTS `uni_news`;
CREATE TABLE `uni_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '要闻ID',
  `name` varchar(63) NOT NULL DEFAULT '' COMMENT '要闻名称',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '要闻内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='要闻表';

-- ----------------------------
-- Records of uni_news
-- ----------------------------
BEGIN;
INSERT INTO `uni_news` VALUES (20, '福建要闻', '福建旅游资讯网坚持以习近平新时代中国特色社会主义思想为指导，以服务旅游业高质量发展为重点，及时发布权威信息，对用户提供的主要服务包括:发布福建文化和旅游相关政策法规、跟踪报道八闽大地旅游重点事件等。', '2023-02-09 19:31:05', NULL);
COMMIT;

-- ----------------------------
-- Table structure for uni_scenic_spot
-- ----------------------------
DROP TABLE IF EXISTS `uni_scenic_spot`;
CREATE TABLE `uni_scenic_spot` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '景点ID',
  `name` varchar(63) NOT NULL DEFAULT '' COMMENT '景点名称',
  `img_url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片地址',
  `address` varchar(63) NOT NULL DEFAULT '' COMMENT '景点地址',
  `introduction` varchar(100) NOT NULL DEFAULT '' COMMENT '景点简介',
  `is_hot` varchar(1) NOT NULL DEFAULT '0' COMMENT '是否热门 0 不是热门 1 热门',
  `city` varchar(20) NOT NULL DEFAULT '' COMMENT '景点城市',
  `details` varchar(2000) NOT NULL DEFAULT '' COMMENT '景点详情',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='景点信息表';

-- ----------------------------
-- Records of uni_scenic_spot
-- ----------------------------
BEGIN;
INSERT INTO `uni_scenic_spot` VALUES (20, '东山岛', 'http://192.168.0.102:2301/profile/upload/2023/02/09/东山岛_20230209124106A001.jpg', '漳州市东山县东山岛', '东山岛位于中国厦门和汕头两个经济特区之间，东去台湾高雄110海里，南下香港210海里，环岛有32个岛岭，总面积有194平方公里，是福建省重点旅游区。', '1', '漳州市', '<p><span style=\"color: rgb(51, 51, 51);\">东山岛，别称陵岛，形似蝴蝶亦称蝶岛，位于中国福建省南部沿海，隶属于福建省漳州市东山县，是福建省第二大岛。中国第七大岛，介于厦门市和广东省汕头之间，位于厦、漳、泉闽南金三角经济区的南端，东濒台湾海峡，西临诏安湾与诏安一水之隔；东南是著名的国南渔场和号东渔场交汇处；北经曾经有八尺门海堤同云宵县接壤，2014年5月已拆除，面积220.18平方公里。</span></p><p><span style=\"color: rgb(51, 51, 51);\">截至2012年底，东山岛设有国家级经济技术开发区、旅游经济开发区，下辖7个乡镇61个村和16个社区，总人口21.57万人。2013年，东山实现地区生产总值126.8亿元，较2012年增长10.1%；农业总产值51.5亿亿元，规模工业产值182.8亿元，全社会固定资产投资120亿元，社会消费品零售总额33,31亿元，农民人均纯收入13140元，比2012年增长13.4%。</span></p><p><span style=\"color: rgb(51, 51, 51);\">东山曾获得 中国优秀旅游县、福建省最佳旅游目的地、福建省十大旅游品牌、十大滨海旅游精品、福建十大美丽海岛 等荣誉。</span></p><p><span style=\"color: rgb(51, 51, 51);\"><span class=\"ql-cursor\">﻿</span></span><img src=\"http://192.168.0.102:2301/profile/upload/2023/02/10/东山岛_20230210070140A002.jpg\"></p>', '2023-02-09 12:41:31', '2023-02-10 07:01:42');
INSERT INTO `uni_scenic_spot` VALUES (21, '福建士楼•永定景区', 'http://192.168.0.102:2301/profile/upload/2023/02/09/福建士楼•永定景区_20230209133403A003.jpeg', '龙岩市永定县凤城镇', '永定客家土楼是世界上与众不同的民居建筑奇葩，以历史悠久、风格独特、规模宏大、功能齐全而闻名于世。景区内土楼建筑独特，其中有富丽堂皇的振成楼、宛如布达拉宫的奎聚楼、“袖珍圆楼”如升楼等土楼40多座。', '1', '龙岩', '<p><span style=\"color: rgb(51, 51, 51);\">永定土楼，又称简子楼，位于中国东南沿海的福建省龙岩市永定区，最古老的是馥馨楼，位于湖雷镇下寨村，是福建现存最早的土楼。建于公元七六九年，至今已有一千二百多年历史，是福建土楼群中最古老的一座。</span></p><p><span style=\"color: rgb(51, 51, 51);\">永定土楼千姿百态，种类繁多，分方楼园楼两大体系。永定被称为一座没有大门的中国客家土楼博物馆。在众多的土楼中，其中最具代表性的是五风楼、大的方楼和圆楼。<span class=\"ql-cursor\">﻿</span></span></p><p><span style=\"color: rgb(51, 51, 51);\">2008年7月，成功列入世界遗产名录。2011年8月，获国家5A级旅游景区称号。 2016年1月，入选”全国文明旅游先进单位。 永定士楼管是央视春晚公益广告 《筷子篇》“明礼“部分的拍摄地。</span></p>', '2023-02-09 13:34:50', NULL);
INSERT INTO `uni_scenic_spot` VALUES (22, '湄洲岛', 'http://192.168.0.102:2301/profile/upload/2023/02/09/湄洲岛_20230209133503A004.jpeg', '莆田市秀屿区湄洲岛湄洲北大道1588号', '湄洲岛是莆田市第二大岛，全岛南北纵向狭长，形如娥眉而得名，被誉为“南国蓬英”，是妈祖文化的发祥地。岛上对外开放有四个景区分别是：妈祖祖庙景区、鹅尾神石园景区、黄金沙滩景区、湄屿潮音景区。\n', '1', '莆田', '<p><span style=\"color: rgb(51, 51, 51);\">溜洲岛，福建莆田市秀站区湄洲镇辖岛，位处位于福建省莆田市中心东南42公里，距大陆仅1.82海里，是莆田市第二大岛，是妈祖的成神地。湄洲岛陆域面积14.35平方公里，人口3.8万，年均气温21°C，海岸线长30.4公里。包括大小岛、屿、礁30多个。距台湾省台中港72海里。全岛南北长9.6公里，东西宽1.3公里，中部为平原，海岸线长30.4公里。全镇包括乌丘都使用莆田话，其南为莆田乌丘乡。</span></p><p><span style=\"color: rgb(51, 51, 51);\">湄洲岛素有\"南国蓬菜\"美称，既有扣人心弦的湄屿潮音、湄洲祖庙、“东方夏威夷”、九宝澜黄金沙滩、“小石林\"鹅尾怪石等风景名胜30多处，更有2亿妈祖信众信仰的妈祖祖庙，每年农历三月甘三妈祖诞辰日和九月初九妈祖升天日期间，朝圣旅游盛况空前，被誉为\"东方麦加”。</span></p><p><span style=\"color: rgb(51, 51, 51);\">1998年湄洲岛被辟为 福建省对外开放旅游经济区，1992年设立国家旅游度假区，2012年被列入国家AAAA级风景名胜区。</span></p>', '2023-02-09 13:35:28', NULL);
INSERT INTO `uni_scenic_spot` VALUES (23, '三坊七巷', 'http://192.168.0.102:2301/profile/upload/2023/02/09/三坊七巷_20230209133539A005.jpg', '福州市鼓楼区南后街东侧', '遐迎闻名的三坊七巷历史文化街区，坐落在福州这座具有2200多年历史的古老城市中心。三坊七巷占地约40公项，是南后街两旁从北到南依次排列的十条坊巷的简称。', '1', '福州', '<p><span style=\"color: rgb(51, 51, 51);\">三坊七巷是国家5A级旅游景区，是福州老城区经历了建国后的拆迁建设后仅存下来的一部分。是福州的历史之源、文化之根。</span></p><p><span style=\"color: rgb(51, 51, 51);\">三坊七巷自音、唐形成起，便是贵族和士大夫的聚居地，清至民国走向辉煌。区域内现存古民居约有270座，有159处被列入保护建筑。以沈葆桢故居、林觉民故居、严复故居等9处典型建筑为代表的三坊七巷古建筑群，被国务院公布为全国重点文物保护单位。</span></p><p><span style=\"color: rgb(51, 51, 51);\">福州市最早在秦汉时期名为〝治”，而后因为境内一座福山而更名^福州\"。福州依山僗水，自然风光秀美，同时也是福建省一直以来重点发展的中心省会城市，因此从古至今汇聚了大批当地的大家族，如今著名的\"三坊七巷\"里就曾先后走出过如严复、陈宝琛、林觉民和林长民等中国近代史上众多名人，三坊七巷为国内现存规模较大、保护较为完整的历史文化街区，是全国为数不多的古建筑遗存之一，有“中国城市里坊制度活化石\'和“中国明清建筑博物馆\"的美称。</span></p><p><span style=\"color: rgb(51, 51, 51);\">2009年6月10日，三坊七巷历史文化街区获得文化部、国家文物局批准的“中国十大历史文化名街-荣誉称号。11)景区自恢复运营之日起至2020年12月31日对全国医护工作者等免费开放。</span></p>', '2023-02-09 13:35:59', '2023-02-09 18:29:59');
INSERT INTO `uni_scenic_spot` VALUES (24, '太姥山', 'http://192.168.0.102:2301/profile/upload/2023/02/09/太姥山_20230209191253A002.jpg', '宁德市福鼎市秦屿镇九七五县道太姥山', '太姥山是国家地质公园，它雄峙于东海之滨，山海相依、傲岸秀拔，以“山海大观”称奇。传说东海诸仙常年聚会于此，故有“海上仙都”的美營。它北望浙江雁荡、西眺福建武夷，三者成鼎足之势，闽人称武夷、太姥为双绝。', '1', '宁德', '<p><span style=\"color: rgb(51, 51, 51);\">太姥山，位于福建省东北部。狭义的太姥山系指福鼎市南部秦屿镇以覆鼎峰为中心的山地，也是太姥山风景名胜区的核心地带，在福鼎市正南距市区四十五公里，约在东经120度与北纬27度的附近。挺立于东海之滨，二面临海，</span></p><p><span style=\"color: rgb(51, 51, 51);\">一面背山。主峰海拔917.3米。广义的太姥山，则指展布于宁德市东北部交溪以东一东海之间的一系列山地，或称太姥山脉。</span></p><p><span style=\"color: rgb(51, 51, 51);\">相传尧时老母种蓝（蓝草，其汁色蓝，榨之以染布帛）于山中，逢道士而羽化仙去，故名”太母”，后又改称“太姥”。传说东海诸仙常年聚会于此，故有“海上仙都”的美誉。武夷、太姥、雁荡。构成闽越三大名山。</span></p><p><span style=\"color: rgb(51, 51, 51);\">太姥山为交溪与福鼎、霞浦两县所有独流入海的溪流的分水岭。该山际山体主要由中生代火山岩、花岗岩构成。山体蕴藏的矿产主要有铅、锌、银、锅、明矾石、石英岩、高岭士、玄武岩等。森林覆盖率达46%以上。</span></p><p><span style=\"color: rgb(51, 51, 51);\">太姥山/风景名胜区，位于太姥山区东北端福鼎市境内，是国家级风景名胜区，同时，太姥山是国内唯一的花岗岩丘陵的地形上发育的峰林地貌的地区，也是国内晶洞花岗岩带上唯一的峰林地貌千2010年列入世界地质公园。</span></p>', '2023-02-09 19:13:28', NULL);
INSERT INTO `uni_scenic_spot` VALUES (25, '桃源洞', 'http://192.168.0.102:2301/profile/upload/2023/02/09/桃源洞_20230209191404A003.jpg', '三明市永安市城北9公里205国道旁', '桃源洞在永安市北10公里、紧靠着205国道的拼桐山中，面积37平方公里，因景区内有桃花润而得名。宋李纲有诗云：“拼桐百里远沙溪，水石称为小武夷”，故又有“小武夷”之称。', '1', '三明', '<p><span style=\"color: rgb(51, 51, 51);\">在福建省三明市永安市北10公里、紧靠着205国道的拼相山中，面积37平方公里，因景区内有桃花润而得名。宋李纲有诗云：拼相百里远沙溪，水石称为小武夷”，故又有”小武夷”之称。明</span></p><p><span style=\"color: rgb(51, 51, 51);\">万历年间(1573~1619年)，已辟为游览区，筑亭台楼阁10余座。1987年，与鳞隐石林一起被评为首批省级风景名胜区：1994年，又一起被评为第三批国家重点风景名胜区，以桃源洞口为轴心分为桃源洞、百丈岩、葛里、修竹湾、拼相潭等5个旅游景区，73处旅游景点。</span></p><p><span style=\"color: rgb(51, 51, 51);\">桃源洞口实际是两峰之间裂开的巨铸。一条桃花洞迂回曲折，穿过双峰耸立的狭谷隆口，潺潺汇入沙溪。120米高的绝壁上有明万历年间举人陈源港所书”桃源洞口\"四个大字，每字2米见</span></p><p><span style=\"color: rgb(51, 51, 51);\">方，下题七律《桃源洞》诗一首，右上端横模一块10多米长的鲤鱼石。</span></p>', '2023-02-09 19:14:07', NULL);
INSERT INTO `uni_scenic_spot` VALUES (26, '武夷山', 'http://192.168.0.102:2301/profile/upload/2023/02/09/武夷山_20230209191439A004.jpg', '南平市武夷山市武夷山风景区', '武夷山风景名胜区 面积约70平方公里，属典型的丹霞地貌，发育典型的丹霞单面山、块状山，柱状山临水而立，千姿百态。“三三秀水清如玉，六六奇蜂翠插天”，构成了奇幻百出的武夷山水之胜。\n', '1', '南平', '<p><span style=\"color: rgb(51, 51, 51);\">武夷山位于江西与福建西北部两省交界处，武夷山脉北段东南麓总 面积999.75平方公里，是中国著名的风景旅游区和避暑胜地。属典型的丹霞地貌，是首批国家级重点风景名胜区之一。</span></p><p><span style=\"color: rgb(51, 51, 51);\">武爽山是三教名山。 自秦汉以来，武夷山就为羽流神家栖息之地，留下了不少宫观、道院和庵堂故址。武夷山还曾是儒家学者倡道讲学之地。</span></p><p><span style=\"color: rgb(51, 51, 51);\">武夷山自然保护区，是地球同纬度地区保护最好、物种最丰富的生态系统，拥有2527种植物物种，近5000种野生动物。</span></p><p><span style=\"color: rgb(51, 51, 51);\">武夷山是世界文化与自然双重选产、世界生物圈保护区、 全国重点文物保护单位(武夷山崖基群）、国家重点风景名胜区、国家AAAAA级旅游景区、国家级自然保护区、国家水利风景区、国家生态旅游示范区、 16全国文明风景旅游区示范点。</span></p><p><span style=\"color: rgb(51, 51, 51);\">1999年12月，根据世界送产遊选标准(I)(VI(VI(×)，武夷山(Mount wuyi)被联合国教科文組织列入《世界遗产名录》（編号911）的世界文化与自然双重遗产，成为中国世界遗产之2017年7月9日，武夷山成功列入世界文化与自然遗产地。2020年，武夷山自恢复开放之日起至2020年12月 31日对全国医护工作者(含港澳台地区)免费。</span></p>', '2023-02-09 19:14:41', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
