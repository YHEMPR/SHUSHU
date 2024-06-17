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

 Date: 21/01/2024 12:53:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for commentformaterial
-- ----------------------------
DROP TABLE IF EXISTS `commentformaterial`;
CREATE TABLE `commentformaterial`  (
  `comment_id` int(0) NOT NULL AUTO_INCREMENT,
  `school` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `major` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `material_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `material_grade` decimal(3, 1) NULL DEFAULT NULL,
  `user_nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` int(0) NULL DEFAULT 0,
  `user_id` int(0) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'user',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 391 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of commentformaterial
-- ----------------------------
INSERT INTO `commentformaterial` VALUES (41, '上海大学', '计算机技术', '算法设计', '真是垃圾课程', 0.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (42, '上海大学', '计算机技术', '算法设计', '这门课程太有趣了', 4.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (43, '上海大学', '计算机技术', '算法设计', '无聊至极', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (44, '上海大学', '计算机技术', '算法设计', '这门课比较适合在实践中学习，但听理论学不会的', 3.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (45, '上海大学', '计算机技术', '算法设计', '老师给分太低了', 4.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (46, '上海大学', '计算机技术', '算法设计', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (47, '上海大学', '计算机技术', '数据结构', '考试有点简单', 0.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (48, '上海大学', '计算机技术', '数据结构', '这门课程太有趣了', 4.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (49, '上海大学', '计算机技术', '数据结构', '老师管的挺严，没去被发现了', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (50, '上海大学', '计算机技术', '数据结构', '很实用的课程', 3.8, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (51, '上海大学', '计算机技术', '数据结构', '老师给分还可以了', 4.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (52, '上海大学', '计算机技术', '数据结构', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (53, '上海大学', '计算机技术', '计算机组成原理', '考试有点考验记忆力', 3.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (54, '上海大学', '计算机技术', '计算机组成原理', '这门课程太有趣了', 6.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (55, '上海大学', '计算机技术', '计算机组成原理', '老师管的挺严，没去被发现了', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (56, '上海大学', '计算机技术', '计算机组成原理', '很实用的课程', 6.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (57, '上海大学', '计算机技术', '计算机组成原理', '老师给分一般般了', 4.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (58, '上海大学', '计算机技术', '计算机组成原理', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (59, '上海大学', '计算机技术', '操作系统', '考试有点考验记忆力', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (60, '上海大学', '计算机技术', '操作系统', '这门课程太有趣了', 3.4, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (61, '上海大学', '计算机技术', '操作系统', '老师管的挺严，没去被发现了', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (62, '上海大学', '计算机技术', '操作系统', '很实用的课程', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (63, '上海大学', '计算机技术', '操作系统', '老师给分一般般了', 7.3, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (64, '上海大学', '计算机技术', '操作系统', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (65, '上海大学', '计算机技术', '面向对象程序设计', '考试有点考验记忆力', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (66, '上海大学', '计算机技术', '面向对象程序设计', '这门课略显枯燥，但学到的东西很多', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (67, '上海大学', '计算机技术', '面向对象程序设计', '老师管的挺严，没去被发现了', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (68, '上海大学', '计算机技术', '面向对象程序设计', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (69, '上海大学', '计算机技术', '面向对象程序设计', '老师给分一般般了', 7.3, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (70, '上海大学', '计算机技术', '面向对象程序设计', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (71, '上海大学', '计算机技术', '数字图像处理', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (72, '上海大学', '计算机技术', '数字图像处理', '这门课略显枯燥，但学到的东西很多', 3.4, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (73, '上海大学', '计算机技术', '数字图像处理', '老师的风格和我不搭', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (74, '上海大学', '计算机技术', '数字图像处理', '很实用的课程', 5.8, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (75, '上海大学', '计算机技术', '数字图像处理', '老师给分很高了', 8.8, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (76, '上海大学', '计算机技术', '数字图像处理', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (77, '华东理工大学', '计算机技术', '数字图像处理', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (78, '华东理工大学', '计算机技术', '数字图像处理', '这门课程太有趣了', 5.5, '马英华', '2031282938@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (79, '华东理工大学', '计算机技术', '数字图像处理', '老师人很好', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (80, '华东理工大学', '计算机技术', '数字图像处理', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (81, '华东理工大学', '计算机技术', '数字图像处理', '老师给分很高了', 8.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (82, '华东理工大学', '计算机技术', '数字图像处理', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (83, '上海师范大学', '计算机技术', '数字图像处理', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (84, '上海师范大学', '计算机技术', '数字图像处理', '这门课程太有趣了', 3.4, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (85, '上海师范大学', '计算机技术', '数字图像处理', '老师签到比较严，但是人不错', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (86, '上海师范大学', '计算机技术', '数字图像处理', '这门课比较适合在实践中学习，但听理论学不会的', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (87, '上海师范大学', '计算机技术', '数字图像处理', '老师给分感觉是随机函数出来的', 7.3, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (88, '上海师范大学', '计算机技术', '数字图像处理', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (89, '华东理工大学', '计算机技术', '算法设计', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (90, '华东理工大学', '计算机技术', '算法设计', '这门课略显枯燥，但学到的东西很多', 3.4, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (91, '华东理工大学', '计算机技术', '算法设计', '老师人很好', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (92, '华东理工大学', '计算机技术', '算法设计', '这门课比较适合在实践中学习，但听理论学不会的', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (93, '华东理工大学', '计算机技术', '算法设计', '老师给分感觉是随机函数出来的', 7.3, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (94, '华东理工大学', '计算机技术', '算法设计', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (95, '上海师范大学', '计算机技术', '算法设计', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (96, '上海师范大学', '计算机技术', '算法设计', '这门课略显枯燥，但学到的东西很多', 5.5, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (97, '上海师范大学', '计算机技术', '算法设计', '老师的风格和我不搭', 1.2, '马英华', '2031282938@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (98, '上海师范大学', '计算机技术', '算法设计', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (99, '上海师范大学', '计算机技术', '算法设计', '老师给分很高了', 8.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (100, '上海师范大学', '计算机技术', '算法设计', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (101, '华东理工大学', '计算机技术', '数据结构', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (102, '华东理工大学', '计算机技术', '数据结构', '这门课程太有趣了', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (103, '华东理工大学', '计算机技术', '数据结构', '老师人很好', 4.3, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (104, '华东理工大学', '计算机技术', '数据结构', '很实用的课程', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (105, '华东理工大学', '计算机技术', '数据结构', '老师给分很高了', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (106, '华东理工大学', '计算机技术', '数据结构', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (107, '上海师范大学', '计算机技术', '数据结构', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (108, '上海师范大学', '计算机技术', '数据结构', '这门课程太有趣了', 5.5, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (109, '上海师范大学', '计算机技术', '数据结构', '老师签到比较严，但是人不错', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (110, '上海师范大学', '计算机技术', '数据结构', '这门课比较适合在实践中学习，但听理论学不会的', 5.8, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (111, '上海师范大学', '计算机技术', '数据结构', '老师给分很高了', 7.3, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (112, '上海师范大学', '计算机技术', '数据结构', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (113, '华东理工大学', '计算机技术', '计算机组成原理', '给分很高', 6.1, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (114, '华东理工大学', '计算机技术', '计算机组成原理', '这门课程太有趣了', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (115, '华东理工大学', '计算机技术', '计算机组成原理', '老师的风格和我不搭', 4.3, '马英华', '2031282938@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (116, '华东理工大学', '计算机技术', '计算机组成原理', '这门课比较适合在实践中学习，但听理论学不会的', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (117, '华东理工大学', '计算机技术', '计算机组成原理', '老师给分很高了', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (118, '华东理工大学', '计算机技术', '计算机组成原理', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (119, '上海师范大学', '计算机技术', '计算机组成原理', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (120, '上海师范大学', '计算机技术', '计算机组成原理', '这门课略显枯燥，但学到的东西很多', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (121, '上海师范大学', '计算机技术', '计算机组成原理', '老师的风格和我不搭', 4.3, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (122, '上海师范大学', '计算机技术', '计算机组成原理', '这门课比较适合在实践中学习，但听理论学不会的', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (123, '上海师范大学', '计算机技术', '计算机组成原理', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (124, '上海师范大学', '计算机技术', '计算机组成原理', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (125, '华东理工大学', '计算机技术', '操作系统', '给分很高', 6.1, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (126, '华东理工大学', '计算机技术', '操作系统', '这门课程太有趣了', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (127, '华东理工大学', '计算机技术', '操作系统', '老师签到比较严，但是人不错', 4.3, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (128, '华东理工大学', '计算机技术', '操作系统', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (129, '华东理工大学', '计算机技术', '操作系统', '老师给分很高了', 8.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (130, '华东理工大学', '计算机技术', '操作系统', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (131, '上海师范大学', '计算机技术', '操作系统', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (132, '上海师范大学', '计算机技术', '操作系统', '这门课略显枯燥，但学到的东西很多', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (133, '上海师范大学', '计算机技术', '操作系统', '老师签到比较严，但是人不错', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (134, '上海师范大学', '计算机技术', '操作系统', '很实用的课程', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (135, '上海师范大学', '计算机技术', '操作系统', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (136, '上海师范大学', '计算机技术', '操作系统', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (137, '华东理工大学', '计算机技术', '面向对象程序设计', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (138, '华东理工大学', '计算机技术', '面向对象程序设计', '这门课程太有趣了', 3.4, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (139, '华东理工大学', '计算机技术', '面向对象程序设计', '老师的风格和我不搭', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (140, '华东理工大学', '计算机技术', '面向对象程序设计', '这门课比较适合在实践中学习，但听理论学不会的', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (141, '华东理工大学', '计算机技术', '面向对象程序设计', '老师给分很高了', 7.3, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (142, '华东理工大学', '计算机技术', '面向对象程序设计', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (143, '上海师范大学', '计算机技术', '面向对象程序设计', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (144, '上海师范大学', '计算机技术', '面向对象程序设计', '这门课略显枯燥，但学到的东西很多', 3.4, '马英华', '2031282938@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (145, '上海师范大学', '计算机技术', '面向对象程序设计', '老师的风格和我不搭', 4.3, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (146, '上海师范大学', '计算机技术', '面向对象程序设计', '这门课比较适合在实践中学习，但听理论学不会的', 6.6, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (147, '上海师范大学', '计算机技术', '面向对象程序设计', '老师给分很高了', 7.3, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (148, '上海师范大学', '计算机技术', '面向对象程序设计', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (149, '上海大学', '计算机技术', '计算机网络', '给分很高', 6.1, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (150, '上海大学', '计算机技术', '计算机网络', '这门课程太有趣了', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (151, '上海大学', '计算机技术', '计算机网络', '老师人很好', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (152, '上海大学', '计算机技术', '计算机网络', '这门课比较适合在实践中学习，但听理论学不会的', 6.6, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (153, '上海大学', '计算机技术', '计算机网络', '老师给分感觉是随机函数出来的', 7.3, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (154, '上海大学', '计算机技术', '计算机网络', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (155, '华东理工大学', '计算机技术', '计算机网络', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (156, '华东理工大学', '计算机技术', '计算机网络', '这门课程太有趣了', 3.4, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (157, '华东理工大学', '计算机技术', '计算机网络', '老师签到比较严，但是人不错', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (158, '华东理工大学', '计算机技术', '计算机网络', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (159, '华东理工大学', '计算机技术', '计算机网络', '老师给分感觉是随机函数出来的', 7.3, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (160, '华东理工大学', '计算机技术', '计算机网络', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (161, '上海师范大学', '计算机技术', '计算机网络', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (162, '上海师范大学', '计算机技术', '计算机网络', '这门课程太有趣了', 3.4, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (163, '上海师范大学', '计算机技术', '计算机网络', '老师人很好', 4.3, '马英华', '2031282938@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (164, '上海师范大学', '计算机技术', '计算机网络', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (165, '上海师范大学', '计算机技术', '计算机网络', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (166, '上海师范大学', '计算机技术', '计算机网络', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (167, '华东理工大学', '计算机技术', '数字逻辑', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (168, '华东理工大学', '计算机技术', '数字逻辑', '这门课程太有趣了', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (169, '华东理工大学', '计算机技术', '数字逻辑', '老师人很好', 4.3, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (170, '华东理工大学', '计算机技术', '数字逻辑', '很实用的课程', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (171, '华东理工大学', '计算机技术', '数字逻辑', '老师给分很高了', 8.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (172, '华东理工大学', '计算机技术', '数字逻辑', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (173, '上海师范大学', '计算机技术', '数字逻辑', '给分很高', 6.1, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (174, '上海师范大学', '计算机技术', '数字逻辑', '这门课略显枯燥，但学到的东西很多', 5.5, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (175, '上海师范大学', '计算机技术', '数字逻辑', '老师人很好', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (176, '上海师范大学', '计算机技术', '数字逻辑', '很实用的课程', 5.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (177, '上海师范大学', '计算机技术', '数字逻辑', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (178, '上海师范大学', '计算机技术', '数字逻辑', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (179, '上海大学', '计算机技术', '数据库原理', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (180, '上海大学', '计算机技术', '数据库原理', '这门课程太有趣了', 5.5, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (181, '上海大学', '计算机技术', '数据库原理', '老师人很好', 1.2, '马英华', '2031282938@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (182, '上海大学', '计算机技术', '数据库原理', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (183, '上海大学', '计算机技术', '数据库原理', '老师给分感觉是随机函数出来的', 8.8, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (184, '上海大学', '计算机技术', '数据库原理', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (185, '华东理工大学', '计算机技术', '数据库原理', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (186, '华东理工大学', '计算机技术', '数据库原理', '这门课略显枯燥，但学到的东西很多', 5.5, '马英华', '2031282938@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (187, '华东理工大学', '计算机技术', '数据库原理', '老师签到比较严，但是人不错', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (188, '华东理工大学', '计算机技术', '数据库原理', '这门课比较适合在实践中学习，但听理论学不会的', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (189, '华东理工大学', '计算机技术', '数据库原理', '老师给分很高了', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (190, '华东理工大学', '计算机技术', '数据库原理', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (191, '上海师范大学', '计算机技术', '数据库原理', '给分很高', 6.1, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (192, '上海师范大学', '计算机技术', '数据库原理', '这门课程太有趣了', 3.4, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (193, '上海师范大学', '计算机技术', '数据库原理', '老师人很好', 4.3, '马英华', '2031282938@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (194, '上海师范大学', '计算机技术', '数据库原理', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (195, '上海师范大学', '计算机技术', '数据库原理', '老师给分很高了', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (196, '上海师范大学', '计算机技术', '数据库原理', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (197, '上海大学', '计算机技术', '多媒体技术', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (198, '上海大学', '计算机技术', '多媒体技术', '这门课略显枯燥，但学到的东西很多', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (199, '上海大学', '计算机技术', '多媒体技术', '老师人很好', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (200, '上海大学', '计算机技术', '多媒体技术', '这门课比较适合在实践中学习，但听理论学不会的', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (201, '上海大学', '计算机技术', '多媒体技术', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (202, '上海大学', '计算机技术', '多媒体技术', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (203, '华东理工大学', '计算机技术', '多媒体技术', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (204, '华东理工大学', '计算机技术', '多媒体技术', '这门课程太有趣了', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (205, '华东理工大学', '计算机技术', '多媒体技术', '老师的风格和我不搭', 4.3, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (206, '华东理工大学', '计算机技术', '多媒体技术', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (207, '华东理工大学', '计算机技术', '多媒体技术', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (208, '华东理工大学', '计算机技术', '多媒体技术', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (209, '上海师范大学', '计算机技术', '多媒体技术', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (210, '上海师范大学', '计算机技术', '多媒体技术', '这门课程太有趣了', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (211, '上海师范大学', '计算机技术', '多媒体技术', '老师签到比较严，但是人不错', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (212, '上海师范大学', '计算机技术', '多媒体技术', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (213, '上海师范大学', '计算机技术', '多媒体技术', '老师给分很高了', 8.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (214, '上海师范大学', '计算机技术', '多媒体技术', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (215, '上海大学', '计算机技术', 'java程序设计', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (216, '上海大学', '计算机技术', 'java程序设计', '这门课程太有趣了', 3.4, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (217, '上海大学', '计算机技术', 'java程序设计', '老师的风格和我不搭', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (218, '上海大学', '计算机技术', 'java程序设计', '这门课比较适合在实践中学习，但听理论学不会的', 5.8, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (219, '上海大学', '计算机技术', 'java程序设计', '老师给分很高了', 7.3, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (220, '上海大学', '计算机技术', 'java程序设计', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (221, '华东理工大学', '计算机技术', 'java程序设计', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (222, '华东理工大学', '计算机技术', 'java程序设计', '这门课程太有趣了', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (223, '华东理工大学', '计算机技术', 'java程序设计', '老师人很好', 4.3, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (224, '华东理工大学', '计算机技术', 'java程序设计', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (225, '华东理工大学', '计算机技术', 'java程序设计', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (226, '华东理工大学', '计算机技术', 'java程序设计', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (227, '上海师范大学', '计算机技术', 'java程序设计', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (228, '上海师范大学', '计算机技术', 'java程序设计', '这门课略显枯燥，但学到的东西很多', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (229, '上海师范大学', '计算机技术', 'java程序设计', '老师人很好', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (230, '上海师范大学', '计算机技术', 'java程序设计', '很实用的课程', 5.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (231, '上海师范大学', '计算机技术', 'java程序设计', '老师给分感觉是随机函数出来的', 7.3, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (232, '上海师范大学', '计算机技术', 'java程序设计', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (233, '华东理工大学', '高分子材料', '有机化学', '给分很高', 6.1, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (234, '华东理工大学', '高分子材料', '有机化学', '这门课程太有趣了', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (235, '华东理工大学', '高分子材料', '有机化学', '老师签到比较严，但是人不错', 1.2, '马英华', '2031282938@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (236, '华东理工大学', '高分子材料', '有机化学', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (237, '华东理工大学', '高分子材料', '有机化学', '老师给分感觉是随机函数出来的', 7.3, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (238, '华东理工大学', '高分子材料', '有机化学', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (239, '上海师范大学', '高分子材料', '有机化学', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (240, '上海师范大学', '高分子材料', '有机化学', '这门课略显枯燥，但学到的东西很多', 3.4, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (241, '上海师范大学', '高分子材料', '有机化学', '老师签到比较严，但是人不错', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (242, '上海师范大学', '高分子材料', '有机化学', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (243, '上海师范大学', '高分子材料', '有机化学', '老师给分很高了', 8.8, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (244, '上海师范大学', '高分子材料', '有机化学', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (245, '上海大学', '高分子材料', '物理化学', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (246, '上海大学', '高分子材料', '物理化学', '这门课略显枯燥，但学到的东西很多', 5.5, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (247, '上海大学', '高分子材料', '物理化学', '老师签到比较严，但是人不错', 4.3, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (248, '上海大学', '高分子材料', '物理化学', '很实用的课程', 6.6, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (249, '上海大学', '高分子材料', '物理化学', '老师给分感觉是随机函数出来的', 7.3, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (250, '上海大学', '高分子材料', '物理化学', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (251, '华东理工大学', '高分子材料', '物理化学', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (252, '华东理工大学', '高分子材料', '物理化学', '这门课程太有趣了', 5.5, '马英华', '2031282938@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (253, '华东理工大学', '高分子材料', '物理化学', '老师签到比较严，但是人不错', 4.3, '马英华', '2031282938@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (254, '华东理工大学', '高分子材料', '物理化学', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (255, '华东理工大学', '高分子材料', '物理化学', '老师给分很高了', 7.3, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (256, '华东理工大学', '高分子材料', '物理化学', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (257, '上海师范大学', '高分子材料', '物理化学', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (258, '上海师范大学', '高分子材料', '物理化学', '这门课程太有趣了', 5.5, '马英华', '2031282938@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (259, '上海师范大学', '高分子材料', '物理化学', '老师签到比较严，但是人不错', 4.3, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (260, '上海师范大学', '高分子材料', '物理化学', '这门课比较适合在实践中学习，但听理论学不会的', 6.6, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (261, '上海师范大学', '高分子材料', '物理化学', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (262, '上海师范大学', '高分子材料', '物理化学', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (263, '上海大学', '高分子材料', '物理化学实验', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (264, '上海大学', '高分子材料', '物理化学实验', '这门课程太有趣了', 3.4, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (265, '上海大学', '高分子材料', '物理化学实验', '老师的风格和我不搭', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (266, '上海大学', '高分子材料', '物理化学实验', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (267, '上海大学', '高分子材料', '物理化学实验', '老师给分感觉是随机函数出来的', 7.3, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (268, '上海大学', '高分子材料', '物理化学实验', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (269, '华东理工大学', '高分子材料', '物理化学实验', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (270, '华东理工大学', '高分子材料', '物理化学实验', '这门课略显枯燥，但学到的东西很多', 5.5, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (271, '华东理工大学', '高分子材料', '物理化学实验', '老师的风格和我不搭', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (272, '华东理工大学', '高分子材料', '物理化学实验', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (273, '华东理工大学', '高分子材料', '物理化学实验', '老师给分感觉是随机函数出来的', 8.8, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (274, '华东理工大学', '高分子材料', '物理化学实验', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (275, '上海师范大学', '高分子材料', '物理化学实验', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (276, '上海师范大学', '高分子材料', '物理化学实验', '这门课程太有趣了', 3.4, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (277, '上海师范大学', '高分子材料', '物理化学实验', '老师签到比较严，但是人不错', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (278, '上海师范大学', '高分子材料', '物理化学实验', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (279, '上海师范大学', '高分子材料', '物理化学实验', '老师给分很高了', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (280, '上海师范大学', '高分子材料', '物理化学实验', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (281, '华东理工大学', '高分子材料', '有机化学实验', '给分很高', 6.1, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (282, '华东理工大学', '高分子材料', '有机化学实验', '这门课程太有趣了', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (283, '华东理工大学', '高分子材料', '有机化学实验', '老师签到比较严，但是人不错', 4.3, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (284, '华东理工大学', '高分子材料', '有机化学实验', '这门课比较适合在实践中学习，但听理论学不会的', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (285, '华东理工大学', '高分子材料', '有机化学实验', '老师给分感觉是随机函数出来的', 7.3, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (286, '华东理工大学', '高分子材料', '有机化学实验', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (287, '上海师范大学', '高分子材料', '有机化学实验', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (288, '上海师范大学', '高分子材料', '有机化学实验', '这门课程太有趣了', 5.5, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (289, '上海师范大学', '高分子材料', '有机化学实验', '老师的风格和我不搭', 4.3, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (290, '上海师范大学', '高分子材料', '有机化学实验', '很实用的课程', 6.6, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (291, '上海师范大学', '高分子材料', '有机化学实验', '老师给分很高了', 8.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (292, '上海师范大学', '高分子材料', '有机化学实验', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (293, '华东理工大学', '社会学', '社会研究方法', '给分很高', 6.1, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (294, '华东理工大学', '社会学', '社会研究方法', '这门课程太有趣了', 3.4, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (295, '华东理工大学', '社会学', '社会研究方法', '老师的风格和我不搭', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (296, '华东理工大学', '社会学', '社会研究方法', '这门课比较适合在实践中学习，但听理论学不会的', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (297, '华东理工大学', '社会学', '社会研究方法', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (298, '华东理工大学', '社会学', '社会研究方法', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (299, '上海师范大学', '社会学', '社会研究方法', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (300, '上海师范大学', '社会学', '社会研究方法', '这门课略显枯燥，但学到的东西很多', 3.4, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (301, '上海师范大学', '社会学', '社会研究方法', '老师人很好', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (302, '上海师范大学', '社会学', '社会研究方法', '这门课比较适合在实践中学习，但听理论学不会的', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (303, '上海师范大学', '社会学', '社会研究方法', '老师给分很高了', 7.3, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (304, '上海师范大学', '社会学', '社会研究方法', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (305, '上海大学', '社会学', '社会心理学', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (306, '上海大学', '社会学', '社会心理学', '这门课程太有趣了', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (307, '上海大学', '社会学', '社会心理学', '老师签到比较严，但是人不错', 4.3, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (308, '上海大学', '社会学', '社会心理学', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (309, '上海大学', '社会学', '社会心理学', '老师给分很高了', 8.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (310, '上海大学', '社会学', '社会心理学', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (311, '华东理工大学', '社会学', '社会心理学', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (312, '华东理工大学', '社会学', '社会心理学', '这门课程太有趣了', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (313, '华东理工大学', '社会学', '社会心理学', '老师的风格和我不搭', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (314, '华东理工大学', '社会学', '社会心理学', '很实用的课程', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (315, '华东理工大学', '社会学', '社会心理学', '老师给分很高了', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (316, '华东理工大学', '社会学', '社会心理学', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (317, '上海师范大学', '社会学', '社会心理学', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (318, '上海师范大学', '社会学', '社会心理学', '这门课程太有趣了', 3.4, '马英华', '2031282938@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (319, '上海师范大学', '社会学', '社会心理学', '老师的风格和我不搭', 4.3, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (320, '上海师范大学', '社会学', '社会心理学', '这门课比较适合在实践中学习，但听理论学不会的', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (321, '上海师范大学', '社会学', '社会心理学', '老师给分很高了', 8.8, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (322, '上海师范大学', '社会学', '社会心理学', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (323, '华东理工大学', '视觉传达设计', '摄影基础', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (324, '华东理工大学', '视觉传达设计', '摄影基础', '这门课略显枯燥，但学到的东西很多', 5.5, '马英华', '2031282938@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (325, '华东理工大学', '视觉传达设计', '摄影基础', '老师签到比较严，但是人不错', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (326, '华东理工大学', '视觉传达设计', '摄影基础', '很实用的课程', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (327, '华东理工大学', '视觉传达设计', '摄影基础', '老师给分很高了', 8.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (328, '华东理工大学', '视觉传达设计', '摄影基础', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (329, '上海师范大学', '视觉传达设计', '摄影基础', '给分很高', 6.1, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (330, '上海师范大学', '视觉传达设计', '摄影基础', '这门课程太有趣了', 3.4, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (331, '上海师范大学', '视觉传达设计', '摄影基础', '老师人很好', 1.2, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (332, '上海师范大学', '视觉传达设计', '摄影基础', '这门课比较适合在实践中学习，但听理论学不会的', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (333, '上海师范大学', '视觉传达设计', '摄影基础', '老师给分感觉是随机函数出来的', 7.3, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (334, '上海师范大学', '视觉传达设计', '摄影基础', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (335, '上海大学', '视觉传达设计', '插画基础', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (336, '上海大学', '视觉传达设计', '插画基础', '这门课略显枯燥，但学到的东西很多', 3.4, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (337, '上海大学', '视觉传达设计', '插画基础', '老师签到比较严，但是人不错', 4.3, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (338, '上海大学', '视觉传达设计', '插画基础', '很实用的课程', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (339, '上海大学', '视觉传达设计', '插画基础', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (340, '上海大学', '视觉传达设计', '插画基础', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (341, '华东理工大学', '视觉传达设计', '插画基础', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (342, '华东理工大学', '视觉传达设计', '插画基础', '这门课略显枯燥，但学到的东西很多', 3.4, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (343, '华东理工大学', '视觉传达设计', '插画基础', '老师签到比较严，但是人不错', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (344, '华东理工大学', '视觉传达设计', '插画基础', '很实用的课程', 5.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (345, '华东理工大学', '视觉传达设计', '插画基础', '老师给分感觉是随机函数出来的', 7.3, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (346, '华东理工大学', '视觉传达设计', '插画基础', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (347, '上海师范大学', '视觉传达设计', '插画基础', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (348, '上海师范大学', '视觉传达设计', '插画基础', '这门课略显枯燥，但学到的东西很多', 3.4, '马英华', '2031282938@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (349, '上海师范大学', '视觉传达设计', '插画基础', '老师签到比较严，但是人不错', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (350, '上海师范大学', '视觉传达设计', '插画基础', '很实用的课程', 5.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (351, '上海师范大学', '视觉传达设计', '插画基础', '老师给分感觉是随机函数出来的', 7.3, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (352, '上海师范大学', '视觉传达设计', '插画基础', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (353, '上海大学', '视觉传达设计', 'UI设计', '给分很高', 6.1, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (354, '上海大学', '视觉传达设计', 'UI设计', '这门课程太有趣了', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (355, '上海大学', '视觉传达设计', 'UI设计', '老师的风格和我不搭', 4.3, '汐渐', 'hyg3146624068@163.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (356, '上海大学', '视觉传达设计', 'UI设计', '这门课比较适合在实践中学习，但听理论学不会的', 6.6, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (357, '上海大学', '视觉传达设计', 'UI设计', '老师给分很高了', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (358, '上海大学', '视觉传达设计', 'UI设计', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (359, '华东理工大学', '视觉传达设计', 'UI设计', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (360, '华东理工大学', '视觉传达设计', 'UI设计', '这门课程太有趣了', 5.5, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (361, '华东理工大学', '视觉传达设计', 'UI设计', '老师人很好', 1.2, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (362, '华东理工大学', '视觉传达设计', 'UI设计', '这门课比较适合在实践中学习，但听理论学不会的', 5.8, '马英华', '2031282938@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (363, '华东理工大学', '视觉传达设计', 'UI设计', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (364, '华东理工大学', '视觉传达设计', 'UI设计', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (365, '上海师范大学', '视觉传达设计', 'UI设计', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (366, '上海师范大学', '视觉传达设计', 'UI设计', '这门课略显枯燥，但学到的东西很多', 5.5, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (367, '上海师范大学', '视觉传达设计', 'UI设计', '老师签到比较严，但是人不错', 4.3, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (368, '上海师范大学', '视觉传达设计', 'UI设计', '很实用的课程', 6.6, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (369, '上海师范大学', '视觉传达设计', 'UI设计', '老师给分很高了', 8.8, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (370, '上海师范大学', '视觉传达设计', 'UI设计', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (371, '复旦大学', '计算机科学', '算法设计', '给分很高', 6.1, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (372, '复旦大学', '计算机科学', '数据结构', '这门课程太有趣了', 3.4, '汐渐', 'hyg3146624068@163.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (373, '复旦大学', '计算机科学', '计算机组成原理', '老师人很好', 4.3, '马英华', '2031282938@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (374, '复旦大学', '计算机科学', '操作系统', '很实用的课程', 5.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (375, '复旦大学', '计算机科学', '面向对象程序设计', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (376, '复旦大学', '计算机科学', '数字图像处理', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (377, '复旦大学', '计算机科学', '计算机网络', '给分很高', 6.1, '小丑', '851314610@qq.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (378, '复旦大学', '计算机科学', '数字逻辑', '这门课略显枯燥，但学到的东西很多', 3.4, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (379, '复旦大学', '计算机科学', '数据库原理', '老师签到比较严，但是人不错', 4.3, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (380, '复旦大学', '计算机科学', '多媒体技术', '很实用的课程', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (381, '复旦大学', '计算机科学', 'java程序设计', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (382, '复旦大学', '高分子材料', '有机化学', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (383, '复旦大学', '高分子材料', '物理化学', '这门课略显枯燥，但学到的东西很多', 3.4, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (384, '复旦大学', '高分子材料', '有机化学实验', '老师签到比较严，但是人不错', 4.3, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (385, '复旦大学', '高分子材料', '物理化学实验', '很实用的课程', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (386, '复旦大学', '社会学', '社会研究方法', '老师给分感觉是随机函数出来的', 8.8, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (387, '复旦大学', '社会学', '社会心理学', '烂', 3.5, 'yhempr', 'yhempr@gmail.com', 2, 1, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'user');
INSERT INTO `commentformaterial` VALUES (388, '复旦大学', '视觉传达设计', '摄影基础', '这门课略显枯燥，但学到的东西很多', 3.4, '小丑', '851314610@qq.com', 2, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (389, '复旦大学', '视觉传达设计', '插画基础', '老师签到比较严，但是人不错', 4.3, '小丑', '851314610@qq.com', 0, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');
INSERT INTO `commentformaterial` VALUES (390, '复旦大学', '视觉传达设计', 'UI设计', '很实用的课程', 6.6, '汐渐', 'hyg3146624068@163.com', 1, 6, '2024-01-10 19:09:44', '2024-01-10 19:09:44', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
