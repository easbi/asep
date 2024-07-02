/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : sim_stela

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 02/07/2024 15:32:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for m_petugas
-- ----------------------------
DROP TABLE IF EXISTS `m_petugas`;
CREATE TABLE `m_petugas`  (
  `id` int NOT NULL,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jabatan` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_petugas
-- ----------------------------
INSERT INTO `m_petugas` VALUES (2, 'Rika Asmara', 'PPL');
INSERT INTO `m_petugas` VALUES (9, 'Helmi Suryani', 'PPL');
INSERT INTO `m_petugas` VALUES (11, 'Lidia Nova', 'PPL');
INSERT INTO `m_petugas` VALUES (12, 'Desri Yenti', 'PPL');
INSERT INTO `m_petugas` VALUES (14, 'Yusniar', 'PPL');
INSERT INTO `m_petugas` VALUES (16, 'Desi Fitriani', 'PPL');
INSERT INTO `m_petugas` VALUES (17, 'Betsiyria Fransisca', 'PPL');
INSERT INTO `m_petugas` VALUES (18, 'Elsa Novaria', 'PPL');
INSERT INTO `m_petugas` VALUES (19, 'Sri Rahayu', 'PPL');
INSERT INTO `m_petugas` VALUES (20, 'Indah Purnama Tiska', 'PPL');
INSERT INTO `m_petugas` VALUES (22, 'Rice Oktavia', 'PPL');
INSERT INTO `m_petugas` VALUES (23, 'Intan Maulina', 'PPL');
INSERT INTO `m_petugas` VALUES (24, 'Rifanda Kurnia Sari', 'PPL');
INSERT INTO `m_petugas` VALUES (25, 'Fitri Ananda, S.Si', 'PML');
INSERT INTO `m_petugas` VALUES (26, 'Lina Ferdianty Lubis, SST', 'PML');
INSERT INTO `m_petugas` VALUES (28, 'Dwithia Handriani, SST', 'PML');
INSERT INTO `m_petugas` VALUES (30, 'Easbi Ikhsan, S.Tr.Stat.', 'PML');
INSERT INTO `m_petugas` VALUES (29, 'Zaky Imadudin Salam', 'PML');
INSERT INTO `m_petugas` VALUES (31, 'Rizal Andreanto', 'Olah');
INSERT INTO `m_petugas` VALUES (32, 'Rafika Tusholeha ', 'Olah');
INSERT INTO `m_petugas` VALUES (33, 'Syafni yolandari ', 'Olah');
INSERT INTO `m_petugas` VALUES (34, 'Riki hidayat ', 'Olah');

SET FOREIGN_KEY_CHECKS = 1;
