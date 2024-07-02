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

 Date: 02/07/2024 15:31:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `current_team_id` bigint UNSIGNED NULL DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 'Rika Asmara', 'asmararika@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PPL', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (9, 'Helmi Suryani', 'helmi@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PPL', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (11, 'Lidia Nova', 'widiaa2018@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PPL', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (12, 'Desri Yenti', 'desriyenti48@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PPL', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (14, 'Yusniar', 'yusniaryus2010@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PPL', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (16, 'Desi Fitriani', 'desif@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PPL', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (17, 'Betsiyria Fransisca', 'betsiyria@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PPL', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (18, 'Elsa Novaria', 'elsanovaria1184@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PPL', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (19, 'Sri Rahayu', 'sr594182@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PPL', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (20, 'Indah Purnama Tiska', 'indahpurn@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PPL', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (22, 'Rice Oktavia', 'riceoktavia68@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PPL', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (23, 'Intan Maulina', 'intanmaulina@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PPL', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (24, 'Rifanda Kurnia Sari', 'rifanda@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PPL', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (25, 'Fitri Ananda, S.Si', 'fitri.ananda@bps.go.id', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'KOSEKA', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (26, 'Lina Ferdianty Lubis, SST', 'linafer@bps.go.id', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'KOSEKA', '1', NULL, NULL, 't3RvSJIjGaSPvuSYRGty86jhN60uK591XQqikpzYctRVry35Bqx5ONz8yOs0', NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (28, 'Dwithia Handriani, SST', 'dhandriani@bps.go.id', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PML', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (30, 'Easbi Ikhsan, S.Tr.Stat.', 'easbi@bps.go.id', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PML', '1', NULL, NULL, '51UCdc1WAOZ6gnKVlTj7GoymKPdYTG2jRTEAiAV8Dckh83r9WckPJAwtxMjh', NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (31, 'Zaky Imadudin Salam', 'zakyimad@bps.go.id', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'PML', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (33, 'Riki Hidayat', 'arasmode@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'Pengentri', NULL, NULL, NULL, 'nW19KzefyRBINiXPfNSQ64tjK6F2GNumygDpwSZl1rWwInz899dQzvsG6nut', NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (34, 'Rafika Tusholeha', 'rafikasoleha@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'Edcod', NULL, NULL, NULL, 'bUFVb1ATawtcyNMsXXGQUa7IWchQfpi72AabqKsWMEWLLvKbkl3TRXFpVkey', NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (35, 'Syafni Yolandari', 'syafniyolandari@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'Pengentri', NULL, NULL, NULL, '9IegGRIAMq6BbSURT8mkV2Rk7q6QrOde7STOtUSqsiQw1tsVw2I53amjqeUi', NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (39, 'Rizal Andreanto', 'Rizalandreanto9@gmail.com', NULL, '$2y$10$OYyUaNzh8rRPOGt8HbZkvO9hTehiL8lWgeiU1LcFUlKz1tIcGZHDa', 'Pengentri', NULL, NULL, NULL, 'Z2sz48tgiNPrMZg1EvACoWez9e0ZdEGvLjM5vvCSW7whVb3RJT4TkDNI0TQ7', NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (40, 'fitria', 'fitria@gmail.com', NULL, '$2y$10$YPMBuPk7FXrsNS1Oz4Y8MeVMfWyB0Du.nNhwKwR6dh9R2P1TlR.AO', 'PML', '1', NULL, NULL, 'GwNu2sc0bssElU3w5PfN5cMwTh7Xq4cEhRaIiFDVRT2YdXRpVgeHQBbQfBWx', NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');
INSERT INTO `users` VALUES (41, 'fitria entri', 'fitriappl@gmail.com', NULL, '$2y$10$YPMBuPk7FXrsNS1Oz4Y8MeVMfWyB0Du.nNhwKwR6dh9R2P1TlR.AO', 'Pengentri', '1', NULL, NULL, NULL, NULL, NULL, '2024-07-01 13:58:34', '2024-07-01 13:58:34');

SET FOREIGN_KEY_CHECKS = 1;
