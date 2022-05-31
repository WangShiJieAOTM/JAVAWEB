/*
 Navicat Premium Data Transfer

 Source Server         : javaWeb
 Source Server Type    : MySQL
 Source Server Version : 50628
 Source Host           : localhost:3306
 Source Schema         : db

 Target Server Type    : MySQL
 Target Server Version : 50628
 File Encoding         : 65001

 Date: 31/05/2022 16:03:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `cno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `dept` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pcno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduction` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `settno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('0001', '程序设计Ⅰ', 1, '机器人学院', '', 'C语言程序设计基础课程', '19408100131');
INSERT INTO `course` VALUES ('0002', '文化与技术Ⅰ', 1, '机器人学院', '', '英文教学的历史课', '19408100131');
INSERT INTO `course` VALUES ('0003', '木球Ⅰ', 1, '体育部', '', '体育项目木球教学', '19408100131');
INSERT INTO `course` VALUES ('0004', '中国近现代史纲要', 1, '马克思主义学院', '', '中国近现代史纲要，了解历史，以史为鉴。', '19408100131');
INSERT INTO `course` VALUES ('0005', '高等数学RⅠ', 1, '机器人学院', '', '微积分', '19408100131');
INSERT INTO `course` VALUES ('0006', '机器人设计概论', 1, '机器人学院', '', '机器人设计的基本知识和小项目', '19408100131');
INSERT INTO `course` VALUES ('0007', '军事理论与训练', 1, '机器人学院', '', '有关军队和战争的概念、范畴、原理、原则等的体系。科学的军事理论是军事活动的本质及其客观规律的正确反映。来源于军事实践，经理论概括后给军事实践以指导，并在不断接受军事实践检验的基础上得到丰富和发展。', '19408100131');

-- ----------------------------
-- Table structure for course_runtime
-- ----------------------------
DROP TABLE IF EXISTS `course_runtime`;
CREATE TABLE `course_runtime`  (
  `semester` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `runday` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `begintime` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `endtime` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`semester`, `cno`, `runday`, `begintime`, `endtime`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course_runtime
-- ----------------------------
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0001', '1', '1', '2');
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0002', '3', '6', '7');
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0003', '3', '6', '7');
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0004', '1', '3', '5');
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0005', '2', '1', '2');
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0006', '4', '6', '7');
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0007', '6', '11', '13');
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0008', '5', '6', '9');
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0009', '2', '1', '2');

-- ----------------------------
-- Table structure for course_semester
-- ----------------------------
DROP TABLE IF EXISTS `course_semester`;
CREATE TABLE `course_semester`  (
  `cno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `semester` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weekbegin` int(11) NULL DEFAULT NULL,
  `weekend` int(11) NULL DEFAULT NULL,
  `capacity` int(11) NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`cno`, `semester`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course_semester
-- ----------------------------
INSERT INTO `course_semester` VALUES ('0001', '2019-2020学年第1学期', '2014900014', 3, 18, 30, '', 0);
INSERT INTO `course_semester` VALUES ('0002', '2019-2020学年第1学期', '2014900014', 3, 18, 30, '', 0);
INSERT INTO `course_semester` VALUES ('0003', '2019-2020学年第1学期', '2005900043', 6, 18, 100, '', 0);
INSERT INTO `course_semester` VALUES ('0004', '2019-2020学年第1学期', '2009910040', 1, 18, 50, '', 0);
INSERT INTO `course_semester` VALUES ('0005', '2019-2020学年第1学期', '2012900051', 3, 18, 50, '', 0);
INSERT INTO `course_semester` VALUES ('0006', '2019-2020学年第1学期', '2011900033', 11, 18, 100, '', 0);
INSERT INTO `course_semester` VALUES ('0007', '2019-2020学年第1学期', '2014910012', 3, 4, 100, '', 0);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL,
  `sno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sendtime` datetime(0) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (9, '2016014302', '老师，为什么Linux编程课没了，不能选。', '2018-12-19 21:43:25', 1, '不能选修Linux编程课程问题');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL,
  `sendtime` datetime(0) NULL DEFAULT NULL,
  `content` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '2018-11-25 10:28:01', '各位考生\r\n\r\n2018年下半年全国大学英语四、六级口语考试将于11月17、18日举行，现将相关事宜通知如下\r\n\r\n  一、考试时间\r\n\r\n     1． 11月17日：全国大学英语四级口语考试(CET-SET4)\r\n\r\n     2． 11月18日：全国大学英语六级口语考试(CET-SET6)\r\n\r\n二、考试地点：\r\n\r\n    第七微机室 实验楼A407\r\n\r\n  三、考生准考证\r\n\r\n考生登录全国大学英语四、六级考试网站http://cet.kwgl.etest.net.cn自行打印准考证。', '关于大学英语四六级考试的通知');

-- ----------------------------
-- Table structure for select_list
-- ----------------------------
DROP TABLE IF EXISTS `select_list`;
CREATE TABLE `select_list`  (
  `major` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `semester` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cno` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`major`, `semester`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of select_list
-- ----------------------------
INSERT INTO `select_list` VALUES ('网络工程', '2018-2019学年第1学期', '(\"0001\",\"0002\",\"0003\",\"0005\",\"0007\",\"0008\",\"0009\")', '0');

-- ----------------------------
-- Table structure for semester
-- ----------------------------
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester`  (
  `beginyear` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `endyear` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`beginyear`, `endyear`, `number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of semester
-- ----------------------------
INSERT INTO `semester` VALUES ('2019', '2020', 1);
INSERT INTO `semester` VALUES ('2019', '2020', 2);
INSERT INTO `semester` VALUES ('2020', '2021', 1);
INSERT INTO `semester` VALUES ('2020', '2021', 2);
INSERT INTO `semester` VALUES ('2021', '2022', 1);
INSERT INTO `semester` VALUES ('2021', '2022', 2);
INSERT INTO `semester` VALUES ('2022', '2023', 1);
INSERT INTO `semester` VALUES ('2022', '2023', 2);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `sno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `college` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `klass` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wechat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `politicalstatus` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `highschool` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `foreignlanguage` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('19408100131', '王世杰', '机器人学院', '男', '网络工程', '网络191', '福建省', '武夷山市', '2001年3月15日', '13313905835', '1061208565', '13313905835', '1061208565@qq.com', '共青团员', '汉族', '武夷山市第一中学', '英语', '1');

-- ----------------------------
-- Table structure for study_course
-- ----------------------------
DROP TABLE IF EXISTS `study_course`;
CREATE TABLE `study_course`  (
  `sno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `semester` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`sno`, `semester`, `cno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of study_course
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `tno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tdept` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rank` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comeyear` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wechat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduateschool` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `direction` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('00000000000', '王世杰', '机器人学院', '校长', '10086', '翠柏校区八号楼626', '男', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('12345678910', '王世杰', '机器人学院', '党委书记', '1008611', '翠柏校区八号楼626', '男', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`account`, `type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('00000000000', 'teacher', '00000000000');
INSERT INTO `user` VALUES ('12345678910', 'root', '12345678910');
INSERT INTO `user` VALUES ('19408100131', 'student', '19408100131');

SET FOREIGN_KEY_CHECKS = 1;
