/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : taobao

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-07-09 18:12:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_group`
-- ----------------------------
DROP TABLE IF EXISTS `tb_group`;
CREATE TABLE `tb_group` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `pid` smallint(3) NOT NULL DEFAULT '0' COMMENT '父id',
  `name` varchar(30) NOT NULL COMMENT '用户组名',
  `describe` varchar(255) DEFAULT NULL COMMENT '用户组说明',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_group
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `pid` mediumint(5) NOT NULL,
  `name` varchar(30) NOT NULL COMMENT '英文名称',
  `cnname` varchar(30) DEFAULT NULL COMMENT '中文名称',
  `flag` tinyint(1) NOT NULL COMMENT '菜单状态:1,显示;0:不显示',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('1', '0', 'index', '首页', '1', '0', null);

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` smallint(3) NOT NULL DEFAULT '0' COMMENT '用户组id',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户状态',
  `created_at` int(11) NOT NULL COMMENT '添加时间',
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
