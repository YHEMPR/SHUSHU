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

 Date: 20/01/2024 15:12:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for db_account
-- ----------------------------
DROP TABLE IF EXISTS `db_account`;
CREATE TABLE `db_account`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `register_time` datetime(0) NULL DEFAULT NULL,
  `points` int(0) NULL DEFAULT NULL,
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar_uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `last_sign_in_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of db_account
-- ----------------------------
INSERT INTO `db_account` VALUES (1, 'yhempr', 'yhempr@gmail.com', '$2a$10$zJLWCSvVbKTTt.UgkgklkeaJVnSQVHFj.XTRTVH3HhithpafAQ3/y', 'user', '2024-01-04 09:54:07', 5000, 'https://xiao-shu-shu.oss-cn-shanghai.aliyuncs.com/Avatar/66efea0f-5cb9-4ac8-86da-41d020e5c2e1.png', 'Avatar/66efea0f-5cb9-4ac8-86da-41d020e5c2e1.png', NULL);
INSERT INTO `db_account` VALUES (2, '马英九', '2323223@qq.com', '$2a$10$9C1sEUj30.Gky5YTg2NBp.GLemjnftCTu/aiR1YlyPwokLdDfI9yG', 'user', '2024-01-04 09:56:43', 500, 'https://xiao-shu-shu.oss-cn-shanghai.aliyuncs.com/Avatar/a185fe7a-6514-41ee-ac8e-384ff7250a84.png', 'Avatar/a185fe7a-6514-41ee-ac8e-384ff7250a84.png', NULL);
INSERT INTO `db_account` VALUES (3, '马英华', '2031282938@qq.com', '$2a$10$oP9Hj6EWcYJ7e/U.I6Cd8O4hyAThis5mYCZaKTPd/.SYa7.u2c3L2', 'user', '2024-01-04 10:20:04', 5000, 'https://xiao-shu-shu.oss-cn-shanghai.aliyuncs.com/Avatar/286634d0-e0a9-4868-bf2f-3e7cf00037b7.png', 'Avatar/286634d0-e0a9-4868-bf2f-3e7cf00037b7.png', NULL);
INSERT INTO `db_account` VALUES (4, 'jocker', 'myhsnd666@gmail.com', '$2a$10$4v9twRnhoepwqlhW0.hDveVoh3W4FmQA.PDdWRuNwGs0quDoM62mG', 'user', '2024-01-04 13:40:49', 5000, 'https://xiao-shu-shu.oss-cn-shanghai.aliyuncs.com/Avatar/ca287cfc-6d45-4929-b85a-a9070ab385c4.png', 'Avatar/ca287cfc-6d45-4929-b85a-a9070ab385c4.png', NULL);
INSERT INTO `db_account` VALUES (5, '小丑', '851314610@qq.com', '$2a$10$Unl.fve4zSloPy6QC7rX5u1zyQO8Pb7JB2rxOHGXkf8aeux.n4m9C', 'user', '2024-01-04 18:18:49', 5050, 'https://xiao-shu-shu.oss-cn-shanghai.aliyuncs.com/Avatar/4b663d6b-16e5-46e3-9439-36af10603b3a.png', 'Avatar/4b663d6b-16e5-46e3-9439-36af10603b3a.png', NULL);
INSERT INTO `db_account` VALUES (6, '汐渐', 'hyg3146624068@163.com', '$2a$10$M3PICNSyNbDw0qqLY/51zesSvi86gdMjHdaqZPuQsePL/..ckqEWy', 'user', '2024-01-09 12:36:06', 79142, 'https://xiao-shu-shu.oss-cn-shanghai.aliyuncs.com/Avatar/bb7a7d63-b7d0-41a0-b49f-70a3b4c7ffb0.png', 'Avatar/bb7a7d63-b7d0-41a0-b49f-70a3b4c7ffb0.png', '2024-01-18');
INSERT INTO `db_account` VALUES (7, 'xijian', '3146624068@qq.com', '$2a$10$n/FoK5rx1RRBHbyFLYdOjex/0NHKaCOGTCyTyTG0VIBJVl4N/na0i', 'user', '2024-01-09 12:36:06', 78040, 'https://xiao-shu-shu.oss-cn-shanghai.aliyuncs.com/Avatar/a1928e8c-72e7-4c29-b85b-7407eaa84f0d.jpg', 'Avatar/a1928e8c-72e7-4c29-b85b-7407eaa84f0d.jpg', '2024-01-20');

SET FOREIGN_KEY_CHECKS = 1;
