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

 Date: 05/06/2022 22:13:15
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
INSERT INTO `course` VALUES ('0001', '程序设计Ⅰ', 1, '机器人学院', '', 'C语言程序设计基础课程', '2014900014');
INSERT INTO `course` VALUES ('0002', '文化与技术Ⅰ', 1, '机器人学院', '', '英文教学的历史课', '2014900014');
INSERT INTO `course` VALUES ('0003', '木球Ⅰ', 1, '体育部', '', '体育项目木球教学', '2009910040');
INSERT INTO `course` VALUES ('0004', '中国近现代史纲要', 1, '马克思主义学院', '', '中国近现代史纲要，了解历史，以史为鉴。', '2005900043');
INSERT INTO `course` VALUES ('0005', '高等数学RⅠ', 1, '机器人学院', '', '微积分', '2010900019');
INSERT INTO `course` VALUES ('0006', '机器人设计概论', 1, '机器人学院', '', '机器人设计的基本知识和小项目', '2011900033');
INSERT INTO `course` VALUES ('0007', '军事理论与训练', 1, '机器人学院', '', '有关军队和战争的概念、范畴、原理、原则等的体系。科学的军事理论是军事活动的本质及其客观规律的正确反映。来源于军事实践，经理论概括后给军事实践以指导，并在不断接受军事实践检验的基础上得到丰富和发展。', '2000900022');

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
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0003', '3', '8', '9');
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0004', '1', '3', '5');
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0005', '2', '1', '2');
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0006', '4', '6', '7');
INSERT INTO `course_runtime` VALUES ('2019-2020学年第1学期', '0007', '6', '11', '13');

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
INSERT INTO `course_semester` VALUES ('0001', '2019-2020学年第1学期', '2014900014', 3, 18, 29, '西三626', 0);
INSERT INTO `course_semester` VALUES ('0002', '2019-2020学年第1学期', '2014900014', 3, 18, 29, '西三625', 0);
INSERT INTO `course_semester` VALUES ('0003', '2019-2020学年第1学期', '2009910040', 6, 18, 99, '西三502', 0);
INSERT INTO `course_semester` VALUES ('0004', '2019-2020学年第1学期', '2005900043', 1, 18, 49, '东三203', 0);
INSERT INTO `course_semester` VALUES ('0005', '2019-2020学年第1学期', '2010900019', 3, 18, 49, '东三609', 0);
INSERT INTO `course_semester` VALUES ('0006', '2019-2020学年第1学期', '2011900033', 11, 18, 99, '东三304', 0);
INSERT INTO `course_semester` VALUES ('0007', '2019-2020学年第1学期', '2000900022', 3, 4, 99, '东三102', 0);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sendtime` datetime(0) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, '19408100131', '联系老师功能测试细节', '2022-06-02 14:28:17', 1, '联系老师功能测试');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sendtime` datetime(0) NULL DEFAULT NULL,
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '2022-05-31 20:52:18', '全体同学：\r\n\r\n全国大学外语等级考试将于2022年6月11日举行,为保证考试的顺利进行，现将“大学外语等级考试”的有关要求通知如下：\r\n\r\n根据教育部教育考试院下发的《新冠肺炎疫情防控常态化下全国大学英语四、六级考试组考防疫工作的指导意见(2022版)》要求需做好对所有考生进行14天本地健康状况监测工作，请不在校考生及时返校以便参加考试。我校目前防控要求，宁波大市以外（且不涉及防范区）返校学生，需如实上报行程，持48小时核酸，并核验绿码、行程码，到校后三天2次核酸，2次核酸间隔24小时。根据最新省疫情风险地区划分表，省内涉及防范区的学生，暂不返校；省外涉及“3+11”、“2+14”健康管理范围的风险地区的学生，暂不返校。\r\n\r\n一、凡参加大学外语等级考试的考生，参加四、六级考试时，必须同时携带本人准考证、身份证（学生证），否则不能参加考试。\r\n\r\n二、请各位同学在考前必须查看自己所在考场的具体位置。参加四级考试考生9：00后禁止入场，参加六级考试的考生15：00后禁止入场，考生不准中途退场，所有考生必须在考试结束，试卷收齐无误，监考教师宣布“可以离场”口令后方可离开考场。\r\n\r\n三、考生须携带HB或2B铅笔(涂答题卡用)、黑色签字笔、橡皮等文具。任何书籍、笔记、资料、报刊、草稿纸以及各种无线通信工具（耳机除外）、录放音机、电子记事本等违规物品不得携带入场，一经发现，将按违规处理。\r\n\r\n四、本次考试的英语四、六级考试听力部分采用广播播放的形式（日语小语种考试采用考场内单独播放录音的形式）。考生须自备可以收听听力信息的带耳机的收音机，并确保耳机能正常收听到宁波经济广播频道FM102.9MHz。考试期间，因收音设备原因影响听力考试，由考生自己负责。\r\n\r\n五、答题前应认真阅读试题册正面的“敬告考生”内容，按要求填写答题卡中的姓名、准考证号等栏目。凡答题卡中该栏目漏填涂、错填涂或字迹不清、无法辨认的，成绩无效。英语四级（CET4）和英语六级（CET6）还需将试题册背面条形码粘贴条粘贴至答题卡上规定位置，错贴、漏贴、损毁条形码粘贴条将按违规处理，成绩无效。考生在答题时，切记不要将答题卡折叠、损坏。\r\n\r\n六、考生应自觉遵守考试纪律，考场内服从考试工作人员管理，保持良好的考试秩序。实施作弊行为一经发现将按违规处理取消成绩，对扰乱考场秩序，参与作弊团伙、恐吓、威胁考试工作人员的将移交公安机关追究其责任。\r\n\r\n七、考试当天，请考生自备口罩，考生不得因为佩戴口罩影响身份识别。所有考生体温低于37.3℃方可进入考点。第一次测量体温不合格的，可适当休息后使用其他设备或其他方式再次测量。仍不合格的，考点须依据本地防疫工作要求结合卫生监控、疾控机构和医疗机构意见，在保障广大考生和考试工作人员生命安全和身体健康前提下，综合研判评估是否具备参加考试和组织考试工作的条件，凡不具备相关条件的考生不得参加考试。\r\n\r\n八、继教学院考生入校要求：\r\n\r\n由教务处将考生名单报送至保卫处，考生须携带身份证及准考证（纸质），扫场所码，绿码，48小时内核酸阴性，行程码不带星方可入校参加考试。\r\n\r\n九、参加本次四、六级考试的考生可以于考试前一周内登陆全国大学英语四、六级考试网站(http://cet-bm.neea.edu.cn/)查询并打印相关的准考证信息。\r\n\r\n希望各位考生能够做到诚信参考，并预祝同学们取得好的成绩!\r\n\r\n　　　　　　　　　　　　　　　　　　　                                                                                                                                                                                 宁波工程学院教务处\r\n\r\n　　　　　　　　　　　　　　　　　　　                                                                                                                                                                                 2022年5月24日', ' 2022年6月份“全国大学外语等级考试”考生须知');
INSERT INTO `notice` VALUES (2, '2022-05-31 20:57:24', '【温馨提醒】介于19级学生在进行自己学分的核对，老师做两点说明①学院选修课由于之前有一些课程性质可能不一致，可先暂时不管，务必先仔细核对一下0.5学分的有没有修满四门，即2分即可，如果没有修够的可及时联系我。②如果出现第一学期比如军事理论训练的课程在原专业的到机器人学院后课程代码改变的，请申请校内课程替代一栏进行替换。如还有其他情况也可以联系我，大家都一定重视起来，都去看一看。', '19级学生选修课替换提醒');

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
INSERT INTO `select_list` VALUES ('网络工程', '2019-2020学年第1学期', '(\"0001\",\"0002\",\"0003\",\"0004\",\"0005\",\"0006\",\"0007\")', '1');

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
INSERT INTO `study_course` VALUES ('19408100131', '2019-2020学年第1学期', '0001', 99);
INSERT INTO `study_course` VALUES ('19408100131', '2019-2020学年第1学期', '0002', 100);
INSERT INTO `study_course` VALUES ('19408100131', '2019-2020学年第1学期', '0003', 100);
INSERT INTO `study_course` VALUES ('19408100131', '2019-2020学年第1学期', '0004', 100);
INSERT INTO `study_course` VALUES ('19408100131', '2019-2020学年第1学期', '0005', 100);
INSERT INTO `study_course` VALUES ('19408100131', '2019-2020学年第1学期', '0006', 100);
INSERT INTO `study_course` VALUES ('19408100131', '2019-2020学年第1学期', '0007', 100);

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
INSERT INTO `teacher` VALUES ('2000900022', '周丽娜', '机器人学院', '书记', '10086', '机器人学院305', '女', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('2005900043', '陈红', '马克思主义学院', '副教授', '10086', '西三101', '女', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('2009910040', '刘海洋', '体育部', '副教授', '10086', '行政楼101', '男', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('2010900019', '王玉金', '机器人学院', '讲师', '10086', '机器人学院302', '男', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('2011900033', '廖远江', '机器人学院', '副教授', '10086', '机器人学院303', '男', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `teacher` VALUES ('2014900014', '张浩向', '机器人学院', '讲师', '10086', '机器人学院302', '男', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
INSERT INTO `user` VALUES ('2000900022', 'teacher', '2000900022');
INSERT INTO `user` VALUES ('2005900043', 'teacher', '2005900043');
INSERT INTO `user` VALUES ('2009910040', 'teacher', '2009910040');
INSERT INTO `user` VALUES ('2010900019', 'teacher', '2010900019');
INSERT INTO `user` VALUES ('2011900033', 'teacher', '2011900033');
INSERT INTO `user` VALUES ('2014900014', 'teacher', '2014900014');

SET FOREIGN_KEY_CHECKS = 1;
