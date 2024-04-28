/*
 Navicat Premium Data Transfer

 Source Server         : design
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : ry-cloud

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 28/04/2024 23:54:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities`  (
  `city_id` bigint NOT NULL AUTO_INCREMENT COMMENT '城市ID',
  `city_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市名称',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '隶属省份 | 直辖',
  `population` bigint NULL DEFAULT NULL COMMENT '人口数量',
  `established_date` date NULL DEFAULT NULL COMMENT '建市日期',
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '经纬度（格式：经度,纬度）',
  `area` float NULL DEFAULT NULL COMMENT '城市面积',
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 269 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '城市基础信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES (8, '重庆', '重庆', 28390000, '1959-10-08', '106.560459,29.567849', 1645);
INSERT INTO `cities` VALUES (9, '吉林', '吉林', 27340000, '1990-12-21', '126.555635,43.843568', 195);
INSERT INTO `cities` VALUES (10, '上海', '上海', 22315474, '1912-08-10', '121.480539,31.235929', 1242);
INSERT INTO `cities` VALUES (11, '北京', '北京', 18960744, '1911-01-04', '116.413384,39.910925', 1641);
INSERT INTO `cities` VALUES (12, '深圳', '广东', 17494398, '1965-03-01', '114.0683,22.54554', 962.17);
INSERT INTO `cities` VALUES (13, '广州', '广东', 16096724, '1904-10-17', '113.25,23.11667', 1366.02);
INSERT INTO `cities` VALUES (14, '天津', '天津', 14000000, '1987-09-18', '117.33333,39.33333', 1264.46);
INSERT INTO `cities` VALUES (15, '成都', '四川', 13568357, '2004-12-19', '104.06667,30.66667', 1063.68);
INSERT INTO `cities` VALUES (16, '武汉', '湖北', 10392693, '2018-01-11', '114.26667,30.58333', 925.97);
INSERT INTO `cities` VALUES (17, '东莞', '广东', 9644871, '1944-03-21', '113.74866,23.01797', 1194.31);
INSERT INTO `cities` VALUES (18, '西安', '陕西', 9600000, '1960-06-12', '108.92861,34.25833', 807.57);
INSERT INTO `cities` VALUES (19, '南京', '江苏', 9314685, '1990-01-31', '118.77778,32.06167', 885.73);
INSERT INTO `cities` VALUES (20, '杭州', '浙江', 9236032, '1999-10-20', '120.16142,30.29365', 829.41);
INSERT INTO `cities` VALUES (21, '佛山', '广东', 9042509, '1921-05-05', '113.13148,23.02677', 163.82);
INSERT INTO `cities` VALUES (22, '青岛', '山东', 7172451, '1982-09-02', '120.38042,36.06488', 761.52);
INSERT INTO `cities` VALUES (23, '沈阳', '辽宁', 7050000, '1966-05-30', '123.43278,41.79222', 573);
INSERT INTO `cities` VALUES (24, '苏州', '江苏', 6715559, '1997-08-31', '120.59538,31.30408', 481.33);
INSERT INTO `cities` VALUES (25, '哈尔滨', '黑龙江', 5242897, '1962-10-04', '126.65,45.75', 500.44);
INSERT INTO `cities` VALUES (26, '合肥', '安徽', 5050000, '1960-10-14', '117.28083,31.86389', 506.6);
INSERT INTO `cities` VALUES (27, '大连', '辽宁', 4913879, '1951-02-07', '121.60222,38.91222', 444.04);
INSERT INTO `cities` VALUES (28, '孝感', '湖北', 4800000, '1986-04-29', '113.9344,30.92903', 50);
INSERT INTO `cities` VALUES (29, '长春', '吉林', 4714996, '2008-12-12', '125.32278,43.88', 551.38);
INSERT INTO `cities` VALUES (30, '厦门', '福建', 4617251, '1959-09-03', '118.08187,24.47979', 464.77);
INSERT INTO `cities` VALUES (31, '无锡', '江苏', 4396835, '1987-07-27', '120.28857,31.56887', 359.72);
INSERT INTO `cities` VALUES (32, '济南', '山东', 4335989, '1933-09-03', '116.99722,36.66833', 805.82);
INSERT INTO `cities` VALUES (33, '太原', '山西', 4303673, '1956-05-10', '112.56028,37.86944', 360);
INSERT INTO `cities` VALUES (34, '郑州', '河南', 4253913, '1972-10-26', '113.64861,34.75778', 729.12);
INSERT INTO `cities` VALUES (35, '石家庄', '河北', 3938513, '2000-01-03', '114.47861,38.04139', 334.52);
INSERT INTO `cities` VALUES (36, '昆明', '云南', 3855346, '1965-12-13', '102.71833,25.03889', 483.27);
INSERT INTO `cities` VALUES (37, '南宁', '广西', 3839800, '1984-05-13', '108.31667,22.81667', 442.52);
INSERT INTO `cities` VALUES (38, '汕头', '广东', 3838900, '1969-10-14', '116.67876,23.35489', 279.61);
INSERT INTO `cities` VALUES (39, '福州', '福建', 3740000, '1971-08-02', '119.30611,26.06139', 410.02);
INSERT INTO `cities` VALUES (40, '宁波', '浙江', 3731203, '1978-07-14', '121.54945,29.87819', 397.4);
INSERT INTO `cities` VALUES (41, '濮阳', '河南', 3590000, '1978-09-08', '119.88872,29.45679', 56);
INSERT INTO `cities` VALUES (42, '十堰', '湖北', 3460000, '1989-03-13', '110.77806,32.6475', 113.39);
INSERT INTO `cities` VALUES (43, '唐山', '河北', 3372102, '1957-06-20', '118.18333,39.63333', 249.5);
INSERT INTO `cities` VALUES (44, '常州', '江苏', 3290918, '1940-06-29', '119.95401,31.77359', 278.74);
INSERT INTO `cities` VALUES (45, '淄博', '山东', 3129228, '1943-02-27', '118.06333,36.79056', 295.65);
INSERT INTO `cities` VALUES (46, '长沙', '湖南', 3093980, '2023-12-04', '112.97087,28.19874', 441.68);
INSERT INTO `cities` VALUES (47, '贵阳', '贵州', 3037159, '1911-06-19', '106.71667,26.58333', 369);
INSERT INTO `cities` VALUES (48, '兰州', '甘肃', 3000000, '1985-04-06', '103.83987,36.05701', 383.88);
INSERT INTO `cities` VALUES (49, '惠州', '广东', 2900113, '1925-06-01', '114.41523,23.11147', 313.61);
INSERT INTO `cities` VALUES (50, '海口', '海南', 2873358, '1982-01-20', '110.34651,20.03421', 215.8);
INSERT INTO `cities` VALUES (51, '临沂', '山东', 2743843, '1903-11-01', '118.34278,35.06306', 264.85);
INSERT INTO `cities` VALUES (52, '保定', '河北', 2739887, '1941-10-22', '115.46246,38.87288', 209.78);
INSERT INTO `cities` VALUES (53, '温州', '浙江', 2650000, '1926-01-30', '120.66682,27.99942', 283.21);
INSERT INTO `cities` VALUES (54, '云浮', '广东', 2612800, '2000-12-05', '112.03809,22.92787', 28.41);
INSERT INTO `cities` VALUES (55, '南昌', '江西', 2357839, '2022-06-20', '115.85306,28.68396', 376.74);
INSERT INTO `cities` VALUES (56, '呼和浩特', '内蒙古', 2350000, '1956-01-21', '111.65222,40.81056', 271.08);
INSERT INTO `cities` VALUES (57, '绍兴', '浙江', 2300000, '1910-05-21', '120.57864,30.00237', 266.07);
INSERT INTO `cities` VALUES (58, '南通', '江苏', 2273326, '1954-03-26', '120.87472,32.03028', 304.02);
INSERT INTO `cities` VALUES (59, '烟台', '山东', 2227733, '1916-11-04', '121.44081,37.47649', 397.7);
INSERT INTO `cities` VALUES (60, '珠海', '广东', 2207090, '1901-01-31', '113.56778,22.27694', 141.31);
INSERT INTO `cities` VALUES (61, '包头', '内蒙古', 2150000, '1974-06-22', '109.84389,40.6516', 211.62);
INSERT INTO `cities` VALUES (62, '潍坊', '山东', 2044028, '1923-05-30', '119.10194,36.71', 194.76);
INSERT INTO `cities` VALUES (63, '遵义', '贵州', 2037775, '1917-02-24', '106.90722,27.68667', 149.8);
INSERT INTO `cities` VALUES (64, '连云港', '江苏', 2001009, '1980-09-22', '119.21556,34.59845', 225.38);
INSERT INTO `cities` VALUES (65, '赣州', '江西', 1977253, '1959-03-24', '114.9326,25.84664', 222.22);
INSERT INTO `cities` VALUES (66, '鄂尔多斯', '内蒙古', 1940653, '1949-01-14', '109.78157,39.6086', 117.87);
INSERT INTO `cities` VALUES (67, '揭阳', '广东', 1899394, '1962-03-20', '116.36581,23.5418', 139);
INSERT INTO `cities` VALUES (68, '南充', '四川', 1858875, '1921-06-24', '106.08473,30.79508', 145);
INSERT INTO `cities` VALUES (69, '大同', '山西', 1850000, '1912-10-24', '113.29139,40.09361', 149.68);
INSERT INTO `cities` VALUES (70, '南阳', '河南', 1811812, '2008-04-16', '112.53278,32.99472', 164.75);
INSERT INTO `cities` VALUES (71, '江门', '广东', 1795459, '1925-10-13', '113.08333,22.58333', 158.01);
INSERT INTO `cities` VALUES (72, '阜阳', '安徽', 1768947, '1954-06-03', '115.81667,32.9', 140);
INSERT INTO `cities` VALUES (73, '潮州', '广东', 1750945, '1955-10-26', '116.62262,23.65396', 77.85);
INSERT INTO `cities` VALUES (74, '清远', '广东', 1738424, '1927-09-27', '113.03333,23.7', 63.22);
INSERT INTO `cities` VALUES (75, '西宁', '青海', 1677177, '1915-04-09', '101.75739,36.62554', 96);
INSERT INTO `cities` VALUES (76, '淮安', '江苏', 1666826, '1916-06-23', '116.99694,32.62639', 216);
INSERT INTO `cities` VALUES (77, '六安', '安徽', 1644344, '1935-11-17', '116.51688,31.73561', 74.3);
INSERT INTO `cities` VALUES (78, '盐城', '江苏', 1615717, '1992-01-26', '120.1573,33.3575', 173.11);
INSERT INTO `cities` VALUES (79, '泰州', '江苏', 1607108, '2015-04-12', '119.90812,32.49069', 158.21);
INSERT INTO `cities` VALUES (80, '大庆', '黑龙江', 1604027, '1945-06-22', '46.58333,125', 256.42);
INSERT INTO `cities` VALUES (81, '芜湖', '安徽', 1598165, '1926-06-10', '118.42947,31.35259', 265.08);
INSERT INTO `cities` VALUES (82, '达州', '四川', 1589435, '1973-03-20', '107.46308,31.2106', 100.3);
INSERT INTO `cities` VALUES (83, '扬州', '江苏', 1584237, '1932-11-14', '119.43583,32.39722', 192.25);
INSERT INTO `cities` VALUES (84, '桂林', '广西', 1572300, '2007-09-03', '110.29639,25.28022', 109.46);
INSERT INTO `cities` VALUES (85, '肇庆', '广东', 1553109, '2016-01-07', '112.46091,23.04893', 124.04);
INSERT INTO `cities` VALUES (86, '绵阳', '四川', 1550000, '1900-07-05', '104.68168,31.46784', 181.88);
INSERT INTO `cities` VALUES (87, '莆田', '福建', 1539389, '1950-10-09', '119.01028,25.43944', 86.9);
INSERT INTO `cities` VALUES (88, '商丘', '河南', 1536392, '2013-09-07', '115.65,34.45', 63);
INSERT INTO `cities` VALUES (89, '银川', '宁夏', 1487579, '1979-10-30', '106.27306,38.46806', 194.69);
INSERT INTO `cities` VALUES (90, '泉州', '福建', 1469157, '1916-05-23', '118.58583,24.91389', 230);
INSERT INTO `cities` VALUES (91, '金华', '浙江', 1463990, '1948-11-11', '119.64421,29.10678', 113);
INSERT INTO `cities` VALUES (92, '常德', '湖南', 1457419, '1944-10-09', '111.69844,29.03205', 104.91);
INSERT INTO `cities` VALUES (93, '开封', '河南', 1451741, '1964-03-06', '114.30742,34.7986', 134.48);
INSERT INTO `cities` VALUES (94, '鞍山', '辽宁', 1450000, '1906-03-01', '122.99,41.12361', 177.33);
INSERT INTO `cities` VALUES (95, '宝鸡', '陕西', 1437802, '1942-02-07', '107.23705,34.36775', 88.73);
INSERT INTO `cities` VALUES (96, '宿迁', '江苏', 1437685, '1937-09-23', '118.29583,33.94917', 117.51);
INSERT INTO `cities` VALUES (97, '柳州', '广西', 1436599, '1930-09-17', '109.40698,24.32405', 261.52);
INSERT INTO `cities` VALUES (98, '亳州', '安徽', 1409436, '1960-12-25', '115.77028,33.87722', 56);
INSERT INTO `cities` VALUES (99, '曲靖', '云南', 1408500, '2001-10-21', '103.78333,25.48333', 102.51);
INSERT INTO `cities` VALUES (100, '湛江', '广东', 1400709, '1997-06-20', '110.38749,21.23391', 111.19);
INSERT INTO `cities` VALUES (101, '抚顺', '辽宁', 1400646, '1989-08-28', '123.94363,41.88669', 122.55);
INSERT INTO `cities` VALUES (102, '洛阳', '河南', 1390581, '1941-12-17', '112.45361,34.68361', 294.57);
INSERT INTO `cities` VALUES (103, '邯郸', '河北', 1358318, '1934-02-02', '114.48764,36.60999', 192.2);
INSERT INTO `cities` VALUES (104, '宜昌', '湖北', 1350150, '1941-02-27', '111.28472,30.71444', 190.95);
INSERT INTO `cities` VALUES (105, '菏泽', '山东', 1346717, '1992-02-24', '115.47358,35.23929', 167.88);
INSERT INTO `cities` VALUES (106, '六盘水', '贵州', 1320825, '1940-08-23', '104.83333,26.59444', 71.68);
INSERT INTO `cities` VALUES (107, '茂名', '广东', 1307802, '1953-06-19', '110.91364,21.66625', 119.26);
INSERT INTO `cities` VALUES (108, '钦州', '广西', 1296300, '1976-09-26', '108.65061,21.98247', 89.63);
INSERT INTO `cities` VALUES (109, '漯河', '河南', 1294974, '1971-04-03', '114.04272,33.56394', 66);
INSERT INTO `cities` VALUES (110, '阳江', '广东', 1292987, '1908-11-24', '111.96272,21.85563', 63.52);
INSERT INTO `cities` VALUES (111, '许昌', '河南', 1265536, '1919-09-22', '113.86299,34.03189', 107);
INSERT INTO `cities` VALUES (112, '自贡', '四川', 1262064, '1995-08-14', '104.77689,29.34162', 124);
INSERT INTO `cities` VALUES (113, '徐州', '江苏', 1253991, '2000-03-19', '117.28386,34.20442', 292.98);
INSERT INTO `cities` VALUES (114, '内江', '四川', 1251095, '1908-11-24', '105.06216,29.58354', 71.14);
INSERT INTO `cities` VALUES (115, '益阳', '湖南', 1249807, '1981-10-01', '112.32833,28.58917', 75);
INSERT INTO `cities` VALUES (116, '济宁', '山东', 1241012, '2017-07-16', '116.58139,35.405', 248.94);
INSERT INTO `cities` VALUES (117, '信阳', '河南', 1230042, '1977-05-18', '114.06556,32.12278', 100.35);
INSERT INTO `cities` VALUES (118, '聊城', '山东', 1229768, '1956-08-23', '116.00247,36.45064', 110.94);
INSERT INTO `cities` VALUES (119, '长治', '山西', 1214940, '1977-11-12', '113.10528,36.18389', 59.3);
INSERT INTO `cities` VALUES (120, '天水', '甘肃', 1212791, '1934-07-24', '105.74238,34.57952', 56);
INSERT INTO `cities` VALUES (121, '渭南', '陕西', 1199290, '1952-06-07', '109.50891,34.50355', 62.7);
INSERT INTO `cities` VALUES (122, '嘉兴', '浙江', 1180000, '2022-09-01', '120.75,30.7522', 163.42);
INSERT INTO `cities` VALUES (123, '九江', '江西', 1164268, '1980-06-09', '116.00206,29.70475', 163.17);
INSERT INTO `cities` VALUES (124, '安阳', '河南', 1146839, '1982-01-28', '114.38278,36.096', 81);
INSERT INTO `cities` VALUES (125, '毕节', '贵州', 1137383, '1952-08-08', '105.28627,27.30193', 42.5);
INSERT INTO `cities` VALUES (126, '株洲', '湖南', 1129687, '1950-05-03', '113.15,27.83333', 145.82);
INSERT INTO `cities` VALUES (127, '上饶', '江西', 1116486, '1951-04-19', '117.94287,28.45179', 77.36);
INSERT INTO `cities` VALUES (128, '淮北', '安徽', 1113321, '1902-05-27', '116.79167,33.97444', 84.6);
INSERT INTO `cities` VALUES (129, '眉山', '四川', 1107742, '1905-09-10', '103.83696,30.04392', 62.38);
INSERT INTO `cities` VALUES (130, '贵港', '广西', 1086327, '2006-01-01', '109.59472,23.11603', 70.52);
INSERT INTO `cities` VALUES (131, '衡阳', '湖南', 1075516, '2002-02-14', '112.61888,26.88946', 130.6);
INSERT INTO `cities` VALUES (132, '玉林', '广西', 1056743, '1975-01-18', '110.14686,22.6305', 68.2);
INSERT INTO `cities` VALUES (133, '荆州', '湖北', 1052282, '1927-05-14', '112.19028,30.35028', 82.44);
INSERT INTO `cities` VALUES (134, '新乡', '河南', 1047088, '1983-05-17', '113.80151,35.19033', 124.76);
INSERT INTO `cities` VALUES (135, '宜春', '江西', 1045952, '2020-09-08', '114.4,27.83333', 68);
INSERT INTO `cities` VALUES (136, '咸阳', '陕西', 1034081, '1982-07-14', '108.70261,34.33778', 90.12);
INSERT INTO `cities` VALUES (137, '三亚', '海南', 1031396, '1986-06-10', '109.50947,18.25435', 51.63);
INSERT INTO `cities` VALUES (138, '韶关', '广东', 1028460, '1994-10-03', '113.58333,24.8', 105.08);
INSERT INTO `cities` VALUES (139, '龙岩', '福建', 1025087, '2010-07-23', '117.01775,25.07485', 58.36);
INSERT INTO `cities` VALUES (140, '永州', '湖南', 1020715, '1903-06-04', '111.61306,26.42389', 62.21);
INSERT INTO `cities` VALUES (141, '湖州', '浙江', 1015937, '1906-02-03', '120.0933,30.8703', 131.62);
INSERT INTO `cities` VALUES (142, '武威', '甘肃', 1010295, '1977-06-24', '102.63202,37.92672', 31);
INSERT INTO `cities` VALUES (143, '汉中', '陕西', 1006557, '1901-01-06', '107.02214,33.07507', 42.4);
INSERT INTO `cities` VALUES (144, '贺州', '广西', 1005490, '1907-03-11', '111.56675,24.40357', 31.43);
INSERT INTO `cities` VALUES (145, '东营', '山东', 998968, '2014-10-19', '118.49165,37.46271', 166.8);
INSERT INTO `cities` VALUES (146, '泸州', '四川', 998900, '1943-11-30', '105.42575,28.8903', 174.13);
INSERT INTO `cities` VALUES (147, '梅州', '广东', 992351, '1909-08-15', '116.11768,24.28859', 53.64);
INSERT INTO `cities` VALUES (148, '岳阳', '湖南', 991465, '1976-09-21', '113.09481,29.37455', 110);
INSERT INTO `cities` VALUES (149, '莱芜', '山东', 989535, '1973-09-18', '117.65694,36.19278', 120);
INSERT INTO `cities` VALUES (150, '本溪', '辽宁', 987717, '1949-08-02', '123.765,41.28861', 101.79);
INSERT INTO `cities` VALUES (151, '平顶山', '河南', 979130, '1980-03-12', '113.30119,33.73847', 73.4);
INSERT INTO `cities` VALUES (152, '蚌埠', '安徽', 972784, '2005-01-29', '117.36083,32.94083', 149);
INSERT INTO `cities` VALUES (153, '湘潭', '湖南', 959303, '2001-09-04', '112.9,27.85', 79.81);
INSERT INTO `cities` VALUES (154, '临汾', '山西', 959198, '1905-02-19', '111.51889,36.08889', 54);
INSERT INTO `cities` VALUES (155, '镇江', '江苏', 950516, '1922-11-18', '119.45508,32.21086', 147.29);
INSERT INTO `cities` VALUES (156, '保山', '云南', 935618, '2020-11-14', '99.16366,25.11626', 32);
INSERT INTO `cities` VALUES (157, '来宾', '广西', 910282, '1993-07-20', '109.22222,23.74743', 41);
INSERT INTO `cities` VALUES (158, '资阳', '四川', 905729, '1904-03-24', '104.64811,30.12108', 45.2);
INSERT INTO `cities` VALUES (159, '衢州', '浙江', 902767, '2011-08-25', '118.86861,28.95944', 71.19);
INSERT INTO `cities` VALUES (160, '枣庄', '山东', 899753, '2013-09-09', '117.55417,34.86472', 156.73);
INSERT INTO `cities` VALUES (161, '萍乡', '江西', 893550, '1964-01-01', '113.85353,27.61672', 50.87);
INSERT INTO `cities` VALUES (162, '舟山', '浙江', 882932, '2006-08-20', '122.20488,29.98869', 62.15);
INSERT INTO `cities` VALUES (163, '齐齐哈尔', '黑龙江', 882364, '1944-09-16', '123.96154,47.33922', 130.96);
INSERT INTO `cities` VALUES (164, '安康', '陕西', 870126, '1930-08-02', '109.01722,32.68', 40);
INSERT INTO `cities` VALUES (165, '廊坊', '河北', 868066, '1933-05-27', '116.71471,39.52079', 66.28);
INSERT INTO `cities` VALUES (166, '焦作', '河南', 865413, '1915-04-03', '113.23306,35.23972', 111.2);
INSERT INTO `cities` VALUES (167, '威海', '山东', 844310, '2010-09-10', '122.11356,37.50914', 197.39);
INSERT INTO `cities` VALUES (168, '新余', '江西', 839488, '1942-06-21', '114.93335,27.80429', 76);
INSERT INTO `cities` VALUES (169, '宜宾', '四川', 836340, '1948-01-04', '104.63994,28.7593', 134.31);
INSERT INTO `cities` VALUES (170, '郴州', '湖南', 822534, '1914-06-22', '113.03333,25.8', 77.23);
INSERT INTO `cities` VALUES (171, '安庆', '安徽', 804493, '1946-12-05', '117.04723,30.51365', 101.6);
INSERT INTO `cities` VALUES (172, '邢台', '河北', 798770, '1969-05-07', '114.49417,37.06306', 157.05);
INSERT INTO `cities` VALUES (173, '昭通', '云南', 787845, '1982-06-01', '103.71667,27.31667', 41.15);
INSERT INTO `cities` VALUES (174, '攀枝花', '四川', 787177, '2009-01-17', '101.71276,26.58509', 74.08);
INSERT INTO `cities` VALUES (175, '滁州', '安徽', 782671, '1916-03-15', '118.29778,32.32194', 83.84);
INSERT INTO `cities` VALUES (176, '安顺', '贵州', 765313, '1937-02-16', '105.93333,26.25', 66.3);
INSERT INTO `cities` VALUES (177, '梧州', '广西', 761948, '1944-04-05', '111.28848,23.48054', 55.96);
INSERT INTO `cities` VALUES (178, '秦皇岛', '河北', 759718, '1950-12-05', '119.58833,39.93167', 146.7);
INSERT INTO `cities` VALUES (179, '邵阳', '湖南', 753194, '1931-10-03', '111.46214,27.23818', 65);
INSERT INTO `cities` VALUES (180, '鹤岗', '黑龙江', 743307, '1941-07-17', '130.29033,47.34727', 53.22);
INSERT INTO `cities` VALUES (181, '德阳', '四川', 735070, '1996-03-26', '104.38198,31.13019', 74.55);
INSERT INTO `cities` VALUES (182, '阳泉', '山西', 731228, '1945-02-24', '113.56333,37.8575', 55.16);
INSERT INTO `cities` VALUES (183, '驻马店', '河南', 721670, '1956-02-03', '114.02944,32.97944', 75.1);
INSERT INTO `cities` VALUES (184, '张家口', '河北', 692602, '1979-04-28', '114.87139,40.78341', 101.8);
INSERT INTO `cities` VALUES (185, '阜新', '辽宁', 689050, '1953-01-30', '121.65889,42.01556', 76.5);
INSERT INTO `cities` VALUES (186, '黄石', '湖北', 688090, '2000-11-29', '115.04814,30.24706', 75);
INSERT INTO `cities` VALUES (187, '辽阳', '辽宁', 687890, '1965-06-30', '123.17306,41.27194', 101.12);
INSERT INTO `cities` VALUES (188, '滨州', '山东', 682717, '1982-06-24', '118.01667,37.36667', 142.4);
INSERT INTO `cities` VALUES (189, '运城', '山西', 680036, '2007-03-07', '110.99278,35.02306', 46);
INSERT INTO `cities` VALUES (190, '德州', '山东', 679535, '1945-05-08', '116.36706,37.44661', 168.16);
INSERT INTO `cities` VALUES (191, '三门峡', '河南', 669307, '1945-11-04', '111.18139,34.77472', 56);
INSERT INTO `cities` VALUES (192, '牡丹江', '黑龙江', 665915, '2005-02-22', '129.62594,44.54804', 82.24);
INSERT INTO `cities` VALUES (193, '乐山', '四川', 662814, '1985-05-31', '103.76386,29.56227', 74.34);
INSERT INTO `cities` VALUES (194, '日照', '山东', 661943, '1977-09-23', '119.52908,35.41414', 110.7);
INSERT INTO `cities` VALUES (195, '遂宁', '四川', 656760, '2005-06-01', '105.57332,30.50802', 75.94);
INSERT INTO `cities` VALUES (196, '鹤壁', '河南', 634721, '1944-12-30', '114.1925,35.89917', 64.12);
INSERT INTO `cities` VALUES (197, '荆门', '湖北', 632954, '1978-11-25', '112.20472,31.03361', 58.05);
INSERT INTO `cities` VALUES (198, '丹东', '辽宁', 631973, '1923-09-23', '124.39472,40.12917', 77.14);
INSERT INTO `cities` VALUES (199, '随州', '湖北', 618582, '1957-02-17', '113.36306,31.71111', 53);
INSERT INTO `cities` VALUES (200, '池州', '安徽', 615274, '1967-05-02', '117.47783,30.66134', 36.93);
INSERT INTO `cities` VALUES (201, '雅安', '四川', 612056, '1906-06-26', '102.999,29.98521', 33.14);
INSERT INTO `cities` VALUES (202, '锦州', '辽宁', 604269, '1997-07-12', '121.14167,41.10778', 77.1);
INSERT INTO `cities` VALUES (203, '三明', '福建', 602166, '1945-01-15', '117.61861,26.24861', 37.45);
INSERT INTO `cities` VALUES (204, '双鸭山', '黑龙江', 600000, '1988-08-01', '131.13273,46.67686', 58);
INSERT INTO `cities` VALUES (205, '营口', '辽宁', 591159, '1998-05-29', '122.23176,40.66472', 180.07);
INSERT INTO `cities` VALUES (206, '漳州', '福建', 589831, '1961-07-07', '117.65556,24.51333', 65.65);
INSERT INTO `cities` VALUES (207, '四平', '吉林', 555609, '1902-05-29', '124.37785,43.16143', 57.87);
INSERT INTO `cities` VALUES (208, '怀化', '湖南', 552622, '1985-03-05', '110.00404,27.56337', 64);
INSERT INTO `cities` VALUES (209, '佳木斯', '黑龙江', 549549, '1938-07-12', '130.31118,46.79711', 96.98);
INSERT INTO `cities` VALUES (210, '忻州', '山西', 544683, '2020-05-10', '112.73333,38.40917', 36);
INSERT INTO `cities` VALUES (211, '商洛', '陕西', 531696, '1983-11-13', '109.93056,33.86667', 26);
INSERT INTO `cities` VALUES (212, '沧州', '河北', 527681, '1907-04-07', '116.85334,38.31124', 70.54);
INSERT INTO `cities` VALUES (213, '北海', '广西', 525329, '1920-03-20', '109.11549,21.48349', 73.07);
INSERT INTO `cities` VALUES (214, '衡水', '河北', 522147, '1994-01-27', '115.68348,37.73908', 46.4);
INSERT INTO `cities` VALUES (215, '广元', '四川', 516424, '2011-03-22', '105.823,32.44201', 56.34);
INSERT INTO `cities` VALUES (216, '咸宁', '湖北', 512517, '1982-08-15', '114.32201,29.84347', 65.8);
INSERT INTO `cities` VALUES (217, '通化', '吉林', 510000, '1999-03-08', '125.92639,41.71972', 53.16);
INSERT INTO `cities` VALUES (218, '张掖', '甘肃', 507433, '1966-08-22', '100.45167,38.93417', 64.2);
INSERT INTO `cities` VALUES (219, '周口', '河南', 505171, '1912-05-02', '114.63333,33.63333', 68.13);
INSERT INTO `cities` VALUES (220, '平凉', '甘肃', 504848, '2016-01-15', '106.68611,35.53917', 36);
INSERT INTO `cities` VALUES (221, '娄底', '湖南', 497171, '1950-07-17', '111.99444,27.73444', 47.15);
INSERT INTO `cities` VALUES (222, '汕尾', '广东', 491766, '1981-07-03', '115.3475,22.78199', 16.89);
INSERT INTO `cities` VALUES (223, '晋城', '山西', 476945, '1967-05-10', '112.83278,35.50222', 57);
INSERT INTO `cities` VALUES (224, '景德镇', '江西', 473561, '1960-10-25', '117.20789,29.2947', 78.68);
INSERT INTO `cities` VALUES (225, '南平', '福建', 467875, '1989-01-22', '118.17361,26.645', 41.24);
INSERT INTO `cities` VALUES (226, '河源', '广东', 463907, '1956-06-10', '114.68333,23.73333', 36.11);
INSERT INTO `cities` VALUES (227, '丽水', '浙江', 451418, '1972-04-27', '119.91029,28.46042', 34.9);
INSERT INTO `cities` VALUES (228, '承德', '河北', 449325, '1901-04-30', '117.95883,40.9519', 116.97);
INSERT INTO `cities` VALUES (229, '张家界', '湖南', 441804, '2000-01-02', '110.47833,29.12944', 32.96);
INSERT INTO `cities` VALUES (230, '宁德', '福建', 429260, '1945-12-11', '119.52278,26.66167', 29.81);
INSERT INTO `cities` VALUES (231, '酒泉', '甘肃', 428346, '1941-07-17', '98.51736,39.74318', 51.5);
INSERT INTO `cities` VALUES (232, '定西', '甘肃', 420614, '1926-05-07', '104.62303,35.57088', 25);
INSERT INTO `cities` VALUES (233, '固原', '宁夏', 411854, '1901-01-21', '106.28083,36.00667', 44.1);
INSERT INTO `cities` VALUES (234, '朝阳', '辽宁', 410005, '1948-10-26', '120.45861,41.57028', 57.08);
INSERT INTO `cities` VALUES (235, '鸡西', '黑龙江', 403759, '1945-05-06', '130.96217,45.29322', 80.61);
INSERT INTO `cities` VALUES (236, '铜陵', '安徽', 402062, '1988-08-05', '117.78333,30.95', 75.88);
INSERT INTO `cities` VALUES (237, '黄冈', '湖北', 366769, '2018-10-07', '114.87035,30.45143', 52.22);
INSERT INTO `cities` VALUES (238, '赤峰', '内蒙古', 346654, '1991-01-25', '118.96361,42.26833', 119.83);
INSERT INTO `cities` VALUES (239, '七台河', '黑龙江', 345033, '1915-08-16', '130.9953,45.768', 67.6);
INSERT INTO `cities` VALUES (240, '铁岭', '辽宁', 333907, '1994-10-05', '123.84139,42.29306', 57);
INSERT INTO `cities` VALUES (241, '临沧', '云南', 323708, '1924-09-17', '100.09455,23.87972', 19.85);
INSERT INTO `cities` VALUES (242, '白城', '吉林', 316970, '1957-10-19', '122.83302,45.61751', 42.87);
INSERT INTO `cities` VALUES (243, '白银', '甘肃', 294400, '1986-01-16', '104.17023,36.54696', 61.5);
INSERT INTO `cities` VALUES (244, '恩施', '湖北', 279185, '1969-10-04', '109.48333,30.3', 36);
INSERT INTO `cities` VALUES (245, '吐鲁番', '新疆', 273385, '1910-01-17', '89.17886,42.94769', 18.53);
INSERT INTO `cities` VALUES (246, '克拉玛依', '新疆', 261445, '1944-12-10', '84.88724,45.58473', 72.48);
INSERT INTO `cities` VALUES (247, '通辽', '内蒙古', 261110, '1927-06-16', '122.26528,43.6125', 61.2);
INSERT INTO `cities` VALUES (248, '绥化', '黑龙江', 252245, '2007-08-31', '126.96656,46.64814', 37);
INSERT INTO `cities` VALUES (249, '大理', '云南', 235305, '1968-03-20', '100.21229,25.58474', 40.55);
INSERT INTO `cities` VALUES (250, '金昌', '甘肃', 228561, '1921-12-04', '102.19379,38.50062', 42.17);
INSERT INTO `cities` VALUES (251, '乌海', '内蒙古', 218427, '1934-07-30', '106.81583,39.68442', 62.3);
INSERT INTO `cities` VALUES (252, '鹰潭', '江西', 214229, '1934-03-10', '28.23333,117', 33.8);
INSERT INTO `cities` VALUES (253, '丽江', '云南', 211151, '1990-10-01', '100.22072,26.86879', 23.2);
INSERT INTO `cities` VALUES (254, '昌吉', '新疆', 198776, '1935-09-30', '87.30461,44.00782', 61.4);
INSERT INTO `cities` VALUES (255, '鄂州', '湖北', 193652, '1935-04-12', '114.83333,30.4', 64.26);
INSERT INTO `cities` VALUES (256, '白山', '吉林', 183880, '1954-04-06', '126.41965,41.93853', 47.02);
INSERT INTO `cities` VALUES (257, '塔城', '新疆', 161037, '1954-02-20', '82.95847,46.74535', 13.8);
INSERT INTO `cities` VALUES (258, '巢湖', '安徽', 138463, '1931-08-17', '117.86667,31.6', 48);
INSERT INTO `cities` VALUES (259, '石嘴山', '宁夏', 136570, '1943-05-13', '106.76944,39.23333', 102.8);
INSERT INTO `cities` VALUES (260, '玉树', '青海', 124736, '1924-03-31', '126.54063,44.82751', 14.26);
INSERT INTO `cities` VALUES (261, '拉萨', '西藏', 118721, '1915-12-13', '91.1,29.65', 87.19);
INSERT INTO `cities` VALUES (262, '松原', '吉林', 113611, '2009-04-13', '124.82769,45.12902', 50.08);
INSERT INTO `cities` VALUES (263, '黑河', '黑龙江', 109427, '2013-12-02', '127.49016,50.24413', 20);
INSERT INTO `cities` VALUES (264, '玉溪', '云南', 103829, '1945-03-18', '102.54222,24.355', 30.17);
INSERT INTO `cities` VALUES (265, '铜仁', '贵州', 90593, '2022-03-05', '109.18528,27.71722', 34.68);
INSERT INTO `cities` VALUES (266, '昌都', '西藏', 86280, '2023-05-13', '97.17982,31.1304', 8.9);
INSERT INTO `cities` VALUES (267, '铜川', '陕西', 58346, '1992-08-02', '105.08731,31.09407', 44.12);
INSERT INTO `cities` VALUES (268, '泰安', '山东', 1333131, '2021-02-02', '117.094495,36.205858', 1231);

-- ----------------------------
-- Table structure for city_accident
-- ----------------------------
DROP TABLE IF EXISTS `city_accident`;
CREATE TABLE `city_accident`  (
  `accident_id` bigint NOT NULL AUTO_INCREMENT COMMENT '交通事件ID',
  `city_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属城市',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件描述',
  `accident_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事故地址',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '状态: 0表示已处理，1表示未处理',
  `record_date` date NULL DEFAULT NULL COMMENT '记录日期',
  PRIMARY KEY (`accident_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '交通事件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city_accident
-- ----------------------------
INSERT INTO `city_accident` VALUES (8, '济南', '发生事故', '山东省济南市历城区凤鸣路1000号', '0', '2024-04-22');

-- ----------------------------
-- Table structure for city_emergency
-- ----------------------------
DROP TABLE IF EXISTS `city_emergency`;
CREATE TABLE `city_emergency`  (
  `emergency_id` bigint NOT NULL AUTO_INCREMENT COMMENT '事件ID',
  `city_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属城市',
  `category_id` bigint NULL DEFAULT NULL COMMENT '类别ID',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件描述',
  `emergency_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '事件地址',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '状态: 0表示已处理，1表示未处理',
  `emergency_date` date NULL DEFAULT NULL COMMENT '事件日期',
  PRIMARY KEY (`emergency_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '交通事件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city_emergency
-- ----------------------------
INSERT INTO `city_emergency` VALUES (8, '济南', 9, '测试', '山东省济南市历城区凤鸣路1000号', '0', '2024-04-28');
INSERT INTO `city_emergency` VALUES (9, '济南', 9, '测试', '山东省济南市历城区凤鸣路1000号', '1', '2024-04-28');

-- ----------------------------
-- Table structure for city_facilities
-- ----------------------------
DROP TABLE IF EXISTS `city_facilities`;
CREATE TABLE `city_facilities`  (
  `facility_id` bigint NOT NULL AUTO_INCREMENT COMMENT '设施ID',
  `city_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属城市',
  `facility_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设施名称',
  `is_public` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设施类别: 0表示公共的，1表示私有的',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设施地址',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态: 0表示正常，1表示禁用',
  `capacity` int NULL DEFAULT NULL COMMENT '设施容量',
  PRIMARY KEY (`facility_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '城市设施管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city_facilities
-- ----------------------------
INSERT INTO `city_facilities` VALUES (1, '上海', '迪士尼游乐园哈哈', '1', '川沙镇申迪西路753号上海迪士尼度假区', '0', 1000);

-- ----------------------------
-- Table structure for city_plans
-- ----------------------------
DROP TABLE IF EXISTS `city_plans`;
CREATE TABLE `city_plans`  (
  `plan_id` bigint NOT NULL AUTO_INCREMENT COMMENT '规划ID',
  `city_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属城市',
  `plan_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规划名称',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '规划描述',
  `start_date` date NULL DEFAULT NULL COMMENT '开始日期',
  `end_date` date NULL DEFAULT NULL COMMENT '结束日期',
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '城市规划表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city_plans
-- ----------------------------
INSERT INTO `city_plans` VALUES (8, '济南', '农村厕所改造', '治理农村环境问题', '2024-04-02', '2024-04-23');
INSERT INTO `city_plans` VALUES (9, '济南', '黄河治理', '治理黄河环境，发展旅游景区', '2024-04-02', '2024-04-17');

-- ----------------------------
-- Table structure for city_resources
-- ----------------------------
DROP TABLE IF EXISTS `city_resources`;
CREATE TABLE `city_resources`  (
  `resource_id` bigint NOT NULL AUTO_INCREMENT COMMENT '资源ID',
  `city_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属城市',
  `resource_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资源名称',
  `category_id` bigint NULL DEFAULT NULL COMMENT '资源类型',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `capacity` int NULL DEFAULT NULL COMMENT '容量/规模',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态: 0表示正常，1表示禁用',
  PRIMARY KEY (`resource_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '城市公共资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city_resources
-- ----------------------------
INSERT INTO `city_resources` VALUES (8, '济南', '资源1', 8, '历城区凤鸣路', 131313, '0');
INSERT INTO `city_resources` VALUES (9, '青岛', '测试2', 9, '五四广场', 12321, '1');
INSERT INTO `city_resources` VALUES (10, '泰安', '测试吃', 9, '泰山', 23131, '0');
INSERT INTO `city_resources` VALUES (11, '北京', '天坛', 8, '天坛', 31233131, '0');

-- ----------------------------
-- Table structure for city_traffic
-- ----------------------------
DROP TABLE IF EXISTS `city_traffic`;
CREATE TABLE `city_traffic`  (
  `city_id` bigint NOT NULL AUTO_INCREMENT COMMENT '城市ID',
  `city_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市名称',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路况描述',
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '城市交通信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city_traffic
-- ----------------------------
INSERT INTO `city_traffic` VALUES (8, '济南', '二环西路：双向畅通。');
INSERT INTO `city_traffic` VALUES (9, '北京', '东二环：双向畅通。');

-- ----------------------------
-- Table structure for city_weather
-- ----------------------------
DROP TABLE IF EXISTS `city_weather`;
CREATE TABLE `city_weather`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市名称',
  `week` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '星期',
  `update_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '实况时间',
  `tem` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '实况温度',
  `tem_day` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '白天温度',
  `tem_night` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '夜间温度',
  `win` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '风向',
  `win_speed` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '风力',
  `win_meter` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '风速',
  `pressrue` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '气压',
  `humidity` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '湿度',
  `date` date NULL DEFAULT NULL COMMENT '记录日期',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '城市天气表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city_weather
-- ----------------------------
INSERT INTO `city_weather` VALUES (8, '青岛', '星期三', '09:58', '15.1', '20', '13', '西北风', '3级', '16km/h', '1003', '65%', '2024-04-24');
INSERT INTO `city_weather` VALUES (9, '济南', '星期二', '22:46', '14', '27', '13', '东南风', '1级', '4km/h', '990', '54%', '2024-04-23');

-- ----------------------------
-- Table structure for emergency_category
-- ----------------------------
DROP TABLE IF EXISTS `emergency_category`;
CREATE TABLE `emergency_category`  (
  `category_id` bigint NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类别名称',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '事故类别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emergency_category
-- ----------------------------
INSERT INTO `emergency_category` VALUES (8, '火灾', '需要消防队');
INSERT INTO `emergency_category` VALUES (9, '电力', '需要国家电网');

-- ----------------------------
-- Table structure for environment_quality
-- ----------------------------
DROP TABLE IF EXISTS `environment_quality`;
CREATE TABLE `environment_quality`  (
  `env_id` bigint NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `city_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市名称',
  `air_quality` int NULL DEFAULT NULL COMMENT '空气质量指数',
  `noise_level` int NULL DEFAULT NULL COMMENT '噪音水平（分贝）',
  `pollutant_emission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '污染物排放情况',
  `record_date` date NULL DEFAULT NULL COMMENT '记录日期',
  PRIMARY KEY (`env_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '城市环境质量表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of environment_quality
-- ----------------------------
INSERT INTO `environment_quality` VALUES (1, '济南', 12, 11, '差', '2024-04-17');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (4, 'cities', '城市基础信息表', NULL, NULL, 'Cities', 'crud', 'element-ui', 'com.ruoyi.city', 'city', 'cities', '城市基础信息', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2024-04-16 14:03:37', '', '2024-04-16 14:06:39', NULL);
INSERT INTO `gen_table` VALUES (5, 'city_facilities', '城市设施管理表', NULL, NULL, 'CityFacilities', 'crud', 'element-ui', 'com.ruoyi.city', 'city', 'facilities', '城市设施管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2024-04-16 14:18:07', '', '2024-04-16 14:20:04', NULL);
INSERT INTO `gen_table` VALUES (6, 'environment_quality', '城市环境质量表', NULL, NULL, 'EnvironmentQuality', 'crud', 'element-ui', 'com.ruoyi.citydata', 'city-data', 'quality', '城市环境质量', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2014\"}', 'admin', '2024-04-17 19:56:17', '', '2024-04-17 20:15:20', NULL);
INSERT INTO `gen_table` VALUES (9, 'city_weather', '城市天气表', NULL, NULL, 'CityWeather', 'crud', 'element-ui', 'com.ruoyi.citydata', 'city-data', 'weather', '城市天气', 'ruoyi', '0', '/', '{\"parentMenuId\":2014}', 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28', NULL);
INSERT INTO `gen_table` VALUES (10, 'city_traffic', '城市交通信息表', NULL, NULL, 'CityTraffic', 'crud', 'element-ui', 'com.ruoyi.traffic', 'traffic', 'traffic', '路况检测', 'ruoyi', '0', '/', '{\"parentMenuId\":2039}', 'admin', '2024-04-19 18:22:53', '', '2024-04-19 18:24:41', NULL);
INSERT INTO `gen_table` VALUES (11, 'city_accident', '交通事件表', NULL, NULL, 'CityAccident', 'crud', 'element-ui', 'com.ruoyi.traffic', 'traffic', 'accident', '交通事件', 'ruoyi', '0', '/', '{\"parentMenuId\":2039}', 'admin', '2024-04-22 13:06:53', '', '2024-04-22 13:09:35', NULL);
INSERT INTO `gen_table` VALUES (12, 'city_plans', '城市规划表', NULL, NULL, 'CityPlans', 'crud', 'element-ui', 'com.ruoyi.city', 'city', 'plans', '城市规划', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2024-04-23 12:51:09', '', '2024-04-23 12:52:35', NULL);
INSERT INTO `gen_table` VALUES (13, 'resources_category', '城市公共资源表', NULL, NULL, 'ResourcesCategory', 'crud', 'element-ui', 'com.ruoyi.pubservice', 'pubservice', 'category', '资源类别', 'ruoyi', '0', '/', '{\"parentMenuId\":2066}', 'admin', '2024-04-24 20:52:54', '', '2024-04-24 20:54:19', NULL);
INSERT INTO `gen_table` VALUES (14, 'city_resources', '城市公共资源表', '', '', 'CityResources', 'crud', 'element-ui', 'com.ruoyi.pubservice', 'pubservice', 'resources', '公共资源', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2066\"}', 'admin', '2024-04-24 21:09:36', '', '2024-04-24 21:40:34', NULL);
INSERT INTO `gen_table` VALUES (15, 'service_category', '城市服务类别表', NULL, NULL, 'ServiceCategory', 'crud', 'element-ui', 'com.ruoyi.pubservice', 'pubservice', 'servicecategory', '服务类别', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2066\"}', 'admin', '2024-04-25 15:41:12', '', '2024-04-25 15:46:20', NULL);
INSERT INTO `gen_table` VALUES (16, 'service_quality', '服务质量表', NULL, NULL, 'ServiceQuality', 'crud', 'element-ui', 'com.ruoyi.pubservice', 'pubservice', 'quality', '服务质量', 'ruoyi', '0', '/', '{\"parentMenuId\":2066}', 'admin', '2024-04-25 21:33:18', '', '2024-04-25 21:35:08', NULL);
INSERT INTO `gen_table` VALUES (17, 'emergency_category', '事故类别表', NULL, NULL, 'EmergencyCategory', 'crud', 'element-ui', 'com.ruoyi.emergency', 'emergency', 'category', '事故类别', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2092\"}', 'admin', '2024-04-26 21:12:27', '', '2024-04-26 21:15:45', NULL);
INSERT INTO `gen_table` VALUES (18, 'city_emergency', '应急事故表', NULL, NULL, 'CityEmergency', 'crud', 'element-ui', 'com.ruoyi.emergency', 'emergency', 'emergency', '交通事件', 'ruoyi', '0', '/', '{\"parentMenuId\":2092}', 'admin', '2024-04-28 13:14:24', '', '2024-04-28 13:17:02', NULL);
INSERT INTO `gen_table` VALUES (19, 'resource_dispatch', '资源调度表', NULL, NULL, 'ResourceDispatch', 'crud', 'element-ui', 'com.ruoyi.emergency', 'emergency', 'dispatch', '资源调度', 'ruoyi', '0', '/', '{\"parentMenuId\":2092}', 'admin', '2024-04-28 18:00:54', '', '2024-04-28 18:02:00', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 130 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (19, 4, 'city_id', '城市编号', 'bigint', 'Long', 'cityId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-16 14:03:37', '', '2024-04-16 14:06:39');
INSERT INTO `gen_table_column` VALUES (20, 4, 'city_name', '城市名称', 'varchar(100)', 'String', 'cityName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-04-16 14:03:37', '', '2024-04-16 14:06:39');
INSERT INTO `gen_table_column` VALUES (21, 4, 'province', '隶属省份 | 直辖', 'varchar(100)', 'String', 'province', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-04-16 14:03:37', '', '2024-04-16 14:06:39');
INSERT INTO `gen_table_column` VALUES (22, 4, 'population', '人口数量', 'bigint', 'Long', 'population', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-04-16 14:03:37', '', '2024-04-16 14:06:39');
INSERT INTO `gen_table_column` VALUES (23, 4, 'established_date', '建市日期', 'date', 'Date', 'establishedDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2024-04-16 14:03:37', '', '2024-04-16 14:06:39');
INSERT INTO `gen_table_column` VALUES (24, 4, 'location', '经纬度', 'varchar(100)', 'String', 'location', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-04-16 14:03:37', '', '2024-04-16 14:06:39');
INSERT INTO `gen_table_column` VALUES (25, 4, 'area', '城市面积', 'float', 'Long', 'area', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-04-16 14:03:37', '', '2024-04-16 14:06:39');
INSERT INTO `gen_table_column` VALUES (26, 5, 'facility_id', '设施编号', 'bigint', 'Long', 'facilityId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-16 14:18:07', '', '2024-04-16 14:20:04');
INSERT INTO `gen_table_column` VALUES (27, 5, 'city_name', '所属城市', 'varchar(100)', 'String', 'cityName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-04-16 14:18:07', '', '2024-04-16 14:20:04');
INSERT INTO `gen_table_column` VALUES (28, 5, 'facility_name', '设施名称', 'varchar(100)', 'String', 'facilityName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-04-16 14:18:07', '', '2024-04-16 14:20:04');
INSERT INTO `gen_table_column` VALUES (29, 5, 'is_public', '设施类别', 'char(1)', 'String', 'isPublic', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-04-16 14:18:07', '', '2024-04-16 14:20:04');
INSERT INTO `gen_table_column` VALUES (30, 5, 'address', '设施地址', 'varchar(255)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-04-16 14:18:07', '', '2024-04-16 14:20:04');
INSERT INTO `gen_table_column` VALUES (31, 5, 'status', '设施状态', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 6, 'admin', '2024-04-16 14:18:07', '', '2024-04-16 14:20:04');
INSERT INTO `gen_table_column` VALUES (32, 5, 'capacity', '设施容量', 'int', 'Long', 'capacity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-04-16 14:18:07', '', '2024-04-16 14:20:04');
INSERT INTO `gen_table_column` VALUES (33, 6, 'env_id', '记录编号', 'bigint', 'Long', 'envId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-17 19:56:17', '', '2024-04-17 20:15:20');
INSERT INTO `gen_table_column` VALUES (34, 6, 'city_name', '城市名称', 'varchar(100)', 'String', 'cityName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-04-17 19:56:17', '', '2024-04-17 20:15:20');
INSERT INTO `gen_table_column` VALUES (35, 6, 'air_quality', '空气质量指数', 'int', 'Integer', 'airQuality', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-04-17 19:56:17', '', '2024-04-17 20:15:20');
INSERT INTO `gen_table_column` VALUES (36, 6, 'noise_level', '噪音水平（分贝）', 'int', 'Integer', 'noiseLevel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-04-17 19:56:17', '', '2024-04-17 20:15:20');
INSERT INTO `gen_table_column` VALUES (37, 6, 'pollutant_emission', '污染物排放情况', 'varchar(255)', 'String', 'pollutantEmission', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-04-17 19:56:17', '', '2024-04-17 20:15:20');
INSERT INTO `gen_table_column` VALUES (38, 6, 'record_date', '记录日期', 'date', 'Date', 'recordDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2024-04-17 19:56:17', '', '2024-04-17 20:15:20');
INSERT INTO `gen_table_column` VALUES (66, 9, 'record_id', '记录ID', 'bigint', 'Long', 'recordId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28');
INSERT INTO `gen_table_column` VALUES (67, 9, 'city', '城市名称', 'varchar(100)', 'String', 'city', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28');
INSERT INTO `gen_table_column` VALUES (68, 9, 'week', '星期', 'varchar(100)', 'String', 'week', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28');
INSERT INTO `gen_table_column` VALUES (69, 9, 'update_date', '实况时间', 'varchar(100)', 'String', 'updateDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28');
INSERT INTO `gen_table_column` VALUES (70, 9, 'tem', '实况温度', 'varchar(100)', 'String', 'tem', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28');
INSERT INTO `gen_table_column` VALUES (71, 9, 'tem_day', '白天温度', 'varchar(100)', 'String', 'temDay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28');
INSERT INTO `gen_table_column` VALUES (72, 9, 'tem_night', '夜间温度', 'varchar(100)', 'String', 'temNight', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28');
INSERT INTO `gen_table_column` VALUES (73, 9, 'win', '风向', 'varchar(100)', 'String', 'win', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28');
INSERT INTO `gen_table_column` VALUES (74, 9, 'win_speed', '风力', 'varchar(100)', 'String', 'winSpeed', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28');
INSERT INTO `gen_table_column` VALUES (75, 9, 'win_meter', '风速', 'varchar(100)', 'String', 'winMeter', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28');
INSERT INTO `gen_table_column` VALUES (76, 9, 'pressrue', '气压', 'varchar(100)', 'String', 'pressrue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28');
INSERT INTO `gen_table_column` VALUES (77, 9, 'humidity', '湿度', 'varchar(100)', 'String', 'humidity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28');
INSERT INTO `gen_table_column` VALUES (78, 9, 'date', '记录日期', 'date', 'Date', 'date', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 13, 'admin', '2024-04-18 22:40:23', '', '2024-04-18 22:41:28');
INSERT INTO `gen_table_column` VALUES (79, 10, 'city_id', '城市ID', 'bigint', 'Long', 'cityId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-19 18:22:53', '', '2024-04-19 18:24:41');
INSERT INTO `gen_table_column` VALUES (80, 10, 'city_name', '城市名称', 'varchar(100)', 'String', 'cityName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-04-19 18:22:53', '', '2024-04-19 18:24:41');
INSERT INTO `gen_table_column` VALUES (81, 10, 'description', '路况描述', 'varchar(512)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2024-04-19 18:22:53', '', '2024-04-19 18:24:41');
INSERT INTO `gen_table_column` VALUES (82, 11, 'accident_id', '交通事件ID', 'bigint', 'Long', 'accidentId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-22 13:06:54', '', '2024-04-22 13:09:35');
INSERT INTO `gen_table_column` VALUES (83, 11, 'city_name', '所属城市', 'varchar(100)', 'String', 'cityName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-04-22 13:06:54', '', '2024-04-22 13:09:35');
INSERT INTO `gen_table_column` VALUES (84, 11, 'description', '事件描述', 'varchar(512)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2024-04-22 13:06:54', '', '2024-04-22 13:09:35');
INSERT INTO `gen_table_column` VALUES (85, 11, 'accident_address', '事故地址', 'varchar(255)', 'String', 'accidentAddress', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-04-22 13:06:54', '', '2024-04-22 13:09:35');
INSERT INTO `gen_table_column` VALUES (86, 11, 'status', '状态: 0表示已处理，1表示未处理', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-04-22 13:06:54', '', '2024-04-22 13:09:35');
INSERT INTO `gen_table_column` VALUES (87, 11, 'record_date', '记录日期', 'date', 'Date', 'recordDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2024-04-22 13:06:54', '', '2024-04-22 13:09:35');
INSERT INTO `gen_table_column` VALUES (88, 12, 'plan_id', '规划ID', 'bigint', 'Long', 'planId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-23 12:51:09', '', '2024-04-23 12:52:35');
INSERT INTO `gen_table_column` VALUES (89, 12, 'city_name', '所属城市', 'varchar(100)', 'String', 'cityName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-04-23 12:51:09', '', '2024-04-23 12:52:35');
INSERT INTO `gen_table_column` VALUES (90, 12, 'plan_name', '规划名称', 'varchar(100)', 'String', 'planName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-04-23 12:51:09', '', '2024-04-23 12:52:35');
INSERT INTO `gen_table_column` VALUES (91, 12, 'description', '规划描述', 'text', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2024-04-23 12:51:09', '', '2024-04-23 12:52:35');
INSERT INTO `gen_table_column` VALUES (92, 12, 'start_date', '开始日期', 'date', 'Date', 'startDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2024-04-23 12:51:09', '', '2024-04-23 12:52:35');
INSERT INTO `gen_table_column` VALUES (93, 12, 'end_date', '结束日期', 'date', 'Date', 'endDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2024-04-23 12:51:09', '', '2024-04-23 12:52:35');
INSERT INTO `gen_table_column` VALUES (94, 13, 'category_id', '类别ID', 'bigint', 'Long', 'categoryId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-24 20:52:54', '', '2024-04-24 20:54:19');
INSERT INTO `gen_table_column` VALUES (95, 13, 'category_name', '类别名称', 'varchar(100)', 'String', 'categoryName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-04-24 20:52:54', '', '2024-04-24 20:54:19');
INSERT INTO `gen_table_column` VALUES (96, 13, 'description', '描述', 'varchar(512)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2024-04-24 20:52:54', '', '2024-04-24 20:54:19');
INSERT INTO `gen_table_column` VALUES (97, 14, 'resource_id', '资源ID', 'bigint', 'Long', 'resourceId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-24 21:09:36', '', '2024-04-24 21:40:34');
INSERT INTO `gen_table_column` VALUES (98, 14, 'city_name', '所属城市', 'varchar(100)', 'String', 'cityName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-04-24 21:09:36', '', '2024-04-24 21:40:34');
INSERT INTO `gen_table_column` VALUES (99, 14, 'resource_name', '资源名称', 'varchar(100)', 'String', 'resourceName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-04-24 21:09:36', '', '2024-04-24 21:40:34');
INSERT INTO `gen_table_column` VALUES (100, 14, 'category_id', '资源类型', 'bigint', 'Long', 'categoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-04-24 21:09:36', '', '2024-04-24 21:40:34');
INSERT INTO `gen_table_column` VALUES (101, 14, 'address', '地址', 'varchar(255)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-04-24 21:09:36', '', '2024-04-24 21:40:34');
INSERT INTO `gen_table_column` VALUES (102, 14, 'capacity', '容量/规模', 'int', 'Long', 'capacity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-04-24 21:09:36', '', '2024-04-24 21:40:34');
INSERT INTO `gen_table_column` VALUES (103, 14, 'status', '状态: 0表示正常，1表示禁用', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 7, 'admin', '2024-04-24 21:09:36', '', '2024-04-24 21:40:34');
INSERT INTO `gen_table_column` VALUES (104, 15, 'category_id', '类别ID', 'bigint', 'Long', 'categoryId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-25 15:41:12', '', '2024-04-25 15:46:20');
INSERT INTO `gen_table_column` VALUES (105, 15, 'category_name', '类别名称', 'varchar(100)', 'String', 'categoryName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-04-25 15:41:12', '', '2024-04-25 15:46:20');
INSERT INTO `gen_table_column` VALUES (106, 15, 'description', '描述', 'varchar(512)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2024-04-25 15:41:12', '', '2024-04-25 15:46:20');
INSERT INTO `gen_table_column` VALUES (107, 16, 'service_id', '服务ID', 'bigint', 'Long', 'serviceId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-25 21:33:18', '', '2024-04-25 21:35:08');
INSERT INTO `gen_table_column` VALUES (108, 16, 'city_name', '所属城市', 'varchar(100)', 'String', 'cityName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-04-25 21:33:18', '', '2024-04-25 21:35:08');
INSERT INTO `gen_table_column` VALUES (109, 16, 'service_name', '服务名称', 'varchar(100)', 'String', 'serviceName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-04-25 21:33:18', '', '2024-04-25 21:35:08');
INSERT INTO `gen_table_column` VALUES (110, 16, 'category_id', '服务类别', 'bigint', 'Long', 'categoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-04-25 21:33:18', '', '2024-04-25 21:35:08');
INSERT INTO `gen_table_column` VALUES (111, 16, 'description', '服务内容', 'text', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2024-04-25 21:33:18', '', '2024-04-25 21:35:08');
INSERT INTO `gen_table_column` VALUES (112, 16, 'quality', '服务质量', 'varchar(512)', 'String', 'quality', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 6, 'admin', '2024-04-25 21:33:18', '', '2024-04-25 21:35:08');
INSERT INTO `gen_table_column` VALUES (113, 16, 'status', '状态: 0可用，1禁用', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 7, 'admin', '2024-04-25 21:33:18', '', '2024-04-25 21:35:08');
INSERT INTO `gen_table_column` VALUES (114, 17, 'category_id', '类别ID', 'bigint', 'Long', 'categoryId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-26 21:12:27', '', '2024-04-26 21:15:45');
INSERT INTO `gen_table_column` VALUES (115, 17, 'category_name', '类别名称', 'varchar(100)', 'String', 'categoryName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-04-26 21:12:27', '', '2024-04-26 21:15:45');
INSERT INTO `gen_table_column` VALUES (116, 17, 'description', '描述', 'varchar(512)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2024-04-26 21:12:27', '', '2024-04-26 21:15:45');
INSERT INTO `gen_table_column` VALUES (117, 18, 'emergency_id', '事件ID', 'bigint', 'Long', 'emergencyId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-28 13:14:24', '', '2024-04-28 13:17:02');
INSERT INTO `gen_table_column` VALUES (118, 18, 'city_name', '所属城市', 'varchar(100)', 'String', 'cityName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-04-28 13:14:24', '', '2024-04-28 13:17:02');
INSERT INTO `gen_table_column` VALUES (119, 18, 'category_id', '类别ID', 'bigint', 'Long', 'categoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-04-28 13:14:24', '', '2024-04-28 13:17:02');
INSERT INTO `gen_table_column` VALUES (120, 18, 'description', '事件描述', 'varchar(512)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2024-04-28 13:14:24', '', '2024-04-28 13:17:02');
INSERT INTO `gen_table_column` VALUES (121, 18, 'emergency_address', '事件地址', 'varchar(255)', 'String', 'emergencyAddress', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-04-28 13:14:24', '', '2024-04-28 13:17:02');
INSERT INTO `gen_table_column` VALUES (122, 18, 'status', '事件状态', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-04-28 13:14:24', '', '2024-04-28 13:17:02');
INSERT INTO `gen_table_column` VALUES (123, 18, 'emergency_date', '事件日期', 'date', 'Date', 'emergencyDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2024-04-28 13:14:24', '', '2024-04-28 13:17:02');
INSERT INTO `gen_table_column` VALUES (124, 19, 'dispatch_id', '调度ID', 'bigint', 'Long', 'dispatchId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-28 18:00:54', '', '2024-04-28 18:02:00');
INSERT INTO `gen_table_column` VALUES (125, 19, 'emergency_id', '事件ID', 'bigint', 'Long', 'emergencyId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-04-28 18:00:54', '', '2024-04-28 18:02:00');
INSERT INTO `gen_table_column` VALUES (126, 19, 'resource_id', '调度资源ID', 'bigint', 'Long', 'resourceId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-04-28 18:00:54', '', '2024-04-28 18:02:00');
INSERT INTO `gen_table_column` VALUES (127, 19, 'content', '调度内容', 'varchar(512)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 4, 'admin', '2024-04-28 18:00:54', '', '2024-04-28 18:02:00');
INSERT INTO `gen_table_column` VALUES (128, 19, 'status', '调度状态', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-04-28 18:00:54', '', '2024-04-28 18:02:00');
INSERT INTO `gen_table_column` VALUES (129, 19, 'dispatch_date', '调度日期', 'date', 'Date', 'dispatchDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2024-04-28 18:00:54', '', '2024-04-28 18:02:00');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for resource_dispatch
-- ----------------------------
DROP TABLE IF EXISTS `resource_dispatch`;
CREATE TABLE `resource_dispatch`  (
  `dispatch_id` bigint NOT NULL AUTO_INCREMENT COMMENT '调度ID',
  `emergency_id` bigint NULL DEFAULT NULL COMMENT '事件ID',
  `resource_id` bigint NULL DEFAULT NULL COMMENT '调度资源ID',
  `content` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '调度内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态: 0表示已调度，1表示调度中',
  `dispatch_date` date NULL DEFAULT NULL COMMENT '调度日期',
  PRIMARY KEY (`dispatch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '资源调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resource_dispatch
-- ----------------------------
INSERT INTO `resource_dispatch` VALUES (9, 8, 8, '测试', '0', '2024-04-28');
INSERT INTO `resource_dispatch` VALUES (10, 8, 9, '测试', '1', '2024-04-28');

-- ----------------------------
-- Table structure for resources_category
-- ----------------------------
DROP TABLE IF EXISTS `resources_category`;
CREATE TABLE `resources_category`  (
  `category_id` bigint NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类别名称',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '城市公共资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resources_category
-- ----------------------------
INSERT INTO `resources_category` VALUES (8, '旅游', '城市的旅游资源');
INSERT INTO `resources_category` VALUES (9, '医疗', '城市的医疗资源');

-- ----------------------------
-- Table structure for service_category
-- ----------------------------
DROP TABLE IF EXISTS `service_category`;
CREATE TABLE `service_category`  (
  `category_id` bigint NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类别名称',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '城市服务类别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_category
-- ----------------------------
INSERT INTO `service_category` VALUES (8, '旅游业', '城市的旅游');
INSERT INTO `service_category` VALUES (9, '福利', '城市福利\n');

-- ----------------------------
-- Table structure for service_quality
-- ----------------------------
DROP TABLE IF EXISTS `service_quality`;
CREATE TABLE `service_quality`  (
  `service_id` bigint NOT NULL AUTO_INCREMENT COMMENT '服务ID',
  `city_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属城市',
  `service_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务名称',
  `category_id` bigint NULL DEFAULT NULL COMMENT '服务类别',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '服务内容',
  `quality` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务质量',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态: 0可用，1禁用',
  PRIMARY KEY (`service_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '服务质量表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_quality
-- ----------------------------
INSERT INTO `service_quality` VALUES (8, '济南', '在校大学生免费公交', 8, '济南在校大学生一个月免费公交地铁', '不错', '0');
INSERT INTO `service_quality` VALUES (9, '青岛', '大学生免费看海', 9, '看海', '不错', '0');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-04-11 14:55:17', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-04-11 14:55:17', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-04-11 14:55:17', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-04-11 14:55:17', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-04-11 14:55:17', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 14:55:17', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 14:55:17', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 14:55:17', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 14:55:17', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 14:55:17', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 14:55:17', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 14:55:17', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 14:55:17', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 14:55:17', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 14:55:17', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-04-11 14:55:17', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示信息',
  `access_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`access_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-11 15:43:51');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-13 21:57:57');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-14 11:02:40');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-16 10:25:32');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '0', '退出成功', '2024-04-16 10:31:39');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-16 10:39:35');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '0', '退出成功', '2024-04-16 10:39:42');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-16 10:50:48');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '0', '退出成功', '2024-04-16 10:50:53');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-16 10:51:01');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '0', '退出成功', '2024-04-16 10:51:05');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-16 11:13:04');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '0', '退出成功', '2024-04-16 11:13:10');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-16 11:34:00');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '0', '退出成功', '2024-04-16 11:34:09');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-16 11:34:53');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-16 17:27:45');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-16 17:35:52');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-16 21:34:57');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-17 09:12:36');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-18 09:56:50');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-18 10:32:00');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-19 10:47:44');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-20 12:36:44');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-21 10:16:05');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '0', '退出成功', '2024-04-21 19:21:25');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-21 19:21:33');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-21 21:15:50');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-22 09:46:54');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-22 15:11:13');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-22 21:21:51');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '0', '退出成功', '2024-04-22 21:45:47');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-22 21:45:50');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-23 12:46:48');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '0', '退出成功', '2024-04-23 13:35:12');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-23 13:35:19');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-23 22:53:18');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-24 09:32:46');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-24 20:17:30');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-25 09:48:31');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-26 10:38:51');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-26 21:09:20');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-27 22:09:01');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-28 13:09:49');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '0', '登录成功', '2024-04-28 22:08:08');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 3, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-04-11 14:55:17', 'admin', '2024-04-26 21:21:34', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 3, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-04-11 14:55:17', 'admin', '2024-04-23 13:39:46', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-04-11 14:55:17', 'admin', '2024-04-24 20:18:20', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '1', '0', '', 'guide', 'admin', '2024-04-11 14:55:17', 'admin', '2024-04-21 19:21:21', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-04-11 14:55:17', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-04-11 14:55:17', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-04-11 14:55:17', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-04-11 14:55:17', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-04-11 14:55:17', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-04-11 14:55:17', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-04-11 14:55:17', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-04-11 14:55:17', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-04-11 14:55:17', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '1', '0', 'monitor:online:list', 'online', 'admin', '2024-04-11 14:55:17', 'admin', '2024-04-23 13:37:29', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '1', '0', 'monitor:job:list', 'job', 'admin', '2024-04-11 14:55:17', 'admin', '2024-04-23 13:37:47', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, 'Sentinel控制台', 2, 3, 'http://localhost:8718', '', '', 0, 0, 'C', '0', '0', 'monitor:sentinel:list', 'sentinel', 'admin', '2024-04-11 14:55:17', '', NULL, '流量控制菜单');
INSERT INTO `sys_menu` VALUES (112, 'Nacos控制台', 2, 4, 'http://localhost:8848/nacos', '', '', 0, 0, 'C', '0', '0', 'monitor:nacos:list', 'nacos', 'admin', '2024-04-11 14:55:17', '', NULL, '服务治理菜单');
INSERT INTO `sys_menu` VALUES (113, 'Admin控制台', 2, 5, 'http://localhost:9100/login', '', '', 0, 0, 'C', '1', '0', 'monitor:server:list', 'server', 'admin', '2024-04-11 14:55:17', 'admin', '2024-04-23 13:38:01', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-04-11 14:55:17', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-04-11 14:55:17', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'http://localhost:8080/swagger-ui/index.html', '', '', 0, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-04-11 14:55:17', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'system/operlog/index', '', 1, 0, 'C', '0', '0', 'system:operlog:list', 'form', 'admin', '2024-04-11 14:55:17', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'system/logininfor/index', '', 1, 0, 'C', '0', '0', 'system:logininfor:list', 'logininfor', 'admin', '2024-04-11 14:55:17', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:query', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:remove', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:export', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:query', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:remove', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:export', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:unlock', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '城市管理', 0, 1, 'city', NULL, NULL, 1, 0, 'M', '0', '0', '', 'city', 'admin', '2024-04-11 19:44:05', 'admin', '2024-04-23 13:07:08', '');
INSERT INTO `sys_menu` VALUES (2001, '城市基础信息', 2000, 1, 'cities', 'city/cities/index', NULL, 1, 0, 'C', '0', '0', 'city:cities:list', 'documentation', 'admin', '2024-04-11 20:07:42', 'admin', '2024-04-23 13:08:17', '城市基础信息菜单');
INSERT INTO `sys_menu` VALUES (2002, '城市基础信息查询', 2001, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:cities:query', '#', 'admin', '2024-04-11 20:07:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '城市基础信息新增', 2001, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:cities:add', '#', 'admin', '2024-04-11 20:07:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '城市基础信息修改', 2001, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:cities:edit', '#', 'admin', '2024-04-11 20:07:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '城市基础信息删除', 2001, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:cities:remove', '#', 'admin', '2024-04-11 20:07:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '城市基础信息导出', 2001, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:cities:export', '#', 'admin', '2024-04-11 20:07:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '城市设施管理', 2000, 1, 'facilities', 'city/facilities/index', NULL, 1, 0, 'C', '0', '0', 'city:facilities:list', '设施管理', 'admin', '2024-04-14 11:40:03', 'admin', '2024-04-23 13:14:20', '城市设施管理菜单');
INSERT INTO `sys_menu` VALUES (2009, '城市设施管理查询', 2008, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:facilities:query', '#', 'admin', '2024-04-14 11:40:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '城市设施管理新增', 2008, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:facilities:add', '#', 'admin', '2024-04-14 11:40:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '城市设施管理修改', 2008, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:facilities:edit', '#', 'admin', '2024-04-14 11:40:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '城市设施管理删除', 2008, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:facilities:remove', '#', 'admin', '2024-04-14 11:40:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '城市设施管理导出', 2008, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:facilities:export', '#', 'admin', '2024-04-14 11:40:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '运行数据', 0, 2, 'city-data', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'tab', 'admin', '2024-04-17 19:53:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '城市环境质量', 2014, 1, 'quality', 'city-data/quality/index', NULL, 1, 0, 'C', '0', '0', 'city-data:quality:list', 'theme', 'admin', '2024-04-17 20:16:24', 'admin', '2024-04-23 13:30:00', '城市环境质量菜单');
INSERT INTO `sys_menu` VALUES (2028, '城市环境质量查询', 2027, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'city-data:quality:query', '#', 'admin', '2024-04-17 20:16:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '城市环境质量新增', 2027, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'city-data:quality:add', '#', 'admin', '2024-04-17 20:16:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '城市环境质量修改', 2027, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'city-data:quality:edit', '#', 'admin', '2024-04-17 20:16:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '城市环境质量删除', 2027, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'city-data:quality:remove', '#', 'admin', '2024-04-17 20:16:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '城市环境质量导出', 2027, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'city-data:quality:export', '#', 'admin', '2024-04-17 20:16:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '城市天气实况', 2014, 1, 'weather', 'city-data/weather/index', NULL, 1, 0, 'C', '0', '0', 'city-data:weather:list', 'chart', 'admin', '2024-04-18 20:41:08', 'admin', '2024-04-23 13:29:26', '城市天气菜单');
INSERT INTO `sys_menu` VALUES (2034, '城市天气查询', 2033, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'city-data:weather:query', '#', 'admin', '2024-04-18 20:41:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '城市天气新增', 2033, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'city-data:weather:add', '#', 'admin', '2024-04-18 20:41:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '城市天气修改', 2033, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'city-data:weather:edit', '#', 'admin', '2024-04-18 20:41:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '城市天气删除', 2033, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'city-data:weather:remove', '#', 'admin', '2024-04-18 20:41:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '城市天气导出', 2033, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'city-data:weather:export', '#', 'admin', '2024-04-18 20:41:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '交通管理', 0, 1, 'traffic', NULL, NULL, 1, 0, 'M', '0', '0', '', '交通灯', 'admin', '2024-04-19 18:22:22', 'admin', '2024-04-23 13:17:31', '');
INSERT INTO `sys_menu` VALUES (2040, '路况检测', 2039, 1, 'traffic', 'traffic/traffic/index', NULL, 1, 0, 'C', '0', '0', 'traffic:traffic:list', 'road', 'admin', '2024-04-19 18:27:59', 'admin', '2024-04-23 13:19:47', '路况检测菜单');
INSERT INTO `sys_menu` VALUES (2041, '路况检测查询', 2040, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'traffic:traffic:query', '#', 'admin', '2024-04-19 18:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '路况检测新增', 2040, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'traffic:traffic:add', '#', 'admin', '2024-04-19 18:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '路况检测修改', 2040, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'traffic:traffic:edit', '#', 'admin', '2024-04-19 18:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '路况检测删除', 2040, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'traffic:traffic:remove', '#', 'admin', '2024-04-19 18:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '路况检测导出', 2040, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'traffic:traffic:export', '#', 'admin', '2024-04-19 18:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '城市照明实况', 2014, 1, 'light', 'city-data/light/index', NULL, 1, 0, 'C', '0', '0', 'city-data:light:list', 'star', 'admin', '2024-04-20 13:08:21', 'admin', '2024-04-23 23:02:31', '');
INSERT INTO `sys_menu` VALUES (2049, '路线规划', 2039, 2, 'route', NULL, NULL, 1, 0, 'M', '0', '0', '', '23-route', 'admin', '2024-04-21 14:37:56', 'admin', '2024-04-23 19:18:30', '');
INSERT INTO `sys_menu` VALUES (2050, '步行规划', 2049, 1, 'walk', 'traffic/route/walk/index', NULL, 1, 0, 'C', '0', '0', 'traffic:route:walk:list', 'walking-solid', 'admin', '2024-04-21 14:39:50', 'admin', '2024-04-23 13:18:27', '');
INSERT INTO `sys_menu` VALUES (2051, '公交规划', 2049, 1, 'bus', 'traffic/route/bus/index', NULL, 1, 0, 'C', '0', '0', 'traffic:route:bus:list', '公交', 'admin', '2024-04-21 18:11:46', 'admin', '2024-04-23 13:24:23', '');
INSERT INTO `sys_menu` VALUES (2052, '驾车规划', 2049, 1, 'car', 'traffic/route/car/index', NULL, 1, 0, 'C', '0', '0', 'traffic:route:car:list', '汽车', 'admin', '2024-04-21 18:26:53', 'admin', '2024-04-23 13:26:03', '');
INSERT INTO `sys_menu` VALUES (2053, '交通事件', 2039, 1, 'accident', 'traffic/accident/index', NULL, 1, 0, 'C', '0', '0', 'traffic:accident:list', 'excel', 'admin', '2024-04-22 13:13:28', 'admin', '2024-04-23 13:30:35', '交通事件菜单');
INSERT INTO `sys_menu` VALUES (2054, '交通事件查询', 2053, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'traffic:accident:query', '#', 'admin', '2024-04-22 13:13:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '交通事件新增', 2053, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'traffic:accident:add', '#', 'admin', '2024-04-22 13:13:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '交通事件修改', 2053, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'traffic:accident:edit', '#', 'admin', '2024-04-22 13:13:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '交通事件删除', 2053, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'traffic:accident:remove', '#', 'admin', '2024-04-22 13:13:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '交通事件导出', 2053, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'traffic:accident:export', '#', 'admin', '2024-04-22 13:13:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '城市规划管理', 2000, 1, 'plans', 'city/plans/index', NULL, 1, 0, 'C', '0', '0', 'city:plans:list', 'plan', 'admin', '2024-04-23 12:55:38', 'admin', '2024-04-23 13:15:42', '城市规划菜单');
INSERT INTO `sys_menu` VALUES (2060, '城市规划查询', 2059, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:plans:query', '#', 'admin', '2024-04-23 12:55:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2061, '城市规划新增', 2059, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:plans:add', '#', 'admin', '2024-04-23 12:55:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2062, '城市规划修改', 2059, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:plans:edit', '#', 'admin', '2024-04-23 12:55:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2063, '城市规划删除', 2059, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:plans:remove', '#', 'admin', '2024-04-23 12:55:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2064, '城市规划导出', 2059, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'city:plans:export', '#', 'admin', '2024-04-23 12:55:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2065, '地铁规划', 2049, 1, 'subway', 'traffic/route/subway/index', NULL, 1, 0, 'C', '0', '0', 'traffuc:route:subway:list', '5公交车', 'admin', '2024-04-23 13:53:35', 'admin', '2024-04-23 19:17:49', '');
INSERT INTO `sys_menu` VALUES (2066, '公共服务', 0, 2, 'pubservice', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'client', 'admin', '2024-04-24 20:32:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2067, '资源类别', 2066, 1, 'category', 'pubservice/category/index', NULL, 1, 0, 'C', '0', '0', 'pubservice:category:list', 'education', 'admin', '2024-04-24 20:57:00', 'admin', '2024-04-26 10:44:16', '资源类别菜单');
INSERT INTO `sys_menu` VALUES (2068, '资源类别查询', 2067, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:category:query', '#', 'admin', '2024-04-24 20:57:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2069, '资源类别新增', 2067, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:category:add', '#', 'admin', '2024-04-24 20:57:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2070, '资源类别修改', 2067, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:category:edit', '#', 'admin', '2024-04-24 20:57:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2071, '资源类别删除', 2067, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:category:remove', '#', 'admin', '2024-04-24 20:57:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2072, '资源类别导出', 2067, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:category:export', '#', 'admin', '2024-04-24 20:57:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2073, '公共资源', 2066, 1, 'resources', 'pubservice/resources/index', NULL, 1, 0, 'C', '0', '0', 'pubservice:resources:list', 'table', 'admin', '2024-04-24 21:52:08', 'admin', '2024-04-26 10:44:50', '公共资源菜单');
INSERT INTO `sys_menu` VALUES (2074, '公共资源查询', 2073, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:resources:query', '#', 'admin', '2024-04-24 21:52:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2075, '公共资源新增', 2073, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:resources:add', '#', 'admin', '2024-04-24 21:52:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2076, '公共资源修改', 2073, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:resources:edit', '#', 'admin', '2024-04-24 21:52:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2077, '公共资源删除', 2073, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:resources:remove', '#', 'admin', '2024-04-24 21:52:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2078, '公共资源导出', 2073, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:resources:export', '#', 'admin', '2024-04-24 21:52:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2079, '服务类别', 2066, 1, 'servicecategory', 'pubservice/servicecategory/index', NULL, 1, 0, 'C', '0', '0', 'pubservice:servicecategory:list', 'education', 'admin', '2024-04-25 16:17:55', 'admin', '2024-04-26 10:44:02', '服务类别菜单');
INSERT INTO `sys_menu` VALUES (2080, '服务类别查询', 2079, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:servicecategory:query', '#', 'admin', '2024-04-25 16:17:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2081, '服务类别新增', 2079, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:servicecategory:add', '#', 'admin', '2024-04-25 16:17:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2082, '服务类别修改', 2079, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:servicecategory:edit', '#', 'admin', '2024-04-25 16:17:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2083, '服务类别删除', 2079, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:servicecategory:remove', '#', 'admin', '2024-04-25 16:17:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2084, '服务类别导出', 2079, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:servicecategory:export', '#', 'admin', '2024-04-25 16:17:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2085, '服务质量', 2066, 1, 'quality', 'pubservice/quality/index', NULL, 1, 0, 'C', '0', '0', 'pubservice:quality:list', 'excel', 'admin', '2024-04-25 21:37:54', 'admin', '2024-04-26 10:45:11', '服务质量菜单');
INSERT INTO `sys_menu` VALUES (2086, '服务质量查询', 2085, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:quality:query', '#', 'admin', '2024-04-25 21:37:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2087, '服务质量新增', 2085, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:quality:add', '#', 'admin', '2024-04-25 21:37:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2088, '服务质量修改', 2085, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:quality:edit', '#', 'admin', '2024-04-25 21:37:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2089, '服务质量删除', 2085, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:quality:remove', '#', 'admin', '2024-04-25 21:37:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2090, '服务质量导出', 2085, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'pubservice:quality:export', '#', 'admin', '2024-04-25 21:37:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2092, '应急管理', 0, 2, 'emergency', NULL, NULL, 1, 0, 'M', '0', '0', '', 'international', 'admin', '2024-04-26 21:10:00', 'admin', '2024-04-26 21:21:17', '');
INSERT INTO `sys_menu` VALUES (2093, '事故类别', 2092, 1, 'category', 'emergency/category/index', NULL, 1, 0, 'C', '0', '0', 'emergency:category:list', '#', 'admin', '2024-04-26 21:19:32', '', NULL, '事故类别菜单');
INSERT INTO `sys_menu` VALUES (2094, '事故类别查询', 2093, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:category:query', '#', 'admin', '2024-04-26 21:19:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2095, '事故类别新增', 2093, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:category:add', '#', 'admin', '2024-04-26 21:19:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2096, '事故类别修改', 2093, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:category:edit', '#', 'admin', '2024-04-26 21:19:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2097, '事故类别删除', 2093, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:category:remove', '#', 'admin', '2024-04-26 21:19:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2098, '事故类别导出', 2093, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:category:export', '#', 'admin', '2024-04-26 21:19:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2099, '应急事件', 2092, 1, 'emergency', 'emergency/emergency/index', NULL, 1, 0, 'C', '0', '0', 'emergency:emergency:list', '#', 'admin', '2024-04-28 13:20:24', 'admin', '2024-04-28 13:26:52', '交通事件菜单');
INSERT INTO `sys_menu` VALUES (2100, '交通事件查询', 2099, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:emergency:query', '#', 'admin', '2024-04-28 13:20:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2101, '交通事件新增', 2099, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:emergency:add', '#', 'admin', '2024-04-28 13:20:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2102, '交通事件修改', 2099, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:emergency:edit', '#', 'admin', '2024-04-28 13:20:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2103, '交通事件删除', 2099, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:emergency:remove', '#', 'admin', '2024-04-28 13:20:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2104, '交通事件导出', 2099, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:emergency:export', '#', 'admin', '2024-04-28 13:20:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2105, '资源调度', 2092, 1, 'dispatch', 'emergency/dispatch/index', NULL, 1, 0, 'C', '0', '0', 'emergency:dispatch:list', '#', 'admin', '2024-04-28 18:53:11', '', NULL, '资源调度菜单');
INSERT INTO `sys_menu` VALUES (2106, '资源调度查询', 2105, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:dispatch:query', '#', 'admin', '2024-04-28 18:53:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2107, '资源调度新增', 2105, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:dispatch:add', '#', 'admin', '2024-04-28 18:53:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2108, '资源调度修改', 2105, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:dispatch:edit', '#', 'admin', '2024-04-28 18:53:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2109, '资源调度删除', 2105, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:dispatch:remove', '#', 'admin', '2024-04-28 18:53:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2110, '资源调度导出', 2105, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'emergency:dispatch:export', '#', 'admin', '2024-04-28 18:53:11', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-04-11 14:55:18', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-04-11 14:55:18', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 396 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"城市管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"city\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 19:44:05', 22);
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"cities\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 19:45:17', 64);
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"cities\",\"className\":\"Cities\",\"columns\":[{\"capJavaField\":\"CityId\",\"columnComment\":\"城市ID\",\"columnId\":1,\"columnName\":\"city_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-11 19:45:17\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"cityId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"城市名称\",\"columnId\":2,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-11 19:45:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Population\",\"columnComment\":\"人口数量\",\"columnId\":3,\"columnName\":\"population\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-11 19:45:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"population\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EstablishedDate\",\"columnComment\":\"建市日期\",\"columnId\":4,\"columnName\":\"established_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-04-11 19:45:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"establishedDate\",\"javaType\":\"Dat', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 19:59:38', 32);
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"cities\"}', NULL, 0, NULL, '2024-04-11 20:03:39', 44);
INSERT INTO `sys_oper_log` VALUES (104, '城市基础信息', 1, 'com.ruoyi.city.controller.CitiesController.add()', 'POST', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"cityId\":1,\"cityName\":\"测试城市\",\"establishedDate\":\"2024-04-08\",\"params\":{},\"population\":123}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 20:09:37', 41);
INSERT INTO `sys_oper_log` VALUES (105, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"cityId\":1,\"cityName\":\"测试城市\",\"establishedDate\":\"2024-04-08\",\"params\":{},\"population\":1234}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 21:11:59', 6);
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 3, 'com.ruoyi.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/1', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-13 22:11:29', 31);
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"cities\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-13 22:14:41', 38);
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"cities\",\"className\":\"Cities\",\"columns\":[{\"capJavaField\":\"CityId\",\"columnComment\":\"城市ID\",\"columnId\":5,\"columnName\":\"city_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-13 22:14:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"cityId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"城市名称\",\"columnId\":6,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-13 22:14:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Province\",\"columnComment\":\"隶属省份|直辖\",\"columnId\":7,\"columnName\":\"province\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-13 22:14:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"province\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Population\",\"columnComment\":\"人口数量\",\"columnId\":8,\"columnName\":\"population\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-13 22:14:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"population\",\"javaType\":\"Long\",\"list', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-13 22:17:34', 37);
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"cities\"}', NULL, 0, NULL, '2024-04-13 22:17:37', 138);
INSERT INTO `sys_oper_log` VALUES (110, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"cityId\":11,\"cityName\":\"西安\",\"establishedDate\":\"1960-06-12\",\"params\":{},\"population\":9600000,\"province\":\"陕西\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-13 22:29:52', 41);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"city_facilities\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-14 11:07:31', 67);
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"城市设施\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"cities\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-14 11:11:16', 26);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"facilities\",\"className\":\"CityFacilities\",\"columns\":[{\"capJavaField\":\"FacilityId\",\"columnComment\":\"设施ID\",\"columnId\":12,\"columnName\":\"facility_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-14 11:07:31\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"facilityId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CityId\",\"columnComment\":\"所属城市ID\",\"columnId\":13,\"columnName\":\"city_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-14 11:07:31\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"cityId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FacilityName\",\"columnComment\":\"设施名称\",\"columnId\":14,\"columnName\":\"facility_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-14 11:07:31\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facilityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Category\",\"columnComment\":\"设施类别\",\"columnId\":15,\"columnName\":\"category\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-14 11:07:31\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isReq', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-14 11:13:29', 32);
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"city_facilities\"}', NULL, 0, NULL, '2024-04-14 11:14:01', 37);
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"facilities\",\"className\":\"CityFacilities\",\"columns\":[{\"capJavaField\":\"FacilityId\",\"columnComment\":\"设施ID\",\"columnId\":12,\"columnName\":\"facility_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-14 11:07:31\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"facilityId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-04-14 11:13:29\",\"usableColumn\":false},{\"capJavaField\":\"CityId\",\"columnComment\":\"所属城市ID\",\"columnId\":13,\"columnName\":\"city_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-14 11:07:31\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"cityId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-04-14 11:13:29\",\"usableColumn\":false},{\"capJavaField\":\"FacilityName\",\"columnComment\":\"设施名称\",\"columnId\":14,\"columnName\":\"facility_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-14 11:07:31\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"facilityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-04-14 11:13:29\",\"usableColumn\":false},{\"capJavaField\":\"Category\",\"columnComment\":\"设施类别\",\"columnId\":15,\"columnName\":\"category\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-14 11:07:31\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-14 11:28:19', 16);
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"city_facilities\"}', NULL, 0, NULL, '2024-04-14 11:28:32', 21);
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2007', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-14 11:42:00', 10);
INSERT INTO `sys_oper_log` VALUES (118, '城市设施管理', 1, 'com.ruoyi.city.controller.CityFacilitiesController.add()', 'POST', 1, 'admin', NULL, '/facilities', '127.0.0.1', '', '{\"address\":\"啊塞萨\",\"capacity\":1111,\"category\":\"懂啊懂啊\",\"cityId\":1,\"facilityId\":1,\"facilityName\":\"懂啊\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-14 14:03:07', 70);
INSERT INTO `sys_oper_log` VALUES (119, '城市设施管理', 1, 'com.ruoyi.city.controller.CityFacilitiesController.add()', 'POST', 1, 'admin', NULL, '/facilities', '127.0.0.1', '', '{\"address\":\"2\",\"capacity\":2,\"category\":\"2\",\"cityId\":2,\"facilityId\":2,\"facilityName\":\"2\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-14 14:08:35', 14);
INSERT INTO `sys_oper_log` VALUES (120, '城市设施管理', 2, 'com.ruoyi.city.controller.CityFacilitiesController.edit()', 'PUT', 1, 'admin', NULL, '/facilities', '127.0.0.1', '', '{\"address\":\"啊塞萨\",\"capacity\":1111,\"category\":\"懂啊懂啊\",\"cityId\":1,\"facilityId\":1,\"facilityName\":\"懂啊\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-14 14:17:32', 5);
INSERT INTO `sys_oper_log` VALUES (121, '城市设施管理', 2, 'com.ruoyi.city.controller.CityFacilitiesController.edit()', 'PUT', 1, 'admin', NULL, '/facilities', '127.0.0.1', '', '{\"address\":\"啊塞萨\",\"capacity\":1111,\"category\":\"懂啊懂啊\",\"cityId\":1,\"facilityId\":1,\"facilityName\":\"懂啊\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-14 14:19:08', 4);
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 3, 'com.ruoyi.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/2', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-16 14:03:30', 29);
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"cities\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-16 14:03:37', 34);
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"cities\",\"className\":\"Cities\",\"columns\":[{\"capJavaField\":\"CityId\",\"columnComment\":\"城市编号\",\"columnId\":19,\"columnName\":\"city_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-16 14:03:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"cityId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"城市名称\",\"columnId\":20,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-16 14:03:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Province\",\"columnComment\":\"隶属省份 | 直辖\",\"columnId\":21,\"columnName\":\"province\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-16 14:03:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"province\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Population\",\"columnComment\":\"人口数量\",\"columnId\":22,\"columnName\":\"population\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-16 14:03:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"population\",\"javaType\":\"Long\",\"list\":true,\"par', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-16 14:06:39', 41);
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"cities\"}', NULL, 0, NULL, '2024-04-16 14:06:44', 139);
INSERT INTO `sys_oper_log` VALUES (126, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":1645,\"cityId\":8,\"cityName\":\"重庆\",\"establishedDate\":\"1959-10-08\",\"location\":\"30.08333,107.83333\",\"params\":{},\"population\":28390000,\"province\":\"重庆1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-16 14:11:18', 37);
INSERT INTO `sys_oper_log` VALUES (127, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":1645,\"cityId\":8,\"cityName\":\"重庆\",\"establishedDate\":\"1959-10-08\",\"location\":\"30.08333,107.83333\",\"params\":{},\"population\":28390000,\"province\":\"重庆\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-16 14:11:23', 0);
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 3, 'com.ruoyi.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/3', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-16 14:18:03', 6);
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"city_facilities\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-16 14:18:07', 25);
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"facilities\",\"className\":\"CityFacilities\",\"columns\":[{\"capJavaField\":\"FacilityId\",\"columnComment\":\"设施编号\",\"columnId\":26,\"columnName\":\"facility_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-16 14:18:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"facilityId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"所属城市\",\"columnId\":27,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-16 14:18:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FacilityName\",\"columnComment\":\"设施名称\",\"columnId\":28,\"columnName\":\"facility_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-16 14:18:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"facilityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"IsPublic\",\"columnComment\":\"设施类别\",\"columnId\":29,\"columnName\":\"is_public\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-16 14:18:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"isPublic\",\"jav', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-16 14:20:04', 21);
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"city_facilities\"}', NULL, 0, NULL, '2024-04-16 14:20:07', 34);
INSERT INTO `sys_oper_log` VALUES (132, '城市设施管理', 2, 'com.ruoyi.city.controller.CityFacilitiesController.edit()', 'PUT', 1, 'admin', NULL, '/facilities', '127.0.0.1', '', '{\"address\":\"任意\",\"capacity\":1000,\"cityName\":\"上海\",\"facilityId\":1,\"facilityName\":\"迪士尼游乐园哈哈\",\"isPublic\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-16 14:25:11', 31);
INSERT INTO `sys_oper_log` VALUES (133, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":1645,\"cityId\":8,\"cityName\":\"重庆\",\"establishedDate\":\"1959-10-08\",\"location\":\"106.55,29.57\",\"params\":{},\"population\":28390000,\"province\":\"重庆\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-16 22:06:04', 35);
INSERT INTO `sys_oper_log` VALUES (134, '城市设施管理', 2, 'com.ruoyi.city.controller.CityFacilitiesController.edit()', 'PUT', 1, 'admin', NULL, '/facilities', '127.0.0.1', '', '{\"address\":\"川沙镇申迪西路753号上海迪士尼度假区\",\"capacity\":1000,\"cityName\":\"上海\",\"facilityId\":1,\"facilityName\":\"迪士尼游乐园哈哈\",\"isPublic\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 01:05:24', 14);
INSERT INTO `sys_oper_log` VALUES (135, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"文件服务异常，请联系管理员\",\"code\":500}', 0, NULL, '2024-04-17 09:13:56', 85);
INSERT INTO `sys_oper_log` VALUES (136, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/user/profile/avatar', '127.0.0.1', '', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"http://127.0.0.1:9300/statics/2024/04/17/wallhaven-j5wk8m_20240417091428A001.jpg\",\"code\":200}', 0, NULL, '2024-04-17 09:14:28', 262);
INSERT INTO `sys_oper_log` VALUES (137, '个人信息', 2, 'com.ruoyi.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/user/profile', '127.0.0.1', '', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 09:14:41', 12);
INSERT INTO `sys_oper_log` VALUES (138, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":1641,\"cityId\":11,\"cityName\":\"北京\",\"establishedDate\":\"1911-01-04\",\"location\":\"116.413384,39.910925\",\"params\":{},\"population\":18960744,\"province\":\"北京\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 12:47:07', 54);
INSERT INTO `sys_oper_log` VALUES (139, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":1645,\"cityId\":8,\"cityName\":\"重庆\",\"establishedDate\":\"1959-10-08\",\"location\":\"106.560459,29.567849\",\"params\":{},\"population\":28390000,\"province\":\"重庆\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 15:08:12', 9);
INSERT INTO `sys_oper_log` VALUES (140, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":195,\"cityId\":9,\"cityName\":\"吉林\",\"establishedDate\":\"1990-12-21\",\"location\":\"126.555635,43.843568\",\"params\":{},\"population\":27340000,\"province\":\"吉林\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 19:16:20', 32);
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"tab\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"运行数据\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"city-data\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 19:53:00', 18);
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"environment_quality\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 19:56:18', 65);
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"quality\",\"className\":\"EnvironmentQuality\",\"columns\":[{\"capJavaField\":\"EnvId\",\"columnComment\":\"记录编号\",\"columnId\":33,\"columnName\":\"env_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-17 19:56:17\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"envId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"城市名称\",\"columnId\":34,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-17 19:56:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AirQuality\",\"columnComment\":\"空气质量指数\",\"columnId\":35,\"columnName\":\"air_quality\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-17 19:56:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"airQuality\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NoiseLevel\",\"columnComment\":\"噪音水平（分贝）\",\"columnId\":36,\"columnName\":\"noise_level\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-17 19:56:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"noiseLevel\",\"javaType\":\"Integer\",\"list', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 19:59:29', 48);
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"environment_quality\"}', NULL, 0, NULL, '2024-04-17 20:00:10', 39);
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2015', '127.0.0.1', '', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-04-17 20:11:16', 7);
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2015', '127.0.0.1', '', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-04-17 20:11:30', 2);
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2020', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:11:37', 7);
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2019', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:11:41', 6);
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2018', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:11:44', 5);
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2017', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:11:46', 3);
INSERT INTO `sys_oper_log` VALUES (151, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2016', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:11:49', 6);
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2015', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:11:51', 5);
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2022', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:11:58', 6);
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2023', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:12:00', 6);
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2024', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:12:02', 7);
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2025', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:12:04', 7);
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2026', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:12:07', 5);
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2021', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:12:13', 6);
INSERT INTO `sys_oper_log` VALUES (159, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"quality\",\"className\":\"EnvironmentQuality\",\"columns\":[{\"capJavaField\":\"EnvId\",\"columnComment\":\"记录编号\",\"columnId\":33,\"columnName\":\"env_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-17 19:56:17\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"envId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-04-17 19:59:29\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"城市名称\",\"columnId\":34,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-17 19:56:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-04-17 19:59:29\",\"usableColumn\":false},{\"capJavaField\":\"AirQuality\",\"columnComment\":\"空气质量指数\",\"columnId\":35,\"columnName\":\"air_quality\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-17 19:56:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"airQuality\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-04-17 19:59:29\",\"usableColumn\":false},{\"capJavaField\":\"NoiseLevel\",\"columnComment\":\"噪音水平（分贝）\",\"columnId\":36,\"columnName\":\"noise_level\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-17 19:56:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:14:32', 59);
INSERT INTO `sys_oper_log` VALUES (160, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"quality\",\"className\":\"EnvironmentQuality\",\"columns\":[{\"capJavaField\":\"EnvId\",\"columnComment\":\"记录编号\",\"columnId\":33,\"columnName\":\"env_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-17 19:56:17\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"envId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-04-17 20:14:32\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"城市名称\",\"columnId\":34,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-17 19:56:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-04-17 20:14:32\",\"usableColumn\":false},{\"capJavaField\":\"AirQuality\",\"columnComment\":\"空气质量指数\",\"columnId\":35,\"columnName\":\"air_quality\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-17 19:56:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"airQuality\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-04-17 20:14:32\",\"usableColumn\":false},{\"capJavaField\":\"NoiseLevel\",\"columnComment\":\"噪音水平（分贝）\",\"columnId\":36,\"columnName\":\"noise_level\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-17 19:56:17\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-17 20:15:20', 15);
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"environment_quality\"}', NULL, 0, NULL, '2024-04-17 20:15:22', 35);
INSERT INTO `sys_oper_log` VALUES (162, '城市基础信息', 1, 'com.ruoyi.city.controller.CitiesController.add()', 'POST', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":1231,\"cityId\":268,\"cityName\":\"泰安\",\"establishedDate\":\"2021-02-02\",\"location\":\"117.094495,36.205858\",\"params\":{},\"population\":1333131,\"province\":\"山东\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 19:57:34', 47);
INSERT INTO `sys_oper_log` VALUES (163, '城市设施管理', 2, 'com.ruoyi.city.controller.CityFacilitiesController.edit()', 'PUT', 1, 'admin', NULL, '/facilities', '127.0.0.1', '', '{\"address\":\"川沙镇申迪西路753号上海迪士尼度假区\",\"capacity\":1000,\"cityName\":\"上海\",\"facilityId\":1,\"facilityName\":\"迪士尼游乐园哈哈\",\"isPublic\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 20:03:29', 7);
INSERT INTO `sys_oper_log` VALUES (164, '城市设施管理', 2, 'com.ruoyi.city.controller.CityFacilitiesController.edit()', 'PUT', 1, 'admin', NULL, '/facilities', '127.0.0.1', '', '{\"address\":\"川沙镇申迪西路753号上海迪士尼度假区\",\"capacity\":1000,\"cityName\":\"上海\",\"facilityId\":1,\"facilityName\":\"迪士尼游乐园哈哈\",\"isPublic\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 20:05:04', 16);
INSERT INTO `sys_oper_log` VALUES (165, '城市设施管理', 2, 'com.ruoyi.city.controller.CityFacilitiesController.edit()', 'PUT', 1, 'admin', NULL, '/facilities', '127.0.0.1', '', '{\"address\":\"川沙镇申迪西路753号上海迪士尼度假区\",\"capacity\":1000,\"cityName\":\"上海\",\"facilityId\":1,\"facilityName\":\"迪士尼游乐园哈哈\",\"isPublic\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 20:12:44', 3);
INSERT INTO `sys_oper_log` VALUES (166, '城市设施管理', 2, 'com.ruoyi.city.controller.CityFacilitiesController.edit()', 'PUT', 1, 'admin', NULL, '/facilities', '127.0.0.1', '', '{\"address\":\"川沙镇申迪西路753号上海迪士尼度假区\",\"capacity\":1000,\"cityName\":\"上海\",\"facilityId\":1,\"facilityName\":\"迪士尼游乐园哈哈\",\"isPublic\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 20:14:04', 2);
INSERT INTO `sys_oper_log` VALUES (167, '城市设施管理', 2, 'com.ruoyi.city.controller.CityFacilitiesController.edit()', 'PUT', 1, 'admin', NULL, '/facilities', '127.0.0.1', '', '{\"address\":\"川沙镇申迪西路753号上海迪士尼度假区\",\"capacity\":1000,\"cityName\":\"上海\",\"facilityId\":1,\"facilityName\":\"迪士尼游乐园哈哈\",\"isPublic\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 20:15:58', 2);
INSERT INTO `sys_oper_log` VALUES (168, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"city_weather\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 20:34:42', 69);
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 3, 'com.ruoyi.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/7', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 20:36:29', 9);
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"city_weather\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 20:36:33', 41);
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"weather\",\"className\":\"CityWeather\",\"columns\":[{\"capJavaField\":\"RecordId\",\"columnComment\":\"记录ID\",\"columnId\":52,\"columnName\":\"record_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-18 20:36:33\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"recordId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"City\",\"columnComment\":\"城市名称\",\"columnId\":53,\"columnName\":\"city\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-18 20:36:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"city\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Week\",\"columnComment\":\"星期\",\"columnId\":54,\"columnName\":\"week\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-18 20:36:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"week\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UpdateTime\",\"columnComment\":\"更新时间\",\"columnId\":55,\"columnName\":\"update_time\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-18 20:36:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"0\",\"javaField\":\"updateTime\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"query', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 20:37:34', 24);
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"weather\",\"className\":\"CityWeather\",\"columns\":[{\"capJavaField\":\"RecordId\",\"columnComment\":\"记录编号\",\"columnId\":52,\"columnName\":\"record_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-18 20:36:33\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"recordId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-18 20:37:34\",\"usableColumn\":false},{\"capJavaField\":\"City\",\"columnComment\":\"城市名称\",\"columnId\":53,\"columnName\":\"city\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-18 20:36:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"city\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-18 20:37:34\",\"usableColumn\":false},{\"capJavaField\":\"Week\",\"columnComment\":\"星期\",\"columnId\":54,\"columnName\":\"week\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-18 20:36:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"week\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-18 20:37:34\",\"usableColumn\":false},{\"capJavaField\":\"UpdateTime\",\"columnComment\":\"更新时间\",\"columnId\":55,\"columnName\":\"update_time\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-18 20:36:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 20:39:19', 24);
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"city_weather\"}', NULL, 0, NULL, '2024-04-18 20:39:22', 38);
INSERT INTO `sys_oper_log` VALUES (174, '城市天气', 1, 'com.ruoyi.citydata.controller.CityWeatherController.add()', 'POST', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"济南\",\"date\":\"2024-04-18\",\"humidity\":\"33%\",\"params\":{},\"pressrue\":\"989\",\"recordId\":8,\"tem\":\"12\",\"temDay\":\"12\",\"temNight\":\"12\",\"week\":\"星期一\",\"win\":\"南风\",\"winMeter\":\"7km/j\",\"winSpeed\":\"2级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 20:49:08', 70);
INSERT INTO `sys_oper_log` VALUES (175, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"济南\",\"date\":\"2024-04-18\",\"humidity\":\"33%\",\"params\":{},\"pressrue\":\"989\",\"recordId\":8,\"tem\":\"12\",\"temDay\":\"12\",\"temNight\":\"12\",\"updateTime\":\"2024-04-18 20:49:41\",\"week\":\"星期一\",\"win\":\"南风\",\"winMeter\":\"7km/h\",\"winSpeed\":\"2级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 20:49:41', 7);
INSERT INTO `sys_oper_log` VALUES (176, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"updateTime\":\"2024-04-18 22:00:11\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-04-18 22:00:11', 7);
INSERT INTO `sys_oper_log` VALUES (177, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"updateTime\":\"2024-04-18 22:08:57\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-04-18 22:08:57', 1);
INSERT INTO `sys_oper_log` VALUES (178, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"updateTime\":\"2024-04-18 22:17:29\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-04-18 22:17:29', 2);
INSERT INTO `sys_oper_log` VALUES (179, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"updateTime\":\"2024-04-18 22:20:45\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-04-18 22:20:45', 0);
INSERT INTO `sys_oper_log` VALUES (180, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/gen/synchDb/city_weather', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 22:39:37', 36);
INSERT INTO `sys_oper_log` VALUES (181, '代码生成', 3, 'com.ruoyi.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/8', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 22:40:18', 7);
INSERT INTO `sys_oper_log` VALUES (182, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"city_weather\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 22:40:23', 33);
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"weather\",\"className\":\"CityWeather\",\"columns\":[{\"capJavaField\":\"RecordId\",\"columnComment\":\"记录ID\",\"columnId\":66,\"columnName\":\"record_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-18 22:40:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"recordId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"City\",\"columnComment\":\"城市名称\",\"columnId\":67,\"columnName\":\"city\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-18 22:40:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"city\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Week\",\"columnComment\":\"星期\",\"columnId\":68,\"columnName\":\"week\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-18 22:40:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"week\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UpdateDate\",\"columnComment\":\"实况时间\",\"columnId\":69,\"columnName\":\"update_date\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-18 22:40:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"updateDate\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 22:41:28', 20);
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"city_weather\"}', NULL, 0, NULL, '2024-04-18 22:41:31', 39);
INSERT INTO `sys_oper_log` VALUES (185, '城市天气', 1, 'com.ruoyi.citydata.controller.CityWeatherController.add()', 'POST', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"济南\",\"date\":\"2024-04-18\",\"humidity\":\"989\",\"params\":{},\"pressrue\":\"32\",\"recordId\":8,\"tem\":\"12\",\"temDay\":\"12\",\"temNight\":\"12\",\"updateDate\":\"321313\",\"week\":\"星期一\",\"win\":\"南风\",\"winMeter\":\"2km/h\",\"winSpeed\":\"2级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 22:48:37', 45);
INSERT INTO `sys_oper_log` VALUES (186, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"济南\",\"date\":\"2024-04-18\",\"humidity\":\"989\",\"params\":{},\"pressrue\":\"32\",\"recordId\":8,\"tem\":\"12\",\"temDay\":\"12\",\"temNight\":\"123\",\"updateDate\":\"321313\",\"week\":\"星期一\",\"win\":\"南风\",\"winMeter\":\"2km/h\",\"winSpeed\":\"2级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 23:15:33', 7);
INSERT INTO `sys_oper_log` VALUES (187, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"济南\",\"date\":\"2024-04-18\",\"humidity\":\"989\",\"params\":{},\"pressrue\":\"32\",\"recordId\":8,\"tem\":\"12\",\"temDay\":\"121\",\"temNight\":\"123\",\"updateDate\":\"321313\",\"week\":\"星期一\",\"win\":\"南风\",\"winMeter\":\"2km/h\",\"winSpeed\":\"2级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 23:16:25', 6);
INSERT INTO `sys_oper_log` VALUES (188, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"recordId\":8}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\city-data\\target\\classes\\mapper\\city-data\\CityWeatherMapper.xml]\r\n### The error may involve com.ruoyi.citydata.mapper.CityWeatherMapper.updateCityWeather-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_weather                    where record_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3', '2024-04-18 23:18:55', 61);
INSERT INTO `sys_oper_log` VALUES (189, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"recordId\":8}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\city-data\\target\\classes\\mapper\\city-data\\CityWeatherMapper.xml]\r\n### The error may involve com.ruoyi.citydata.mapper.CityWeatherMapper.updateCityWeather-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_weather                    where record_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3', '2024-04-18 23:19:44', 6);
INSERT INTO `sys_oper_log` VALUES (190, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"recordId\":8}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\city-data\\target\\classes\\mapper\\city-data\\CityWeatherMapper.xml]\r\n### The error may involve com.ruoyi.citydata.mapper.CityWeatherMapper.updateCityWeather-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_weather                    where record_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3', '2024-04-18 23:20:01', 6);
INSERT INTO `sys_oper_log` VALUES (191, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"recordId\":8}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\city-data\\target\\classes\\mapper\\city-data\\CityWeatherMapper.xml]\r\n### The error may involve com.ruoyi.citydata.mapper.CityWeatherMapper.updateCityWeather-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_weather                    where record_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3', '2024-04-18 23:21:32', 6);
INSERT INTO `sys_oper_log` VALUES (192, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"recordId\":8}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\city-data\\target\\classes\\mapper\\city-data\\CityWeatherMapper.xml]\r\n### The error may involve com.ruoyi.citydata.mapper.CityWeatherMapper.updateCityWeather-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_weather                    where record_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3', '2024-04-18 23:24:18', 6);
INSERT INTO `sys_oper_log` VALUES (193, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"济南\",\"date\":\"2024-04-18\",\"humidity\":\"989\",\"params\":{},\"pressrue\":\"32\",\"recordId\":8,\"tem\":\"121\",\"temDay\":\"121\",\"temNight\":\"123\",\"updateDate\":\"321313\",\"week\":\"星期一\",\"win\":\"南风\",\"winMeter\":\"2km/h\",\"winSpeed\":\"2级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 23:26:47', 0);
INSERT INTO `sys_oper_log` VALUES (194, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"recordId\":8}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\city-data\\target\\classes\\mapper\\city-data\\CityWeatherMapper.xml]\r\n### The error may involve com.ruoyi.citydata.mapper.CityWeatherMapper.updateCityWeather-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_weather                    where record_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3', '2024-04-18 23:38:06', 241136);
INSERT INTO `sys_oper_log` VALUES (195, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"recordId\":8}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\city-data\\target\\classes\\mapper\\city-data\\CityWeatherMapper.xml]\r\n### The error may involve com.ruoyi.citydata.mapper.CityWeatherMapper.updateCityWeather-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_weather                    where record_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3', '2024-04-18 23:38:19', 7);
INSERT INTO `sys_oper_log` VALUES (196, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"济南\",\"date\":\"2024-04-18\",\"humidity\":\"989\",\"params\":{},\"pressrue\":\"32\",\"recordId\":8,\"tem\":\"1211\",\"temDay\":\"121\",\"temNight\":\"123\",\"updateDate\":\"321313\",\"week\":\"星期一\",\"win\":\"南风\",\"winMeter\":\"2km/h\",\"winSpeed\":\"2级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 23:40:13', 11);
INSERT INTO `sys_oper_log` VALUES (197, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"recordId\":8}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\city-data\\target\\classes\\mapper\\city-data\\CityWeatherMapper.xml]\r\n### The error may involve com.ruoyi.citydata.mapper.CityWeatherMapper.updateCityWeather-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_weather                    where record_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3', '2024-04-18 23:40:59', 4);
INSERT INTO `sys_oper_log` VALUES (198, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"recordId\":8}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\city-data\\target\\classes\\mapper\\city-data\\CityWeatherMapper.xml]\r\n### The error may involve com.ruoyi.citydata.mapper.CityWeatherMapper.updateCityWeather-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_weather                    where record_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3', '2024-04-18 23:50:20', 10592);
INSERT INTO `sys_oper_log` VALUES (199, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"params\":{},\"recordId\":8}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\city-data\\target\\classes\\mapper\\city-data\\CityWeatherMapper.xml]\r\n### The error may involve com.ruoyi.citydata.mapper.CityWeatherMapper.updateCityWeather-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_weather                    where record_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where record_id = 8\' at line 3', '2024-04-18 23:52:24', 3);
INSERT INTO `sys_oper_log` VALUES (200, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"青岛\",\"date\":\"2024-04-18\",\"humidity\":\"67%\",\"params\":{},\"pressrue\":\"1003\",\"recordId\":8,\"tem\":\"15.3\",\"temDay\":\"18\",\"temNight\":\"12\",\"week\":\"星期四\",\"win\":\"南风\",\"winMeter\":\"11km/h\",\"winSpeed\":\"2级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-18 23:53:29', 0);
INSERT INTO `sys_oper_log` VALUES (201, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"青岛\",\"date\":\"2024-04-18\",\"humidity\":\"71%\",\"params\":{},\"pressrue\":\"1003\",\"recordId\":8,\"tem\":\"15.1\",\"temDay\":\"18\",\"temNight\":\"12\",\"week\":\"星期四\",\"win\":\"南风\",\"winMeter\":\"11km/h\",\"winSpeed\":\"2级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-19 00:04:56', 16);
INSERT INTO `sys_oper_log` VALUES (202, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"青岛\",\"date\":\"2024-04-19\",\"humidity\":\"52%\",\"params\":{},\"pressrue\":\"1002\",\"recordId\":8,\"tem\":\"17.7\",\"temDay\":\"17\",\"temNight\":\"12\",\"updateDate\":\"10:42\",\"week\":\"星期五\",\"win\":\"东南风\",\"winMeter\":\"10km/h\",\"winSpeed\":\"3级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-19 10:48:35', 41);
INSERT INTO `sys_oper_log` VALUES (203, '城市天气', 1, 'com.ruoyi.citydata.controller.CityWeatherController.add()', 'POST', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"青岛\",\"params\":{},\"recordId\":9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-19 10:50:52', 8);
INSERT INTO `sys_oper_log` VALUES (204, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"青岛\",\"date\":\"2024-04-19\",\"humidity\":\"52%\",\"params\":{},\"pressrue\":\"1002\",\"recordId\":9,\"tem\":\"17.7\",\"temDay\":\"17\",\"temNight\":\"12\",\"updateDate\":\"10:42\",\"week\":\"星期五\",\"win\":\"东南风\",\"winMeter\":\"10km/h\",\"winSpeed\":\"3级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-19 10:51:00', 6);
INSERT INTO `sys_oper_log` VALUES (205, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"济南\",\"date\":\"2024-04-19\",\"humidity\":\"52%\",\"params\":{},\"pressrue\":\"1002\",\"recordId\":9,\"tem\":\"17.7\",\"temDay\":\"17\",\"temNight\":\"12\",\"updateDate\":\"10:42\",\"week\":\"星期五\",\"win\":\"东南风\",\"winMeter\":\"10km/h\",\"winSpeed\":\"3级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-19 10:51:10', 5);
INSERT INTO `sys_oper_log` VALUES (206, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"青岛\",\"date\":\"2024-04-19\",\"humidity\":\"52%\",\"params\":{},\"pressrue\":\"1002\",\"recordId\":9,\"tem\":\"17.9\",\"temDay\":\"17\",\"temNight\":\"12\",\"updateDate\":\"10:50\",\"week\":\"星期五\",\"win\":\"东南风\",\"winMeter\":\"10km/h\",\"winSpeed\":\"3级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-19 10:51:13', 0);
INSERT INTO `sys_oper_log` VALUES (207, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"济南\",\"date\":\"2024-04-19\",\"humidity\":\"52%\",\"params\":{},\"pressrue\":\"1002\",\"recordId\":9,\"tem\":\"17.9\",\"temDay\":\"17\",\"temNight\":\"12\",\"updateDate\":\"10:50\",\"week\":\"星期五\",\"win\":\"东南风\",\"winMeter\":\"10km/h\",\"winSpeed\":\"3级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-19 10:51:25', 0);
INSERT INTO `sys_oper_log` VALUES (208, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"济南\",\"date\":\"2024-04-19\",\"humidity\":\"30%\",\"params\":{},\"pressrue\":\"988\",\"recordId\":9,\"tem\":\"24.9\",\"temDay\":\"27\",\"temNight\":\"12\",\"updateDate\":\"10:35\",\"week\":\"星期五\",\"win\":\"北风\",\"winMeter\":\"4km/h\",\"winSpeed\":\"2级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-19 10:51:31', 0);
INSERT INTO `sys_oper_log` VALUES (209, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"drag\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"交通管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"traffic\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-19 18:22:22', 26);
INSERT INTO `sys_oper_log` VALUES (210, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"city_traffic\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-19 18:22:54', 54);
INSERT INTO `sys_oper_log` VALUES (211, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"traffic\",\"className\":\"CityTraffic\",\"columns\":[{\"capJavaField\":\"CityId\",\"columnComment\":\"城市ID\",\"columnId\":79,\"columnName\":\"city_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-19 18:22:53\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"cityId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"城市名称\",\"columnId\":80,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-19 18:22:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"路况描述\",\"columnId\":81,\"columnName\":\"description\",\"columnType\":\"varchar(512)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-19 18:22:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"路况检测\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"traffic\",\"options\":\"{\\\"parentMenuId\\\":2039}\",\"packageName\":\"com.ruoyi.traffic\",\"params\":{\"parentMenuId\":2039},\"parentMenuId\":\"2039\",\"sub\":false,\"tableComment\":\"城市交通信息表\",\"tableId\":10,\"tableName\":\"city_traffic\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-ui\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-19 18:24:41', 34);
INSERT INTO `sys_oper_log` VALUES (212, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"city_traffic\"}', NULL, 0, NULL, '2024-04-19 18:25:05', 36);
INSERT INTO `sys_oper_log` VALUES (213, '路况检测', 1, 'com.ruoyi.traffic.controller.CityTrafficController.add()', 'POST', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"还行\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-19 18:29:56', 36);
INSERT INTO `sys_oper_log` VALUES (214, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-17 19:53:00\",\"icon\":\"tab\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"城市灯光\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2014,\"path\":\"light\",\"perms\":\"\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'城市灯光\'失败，上级菜单不能选择自己\",\"code\":500}', 0, NULL, '2024-04-20 12:55:37', 17);
INSERT INTO `sys_oper_log` VALUES (215, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-17 19:53:00\",\"icon\":\"tab\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"城市灯光\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2014,\"path\":\"light\",\"perms\":\"\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'城市灯光\'失败，上级菜单不能选择自己\",\"code\":500}', 0, NULL, '2024-04-20 12:55:47', 2);
INSERT INTO `sys_oper_log` VALUES (216, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"城市灯光\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"light\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-20 12:56:42', 6);
INSERT INTO `sys_oper_log` VALUES (217, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2046', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-20 13:06:05', 7);
INSERT INTO `sys_oper_log` VALUES (218, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city-data/light/index\",\"createBy\":\"admin\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"城市运行灯光\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"light\",\"perms\":\"city-data:light:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-20 13:08:21', 5);
INSERT INTO `sys_oper_log` VALUES (219, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"青岛\",\"date\":\"2024-04-20\",\"humidity\":\"69%\",\"params\":{},\"pressrue\":\"999\",\"recordId\":8,\"tem\":\"15.5\",\"temDay\":\"20\",\"temNight\":\"12\",\"updateDate\":\"17:30\",\"week\":\"星期六\",\"win\":\"东南风\",\"winMeter\":\"11km/h\",\"winSpeed\":\"2级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-20 17:35:11', 39);
INSERT INTO `sys_oper_log` VALUES (220, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"还行把\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-20 19:29:23', 32);
INSERT INTO `sys_oper_log` VALUES (221, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where city_id = null\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\traffic\\target\\classes\\mapper\\traffic\\CityTrafficMapper.xml]\r\n### The error may involve com.ruoyi.traffic.mapper.CityTrafficMapper.updateCityTraffic-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_traffic                    where city_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where city_id = null\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where city_id = null\' at line 3', '2024-04-21 10:47:41', 97);
INSERT INTO `sys_oper_log` VALUES (222, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where city_id = null\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\traffic\\target\\classes\\mapper\\traffic\\CityTrafficMapper.xml]\r\n### The error may involve com.ruoyi.traffic.mapper.CityTrafficMapper.updateCityTraffic-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_traffic                    where city_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where city_id = null\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where city_id = null\' at line 3', '2024-04-21 10:49:14', 7);
INSERT INTO `sys_oper_log` VALUES (223, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where city_id = null\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\traffic\\target\\classes\\mapper\\traffic\\CityTrafficMapper.xml]\r\n### The error may involve com.ruoyi.traffic.mapper.CityTrafficMapper.updateCityTraffic-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_traffic                    where city_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where city_id = null\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where city_id = null\' at line 3', '2024-04-21 10:49:26', 5);
INSERT INTO `sys_oper_log` VALUES (224, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where city_id = null\' at line 3\r\n### The error may exist in file [D:\\workspace\\code\\design\\RuoYi-Cloud\\ruoyi-modules\\traffic\\target\\classes\\mapper\\traffic\\CityTrafficMapper.xml]\r\n### The error may involve com.ruoyi.traffic.mapper.CityTrafficMapper.updateCityTraffic-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update city_traffic                    where city_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where city_id = null\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where city_id = null\' at line 3', '2024-04-21 10:50:31', 4);
INSERT INTO `sys_oper_log` VALUES (225, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"经十路：双向畅通；西向东,舜耕路附近严重拥堵；东向西,经十路附近严重拥堵；东向西,从纬七路到纬九路严重拥堵；东向西,从燕山立交桥到山师东路行驶缓慢。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 10:50:37', 6);
INSERT INTO `sys_oper_log` VALUES (226, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"经十路：双向畅通；西向东,舜耕路附近严重拥堵；东向西,经十路附近严重拥堵；东向西,从纬七路到纬九路严重拥堵；东向西,从燕山立交桥到山师东路行驶缓慢。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 13:01:12', 5);
INSERT INTO `sys_oper_log` VALUES (227, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"经十路：双向畅通；西向东,舜耕路附近严重拥堵；东向西,经十路附近严重拥堵；东向西,从纬七路到纬九路严重拥堵；东向西,从燕山立交桥到山师东路行驶缓慢。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 13:01:26', 2);
INSERT INTO `sys_oper_log` VALUES (228, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"经十路：双向畅通；西向东,舜耕路附近严重拥堵；东向西,经十路附近严重拥堵；东向西,从纬七路到纬九路严重拥堵；东向西,从燕山立交桥到山师东路行驶缓慢。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 13:03:46', 3);
INSERT INTO `sys_oper_log` VALUES (229, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"天津\",\"description\":\"经十路：双向畅通；西向东,舜耕路附近严重拥堵；东向西,经十路附近严重拥堵；东向西,从纬七路到纬九路严重拥堵；东向西,从燕山立交桥到山师东路行驶缓慢。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 14:02:32', 6);
INSERT INTO `sys_oper_log` VALUES (230, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"经十路：双向畅通；西向东,舜耕路附近严重拥堵；东向西,经十路附近严重拥堵；东向西,从纬七路到纬九路严重拥堵；东向西,从燕山立交桥到山师东路行驶缓慢。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 14:08:31', 3);
INSERT INTO `sys_oper_log` VALUES (231, '路况检测', 1, 'com.ruoyi.traffic.controller.CityTrafficController.add()', 'POST', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":9,\"cityName\":\"北京\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 14:08:57', 11);
INSERT INTO `sys_oper_log` VALUES (232, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":9,\"cityName\":\"北京\",\"description\":\"东二环：双向拥堵；南向北,从东便门桥到建国门桥严重拥堵；北向南,从东直门北桥到建国门桥严重拥堵。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 14:12:39', 4);
INSERT INTO `sys_oper_log` VALUES (233, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/index\",\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"路线规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2039,\"path\":\"route\",\"perms\":\"traffic:route:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 14:34:00', 24);
INSERT INTO `sys_oper_log` VALUES (234, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2048', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 14:37:15', 8);
INSERT INTO `sys_oper_log` VALUES (235, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"路线规划\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2039,\"path\":\"route\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 14:37:56', 6);
INSERT INTO `sys_oper_log` VALUES (236, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/walk/index\",\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"步行规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2049,\"path\":\"walk\",\"perms\":\"traffic:route:walk:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 14:39:50', 7);
INSERT INTO `sys_oper_log` VALUES (237, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/bus/index\",\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"公交规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2049,\"path\":\"bus\",\"perms\":\"traffic:route:bus:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 18:11:46', 7);
INSERT INTO `sys_oper_log` VALUES (238, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/car/index\",\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"驾车规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2049,\"path\":\"car\",\"perms\":\"traffic:route:car:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 18:26:53', 6);
INSERT INTO `sys_oper_log` VALUES (239, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"经十路：双向畅通；西向东,舜耕路附近严重拥堵；东向西,经十路附近严重拥堵；东向西,从纬七路到纬九路严重拥堵；东向西,从燕山立交桥到山师东路行驶缓慢。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 18:53:05', 4);
INSERT INTO `sys_oper_log` VALUES (240, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"世纪大道：双向畅通。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 18:53:20', 3);
INSERT INTO `sys_oper_log` VALUES (241, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-11 14:55:17\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 19:21:21', 7);
INSERT INTO `sys_oper_log` VALUES (242, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city-data/weather/index\",\"createTime\":\"2024-04-18 20:41:08\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2033,\"menuName\":\"城市天气实况\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"weather\",\"perms\":\"city-data:weather:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 22:01:32', 18);
INSERT INTO `sys_oper_log` VALUES (243, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city-data/light/index\",\"createTime\":\"2024-04-20 13:08:21\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2047,\"menuName\":\"城市照明点图\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"light\",\"perms\":\"city-data:light:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 22:02:17', 8);
INSERT INTO `sys_oper_log` VALUES (244, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":9,\"cityName\":\"北京\",\"description\":\"东二环：双向拥堵；南向北,从东便门桥到建国门桥严重拥堵；北向南,从东直门北桥到建国门桥严重拥堵。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-21 22:14:21', 37);
INSERT INTO `sys_oper_log` VALUES (245, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"经十路：双向畅通；西向东,舜耕路附近严重拥堵；东向西,经十路附近严重拥堵；东向西,从纬七路到纬九路严重拥堵；东向西,从燕山立交桥到山师东路行驶缓慢。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 09:53:34', 29);
INSERT INTO `sys_oper_log` VALUES (246, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":1242,\"cityId\":10,\"cityName\":\"上海\",\"establishedDate\":\"1912-08-10\",\"location\":\"121.480539,31.235929\",\"params\":{},\"population\":22315474,\"province\":\"上海\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 11:52:34', 47);
INSERT INTO `sys_oper_log` VALUES (247, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"经十路：双向畅通；西向东,从历山路到山师东路严重拥堵。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 11:53:25', 8);
INSERT INTO `sys_oper_log` VALUES (248, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"city_accident\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 13:06:54', 60);
INSERT INTO `sys_oper_log` VALUES (249, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"accident\",\"className\":\"CityAccident\",\"columns\":[{\"capJavaField\":\"AccidentId\",\"columnComment\":\"交通事件ID\",\"columnId\":82,\"columnName\":\"accident_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-22 13:06:54\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"accidentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"所属城市\",\"columnId\":83,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-22 13:06:54\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"事件描述\",\"columnId\":84,\"columnName\":\"description\",\"columnType\":\"varchar(512)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-22 13:06:54\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AccidentAddress\",\"columnComment\":\"事故地址\",\"columnId\":85,\"columnName\":\"accident_address\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-22 13:06:54\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 13:08:09', 39);
INSERT INTO `sys_oper_log` VALUES (250, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"accident\",\"className\":\"CityAccident\",\"columns\":[{\"capJavaField\":\"AccidentId\",\"columnComment\":\"交通事件ID\",\"columnId\":82,\"columnName\":\"accident_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-22 13:06:54\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"accidentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-04-22 13:08:09\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"所属城市\",\"columnId\":83,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-22 13:06:54\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-04-22 13:08:09\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"事件描述\",\"columnId\":84,\"columnName\":\"description\",\"columnType\":\"varchar(512)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-22 13:06:54\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-04-22 13:08:09\",\"usableColumn\":false},{\"capJavaField\":\"AccidentAddress\",\"columnComment\":\"事故地址\",\"columnId\":85,\"columnName\":\"accident_address\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-22 13:06:54\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"in', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 13:09:35', 16);
INSERT INTO `sys_oper_log` VALUES (251, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"city_accident\"}', NULL, 0, NULL, '2024-04-22 13:09:38', 168);
INSERT INTO `sys_oper_log` VALUES (252, '交通事件', 1, 'com.ruoyi.traffic.controller.CityAccidentController.add()', 'POST', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"川沙镇申迪西路753号上海迪士尼度假区\",\"accidentId\":8,\"cityName\":\"上海\",\"description\":\"发生车祸\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 13:19:33', 32);
INSERT INTO `sys_oper_log` VALUES (253, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"川沙镇申迪西路753号上海迪士尼度假区\",\"accidentId\":8,\"cityName\":\"上海\",\"description\":\"发生车祸\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 13:19:39', 8);
INSERT INTO `sys_oper_log` VALUES (254, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生车祸\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 14:15:44', 7);
INSERT INTO `sys_oper_log` VALUES (255, '交通事件', 1, 'com.ruoyi.traffic.controller.CityAccidentController.add()', 'POST', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生事故\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 14:16:38', 4);
INSERT INTO `sys_oper_log` VALUES (256, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生事故\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 16:31:37', 7);
INSERT INTO `sys_oper_log` VALUES (257, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":1645,\"cityId\":8,\"cityName\":\"重庆\",\"establishedDate\":\"1959-10-08\",\"location\":\"106.560459,29.567849\",\"params\":{},\"population\":28390000,\"province\":\"重庆\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 16:33:39', 9);
INSERT INTO `sys_oper_log` VALUES (258, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生事故\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 21:26:19', 30);
INSERT INTO `sys_oper_log` VALUES (259, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生事故\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 21:32:01', 6);
INSERT INTO `sys_oper_log` VALUES (260, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生事故\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 21:32:08', 6);
INSERT INTO `sys_oper_log` VALUES (261, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生事故\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 21:33:52', 4);
INSERT INTO `sys_oper_log` VALUES (262, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生事故\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 21:33:56', 7);
INSERT INTO `sys_oper_log` VALUES (263, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生事故\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 21:38:17', 4);
INSERT INTO `sys_oper_log` VALUES (264, '个人信息', 2, 'com.ruoyi.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/user/profile', '127.0.0.1', '', '{\"admin\":false,\"email\":\"xiaozhuzhulzq@163.com\",\"nickName\":\"manage\",\"params\":{},\"phonenumber\":\"15554924961\",\"sex\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 21:45:17', 32);
INSERT INTO `sys_oper_log` VALUES (265, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"经十路：双向畅通；西向东,从历山路到山师东路严重拥堵。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 22:26:28', 5);
INSERT INTO `sys_oper_log` VALUES (266, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生事故\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 22:26:47', 4);
INSERT INTO `sys_oper_log` VALUES (267, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"青岛\",\"date\":\"2024-04-22\",\"humidity\":\"87%\",\"params\":{},\"pressrue\":\"1003\",\"recordId\":8,\"tem\":\"12.4\",\"temDay\":\"18\",\"temNight\":\"12\",\"updateDate\":\"22:19\",\"week\":\"星期一\",\"win\":\"东南风\",\"winMeter\":\"9km/h\",\"winSpeed\":\"2级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 22:28:04', 37);
INSERT INTO `sys_oper_log` VALUES (268, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city-data/light/index\",\"createTime\":\"2024-04-20 13:08:21\",\"icon\":\"star\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2047,\"menuName\":\"城市照明点图\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"light\",\"perms\":\"city-data:light:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-22 22:37:36', 14);
INSERT INTO `sys_oper_log` VALUES (269, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"city_plans\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 12:51:09', 65);
INSERT INTO `sys_oper_log` VALUES (270, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"plans\",\"className\":\"CityPlans\",\"columns\":[{\"capJavaField\":\"PlanId\",\"columnComment\":\"规划ID\",\"columnId\":88,\"columnName\":\"plan_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-23 12:51:09\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"planId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"所属城市\",\"columnId\":89,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-23 12:51:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PlanName\",\"columnComment\":\"规划名称\",\"columnId\":90,\"columnName\":\"plan_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-23 12:51:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"planName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"规划描述\",\"columnId\":91,\"columnName\":\"description\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2024-04-23 12:51:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 12:52:35', 40);
INSERT INTO `sys_oper_log` VALUES (271, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"city_plans\"}', NULL, 0, NULL, '2024-04-23 12:52:53', 162);
INSERT INTO `sys_oper_log` VALUES (272, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city/plans/index\",\"createTime\":\"2024-04-23 12:55:38\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2059,\"menuName\":\"城市规划管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"plans\",\"perms\":\"city:plans:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 12:58:36', 19);
INSERT INTO `sys_oper_log` VALUES (273, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-11 19:44:05\",\"icon\":\"city\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"城市管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"city\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:07:08', 6);
INSERT INTO `sys_oper_log` VALUES (274, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city/cities/index\",\"createTime\":\"2024-04-11 20:07:42\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"城市基础信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"cities\",\"perms\":\"city:cities:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:08:17', 6);
INSERT INTO `sys_oper_log` VALUES (275, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city/facilities/index\",\"createTime\":\"2024-04-14 11:40:03\",\"icon\":\"facility\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"城市设施管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"facilities\",\"perms\":\"city:facilities:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:10:12', 7);
INSERT INTO `sys_oper_log` VALUES (276, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city/facilities/index\",\"createTime\":\"2024-04-14 11:40:03\",\"icon\":\"facility_garage\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"城市设施管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"facilities\",\"perms\":\"city:facilities:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:12:15', 5);
INSERT INTO `sys_oper_log` VALUES (277, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city/facilities/index\",\"createTime\":\"2024-04-14 11:40:03\",\"icon\":\"设施管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2008,\"menuName\":\"城市设施管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"facilities\",\"perms\":\"city:facilities:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:14:20', 6);
INSERT INTO `sys_oper_log` VALUES (278, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city/plans/index\",\"createTime\":\"2024-04-23 12:55:38\",\"icon\":\"plan\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2059,\"menuName\":\"城市规划管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"plans\",\"perms\":\"city:plans:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:15:42', 6);
INSERT INTO `sys_oper_log` VALUES (279, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-19 18:22:22\",\"icon\":\"交通灯\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2039,\"menuName\":\"交通管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"traffic\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:17:31', 4);
INSERT INTO `sys_oper_log` VALUES (280, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/walk/index\",\"createTime\":\"2024-04-21 14:39:50\",\"icon\":\"walking-solid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2050,\"menuName\":\"步行规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2049,\"path\":\"walk\",\"perms\":\"traffic:route:walk:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:18:27', 5);
INSERT INTO `sys_oper_log` VALUES (281, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/traffic/index\",\"createTime\":\"2024-04-19 18:27:59\",\"icon\":\"road\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2040,\"menuName\":\"路况检测\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2039,\"path\":\"traffic\",\"perms\":\"traffic:traffic:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:19:47', 5);
INSERT INTO `sys_oper_log` VALUES (282, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/bus/index\",\"createTime\":\"2024-04-21 18:11:46\",\"icon\":\"公交车\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2051,\"menuName\":\"公交规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2049,\"path\":\"bus\",\"perms\":\"traffic:route:bus:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:20:57', 6);
INSERT INTO `sys_oper_log` VALUES (283, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/bus/index\",\"createTime\":\"2024-04-21 18:11:46\",\"icon\":\"5公交车\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2051,\"menuName\":\"公交规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2049,\"path\":\"bus\",\"perms\":\"traffic:route:bus:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:21:50', 6);
INSERT INTO `sys_oper_log` VALUES (284, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/bus/index\",\"createTime\":\"2024-04-21 18:11:46\",\"icon\":\"公交\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2051,\"menuName\":\"公交规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2049,\"path\":\"bus\",\"perms\":\"traffic:route:bus:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:22:51', 4);
INSERT INTO `sys_oper_log` VALUES (285, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-21 14:37:56\",\"icon\":\"road\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2049,\"menuName\":\"路线规划\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2039,\"path\":\"route\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:24:06', 5);
INSERT INTO `sys_oper_log` VALUES (286, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/bus/index\",\"createTime\":\"2024-04-21 18:11:46\",\"icon\":\"公交\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2051,\"menuName\":\"公交规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2049,\"path\":\"bus\",\"perms\":\"traffic:route:bus:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:24:23', 4);
INSERT INTO `sys_oper_log` VALUES (287, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/car/index\",\"createTime\":\"2024-04-21 18:26:53\",\"icon\":\"汽车\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2052,\"menuName\":\"驾车规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2049,\"path\":\"car\",\"perms\":\"traffic:route:car:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:26:03', 7);
INSERT INTO `sys_oper_log` VALUES (288, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-21 14:37:56\",\"icon\":\"23-route\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2049,\"menuName\":\"路线规划\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2039,\"path\":\"route\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:27:22', 5);
INSERT INTO `sys_oper_log` VALUES (289, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city-data/weather/index\",\"createTime\":\"2024-04-18 20:41:08\",\"icon\":\"download\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2033,\"menuName\":\"城市天气实况\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"weather\",\"perms\":\"city-data:weather:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:28:40', 5);
INSERT INTO `sys_oper_log` VALUES (290, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city-data/weather/index\",\"createTime\":\"2024-04-18 20:41:08\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2033,\"menuName\":\"城市天气实况\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"weather\",\"perms\":\"city-data:weather:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:29:26', 6);
INSERT INTO `sys_oper_log` VALUES (291, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city-data/quality/index\",\"createTime\":\"2024-04-17 20:16:24\",\"icon\":\"theme\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2027,\"menuName\":\"城市环境质量\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"quality\",\"perms\":\"city-data:quality:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:30:00', 6);
INSERT INTO `sys_oper_log` VALUES (292, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/accident/index\",\"createTime\":\"2024-04-22 13:13:28\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2053,\"menuName\":\"交通事件\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2039,\"path\":\"accident\",\"perms\":\"traffic:accident:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:30:35', 5);
INSERT INTO `sys_oper_log` VALUES (293, '城市规划', 1, 'com.ruoyi.city.controller.CityPlansController.add()', 'POST', 1, 'admin', NULL, '/plans', '127.0.0.1', '', '{\"cityName\":\"济南\",\"description\":\"治理农村环境问题\",\"endDate\":\"2024-04-23\",\"params\":{},\"planId\":8,\"planName\":\"农村厕所改造\",\"startDate\":\"2024-04-02\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:32:24', 37);
INSERT INTO `sys_oper_log` VALUES (294, '城市规划', 1, 'com.ruoyi.city.controller.CityPlansController.add()', 'POST', 1, 'admin', NULL, '/plans', '127.0.0.1', '', '{\"cityName\":\"济南\",\"description\":\"治理黄河环境，发展旅游景区\",\"endDate\":\"2024-04-17\",\"params\":{},\"planId\":9,\"planName\":\"黄河治理\",\"startDate\":\"2024-04-02\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:33:28', 5);
INSERT INTO `sys_oper_log` VALUES (295, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"monitor/online/index\",\"createTime\":\"2024-04-11 14:55:17\",\"icon\":\"online\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":109,\"menuName\":\"在线用户\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2,\"path\":\"online\",\"perms\":\"monitor:online:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:37:29', 6);
INSERT INTO `sys_oper_log` VALUES (296, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"monitor/job/index\",\"createTime\":\"2024-04-11 14:55:17\",\"icon\":\"job\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":110,\"menuName\":\"定时任务\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2,\"path\":\"job\",\"perms\":\"monitor:job:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:37:47', 5);
INSERT INTO `sys_oper_log` VALUES (297, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"\",\"createTime\":\"2024-04-11 14:55:17\",\"icon\":\"server\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":113,\"menuName\":\"Admin控制台\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2,\"path\":\"http://localhost:9100/login\",\"perms\":\"monitor:server:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:38:01', 5);
INSERT INTO `sys_oper_log` VALUES (298, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-11 14:55:17\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:39:46', 6);
INSERT INTO `sys_oper_log` VALUES (299, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/subway/index\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\" 地铁规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2049,\"path\":\"subway\",\"perms\":\"traffuc:route:subway:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 13:53:35', 7);
INSERT INTO `sys_oper_log` VALUES (300, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/subway/index\",\"createTime\":\"2024-04-23 13:53:35\",\"icon\":\"地铁\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2065,\"menuName\":\" 地铁规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2049,\"path\":\"subway\",\"perms\":\"traffuc:route:subway:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 18:56:11', 8);
INSERT INTO `sys_oper_log` VALUES (301, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/subway/index\",\"createTime\":\"2024-04-23 13:53:35\",\"icon\":\"5公交车\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2065,\"menuName\":\" 地铁规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2049,\"path\":\"subway\",\"perms\":\"traffuc:route:subway:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 18:56:58', 6);
INSERT INTO `sys_oper_log` VALUES (302, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"traffic/route/subway/index\",\"createTime\":\"2024-04-23 13:53:35\",\"icon\":\"5公交车\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2065,\"menuName\":\"地铁规划\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2049,\"path\":\"subway\",\"perms\":\"traffuc:route:subway:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 19:17:49', 5);
INSERT INTO `sys_oper_log` VALUES (303, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-21 14:37:56\",\"icon\":\"23-route\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2049,\"menuName\":\"路线规划\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2039,\"path\":\"route\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 19:18:30', 4);
INSERT INTO `sys_oper_log` VALUES (304, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"经十路：双向畅通；东向西,振兴西街附近严重拥堵；西向东,经十路辅路附近严重拥堵。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 20:33:34', 52);
INSERT INTO `sys_oper_log` VALUES (305, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-11 14:55:17\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 22:32:14', 7);
INSERT INTO `sys_oper_log` VALUES (306, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":1242,\"cityId\":10,\"cityName\":\"上海\",\"establishedDate\":\"1912-08-10\",\"location\":\"121.480539,31.235929\",\"params\":{},\"population\":22315474,\"province\":\"上海\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 22:55:00', 39);
INSERT INTO `sys_oper_log` VALUES (307, '城市设施管理', 2, 'com.ruoyi.city.controller.CityFacilitiesController.edit()', 'PUT', 1, 'admin', NULL, '/facilities', '127.0.0.1', '', '{\"address\":\"川沙镇申迪西路753号上海迪士尼度假区\",\"capacity\":1000,\"cityName\":\"上海\",\"facilityId\":1,\"facilityName\":\"迪士尼游乐园哈哈\",\"isPublic\":\"1\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 22:55:27', 10);
INSERT INTO `sys_oper_log` VALUES (308, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":9,\"cityName\":\"北京\",\"description\":\"东二环：双向畅通。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 22:56:31', 32);
INSERT INTO `sys_oper_log` VALUES (309, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"经十路：双向畅通；东向西,振兴西街附近严重拥堵；西向东,经十路辅路附近严重拥堵。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 22:56:50', 4);
INSERT INTO `sys_oper_log` VALUES (310, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生事故\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 22:57:07', 14);
INSERT INTO `sys_oper_log` VALUES (311, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生事故\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 22:57:23', 4);
INSERT INTO `sys_oper_log` VALUES (312, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"青岛\",\"date\":\"2024-04-23\",\"humidity\":\"65%\",\"params\":{},\"pressrue\":\"1000\",\"recordId\":8,\"tem\":\"12.6\",\"temDay\":\"18\",\"temNight\":\"12\",\"updateDate\":\"22:49\",\"week\":\"星期二\",\"win\":\"西风\",\"winMeter\":\"13km/h\",\"winSpeed\":\"2级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 23:00:34', 37);
INSERT INTO `sys_oper_log` VALUES (313, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"济南\",\"date\":\"2024-04-23\",\"humidity\":\"54%\",\"params\":{},\"pressrue\":\"990\",\"recordId\":9,\"tem\":\"14\",\"temDay\":\"27\",\"temNight\":\"13\",\"updateDate\":\"22:46\",\"week\":\"星期二\",\"win\":\"东南风\",\"winMeter\":\"4km/h\",\"winSpeed\":\"1级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 23:00:40', 4);
INSERT INTO `sys_oper_log` VALUES (314, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"city-data/light/index\",\"createTime\":\"2024-04-20 13:08:21\",\"icon\":\"star\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2047,\"menuName\":\"城市照明实况\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"light\",\"perms\":\"city-data:light:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 23:02:32', 22);
INSERT INTO `sys_oper_log` VALUES (315, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-11 14:55:17\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-23 23:03:46', 6);
INSERT INTO `sys_oper_log` VALUES (316, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":1242,\"cityId\":10,\"cityName\":\"上海\",\"establishedDate\":\"1912-08-10\",\"location\":\"121.482126,31.23419\",\"params\":{},\"population\":22315474,\"province\":\"上海\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 09:35:42', 34);
INSERT INTO `sys_oper_log` VALUES (317, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":1242,\"cityId\":10,\"cityName\":\"上海\",\"establishedDate\":\"1912-08-10\",\"location\":\"121.480539,31.235929\",\"params\":{},\"population\":22315474,\"province\":\"上海\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 09:36:19', 5);
INSERT INTO `sys_oper_log` VALUES (318, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":1242,\"cityId\":10,\"cityName\":\"上海\",\"establishedDate\":\"1912-08-10\",\"location\":\"121.482126,31.23419\",\"params\":{},\"population\":22315474,\"province\":\"上海\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 09:36:40', 6);
INSERT INTO `sys_oper_log` VALUES (319, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"经十路：双向畅通；东向西,振兴西街附近严重拥堵；西向东,经十路辅路附近严重拥堵。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 09:39:30', 30);
INSERT INTO `sys_oper_log` VALUES (320, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生事故\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 09:39:43', 10);
INSERT INTO `sys_oper_log` VALUES (321, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"青岛\",\"date\":\"2024-04-24\",\"humidity\":\"72%\",\"params\":{},\"pressrue\":\"1002\",\"recordId\":8,\"tem\":\"14.4\",\"temDay\":\"20\",\"temNight\":\"13\",\"updateDate\":\"09:33\",\"week\":\"星期三\",\"win\":\"西北风\",\"winMeter\":\"12km/h\",\"winSpeed\":\"3级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 09:43:24', 36);
INSERT INTO `sys_oper_log` VALUES (322, '城市基础信息', 2, 'com.ruoyi.city.controller.CitiesController.edit()', 'PUT', 1, 'admin', NULL, '/cities', '127.0.0.1', '', '{\"area\":1242,\"cityId\":10,\"cityName\":\"上海\",\"establishedDate\":\"1912-08-10\",\"location\":\"121.480539,31.235929\",\"params\":{},\"population\":22315474,\"province\":\"上海\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 09:57:18', 6);
INSERT INTO `sys_oper_log` VALUES (323, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"经十路：双向畅通；东向西,振兴西街附近严重拥堵；西向东,经十路辅路附近严重拥堵。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 10:00:06', 7);
INSERT INTO `sys_oper_log` VALUES (324, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 10:00:39', 4);
INSERT INTO `sys_oper_log` VALUES (325, '路况检测', 2, 'com.ruoyi.traffic.controller.CityTrafficController.edit()', 'PUT', 1, 'admin', NULL, '/traffic', '127.0.0.1', '', '{\"cityId\":8,\"cityName\":\"济南\",\"description\":\"二环西路：双向畅通。\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 10:00:48', 8);
INSERT INTO `sys_oper_log` VALUES (326, '交通事件', 2, 'com.ruoyi.traffic.controller.CityAccidentController.edit()', 'PUT', 1, 'admin', NULL, '/accident', '127.0.0.1', '', '{\"accidentAddress\":\"山东省济南市历城区凤鸣路1000号\",\"accidentId\":8,\"cityName\":\"济南\",\"description\":\"发生事故\",\"params\":{},\"recordDate\":\"2024-04-22\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 10:01:31', 13);
INSERT INTO `sys_oper_log` VALUES (327, '城市天气', 2, 'com.ruoyi.citydata.controller.CityWeatherController.edit()', 'PUT', 1, 'admin', NULL, '/weather', '127.0.0.1', '', '{\"city\":\"青岛\",\"date\":\"2024-04-24\",\"humidity\":\"65%\",\"params\":{},\"pressrue\":\"1003\",\"recordId\":8,\"tem\":\"15.1\",\"temDay\":\"20\",\"temNight\":\"13\",\"updateDate\":\"09:58\",\"week\":\"星期三\",\"win\":\"西北风\",\"winMeter\":\"16km/h\",\"winSpeed\":\"3级\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 10:08:21', 8);
INSERT INTO `sys_oper_log` VALUES (328, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-11 14:55:17\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 20:18:15', 19);
INSERT INTO `sys_oper_log` VALUES (329, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-11 14:55:17\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 20:18:20', 7);
INSERT INTO `sys_oper_log` VALUES (330, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"client\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"公共服务\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"pubservice\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 20:32:03', 6);
INSERT INTO `sys_oper_log` VALUES (331, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"resources_category\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 20:52:54', 64);
INSERT INTO `sys_oper_log` VALUES (332, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"category\",\"className\":\"ResourcesCategory\",\"columns\":[{\"capJavaField\":\"CategoryId\",\"columnComment\":\"类别ID\",\"columnId\":94,\"columnName\":\"category_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-24 20:52:54\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"categoryId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CategoryName\",\"columnComment\":\"类别名称\",\"columnId\":95,\"columnName\":\"category_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-24 20:52:54\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"categoryName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"描述\",\"columnId\":96,\"columnName\":\"description\",\"columnType\":\"varchar(512)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-24 20:52:54\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"资源类别\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"pubservice\",\"options\":\"{\\\"parentMenuId\\\":2066}\",\"packageName\":\"com.ruoyi.pubservice\",\"params\":{\"parentMenuId\":2066},\"parentMenuId\":\"2066\",\"sub\":false,\"tableComment\":\"城市公共资源表\",\"tableId\":13,\"tableName\":\"resources_category\",\"tplCategory\":\"crud\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 20:54:19', 36);
INSERT INTO `sys_oper_log` VALUES (333, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"resources_category\"}', NULL, 0, NULL, '2024-04-24 20:54:24', 168);
INSERT INTO `sys_oper_log` VALUES (334, '资源类别', 1, 'com.ruoyi.pubservice.controller.ResourcesCategoryController.add()', 'POST', 1, 'admin', NULL, '/category', '127.0.0.1', '', '{\"categoryId\":8,\"categoryName\":\"旅游\",\"description\":\"城市的旅游资源\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 21:06:36', 35);
INSERT INTO `sys_oper_log` VALUES (335, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"city_resources\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 21:09:36', 25);
INSERT INTO `sys_oper_log` VALUES (336, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"resources\",\"className\":\"CityResources\",\"columns\":[{\"capJavaField\":\"ResourceId\",\"columnComment\":\"资源ID\",\"columnId\":97,\"columnName\":\"resource_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-24 21:09:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"resourceId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"所属城市\",\"columnId\":98,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-24 21:09:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ResourceName\",\"columnComment\":\"资源名称\",\"columnId\":99,\"columnName\":\"resource_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-24 21:09:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"resourceName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CategoryId\",\"columnComment\":\"资源类型\",\"columnId\":100,\"columnName\":\"category_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-24 21:09:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"categoryI', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 21:12:26', 18);
INSERT INTO `sys_oper_log` VALUES (337, '资源类别', 1, 'com.ruoyi.pubservice.controller.ResourcesCategoryController.add()', 'POST', 1, 'admin', NULL, '/category', '127.0.0.1', '', '{\"categoryId\":9,\"categoryName\":\"医疗\",\"description\":\"城市的医疗资源\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 21:36:17', 5);
INSERT INTO `sys_oper_log` VALUES (338, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"resources\",\"className\":\"CityResources\",\"columns\":[{\"capJavaField\":\"ResourceId\",\"columnComment\":\"资源ID\",\"columnId\":97,\"columnName\":\"resource_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-24 21:09:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"resourceId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2024-04-24 21:12:26\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"所属城市\",\"columnId\":98,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-24 21:09:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2024-04-24 21:12:26\",\"usableColumn\":false},{\"capJavaField\":\"ResourceName\",\"columnComment\":\"资源名称\",\"columnId\":99,\"columnName\":\"resource_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-24 21:09:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"resourceName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2024-04-24 21:12:26\",\"usableColumn\":false},{\"capJavaField\":\"CategoryId\",\"columnComment\":\"资源类型\",\"columnId\":100,\"columnName\":\"category_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-24 21:09:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-24 21:40:34', 18);
INSERT INTO `sys_oper_log` VALUES (339, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"city_resources\"}', NULL, 0, NULL, '2024-04-24 21:40:37', 34);
INSERT INTO `sys_oper_log` VALUES (340, '公共资源', 1, 'com.ruoyi.pubservice.controller.CityResourcesController.add()', 'POST', 1, 'admin', NULL, '/resources', '127.0.0.1', '', '{\"address\":\"历城区凤鸣路\",\"capacity\":131313,\"categoryId\":8,\"cityName\":\"济南\",\"params\":{},\"resourceId\":8,\"resourceName\":\"测试资源\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 09:49:32', 38);
INSERT INTO `sys_oper_log` VALUES (341, '公共资源', 1, 'com.ruoyi.pubservice.controller.CityResourcesController.add()', 'POST', 1, 'admin', NULL, '/resources', '127.0.0.1', '', '{\"address\":\"五四广场\",\"capacity\":12321,\"categoryId\":9,\"cityName\":\"青岛\",\"params\":{},\"resourceId\":9,\"resourceName\":\"测试2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 09:50:12', 5);
INSERT INTO `sys_oper_log` VALUES (342, '公共资源', 1, 'com.ruoyi.pubservice.controller.CityResourcesController.add()', 'POST', 1, 'admin', NULL, '/resources', '127.0.0.1', '', '{\"address\":\"泰山\",\"capacity\":23131,\"categoryId\":8,\"cityName\":\"泰安\",\"params\":{},\"resourceId\":10,\"resourceName\":\"测试吃\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 09:50:37', 5);
INSERT INTO `sys_oper_log` VALUES (343, '公共资源', 1, 'com.ruoyi.pubservice.controller.CityResourcesController.add()', 'POST', 1, 'admin', NULL, '/resources', '127.0.0.1', '', '{\"address\":\"天坛\",\"capacity\":31233131,\"categoryId\":8,\"cityName\":\"北京\",\"params\":{},\"resourceId\":11,\"resourceName\":\"天坛\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 10:13:55', 6);
INSERT INTO `sys_oper_log` VALUES (344, '公共资源', 2, 'com.ruoyi.pubservice.controller.CityResourcesController.edit()', 'PUT', 1, 'admin', NULL, '/resources', '127.0.0.1', '', '{\"address\":\"泰山\",\"capacity\":23131,\"categoryId\":9,\"cityName\":\"泰安\",\"params\":{},\"resourceId\":10,\"resourceName\":\"测试吃\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 10:14:40', 4);
INSERT INTO `sys_oper_log` VALUES (345, '公共资源', 2, 'com.ruoyi.pubservice.controller.CityResourcesController.edit()', 'PUT', 1, 'admin', NULL, '/resources', '127.0.0.1', '', '{\"address\":\"历城区凤鸣路\",\"capacity\":131313,\"categoryId\":8,\"cityName\":\"济南\",\"params\":{},\"resourceId\":8,\"resourceName\":\"测试资源\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 10:21:52', 4);
INSERT INTO `sys_oper_log` VALUES (346, '公共资源', 2, 'com.ruoyi.pubservice.controller.CityResourcesController.edit()', 'PUT', 1, 'admin', NULL, '/resources', '127.0.0.1', '', '{\"address\":\"五四广场\",\"capacity\":12321,\"categoryId\":9,\"cityName\":\"青岛\",\"params\":{},\"resourceId\":9,\"resourceName\":\"测试2\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 10:24:49', 3);
INSERT INTO `sys_oper_log` VALUES (347, '交通事件', 5, 'com.ruoyi.traffic.controller.CityAccidentController.export()', 'POST', 1, 'admin', NULL, '/accident/export', '127.0.0.1', '', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-04-25 14:34:46', 903);
INSERT INTO `sys_oper_log` VALUES (348, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"service_category\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 15:41:12', 58);
INSERT INTO `sys_oper_log` VALUES (349, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"servicecategory\",\"className\":\"ServiceCategory\",\"columns\":[{\"capJavaField\":\"CategoryId\",\"columnComment\":\"类别ID\",\"columnId\":104,\"columnName\":\"category_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-25 15:41:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"categoryId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CategoryName\",\"columnComment\":\"类别名称\",\"columnId\":105,\"columnName\":\"category_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-25 15:41:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"categoryName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"描述\",\"columnId\":106,\"columnName\":\"description\",\"columnType\":\"varchar(512)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-25 15:41:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"服务类别\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"pubservice\",\"options\":\"{\\\"parentMenuId\\\":2066}\",\"packageName\":\"com.ruoyi.pubservice\",\"params\":{\"parentMenuId\":2066},\"parentMenuId\":\"2066\",\"sub\":false,\"tableComment\":\"城市服务类别表\",\"tableId\":15,\"tableName\":\"service_category\",\"tplCategory\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 15:43:45', 35);
INSERT INTO `sys_oper_log` VALUES (350, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"servicecategory\",\"className\":\"ServiceCategory\",\"columns\":[{\"capJavaField\":\"CategoryId\",\"columnComment\":\"类别ID\",\"columnId\":104,\"columnName\":\"category_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-25 15:41:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"categoryId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2024-04-25 15:43:45\",\"usableColumn\":false},{\"capJavaField\":\"CategoryName\",\"columnComment\":\"类别名称\",\"columnId\":105,\"columnName\":\"category_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-25 15:41:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"categoryName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2024-04-25 15:43:45\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"描述\",\"columnId\":106,\"columnName\":\"description\",\"columnType\":\"varchar(512)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-25 15:41:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2024-04-25 15:43:45\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"服务类别\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"pubservice\",\"options\":\"{\\\"parentMenuId\\\":\\\"2066\\\"}\",\"packageName\":\"com.ruoyi.pubservice\",\"params\":{\"parentMenuId\":\"2066\"},\"paren', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 15:43:53', 12);
INSERT INTO `sys_oper_log` VALUES (351, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"servicecategory\",\"className\":\"ServiceCategory\",\"columns\":[{\"capJavaField\":\"CategoryId\",\"columnComment\":\"类别ID\",\"columnId\":104,\"columnName\":\"category_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-25 15:41:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"categoryId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2024-04-25 15:43:53\",\"usableColumn\":false},{\"capJavaField\":\"CategoryName\",\"columnComment\":\"类别名称\",\"columnId\":105,\"columnName\":\"category_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-25 15:41:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"categoryName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2024-04-25 15:43:53\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"描述\",\"columnId\":106,\"columnName\":\"description\",\"columnType\":\"varchar(512)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-25 15:41:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"updateTime\":\"2024-04-25 15:43:53\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"服务类别\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"pubservice\",\"options\":\"{\\\"parentMenuId\\\":\\\"2066\\\"}\",\"packageName\":\"com.ruoyi.pubservice\",\"params\":{\"parentMenuId\":\"2066\"},\"paren', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 15:46:20', 13);
INSERT INTO `sys_oper_log` VALUES (352, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"service_category\"}', NULL, 0, NULL, '2024-04-25 15:46:23', 35);
INSERT INTO `sys_oper_log` VALUES (353, '城市基础信息', 5, 'com.ruoyi.city.controller.CitiesController.export()', 'POST', 1, 'admin', NULL, '/cities/export', '127.0.0.1', '', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-04-25 15:48:39', 1078);
INSERT INTO `sys_oper_log` VALUES (354, '服务类别', 1, 'com.ruoyi.pubservice.controller.ServiceCategoryController.add()', 'POST', 1, 'admin', NULL, '/servicecategory', '127.0.0.1', '', '{\"categoryId\":8,\"categoryName\":\"旅游业\",\"description\":\"城市的旅游\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 16:29:55', 37);
INSERT INTO `sys_oper_log` VALUES (355, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"service_quality\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 21:33:18', 27);
INSERT INTO `sys_oper_log` VALUES (356, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"quality\",\"className\":\"ServiceQuality\",\"columns\":[{\"capJavaField\":\"ServiceId\",\"columnComment\":\"服务ID\",\"columnId\":107,\"columnName\":\"service_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-25 21:33:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"serviceId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"所属城市\",\"columnId\":108,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-25 21:33:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ServiceName\",\"columnComment\":\"服务名称\",\"columnId\":109,\"columnName\":\"service_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-25 21:33:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"serviceName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CategoryId\",\"columnComment\":\"服务类别\",\"columnId\":110,\"columnName\":\"category_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-25 21:33:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"categoryId\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 21:35:08', 25);
INSERT INTO `sys_oper_log` VALUES (357, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"service_quality\"}', NULL, 0, NULL, '2024-04-25 21:35:23', 36);
INSERT INTO `sys_oper_log` VALUES (358, '服务类别', 1, 'com.ruoyi.pubservice.controller.ServiceCategoryController.add()', 'POST', 1, 'admin', NULL, '/servicecategory', '127.0.0.1', '', '{\"categoryId\":9,\"categoryName\":\"福利\",\"description\":\"城市福利\\n\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 21:39:56', 32);
INSERT INTO `sys_oper_log` VALUES (359, '服务质量', 1, 'com.ruoyi.pubservice.controller.ServiceQualityController.add()', 'POST', 1, 'admin', NULL, '/quality', '127.0.0.1', '', '{\"categoryId\":9,\"cityName\":\"济南\",\"description\":\"济南在校大学生一个月免费公交地铁\",\"params\":{},\"quality\":\"不错\",\"serviceId\":8,\"serviceName\":\"在校大学生免费公交\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 21:40:43', 10);
INSERT INTO `sys_oper_log` VALUES (360, '服务质量', 2, 'com.ruoyi.pubservice.controller.ServiceQualityController.edit()', 'PUT', 1, 'admin', NULL, '/quality', '127.0.0.1', '', '{\"categoryId\":8,\"cityName\":\"济南\",\"description\":\"济南在校大学生一个月免费公交地铁\",\"params\":{},\"quality\":\"不错\",\"serviceId\":8,\"serviceName\":\"在校大学生免费公交\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 22:11:23', 4);
INSERT INTO `sys_oper_log` VALUES (361, '服务质量', 1, 'com.ruoyi.pubservice.controller.ServiceQualityController.add()', 'POST', 1, 'admin', NULL, '/quality', '127.0.0.1', '', '{\"categoryId\":8,\"cityName\":\"青岛\",\"description\":\"看海\",\"params\":{},\"quality\":\"不错\",\"serviceId\":9,\"serviceName\":\"大学生免费看海\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 22:15:02', 6);
INSERT INTO `sys_oper_log` VALUES (362, '服务质量', 2, 'com.ruoyi.pubservice.controller.ServiceQualityController.edit()', 'PUT', 1, 'admin', NULL, '/quality', '127.0.0.1', '', '{\"categoryId\":9,\"cityName\":\"青岛\",\"description\":\"看海\",\"params\":{},\"quality\":\"不错\",\"serviceId\":9,\"serviceName\":\"大学生免费看海\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 22:15:10', 4);
INSERT INTO `sys_oper_log` VALUES (363, '服务质量', 2, 'com.ruoyi.pubservice.controller.ServiceQualityController.edit()', 'PUT', 1, 'admin', NULL, '/quality', '127.0.0.1', '', '{\"categoryId\":9,\"cityName\":\"青岛\",\"description\":\"看海\",\"params\":{},\"quality\":\"不错\",\"serviceId\":9,\"serviceName\":\"大学生免费看海\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-25 22:17:41', 5);
INSERT INTO `sys_oper_log` VALUES (364, '服务质量', 2, 'com.ruoyi.pubservice.controller.ServiceQualityController.edit()', 'PUT', 1, 'admin', NULL, '/quality', '127.0.0.1', '', '{\"categoryId\":9,\"cityName\":\"青岛\",\"description\":\"看海\",\"params\":{},\"quality\":\"不错\",\"serviceId\":9,\"serviceName\":\"大学生免费看海\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 10:39:09', 31);
INSERT INTO `sys_oper_log` VALUES (365, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"color\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"资源管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2066,\"path\":\"resource-manage\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 10:41:16', 18);
INSERT INTO `sys_oper_log` VALUES (366, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2091', '127.0.0.1', '', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 10:41:54', 7);
INSERT INTO `sys_oper_log` VALUES (367, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"pubservice/servicecategory/index\",\"createTime\":\"2024-04-25 16:17:55\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2079,\"menuName\":\"服务类别\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2066,\"path\":\"servicecategory\",\"perms\":\"pubservice:servicecategory:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 10:44:02', 7);
INSERT INTO `sys_oper_log` VALUES (368, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"pubservice/category/index\",\"createTime\":\"2024-04-24 20:57:00\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2067,\"menuName\":\"资源类别\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2066,\"path\":\"category\",\"perms\":\"pubservice:category:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 10:44:16', 5);
INSERT INTO `sys_oper_log` VALUES (369, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"pubservice/resources/index\",\"createTime\":\"2024-04-24 21:52:08\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2073,\"menuName\":\"公共资源\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2066,\"path\":\"resources\",\"perms\":\"pubservice:resources:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 10:44:50', 5);
INSERT INTO `sys_oper_log` VALUES (370, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"pubservice/quality/index\",\"createTime\":\"2024-04-25 21:37:54\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2085,\"menuName\":\"服务质量\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2066,\"path\":\"quality\",\"perms\":\"pubservice:quality:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 10:45:11', 4);
INSERT INTO `sys_oper_log` VALUES (371, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"international\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"应急管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"emergency\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 21:10:00', 19);
INSERT INTO `sys_oper_log` VALUES (372, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"emergency_category\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 21:12:27', 54);
INSERT INTO `sys_oper_log` VALUES (373, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"category\",\"className\":\"EmergencyCategory\",\"columns\":[{\"capJavaField\":\"CategoryId\",\"columnComment\":\"类别ID\",\"columnId\":114,\"columnName\":\"category_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 21:12:27\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"categoryId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CategoryName\",\"columnComment\":\"类别名称\",\"columnId\":115,\"columnName\":\"category_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 21:12:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"categoryName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"描述\",\"columnId\":116,\"columnName\":\"description\",\"columnType\":\"varchar(512)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 21:12:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"事故类别\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"emergency\",\"options\":\"{\\\"parentMenuId\\\":2092}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":2092},\"parentMenuId\":\"2092\",\"sub\":false,\"tableComment\":\"事故类别表\",\"tableId\":17,\"tableName\":\"emergency_category\",\"tplCategory\":\"crud\",\"tp', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 21:14:16', 36);
INSERT INTO `sys_oper_log` VALUES (374, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"emergency_category\"}', NULL, 0, NULL, '2024-04-26 21:14:22', 127);
INSERT INTO `sys_oper_log` VALUES (375, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"category\",\"className\":\"EmergencyCategory\",\"columns\":[{\"capJavaField\":\"CategoryId\",\"columnComment\":\"类别ID\",\"columnId\":114,\"columnName\":\"category_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 21:12:27\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"categoryId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 21:14:16\",\"usableColumn\":false},{\"capJavaField\":\"CategoryName\",\"columnComment\":\"类别名称\",\"columnId\":115,\"columnName\":\"category_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 21:12:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"categoryName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 21:14:16\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"描述\",\"columnId\":116,\"columnName\":\"description\",\"columnType\":\"varchar(512)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 21:12:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 21:14:16\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"事故类别\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"emergency\",\"options\":\"{\\\"parentMenuId\\\":\\\"2092\\\"}\",\"packageName\":\"com.ruoyi.emergency\",\"params\":{\"parentMenuId\":\"2092\"},\"parentMenuId', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 21:15:31', 11);
INSERT INTO `sys_oper_log` VALUES (376, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"category\",\"className\":\"EmergencyCategory\",\"columns\":[{\"capJavaField\":\"CategoryId\",\"columnComment\":\"类别ID\",\"columnId\":114,\"columnName\":\"category_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 21:12:27\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"categoryId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 21:15:31\",\"usableColumn\":false},{\"capJavaField\":\"CategoryName\",\"columnComment\":\"类别名称\",\"columnId\":115,\"columnName\":\"category_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 21:12:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"categoryName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 21:15:31\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"描述\",\"columnId\":116,\"columnName\":\"description\",\"columnType\":\"varchar(512)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 21:12:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":17,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 21:15:31\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"事故类别\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"emergency\",\"options\":\"{\\\"parentMenuId\\\":\\\"2092\\\"}\",\"packageName\":\"com.ruoyi.emergency\",\"params\":{\"parentMenuId\":\"2092\"},\"parentMenuId', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 21:15:45', 12);
INSERT INTO `sys_oper_log` VALUES (377, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"emergency_category\"}', NULL, 0, NULL, '2024-04-26 21:15:53', 23);
INSERT INTO `sys_oper_log` VALUES (378, '事故类别', 1, 'com.ruoyi.emergency.controller.EmergencyCategoryController.add()', 'POST', 1, 'admin', NULL, '/category', '127.0.0.1', '', '{\"categoryId\":8,\"categoryName\":\"火灾\",\"description\":\"需要消防队\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 21:21:02', 30);
INSERT INTO `sys_oper_log` VALUES (379, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-26 21:10:00\",\"icon\":\"international\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2092,\"menuName\":\"应急管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"emergency\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 21:21:17', 5);
INSERT INTO `sys_oper_log` VALUES (380, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"createTime\":\"2024-04-11 14:55:17\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 21:21:34', 5);
INSERT INTO `sys_oper_log` VALUES (381, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"city_emergency\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 13:14:24', 65);
INSERT INTO `sys_oper_log` VALUES (382, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"emergency\",\"className\":\"CityEmergency\",\"columns\":[{\"capJavaField\":\"EmergencyId\",\"columnComment\":\"事件ID\",\"columnId\":117,\"columnName\":\"emergency_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-28 13:14:24\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"emergencyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CityName\",\"columnComment\":\"所属城市\",\"columnId\":118,\"columnName\":\"city_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-28 13:14:24\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"cityName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CategoryId\",\"columnComment\":\"类别ID\",\"columnId\":119,\"columnName\":\"category_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-28 13:14:24\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"categoryId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"事件描述\",\"columnId\":120,\"columnName\":\"description\",\"columnType\":\"varchar(512)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-28 13:14:24\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"descripti', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 13:17:02', 40);
INSERT INTO `sys_oper_log` VALUES (383, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"city_emergency\"}', NULL, 0, NULL, '2024-04-28 13:17:21', 37);
INSERT INTO `sys_oper_log` VALUES (384, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"children\":[],\"component\":\"emergency/emergency/index\",\"createTime\":\"2024-04-28 13:20:24\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2099,\"menuName\":\"应急事件\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2092,\"path\":\"emergency\",\"perms\":\"emergency:emergency:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 13:26:52', 18);
INSERT INTO `sys_oper_log` VALUES (385, '交通事件', 1, 'com.ruoyi.emergency.controller.CityEmergencyController.add()', 'POST', 1, 'admin', NULL, '/emergency', '127.0.0.1', '', '{\"categoryId\":8,\"cityName\":\"济南\",\"description\":\"测试\",\"emergencyAddress\":\"山东省济南市历城区凤鸣路1000号\",\"emergencyDate\":\"2024-04-28\",\"emergencyId\":8,\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 13:29:21', 65);
INSERT INTO `sys_oper_log` VALUES (386, '交通事件', 2, 'com.ruoyi.emergency.controller.CityEmergencyController.edit()', 'PUT', 1, 'admin', NULL, '/emergency', '127.0.0.1', '', '{\"categoryId\":8,\"cityName\":\"济南\",\"description\":\"测试\",\"emergencyAddress\":\"山东省济南市历城区凤鸣路1000号\",\"emergencyDate\":\"2024-04-28\",\"emergencyId\":8,\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 14:47:00', 10);
INSERT INTO `sys_oper_log` VALUES (387, '交通事件', 2, 'com.ruoyi.emergency.controller.CityEmergencyController.edit()', 'PUT', 1, 'admin', NULL, '/emergency', '127.0.0.1', '', '{\"categoryId\":8,\"cityName\":\"济南\",\"description\":\"测试\",\"emergencyAddress\":\"山东省济南市历城区凤鸣路1000号\",\"emergencyDate\":\"2024-04-28\",\"emergencyId\":8,\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 14:50:21', 5);
INSERT INTO `sys_oper_log` VALUES (388, '交通事件', 2, 'com.ruoyi.emergency.controller.CityEmergencyController.edit()', 'PUT', 1, 'admin', NULL, '/emergency', '127.0.0.1', '', '{\"categoryId\":8,\"cityName\":\"济南\",\"description\":\"测试\",\"emergencyAddress\":\"山东省济南市历城区凤鸣路1000号\",\"emergencyDate\":\"2024-04-28\",\"emergencyId\":8,\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 14:50:30', 7);
INSERT INTO `sys_oper_log` VALUES (389, '交通事件', 2, 'com.ruoyi.emergency.controller.CityEmergencyController.edit()', 'PUT', 1, 'admin', NULL, '/emergency', '127.0.0.1', '', '{\"categoryId\":8,\"cityName\":\"济南\",\"description\":\"测试\",\"emergencyAddress\":\"山东省济南市历城区凤鸣路1000号\",\"emergencyDate\":\"2024-04-28\",\"emergencyId\":8,\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 14:50:44', 2);
INSERT INTO `sys_oper_log` VALUES (390, '交通事件', 2, 'com.ruoyi.emergency.controller.CityEmergencyController.edit()', 'PUT', 1, 'admin', NULL, '/emergency', '127.0.0.1', '', '{\"categoryId\":8,\"cityName\":\"济南\",\"description\":\"测试\",\"emergencyAddress\":\"山东省济南市历城区凤鸣路1000号\",\"emergencyDate\":\"2024-04-28\",\"emergencyId\":8,\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 14:50:49', 0);
INSERT INTO `sys_oper_log` VALUES (391, '事故类别', 1, 'com.ruoyi.emergency.controller.EmergencyCategoryController.add()', 'POST', 1, 'admin', NULL, '/category', '127.0.0.1', '', '{\"categoryId\":9,\"categoryName\":\"电力\",\"description\":\"需要国家电网\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 15:23:02', 12);
INSERT INTO `sys_oper_log` VALUES (392, '交通事件', 2, 'com.ruoyi.emergency.controller.CityEmergencyController.edit()', 'PUT', 1, 'admin', NULL, '/emergency', '127.0.0.1', '', '{\"categoryId\":9,\"cityName\":\"济南\",\"description\":\"测试\",\"emergencyAddress\":\"山东省济南市历城区凤鸣路1000号\",\"emergencyDate\":\"2024-04-28\",\"emergencyId\":8,\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 15:23:09', 6);
INSERT INTO `sys_oper_log` VALUES (393, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', '{\"tables\":\"resource_dispatch\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 18:00:54', 29);
INSERT INTO `sys_oper_log` VALUES (394, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/gen', '127.0.0.1', '', '{\"businessName\":\"dispatch\",\"className\":\"ResourceDispatch\",\"columns\":[{\"capJavaField\":\"DispatchId\",\"columnComment\":\"调度ID\",\"columnId\":124,\"columnName\":\"dispatch_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-28 18:00:54\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"dispatchId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":19,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EmergencyId\",\"columnComment\":\"事件ID\",\"columnId\":125,\"columnName\":\"emergency_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-28 18:00:54\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"emergencyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":19,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ResourceId\",\"columnComment\":\"调度资源ID\",\"columnId\":126,\"columnName\":\"resource_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-28 18:00:54\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"resourceId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":19,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Content\",\"columnComment\":\"调度内容\",\"columnId\":127,\"columnName\":\"content\",\"columnType\":\"varchar(512)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-28 18:00:54\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"content\",\"javaType\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 18:02:00', 17);
INSERT INTO `sys_oper_log` VALUES (395, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', '{\"tables\":\"resource_dispatch\"}', NULL, 0, NULL, '2024-04-28 18:02:32', 36);
INSERT INTO `sys_oper_log` VALUES (396, '资源调度', 1, 'com.ruoyi.emergency.controller.ResourceDispatchController.add()', 'POST', 1, 'admin', NULL, '/dispatch', '127.0.0.1', '', '{\"content\":\"测试\",\"dispatchDate\":\"2024-04-28\",\"dispatchId\":9,\"emergencyId\":8,\"params\":{},\"resourceId\":8,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 22:25:46', 36);
INSERT INTO `sys_oper_log` VALUES (397, '交通事件', 1, 'com.ruoyi.emergency.controller.CityEmergencyController.add()', 'POST', 1, 'admin', NULL, '/emergency', '127.0.0.1', '', '{\"categoryId\":9,\"cityName\":\"济南\",\"description\":\"测试\",\"emergencyAddress\":\"山东省济南市历城区凤鸣路1000号\",\"emergencyDate\":\"2024-04-28\",\"emergencyId\":9,\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 22:48:28', 37);
INSERT INTO `sys_oper_log` VALUES (398, '资源调度', 1, 'com.ruoyi.emergency.controller.ResourceDispatchController.add()', 'POST', 1, 'admin', NULL, '/dispatch', '127.0.0.1', '', '{\"content\":\"测试\",\"dispatchDate\":\"2024-04-28\",\"dispatchId\":10,\"emergencyId\":9,\"params\":{},\"resourceId\":9,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 22:49:09', 8);
INSERT INTO `sys_oper_log` VALUES (399, '资源调度', 2, 'com.ruoyi.emergency.controller.ResourceDispatchController.edit()', 'PUT', 1, 'admin', NULL, '/dispatch', '127.0.0.1', '', '{\"content\":\"测试\",\"dispatchDate\":\"2024-04-28\",\"dispatchId\":10,\"emergencyId\":8,\"params\":{},\"resourceId\":9,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 23:15:52', 8);
INSERT INTO `sys_oper_log` VALUES (400, '公共资源', 2, 'com.ruoyi.pubservice.controller.CityResourcesController.edit()', 'PUT', 1, 'admin', NULL, '/resources', '127.0.0.1', '', '{\"address\":\"历城区凤鸣路\",\"capacity\":131313,\"categoryId\":8,\"cityName\":\"济南\",\"params\":{},\"resourceId\":8,\"resourceName\":\"资源1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 23:16:19', 43);
INSERT INTO `sys_oper_log` VALUES (401, '公共资源', 2, 'com.ruoyi.pubservice.controller.CityResourcesController.edit()', 'PUT', 1, 'admin', NULL, '/resources', '127.0.0.1', '', '{\"address\":\"历城区凤鸣路\",\"capacity\":131313,\"categoryId\":8,\"cityName\":\"济南\",\"params\":{},\"resourceId\":8,\"resourceName\":\"资源1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 23:39:17', 5);
INSERT INTO `sys_oper_log` VALUES (402, '资源调度', 2, 'com.ruoyi.emergency.controller.ResourceDispatchController.edit()', 'PUT', 1, 'admin', NULL, '/dispatch', '127.0.0.1', '', '{\"content\":\"测试\",\"dispatchDate\":\"2024-04-28\",\"dispatchId\":9,\"emergencyId\":8,\"params\":{},\"resourceId\":8,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-28 23:46:06', 5);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-04-11 14:55:17', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-04-11 14:55:17', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-04-11 14:55:17', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'manage', '00', 'xiaozhuzhulzq@163.com', '15554924961', '0', 'http://127.0.0.1:9300/statics/2024/04/17/wallhaven-j5wk8m_20240417091428A001.jpg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-04-11 14:55:17', 'admin', '2024-04-11 14:55:17', '', '2024-04-22 21:45:17', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-04-11 14:55:17', 'admin', '2024-04-11 14:55:17', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
