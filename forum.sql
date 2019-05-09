/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : forum

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-05-09 09:20:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gg_comment
-- ----------------------------
DROP TABLE IF EXISTS `gg_comment`;
CREATE TABLE `gg_comment` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `com_content` text NOT NULL,
  `com_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gg_comment
-- ----------------------------
INSERT INTO `gg_comment` VALUES ('1', '剑圣', '你的剑就是我的剑', '2018-11-09 00:00:00');
INSERT INTO `gg_comment` VALUES ('2', '德玛西亚', '人在塔在', '2018-11-03 00:00:00');
INSERT INTO `gg_comment` VALUES ('3', '武器大师', '真正的大师永远', '2018-11-02 00:00:00');
INSERT INTO `gg_comment` VALUES ('7', 'pulaige', '死侍', '2018-11-19 17:32:48');
INSERT INTO `gg_comment` VALUES ('11', 'pulaige', '网页真不错', '2018-11-21 20:08:59');
INSERT INTO `gg_comment` VALUES ('13', 'tom', '蓝莲花', '2018-12-02 20:54:41');

-- ----------------------------
-- Table structure for gg_note
-- ----------------------------
DROP TABLE IF EXISTS `gg_note`;
CREATE TABLE `gg_note` (
  `note_content` text,
  `note_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note_like` int(30) DEFAULT NULL,
  `note_id` int(255) NOT NULL AUTO_INCREMENT,
  `note_photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gg_note
-- ----------------------------
INSERT INTO `gg_note` VALUES ('亲爱的', '2018-11-21 12:25:20', '20', '1', 'images\\1542728413433wy_img3.jpg');
INSERT INTO `gg_note` VALUES ('一直听说牛油果吃起来像肥皂、肥肉，虽然很难吃，但是价格却很贵，我还是想尝试一下。今天公司新到了新西兰牛油果，这是新西兰牛油果是第一次在中国上市，个头比普通牛油果大了一倍，被誉为“超牛果”。好奇心驱使我尝了一颗，第一次吃牛油果没有见识，切开牛油果费了好大劲，切成了这样。', '2018-11-21 12:25:29', '10', '2', 'images\\1542728413433wy_img3.jpg');
INSERT INTO `gg_note` VALUES ('春眠不觉晓，处处蚊子咬', '2018-11-21 12:25:36', '2', '4', 'images\\1542769642957wy_img3.jpg');

-- ----------------------------
-- Table structure for gg_note_com
-- ----------------------------
DROP TABLE IF EXISTS `gg_note_com`;
CREATE TABLE `gg_note_com` (
  `note_id` int(50) DEFAULT NULL,
  `note_com_id` int(20) NOT NULL AUTO_INCREMENT,
  `note_com_content` text,
  `note_com_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note_com_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`note_com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gg_note_com
-- ----------------------------
INSERT INTO `gg_note_com` VALUES ('2', '3', '黑夜里的黑猫', '2018-11-21 11:00:46', 'pulaige');
INSERT INTO `gg_note_com` VALUES ('4', '11', '曾梦想仗剑走天涯', '2018-12-02 20:55:15', 'tom');
INSERT INTO `gg_note_com` VALUES ('1', '12', '看一看世界的繁华', '2018-12-02 20:55:36', 'tom');
INSERT INTO `gg_note_com` VALUES ('1', '13', '曾让你心疼的姑娘', '2018-12-02 20:55:48', 'tom');
INSERT INTO `gg_note_com` VALUES ('2', '14', '才发现脚下的路', '2018-12-02 21:01:38', 'tom');

-- ----------------------------
-- Table structure for gg_user
-- ----------------------------
DROP TABLE IF EXISTS `gg_user`;
CREATE TABLE `gg_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `user_password` varchar(15) DEFAULT NULL,
  `user_email` varchar(30) DEFAULT NULL,
  `user_profile_photo` varchar(255) DEFAULT NULL,
  `user_level` varchar(20) DEFAULT NULL,
  `user_rights` varchar(20) DEFAULT NULL,
  `user_registration_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_birthday` date DEFAULT NULL,
  `user_age` tinyint(4) DEFAULT NULL,
  `user_telephone_numbuter` int(20) DEFAULT NULL,
  `user_nickname` varchar(20) DEFAULT NULL,
  `user_photo` varchar(255) DEFAULT NULL,
  `user_sex` varchar(2) DEFAULT NULL,
  `user_qq` int(13) DEFAULT NULL,
  `user_wechat` varchar(30) DEFAULT NULL,
  `user_hobby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gg_user
-- ----------------------------
INSERT INTO `gg_user` VALUES ('1', 'pulaige', '123', '123123@qq.com', null, null, '1', '2019-05-09 09:20:08', '2018-11-01', '20', '1123123112', null, null, '男', '7777777', 'pulaige', '爱国敬业诚信友善');
INSERT INTO `gg_user` VALUES ('2', 'tom', '123', '123456@qq.com', null, null, '2', '2019-05-08 10:37:16', '2018-11-09', '22', '1234141414', null, null, '女', '12111123', 'tom123', '你好啊');
INSERT INTO `gg_user` VALUES ('3', 'kity', '123', '1233211@qq.com', null, null, '3', '2019-05-09 09:20:17', '2018-12-13', '18', '1234567897', null, null, '女', '123123123', 'kitty', '嘻嘻嘻');
