/*
 Navicat Premium Data Transfer

 Source Server         : MySQLOS
 Source Server Type    : MySQL
 Source Server Version : 50562 (5.5.62)
 Source Host           : localhost:3307
 Source Schema         : bjewls

 Target Server Type    : MySQL
 Target Server Version : 50562 (5.5.62)
 File Encoding         : 65001

 Date: 23/06/2023 18:58:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `jewel_id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `qty` int(4) NOT NULL DEFAULT 0,
  `cust_id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `checkout` varchar(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'n',
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `checkedon` date NOT NULL,
  `trans` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jewel_id`(`jewel_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (0001, 0001, 1, 0002, 'y', '2014-03-27 07:44:55', '2014-03-27', 16444);
INSERT INTO `cart` VALUES (0002, 0026, 1, 0002, 'y', '2023-06-06 20:50:25', '2023-06-07', 23391);
INSERT INTO `cart` VALUES (0003, 0073, 1, 0002, 'y', '2023-06-07 00:05:08', '2023-06-16', 8037);
INSERT INTO `cart` VALUES (0004, 0242, 4, 0002, 'y', '2023-06-16 18:35:43', '2023-06-16', 8037);
INSERT INTO `cart` VALUES (0005, 0305, 5, 0002, 'y', '2023-06-16 18:54:19', '2023-06-16', 22021);
INSERT INTO `cart` VALUES (0006, 0142, 1, 0002, 'y', '2023-06-16 18:54:32', '2023-06-16', 22021);
INSERT INTO `cart` VALUES (0007, 0082, 2, 0002, 'y', '2023-06-21 10:31:47', '2023-06-21', 28378);
INSERT INTO `cart` VALUES (0008, 0041, 3, 0002, 'y', '2023-06-21 10:31:58', '2023-06-21', 28378);
INSERT INTO `cart` VALUES (0009, 0159, 3, 0002, 'y', '2023-06-21 10:32:08', '2023-06-21', 28378);

-- ----------------------------
-- Table structure for jewellery
-- ----------------------------
DROP TABLE IF EXISTS `jewellery`;
CREATE TABLE `jewellery`  (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `prodname` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `path` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'images/nophoto.gif',
  `category` int(33) NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `descr` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'latest',
  `noviews` int(4) NOT NULL DEFAULT 0,
  `topsell` int(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 329 CHARACTER SET = utf8 COLLATE = utf8_general_ci PACK_KEYS = 0 ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jewellery
-- ----------------------------
INSERT INTO `jewellery` VALUES (0308, 'Silver/Toe Ring/4.jpg', 'Silver/Toe Ring/4.jpg', 40, 4550.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0309, 'Silver/Toe Ring/5.jpg', 'Silver/Toe Ring/5.jpg', 40, 500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0307, 'Silver/Toe Ring/3.jpg', 'Silver/Toe Ring/3.jpg', 40, 375.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0306, 'Silver/Toe Ring/2.jpg', 'Silver/Toe Ring/2.jpg', 40, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0305, 'Silver/Toe Ring/1.jpg', 'Silver/Toe Ring/1.jpg', 40, 1000.00, 'Чистое серебро', 'featured', 1, 0);
INSERT INTO `jewellery` VALUES (0304, 'Silver/Pendants Sets/10.jpg', 'Silver/Pendants Sets/10.jpg', 31, 500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0303, 'Silver/Pendants Sets/9.jpg', 'Silver/Pendants Sets/9.jpg', 31, 4550.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0302, 'Silver/Pendants Sets/8.jpg', 'Silver/Pendants Sets/8.jpg', 31, 4550.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0301, 'Silver/Pendants Sets/7.jpg', 'Silver/Pendants Sets/7.jpg', 31, 375.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0300, 'Silver/Pendants Sets/6.jpg', 'Silver/Pendants Sets/6.jpg', 31, 375.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0299, 'Silver/Pendants Sets/5.jpg', 'Silver/Pendants Sets/5.jpg', 30, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0298, 'Silver/Pendants Sets/4.jpg', 'Silver/Pendants Sets/4.jpg', 31, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0297, 'Silver/Pendants Sets/3.jpg', 'Silver/Pendants Sets/3.jpg', 31, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0296, 'Silver/Pendants Sets/2.jpg', 'Silver/Pendants Sets/2.jpg', 31, 1000.00, 'Pure Solver', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0295, 'Silver/Pendants Sets/1.jpg', 'Silver/Pendants Sets/1.jpg', 31, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0294, 'Silver/Pendants/10.jpg', 'Silver/Pendants/10.jpg', 30, 500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0292, 'Silver/Pendants/8.jpg', 'Silver/Pendants/8.jpg', 30, 4550.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0293, 'Silver/Pendants/9.jpg', 'Silver/Pendants/9.jpg', 30, 4550.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0291, 'Silver/Pendants/7.jpg', 'Silver/Pendants/7.jpg', 30, 375.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0290, 'Silver/Pendants/6.jpg', 'Silver/Pendants/6.jpg', 30, 375.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0289, 'Silver/Pendants/5.jpg', 'Silver/Pendants/5.jpg', 30, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0288, 'Silver/Pendants/4.jpg', 'Silver/Pendants/4.jpg', 30, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0287, 'Silver/Pendants/3.jpg', 'Silver/Pendants/3.jpg', 30, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0285, 'Silver/Pendants/1.jpg', 'Silver/Pendants/1.jpg', 30, 500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0284, 'Silver/Man Ring/10.jpg', 'Silver/Man Ring/10.jpg', 39, 500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0283, 'Silver/Man Ring/9.jpg', 'Silver/Man Ring/9.jpg', 39, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0280, 'Silver/Man Ring/6.jpg', 'Silver/Man Ring/6.jpg', 39, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0282, 'Silver/Man Ring/8.jpg', 'Silver/Man Ring/8.jpg', 39, 4550.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0278, 'Silver/Man Ring/4.jpg', 'Silver/Man Ring/4.jpg', 39, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0279, 'Silver/Man Ring/5.jpg', 'Silver/Man Ring/5.jpg', 39, 375.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0277, 'Silver/Man Ring/3.jpg', 'Silver/Man Ring/3.jpg', 39, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0276, 'Silver/Man Ring/2.jpg', 'Silver/Man Ring/2.jpg', 39, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0275, 'Silver/Man Ring/1.jpg', 'Silver/Man Ring/1.jpg', 39, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0274, 'Silver/Lady Rings/10.jpg', 'Silver/Lady Rings/10.jpg', 32, 500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0273, 'Silver/Lady Rings/9.jpg', 'Silver/Lady Rings/9.jpg', 32, 4550.00, 'Чистое серебро', 'soon', 0, 0);
INSERT INTO `jewellery` VALUES (0271, 'Silver/Lady Rings/7.jpg', 'Silver/Lady Rings/7.jpg', 32, 375.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0272, 'Silver/Lady Rings/8.jpg', 'Silver/Lady Rings/8.jpg', 32, 4550.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0270, 'Silver/Lady Rings/6.jpg', 'Silver/Lady Rings/6.jpg', 32, 375.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0269, 'Silver/Lady Rings/5.jpg', 'Silver/Lady Rings/5.jpg', 32, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0268, 'Silver/Lady Rings/4.jpg', 'Silver/Lady Rings/4.jpg', 32, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0267, 'Silver/Lady Rings/3.jpg', 'Silver/Lady Rings/3.jpg', 32, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0265, 'Silver/Lady Rings/1.jpg', 'Silver/Lady Rings/1.jpg', 32, 500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0264, 'Silver/Hair Pin/10.jpg', 'Silver/Hair Pin/10.jpg', 25, 1000.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0263, 'Silver/Hair Pin/9.jpg', 'Silver/Hair Pin/9.jpg', 25, 900.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0262, 'Silver/Hair Pin/8.jpg', 'Silver/Hair Pin/8.jpg', 25, 890.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0261, 'Silver/Hair Pin/7.jpg', 'Silver/Hair Pin/7.jpg', 25, 780.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0260, 'Silver/Hair Pin/6.jpg', 'Silver/Hair Pin/6.jpg', 25, 1799.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0258, 'Silver/Hair Pin/4.jpg', 'Silver/Hair Pin/4.jpg', 25, 4550.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0255, 'Silver/Hair Pin/1.jpg', 'Silver/Hair Pin/1.jpg', 25, 1000.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0256, 'Silver/Hair Pin/2.jpg', 'Silver/Hair Pin/2.jpg', 25, 2500.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0254, 'Silver/EarRings/10.jpg', 'Silver/EarRings/10.jpg', 26, 4550.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0253, 'Silver/EarRings/9.jpg', 'Silver/EarRings/9.jpg', 26, 4550.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0251, 'Silver/EarRings/7.jpg', 'Silver/EarRings/7.jpg', 26, 375.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0252, 'Silver/EarRings/8.jpg', 'Silver/EarRings/8.jpg', 26, 375.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0250, 'Silver/EarRings/6.jpg', 'Silver/EarRings/6.jpg', 26, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0249, 'Silver/EarRings/5.jpg', 'Silver/EarRings/5.jpg', 26, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0248, 'Silver/EarRings/4.jpg', 'Silver/EarRings/4.jpg', 26, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0247, 'Silver/EarRings/3.jpg', 'Silver/EarRings/3.jpg', 26, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0246, 'Silver/EarRings/2.jpg', 'Silver/EarRings/2.jpg', 26, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0245, 'Silver/EarRings/1.jpg', 'Silver/EarRings/1.jpg', 26, 500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0244, 'Silver/Cuffilinks/10.jpg', 'Silver/Cuffilinks/10.jpg', 28, 890.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0243, 'Silver/Cuffilinks/9.jpg', 'Silver/Cuffilinks/9.jpg', 28, 1799.00, 'Чистое серебро', 'featured', 4, 0);
INSERT INTO `jewellery` VALUES (0241, 'Silver/Cuffilinks/7.jpg', 'Silver/Cuffilinks/7.jpg', 28, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0242, 'Silver/Cuffilinks/8.jpg', 'Silver/Cuffilinks/8.jpg', 28, 1000.00, 'Чистое серебро', 'featured', 1, 0);
INSERT INTO `jewellery` VALUES (0239, 'Silver/Cuffilinks/5.jpg', 'Silver/Cuffilinks/5.jpg', 28, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0240, 'Silver/Cuffilinks/6.jpg', 'Silver/Cuffilinks/6.jpg', 28, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0238, 'Silver/Cuffilinks/4.jpg', 'Silver/Cuffilinks/4.jpg', 27, 890.00, 'Чистое серебро', 'featured', 6, 3);
INSERT INTO `jewellery` VALUES (0237, 'Silver/Cuffilinks/3.jpg', 'Silver/Cuffilinks/3.jpg', 27, 1799.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0236, 'Silver/Cuffilinks/2.jpg', 'Silver/Cuffilinks/2.jpg', 27, 4550.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0235, 'Silver/Cuffilinks/1.jpg', 'Silver/Cuffilinks/1.jpg', 27, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0234, 'Silver/Chain/10.jpg', 'Silver/Chain/10.jpg', 28, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0233, 'Silver/Chain/9.jpg', 'Silver/Chain/9.jpg', 28, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0232, 'Silver/Chain/8.jpg', 'Silver/Chain/8.jpg', 28, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0231, 'Silver/Chain/7.jpg', 'Silver/Chain/7.jpg', 28, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0230, 'Silver/Chain/6.jpg', 'Silver/Chain/6.jpg', 28, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0229, 'Silver/Chain/5.jpg', 'Silver/Chain/5.jpg', 28, 890.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0228, 'Silver/Chain/4.jpg', 'Silver/Chain/4.jpg', 28, 890.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0227, 'Silver/Chain/3.jpg', 'Silver/Chain/3.jpg', 28, 1799.00, 'Чистое сереброq', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0226, 'Silver/Chain/2.jpg', 'Silver/Chain/2.jpg', 28, 4550.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0225, 'Silver/Chain/1.jpg', 'Silver/Chain/1.jpg', 28, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0224, 'Silver/Bracelet/10.jpg', 'Silver/Bracelet/10.jpg', 23, 890.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0222, 'Silver/Bracelet/8.jpg', 'Silver/Bracelet/8.jpg', 23, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0223, 'Silver/Bracelet/9.jpg', 'Silver/Bracelet/9.jpg', 23, 1799.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0221, 'Silver/Bracelet/7.jpg', 'Silver/Bracelet/7.jpg', 23, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0220, 'Silver/Bracelet/6.jpg', 'Silver/Bracelet/6.jpg', 23, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0219, 'Silver/Bracelet/5.jpg', 'Silver/Bracelet/5.jpg', 23, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0218, 'Silver/Bracelet/4.jpg', 'Silver/Bracelet/4.jpg', 23, 890.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0217, 'Silver/Bracelet/3.jpg', 'Silver/Bracelet/3.jpg', 23, 1799.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0216, 'Silver/Bracelet/2.jpg', 'Silver/Bracelet/2.jpg', 23, 4550.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0215, 'Silver/Bracelet/1.jpg', 'Silver/Bracelet/1.jpg', 23, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0214, 'Silver/Armlets/10.jpg', 'Silver/Armlets/10.jpg', 22, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0213, 'Silver/Armlets/9.jpg', 'Silver/Armlets/9.jpg', 22, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0212, 'Silver/Armlets/8.jpg', 'Silver/Armlets/8.jpg', 22, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0211, 'Silver/Armlets/7.jpg', 'Silver/Armlets/7.jpg', 22, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0210, 'Silver/Armlets/6.jpg', 'Silver/Armlets/6.jpg', 22, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0209, 'Silver/Armlets/5.jpg', 'Silver/Armlets/5.jpg', 22, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0207, 'Silver/Armlets/3.jpg', 'Silver/Armlets/3.jpg', 22, 890.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0208, 'Silver/Armlets/4.jpg', 'Silver/Armlets/4.jpg', 22, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0205, 'Silver/Armlets/1.jpg', 'Silver/Armlets/1.jpg', 22, 4550.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0206, 'Silver/Armlets/2.jpg', 'Silver/Armlets/2.jpg', 22, 1799.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0203, 'Silver/Anklets/9.jpg', 'Silver/Anklets/9.jpg', 21, 2500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0204, 'Silver/Anklets/10.jpg', 'Silver/Anklets/10.jpg', 21, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0194, 'Gold/Man Rings/9.jpg', 'Gold/Man Rings/9.jpg', 36, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0202, 'Silver/Anklets/8.jpg', 'Silver/Anklets/8.jpg', 21, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0196, 'Silver/Anklets/2.jpg', 'Silver/Anklets/2.jpg', 21, 890.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0195, 'Silver/Anklets/1.jpg', 'Silver/Anklets/1.jpg', 21, 500.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0198, 'Silver/Anklets/4.jpg', 'Silver/Anklets/4.jpg', 21, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0197, 'Silver/Anklets/3.jpg', 'Silver/Anklets/3.jpg', 21, 890.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0199, 'Silver/Anklets/5.jpg', 'Silver/Anklets/5.jpg', 21, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0200, 'Silver/Anklets/6.jpg', 'Silver/Anklets/6.jpg', 21, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0185, 'Gold/Lady Rings/10.jpg', 'Gold/Lady Rings/10.jpg', 35, 375.00, 'Белое золото Вес:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0201, 'Silver/Anklets/7.jpg', 'Silver/Anklets/7.jpg', 21, 1000.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0183, 'Gold/Lady Rings/8.jpg', 'Gold/Lady Rings/8.jpg', 35, 2500.00, 'Белое золото Вес:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0184, 'Gold/Lady Rings/9.jpg', 'Gold/Lady Rings/9.jpg', 35, 2500.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0182, 'Gold/Lady Rings/7.jpg', 'Gold/Lady Rings/7.jpg', 35, 2500.00, 'Белое золото Вес: 24', 'featured', 3, 0);
INSERT INTO `jewellery` VALUES (0181, 'Gold/Lady Rings/6.jpg', 'Gold/Lady Rings/6.jpg', 35, 2500.00, 'Белое золото Вес:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0180, 'Gold/Lady Rings/5.jpg', 'Gold/Lady Rings/5.jpg', 35, 2500.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0179, 'Gold/Lady Rings/4.jpg', 'Gold/Lady Rings/4.jpg', 35, 2500.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0178, 'Gold/Lady Rings/3.jpg', 'Gold/Lady Rings/3.jpg', 35, 2500.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0176, 'Gold/Lady Rings/1.jpg', 'Gold/Lady Rings/1.jpg', 35, 1000.00, 'Белое золото Вес: 24 ', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0177, 'Gold/Lady Rings/2.jpg', 'Gold/Lady Rings/2.jpg', 35, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0175, 'Gold/Pendants/10.jpg', 'Gold/Pendants/10.jpg', 16, 2500.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0174, 'Gold/Pendants/9.jpg', 'Gold/Pendants/9.jpg', 16, 2500.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0173, 'Gold/Pendants/8.jpg', 'Gold/Pendants/8.jpg', 16, 2500.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0172, 'Gold/Pendants/7.jpg', 'Gold/Pendants/7.jpg', 16, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0170, 'Gold/Pendants/5.jpg', 'Gold/Pendants/5.jpg', 16, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0171, 'Gold/Pendants/6.jpg', 'Gold/Pendants/6.jpg', 16, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0168, 'Gold/Pendants/3.jpg', 'Gold/Pendants/3.jpg', 16, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0169, 'Gold/Pendants/4.jpg', 'Gold/Pendants/4.jpg', 16, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0167, 'Gold/Pendants/2.jpg', 'Gold/Pendants/2.jpg', 16, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0166, 'Gold/Pendants/1.jpg', 'Gold/Pendants/1.jpg', 16, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0165, 'Gold/Pendant Set/10.jpg', 'Gold/Pendant Set/10.jpg', 15, 375.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0164, 'Gold/Pendant Set/9.jpg', 'Gold/Pendant Set/9.jpg', 15, 0.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0162, 'Gold/Pendant Set/7.jpg', 'Gold/Pendant Set/7.jpg', 15, 375.00, 'Вес золота:24', 'soon', 0, 0);
INSERT INTO `jewellery` VALUES (0163, 'Gold/Pendant Set/8.jpg', 'Gold/Pendant Set/8.jpg', 15, 375.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0161, 'Gold/Pendant Set/6.jpg', 'Gold/Pendant Set/6.jpg', 15, 375.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0159, 'Gold/Pendant Set/4.jpg', 'Gold/Pendant Set/4.jpg', 15, 2500.00, 'Вес золота: 24', 'latest', 1, 0);
INSERT INTO `jewellery` VALUES (0160, 'Gold/Pendant Set/5.jpg', 'Gold/Pendant Set/5.jpg', 15, 2500.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0157, 'Gold/Pendant Set/2.jpg', 'Gold/Pendant Set/2.jpg', 15, 2500.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0158, 'Gold/Pendant Set/3.jpg', 'Gold/Pendant Set/3.jpg', 15, 2500.00, 'Вес золота:24', 'latest', 0, 0);
INSERT INTO `jewellery` VALUES (0156, 'Gold/Pendant Set/1.jpg', 'Gold/Pendant Set/1.jpg', 15, 2500.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0154, 'Gold/Nose Rings/7.jpg', 'Gold/Nose Rings/7.jpg', 14, 780.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0155, 'Gold/Nose Rings/8.jpg', 'Gold/Nose Rings/8.jpg', 14, 890.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0153, 'Gold/Nose Rings/6.jpg', 'Gold/Nose Rings/6.jpg', 14, 1799.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0151, 'Gold/Nose Rings/4.jpg', 'Gold/Nose Rings/4.jpg', 14, 4550.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0152, 'Gold/Nose Rings/5.jpg', 'Gold/Nose Rings/5.jpg', 14, 500.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0149, 'Gold/Nose Rings/2.jpg', 'Gold/Nose Rings/2.jpg', 14, 2500.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0150, 'Gold/Nose Rings/3.jpg', 'Gold/Nose Rings/3.jpg', 14, 375.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0148, 'Gold/Nose Rings/1.jpg', 'Gold/Nose Rings/1.jpg', 14, 1000.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0146, 'Gold/Necklaces/9.jpg', 'Gold/Necklaces/9.jpg', 13, 375.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0147, 'Gold/Necklaces/10.jpg', 'Gold/Necklaces/10.jpg', 13, 375.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0145, 'Gold/Necklaces/8.jpg', 'Gold/Necklaces/8.jpg', 13, 375.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0143, 'Gold/Necklaces/6.jpg', 'Gold/Necklaces/6.jpg', 13, 2500.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0144, 'Gold/Necklaces/7.jpg', 'Gold/Necklaces/7.jpg', 13, 375.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0142, 'Gold/Necklaces/5.jpg', 'Gold/Necklaces/5.jpg', 13, 2500.00, 'Вес золота: 24', 'latest', 2, 1);
INSERT INTO `jewellery` VALUES (0140, 'Gold/Necklaces/3.jpg', 'Gold/Necklaces/3.jpg', 13, 2500.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0141, 'Gold/Necklaces/4.jpg', 'Gold/Necklaces/4.jpg', 13, 2500.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0138, 'Gold/Necklaces/1.jpg', 'Gold/Necklaces/1.jpg', 13, 2500.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0139, 'Gold/Necklaces/2.jpg', 'Gold/Necklaces/2.jpg', 13, 2500.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0137, 'Gold/Mangalsutra/10.jpg', 'Gold/Mangalsutra/10.jpg', 12, 2500.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0135, 'Gold/Mangalsutra/8.jpg', 'Gold/Mangalsutra/8.jpg', 12, 2500.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0136, 'Gold/Mangalsutra/9.jpg', 'Gold/Mangalsutra/9.jpg', 12, 2500.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0134, 'Gold/Mangalsutra/7.jpg', 'Gold/Mangalsutra/7.jpg', 12, 2500.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0133, 'Gold/Mangalsutra/6.jpg', 'Gold/Mangalsutra/6.jpg', 12, 2500.00, 'Вес золота:', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0131, 'Gold/Mangalsutra/4.jpg', 'Gold/Mangalsutra/4.jpg', 12, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0132, 'Gold/Mangalsutra/5.jpg', 'Gold/Mangalsutra/5.jpg', 12, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0129, 'Gold/Mangalsutra/2.jpg', 'Gold/Mangalsutra/2.jpg', 12, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0130, 'Gold/Mangalsutra/3.jpg', 'Gold/Mangalsutra/3.jpg', 12, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0128, 'Gold/Mangalsutra/1.jpg', 'Gold/Mangalsutra/1.jpg', 12, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0126, 'Gold/Mang Tika/9.jpg', 'Gold/Mang Tika/9.jpg', 11, 900.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0127, 'Gold/Mang Tika/10.jpg', 'Gold/Mang Tika/10.jpg', 11, 1000.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0124, 'Gold/Mang Tika/7.jpg', 'Gold/Mang Tika/7.jpg', 11, 780.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0122, 'Gold/Mang Tika/5.jpg', 'Gold/Mang Tika/5.jpg', 11, 500.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0123, 'Gold/Mang Tika/6.jpg', 'Gold/Mang Tika/6.jpg', 11, 1799.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0121, 'Gold/Mang Tika/4.jpg', 'Gold/Mang Tika/4.jpg', 11, 4550.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0119, 'Gold/Mang Tika/2.jpg', 'Gold/Mang Tika/2.jpg', 11, 2500.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0120, 'Gold/Mang Tika/3.jpg', 'Gold/Mang Tika/3.jpg', 11, 375.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0117, 'Gold/Man Rings/8.jpg', 'Gold/Man Rings/8.jpg', 36, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0118, 'Gold/Mang Tika/1.jpg', 'Gold/Mang Tika/1.jpg', 11, 1000.00, '1 Грамм', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0116, 'Gold/Man Rings/7.jpg', 'Gold/Man Rings/7.jpg', 36, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0114, 'Gold/Man Rings/5.jpg', 'Gold/Man Rings/5.jpg', 36, 890.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0115, 'Gold/Man Rings/6.jpg', 'Gold/Man Rings/6.jpg', 36, 900.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0113, 'Gold/Man Rings/4.jpg', 'Gold/Man Rings/4.jpg', 36, 890.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0111, 'Gold/Man Rings/2.jpg', 'Gold/Man Rings/2.jpg', 36, 1799.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0112, 'Gold/Man Rings/3.jpg', 'Gold/Man Rings/3.jpg', 36, 780.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0110, 'Gold/Man Rings/1.jpg', 'Gold/Man Rings/1.jpg', 36, 500.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0108, 'Gold/Lady Rings/9.jpg', 'Gold/Lady Rings/9.jpg', 35, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0109, 'Gold/Lady Rings/10.jpg', 'Gold/Lady Rings/10.jpg', 35, 1000.00, 'Вес золота:24', 'soon', 0, 0);
INSERT INTO `jewellery` VALUES (0107, 'Gold/Lady Rings/8.jpg', 'Gold/Lady Rings/8.jpg', 35, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0106, 'Gold/Lady Rings/7.jpg', 'Gold/Lady Rings/7.jpg', 35, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0104, 'Gold/Lady Rings/5.jpg', 'Gold/Lady Rings/5.jpg', 35, 900.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0105, 'Gold/Lady Rings/6.jpg', 'Gold/Lady Rings/6.jpg', 35, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0103, 'Gold/Lady Rings/4.jpg', 'Gold/Lady Rings/4.jpg', 35, 890.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0102, 'Gold/Lady Rings/3.jpg', 'Gold/Lady Rings/3.jpg', 35, 780.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0100, 'Gold/Lady Rings/1.jpg', 'Gold/Lady Rings/1.jpg', 35, 500.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0101, 'Gold/Lady Rings/2.jpg', 'Gold/Lady Rings/2.jpg', 35, 1799.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0098, 'Gold/Ear Rings/9.jpg', 'Gold/Ear Rings/9.jpg', 10, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0099, 'Gold/Ear Rings/10.jpg', 'Gold/Ear Rings/10.jpg', 10, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0097, 'Gold/Ear Rings/8.jpg', 'Gold/Ear Rings/8.jpg', 10, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0095, 'Gold/Ear Rings/6.jpg', 'Gold/Ear Rings/6.jpg', 10, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0096, 'Gold/Ear Rings/7.jpg', 'Gold/Ear Rings/7.jpg', 10, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0093, 'Gold/Ear Rings/4.jpg', 'Gold/Ear Rings/4.jpg', 10, 780.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0094, 'Gold/Ear Rings/5.jpg', 'Gold/Ear Rings/5.jpg', 10, 900.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0091, 'Gold/Ear Rings/2.jpg', 'Gold/Ear Rings/2.jpg', 10, 1799.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0092, 'Gold/Ear Rings/3.jpg', 'Gold/Ear Rings/3.jpg', 10, 1799.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0090, 'Gold/Ear Rings/1.jpg', 'Gold/Ear Rings/1.jpg', 10, 500.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0088, 'Gold/Bangles/9.jpg', 'Gold/Bangles/9.jpg', 9, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0089, 'Gold/Bangles/10.jpg', 'Gold/Bangles/10.jpg', 9, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0087, 'Gold/Bangles/8.jpg', 'Gold/Bangles/8.jpg', 9, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0082, 'Gold/Bangles/3.jpg', 'Gold/Bangles/3.jpg', 9, 1000.00, 'Вес золота: 24', 'featured', 1, 0);
INSERT INTO `jewellery` VALUES (0086, 'Gold/Bangles/7.jpg', 'Gold/Bangles/7.jpg', 9, 1000.00, 'Вес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0083, 'Gold/Bangles/4.jpg', 'Gold/Bangles/4.jpg', 9, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0084, 'Gold/Bangles/5.jpg', 'Gold/Bangles/5.jpg', 9, 1000.00, 'Вес золота:24', 'featured', 4, 0);
INSERT INTO `jewellery` VALUES (0085, 'Gold/Bangles/6.jpg', 'Gold/Bangles/6.jpg', 9, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0074, 'Diamond/Pendants/8.jpg', 'Diamond/Pendants/8.jpg', 7, 375.00, 'Карат бриллианта:15', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0073, 'Diamond/Pendants/7.jpg', 'Diamond/Pendants/7.jpg', 7, 375.00, 'Карат бриллианта:15\r\n', 'featured', 2, 0);
INSERT INTO `jewellery` VALUES (0071, 'Diamond/Pendants/10.jpg', 'Diamond/Pendants/10.jpg', 7, 2500.00, 'Карат бриллианта:25', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0070, 'Diamond/Pendants/9.jpg', 'Diamond/Pendants/9.jpg', 7, 1000.00, 'Карат бриллианта:15\r\n', 'featured', 8, 0);
INSERT INTO `jewellery` VALUES (0069, 'Diamond/Pendants/6.jpg', 'Diamond/Pendants/6.jpg', 7, 1000.00, 'Карат бриллианта:20\r\n', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0068, 'Diamond/Pendants/5.jpg', 'Diamond/Pendants/5.jpg', 7, 900.00, 'Карат бриллианта:15', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0067, 'Diamond/Pendants/4.jpg', 'Diamond/Pendants/4.jpg', 7, 890.00, 'Карат бриллианта: 12', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0066, 'Diamond/Pendants/3.jpg', 'Diamond/Pendants/3.jpg', 7, 780.00, 'Карат бриллианта:10\r\n', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0065, 'Diamond/Pendants/2.jpg', 'Diamond/Pendants/2.jpg', 7, 1799.00, 'Карат бриллианта:20', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0063, 'Diamond/Pendant Set/10.jpg', 'Diamond/Pendant Set/10.jpg', 6, 1000.00, 'Карат бриллианта:20\r\n', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0062, 'Diamond/Pendant Set/9.jpg', 'Diamond/Pendant Set/9.jpg', 6, 2500.00, 'Карат бриллианта:20', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0061, 'Diamond/Pendant Set/8.jpg', 'Diamond/Pendant Set/8.jpg', 6, 2500.00, 'Карат бриллианта:17', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0060, 'Diamond/Pendant Set/7.jpg', 'Diamond/Pendant Set/7.jpg', 6, 2500.00, 'Карат бриллианта:15', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0059, 'Diamond/Pendant Set/6.jpg', 'Diamond/Pendant Set/6.jpg', 6, 375.00, 'Карат бриллианта:30', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0072, 'Diamond/Pendants/1.jpg', 'Diamond/Pendants/1.jpg', 7, 2500.00, 'Карат бриллианта:15', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0057, 'Diamond/Pendant Set/5.jpg', 'Diamond/Pendant Set/5.jpg', 6, 2500.00, 'Карат бриллианта:15', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0056, 'Diamond/Pendant Set/4.jpg', 'Diamond/Pendant Set/4.jpg', 6, 375.00, 'Карат бриллианта: 25', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0055, 'Diamond/Pendant Set/3.jpg', 'Diamond/Pendant Set/3.jpg', 6, 2500.00, 'Карат бриллианта:10', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0054, 'Diamond/Pendant Set/2.jpg', 'Diamond/Pendant Set/2.jpg', 6, 2500.00, 'Карат бриллианта:15', 'soon', 0, 0);
INSERT INTO `jewellery` VALUES (0053, 'Diamond/Pendant Set/1.jpg', 'Diamond/Pendant Set/1.jpg', 6, 375.00, 'Карат бриллианта:25', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0052, 'Diamond/Nose Pin/10.jpg', 'Diamond/Nose Pin/10.jpg', 4, 1000.00, 'Карат бриллианта:10\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0051, 'Diamond/Nose Pin/9.jpg', 'Diamond/Nose Pin/9.jpg', 4, 900.00, 'Карат бриллианта:9\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0050, 'Diamond/Nose Pin/8.jpg', 'Diamond/Nose Pin/8.jpg', 4, 890.00, 'Карат бриллианта:8\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0049, 'Diamond/Nose Pin/7.jpg', 'Diamond/Nose Pin/7.jpg', 4, 780.00, 'Карат бриллианта:7\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0048, 'Diamond/Nose Pin/6.jpg', 'Diamond/Nose Pin/6.jpg', 4, 1799.00, 'Карат бриллианта:6\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0047, 'Diamond/Nose Pin/5.jpg', 'Diamond/Nose Pin/5.jpg', 4, 500.00, 'Карат бриллианта:5\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0046, 'Diamond/Nose Pin/4.jpg', 'Diamond/Nose Pin/4.jpg', 4, 4550.00, 'Карат бриллианта:4\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0045, 'Diamond/Nose Pin/3.jpg', 'Diamond/Nose Pin/3.jpg', 4, 375.00, 'Карат бриллианта:3\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0044, 'Diamond/Nose Pin/2.jpg', 'Diamond/Nose Pin/2.jpg', 4, 2500.00, 'Карат бриллианта:2\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0043, 'Diamond/Nose Pin/1.jpg', 'Diamond/Nose Pin/1.jpg', 4, 1000.00, 'Карат бриллианта:1\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0042, 'Diamond/Necklaces/7.jpg', 'Diamond/Necklaces/7.jpg', 3, 1000.00, 'Карат бриллианта:16', 'latest', 0, 0);
INSERT INTO `jewellery` VALUES (0041, 'Diamond/Necklaces/6.jpg', 'Diamond/Necklaces/6.jpg', 3, 1000.00, 'Карат бриллианта:15', 'latest', 2, 2);
INSERT INTO `jewellery` VALUES (0040, 'Diamond/Necklaces/5.jpg', 'Diamond/Necklaces/5.jpg', 3, 1000.00, 'Карат бриллианта:13', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0039, 'Diamond/Necklaces/4.jpg', 'Diamond/Necklaces/4.jpg', 3, 1000.00, 'Карат бриллианта:14', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0038, 'Diamond/Necklaces/3.jpg', 'Diamond/Necklaces/3.jpg', 3, 1000.00, 'Карат бриллианта:12', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0037, 'Diamond/Necklaces/2.jpg', 'Diamond/Necklaces/2.jpg', 3, 1000.00, 'Карат бриллианта:15', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0036, 'Diamond/Necklaces/1.jpg', 'Diamond/Necklaces/1.jpg', 3, 1000.00, 'Карат бриллианта:10', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0035, 'Diamond/Lady Ring/10.jpg', 'Diamond/Lady Ring/10.jpg', 8, 375.00, 'Карат бриллианта:14\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0034, 'Diamond/Lady Ring/9.jpg', 'Diamond/Lady Ring/9.jpg', 8, 2500.00, 'Карат бриллианта:19\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0033, 'Diamond/Lady Ring/8.jpg', 'Diamond/Lady Ring/8.jpg', 8, 2500.00, 'Карат бриллианта: 10\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0032, 'Diamond/Lady Ring/7.jpg', 'Diamond/Lady Ring/7.jpg', 8, 2500.00, 'Карат бриллианта:20\r\nВес золота: 24', 'latest', 0, 0);
INSERT INTO `jewellery` VALUES (0031, 'Diamond/Lady Ring/6.jpg', 'Diamond/Lady Ring/6.jpg', 8, 2500.00, 'Карат бриллианта:20\r\nВес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0030, 'Diamond/Lady Ring/5.jpg', 'Diamond/Lady Ring/5.jpg', 8, 1000.00, 'Карат бриллианта:18\r\nВес золота: 24', 'featured', 2, 0);
INSERT INTO `jewellery` VALUES (0029, 'Diamond/Lady Ring/4.jpg', 'Diamond/Lady Ring/4.jpg', 8, 1000.00, 'Карат бриллианта:14\r\nВес золота:24', 'latest', 0, 0);
INSERT INTO `jewellery` VALUES (0028, 'Diamond/Lady Ring/3.jpg', 'Diamond/Lady Ring/3.jpg', 8, 1000.00, 'Карат бриллианта:12\r\nВес золота: 24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0027, 'Diamond/Lady Ring/2.jpg', 'Diamond/Lady Ring/2.jpg', 8, 1000.00, 'Карат бриллианта:10\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0026, 'Diamond/Lady Ring/1.jpg', 'Diamond/Lady Ring/1.jpg', 8, 1000.00, 'Карат бриллианта:20', 'latest', 10, 14);
INSERT INTO `jewellery` VALUES (0076, 'Gold/Bangles/1.jpg', 'Gold/Bangles/1.jpg', 9, 1000.00, 'Вес золота:24', 'soon', 0, 0);
INSERT INTO `jewellery` VALUES (0077, 'Gold/Bangles/2.jpg', 'Gold/Bangles/2.jpg', 9, 1000.00, 'Вес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0023, 'Diamond/EarRings/9.jpg', 'Diamond/EarRings/9.jpg', 2, 1000.00, 'Карат бриллианта:16\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0022, 'Diamond/EarRings/8.jpg', 'Diamond/EarRings/8.jpg', 2, 2500.00, 'Карат бриллианта:10\r\nВес золота:24', 'latest', 0, 0);
INSERT INTO `jewellery` VALUES (0021, 'Diamond/EarRings/7.jpg', 'Diamond/EarRings/7.jpg', 2, 2500.00, 'Карат бриллианта:5\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0020, 'Diamond/EarRings/6.jpg', 'Diamond/EarRings/6.jpg', 2, 2500.00, 'Карат бриллианта:20\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0019, 'Diamond/EarRings/5.jpg', 'Diamond/EarRings/5.jpg', 2, 1000.00, 'Карат бриллианта:18\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0018, 'Diamond/EarRings/4.jpg', 'Diamond/EarRings/4.jpg', 2, 1000.00, 'Карат бриллианта:16\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0017, 'Diamond/EarRings/3.jpg', 'Diamond/EarRings/3.jpg', 2, 1000.00, 'Карат бриллианта:14\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0016, 'Diamond/EarRings/2.jpg', 'Diamond/EarRings/2.jpg', 2, 1000.00, 'Карат бриллианта:12\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0015, 'Diamond/EarRings/1.jpg', 'Diamond/EarRings/1.jpg', 2, 1000.00, 'Карат бриллианта:10\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0011, 'Diamond/Bangles/11.jpg', 'Diamond/Bangles/11.jpg', 1, 1000.00, 'Карат бриллианта:20', 'soon', 0, 0);
INSERT INTO `jewellery` VALUES (0010, 'Diamond/Bangles/10.jpg', 'Diamond/Bangles/10.jpg', 1, 1000.00, 'Карат бриллианта:25\r\n', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0009, 'Diamond/Bangles/9.jpg', 'Diamond/Bangles/9.jpg', 1, 1000.00, 'Карат бриллианта:25\r\n', 'featured', 1, 1);
INSERT INTO `jewellery` VALUES (0008, 'Diamond/Bangles/8.jpg', 'Diamond/Bangles/8.jpg', 1, 1000.00, 'Карат бриллианта:20\r\nВес золота:24', 'featured', 1, 5);
INSERT INTO `jewellery` VALUES (0007, 'Diamond/Bangles/7.jpg', 'Diamond/Bangles/7.jpg', 1, 1000.00, 'Карат бриллианта:10\r\n', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0006, 'Diamond/Bangles/6.jpg', 'Diamond/Bangles/6.jpg', 1, 1000.00, 'Карат бриллианта:10\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0005, 'Diamond/Bangles/5.jpg', 'Diamond/Bangles/5.jpg', 1, 1000.00, 'Карат бриллианта:20\r\nВес золота:24', 'soon', 1, 1);
INSERT INTO `jewellery` VALUES (0004, 'Diamond/Bangles/4.jpg', 'Diamond/Bangles/4.jpg', 1, 1000.00, 'Карат бриллианта:15\r\n', 'featured', 2, 7);
INSERT INTO `jewellery` VALUES (0003, 'Diamond/Bangles/3.jpg', 'Diamond/Bangles/3.jpg', 1, 1000.00, 'Карат бриллианта:15\r\nВес золота:24', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0002, 'Diamond/Bangles/2.jpg', 'Diamond/Bangles/2.jpg', 1, 1000.00, 'Карат бриллианта:20\r\n\r\n', 'featured', 13, 27);
INSERT INTO `jewellery` VALUES (0001, 'Diamond/Bangles/1.jpg', 'Diamond/Bangles/1.jpg', 1, 1000.00, 'Карат бриллианта:20\r\n\r\n', 'latest', 14, 33);
INSERT INTO `jewellery` VALUES (0310, 'Silver/Toe Ring/6.jpg', 'Silver/Toe Ring/6.jpg', 40, 1799.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0311, 'Silver/Toe Ring/7.jpg', 'Silver/Toe Ring/7.jpg', 40, 780.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0312, 'Silver/Toe Ring/8.jpg', 'Silver/Toe Ring/8.jpg', 40, 890.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0313, 'Silver/Toe Ring/9.jpg', 'Silver/Toe Ring/9.jpg', 40, 900.00, 'Чистое серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0315, 'Silver/Brooches/1.jpg', 'Silver/Brooches/1.jpg', 24, 1000.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0316, 'Silver/Brooches/2.jpg', 'Silver/Brooches/2.jpg', 24, 2500.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0317, 'Silver/Brooches/3.jpg', 'Silver/Brooches/3.jpg', 24, 375.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0318, 'Silver/Brooches/4.jpg', 'Silver/Brooches/4.jpg', 24, 4550.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0319, 'Silver/Brooches/5.jpg', 'Silver/Brooches/5.jpg', 24, 500.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0320, 'Silver/Brooches/6.jpg', 'Silver/Brooches/6.jpg', 24, 1799.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0321, 'Silver/Brooches/7.jpg', 'Silver/Brooches/7.jpg', 24, 780.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0322, 'Silver/Brooches/8.jpg', 'Silver/Brooches/8.jpg', 24, 890.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0323, 'Silver/Brooches/9.jpg', 'Silver/Brooches/9.jpg', 24, 900.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0324, 'Silver/Brooches/10.jpg', 'Silver/Brooches/10.jpg', 24, 1000.00, 'Серебро', 'featured', 0, 0);
INSERT INTO `jewellery` VALUES (0327, '????', '??????????.png', 1, 1000.00, 'Красивый браслет', '4', 1, 0);
INSERT INTO `jewellery` VALUES (0328, '??????', 'C:\\Users\\Desktop\\??????????.png', 1, 100.00, 'Ntwwegeghehh', '2', 1, 0);

-- ----------------------------
-- Table structure for main_menu
-- ----------------------------
DROP TABLE IF EXISTS `main_menu`;
CREATE TABLE `main_menu`  (
  `mmenu_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `mmenu_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mmenu_link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`mmenu_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_menu
-- ----------------------------
INSERT INTO `main_menu` VALUES (0001, 'О нас', 'about.php');
INSERT INTO `main_menu` VALUES (0002, 'Связь', 'contact.php');
INSERT INTO `main_menu` VALUES (0003, 'Золото', 'javascript:void(0)');
INSERT INTO `main_menu` VALUES (0004, 'Серебро', 'javascript:void(0)');
INSERT INTO `main_menu` VALUES (0005, 'Изделия с бриллиантами', 'javascript:void(0)');
INSERT INTO `main_menu` VALUES (0006, 'Рекомендации', 'featured.php');
INSERT INTO `main_menu` VALUES (0007, 'Новинки', 'latest.php');
INSERT INTO `main_menu` VALUES (0008, 'Топ товаров', 'javascript:void(0)');

-- ----------------------------
-- Table structure for sub_menu
-- ----------------------------
DROP TABLE IF EXISTS `sub_menu`;
CREATE TABLE `sub_menu`  (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `mmenu_id` int(4) NOT NULL DEFAULT 375,
  `smenu_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `smenu_link` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'viewproduct.php',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_menu
-- ----------------------------
INSERT INTO `sub_menu` VALUES (0001, 5, 'Браслеты', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0002, 5, 'Серьги', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0003, 5, 'Ожерелья', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0004, 5, 'Гвоздики для носа', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0005, 5, 'Набор подвесок', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0006, 5, 'Подвески', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0007, 5, 'Женские кольца', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0008, 3, 'Браслеты', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0009, 3, 'Серьги', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0010, 3, 'Индийские украшения', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0011, 3, 'Мангала-сутра', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0012, 3, 'Ожерелья', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0013, 3, 'Серьги для носа', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0014, 3, 'Набор подвесок', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0015, 3, 'Подвески', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0016, 4, 'Браслеты на ногу', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0017, 4, 'Браслеты', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0018, 4, 'Браслеты', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0019, 4, 'Броши', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0020, 4, 'Заколка для волос', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0021, 4, 'Серьги', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0022, 4, 'Запонки', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0023, 4, 'Цепи', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0024, 4, 'Мужские кольца', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0025, 4, 'Подвески', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0026, 4, 'Набор подвесок', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0027, 4, 'Женские кольца', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0028, 3, 'Женские кольца', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0029, 3, 'Мужские кольца', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0030, 4, 'Кольца для пальцев ног', 'viewproduct.php');
INSERT INTO `sub_menu` VALUES (0031, 8, 'Просмотры', 'topviewed.php');
INSERT INTO `sub_menu` VALUES (0032, 8, 'Топ продаж', 'topsell.php');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `surname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` int(8) NOT NULL,
  `ac_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'user',
  `user_status` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (0001, 'BB Jewellery', 'Online Store', 'Admin', '12345', 'admin@bbjewels.com', 'Montagne Blanche', 54954491, 'Administrator', 0);
INSERT INTO `users` VALUES (0002, 'Nadeem', 'Goolamhossen', 'Nadeem', '12345', 'nadeem05786@yahoo.com', 'Montagne Blanche', 54954491, 'user', 1);
INSERT INTO `users` VALUES (0003, 'имя', 'фам', 'карк', 'Безымянный', 'Qwerty1@gmail.com', 'упупупу', 52345678, 'user', 1);
INSERT INTO `users` VALUES (0004, 'им', 'фам', 'логин', 'логин', 'упупупупуп@ergege.com', 'пуркрукуур', 54854894, 'user', 1);

-- ----------------------------
-- Table structure for webcontent
-- ----------------------------
DROP TABLE IF EXISTS `webcontent`;
CREATE TABLE `webcontent`  (
  `content_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `webpage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`content_id`) USING BTREE,
  UNIQUE INDEX `webpage`(`webpage`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webcontent
-- ----------------------------
INSERT INTO `webcontent` VALUES (0001, 'Интернет-магазин BB Jewellery имеет более чем 35-летний опыт работы с ювелирными изделиями, такими как золото, серебро и бриллианты.', 'about');

SET FOREIGN_KEY_CHECKS = 1;
