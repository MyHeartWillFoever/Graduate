/*
Navicat MySQL Data Transfer

Source Server         : engine
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : engine

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2016-06-09 16:28:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `answers`
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` bigint(255) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `question` longtext COMMENT '问题描述',
  `answer` longtext COMMENT '答案',
  `link` longtext COMMENT '答案链接',
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '存储时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225140 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` bigint(255) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `question` varchar(255) DEFAULT NULL COMMENT '问题',
  `detail` longtext COMMENT '问题描述',
  `link` longtext COMMENT '提问链接',
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '存储时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21414 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(255) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `detail` longtext COMMENT '个人简介',
  `link` longtext COMMENT '答案链接',
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '存储时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55086 DEFAULT CHARSET=utf8;