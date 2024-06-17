/*
 Navicat Premium Data Transfer

 Source Server         : mysql_connect
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 16/01/2024 22:21:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for userbookdownloads
-- ----------------------------
DROP TABLE IF EXISTS `userbookdownloads`;
CREATE TABLE `userbookdownloads`  (
  `download_id` int(0) NOT NULL AUTO_INCREMENT,
  `book_download_points` int(0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_id` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  `book_cover_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`download_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userbookdownloads
-- ----------------------------
INSERT INTO `userbookdownloads` VALUES (2, 188, '汐渐', 'hyg3146624068@163.com', '毛泽东选集全四本', NULL, 1, '2024-01-16 18:52:29', '2024-01-16 18:52:29', 6, 'https://xiao-shu-shu.oss-cn-shanghai.aliyuncs.com/Cover/b22d9b63-0344-412b-a4ac-5b17a0f98f95.png');
INSERT INTO `userbookdownloads` VALUES (3, 188, '汐渐', 'hyg3146624068@163.com', '毛泽东选集全四本', '毛泽东', 1, '2024-01-16 19:30:36', '2024-01-16 19:30:36', 6, 'https://xiao-shu-shu.oss-cn-shanghai.aliyuncs.com/Cover/b22d9b63-0344-412b-a4ac-5b17a0f98f95.png');
INSERT INTO `userbookdownloads` VALUES (4, 188, '汐渐', 'hyg3146624068@163.com', '毛泽东选集全四本', '毛泽东', 1, '2024-01-16 20:27:25', '2024-01-16 20:27:25', 6, 'https://xiao-shu-shu.oss-cn-shanghai.aliyuncs.com/Cover/b22d9b63-0344-412b-a4ac-5b17a0f98f95.png');

SET FOREIGN_KEY_CHECKS = 1;
