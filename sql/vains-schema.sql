-- MySQL dump 10.13  Distrib 5.7.30, for el7 (x86_64)
--
-- Host: localhost    Database: vains-auth
-- ------------------------------------------------------
-- Server version	5.7.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oauth2_authorization`
--
CREATE
DATABASE `vains-auth` default character set utf8mb4 collate utf8mb4_bin;
USE
`vains-auth`;

/*Table structure for table `oauth2_authorization` */

DROP TABLE IF EXISTS `oauth2_authorization`;

CREATE TABLE `oauth2_authorization`
(
    `id`                            varchar(100) COLLATE utf8mb4_bin NOT NULL,
    `registered_client_id`          varchar(100) COLLATE utf8mb4_bin NOT NULL,
    `principal_name`                varchar(200) COLLATE utf8mb4_bin NOT NULL,
    `authorization_grant_type`      varchar(100) COLLATE utf8mb4_bin NOT NULL,
    `attributes`                    text COLLATE utf8mb4_bin,
    `state`                         varchar(500) COLLATE utf8mb4_bin  DEFAULT NULL,
    `authorization_code_value`      blob,
    `authorization_code_issued_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `authorization_code_expires_at` datetime                          DEFAULT NULL,
    `authorization_code_metadata`   varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL,
    `access_token_value`            blob,
    `access_token_issued_at`        datetime                          DEFAULT CURRENT_TIMESTAMP,
    `access_token_expires_at`       datetime                          DEFAULT NULL,
    `access_token_metadata`         varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL,
    `access_token_type`             varchar(100) COLLATE utf8mb4_bin  DEFAULT NULL,
    `access_token_scopes`           varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
    `oidc_id_token_value`           blob,
    `oidc_id_token_issued_at`       datetime                          DEFAULT NULL,
    `oidc_id_token_expires_at`      datetime                          DEFAULT NULL,
    `oidc_id_token_metadata`        varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL,
    `refresh_token_value`           blob,
    `refresh_token_issued_at`       datetime                          DEFAULT NULL,
    `refresh_token_expires_at`      datetime                          DEFAULT NULL,
    `refresh_token_metadata`        varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

DROP TABLE IF EXISTS `oauth2_authorization_consent`;

CREATE TABLE `oauth2_authorization_consent`
(
    `registered_client_id` varchar(100) COLLATE utf8mb4_bin  NOT NULL,
    `principal_name`       varchar(200) COLLATE utf8mb4_bin  NOT NULL,
    `authorities`          varchar(1000) COLLATE utf8mb4_bin NOT NULL,
    PRIMARY KEY (`registered_client_id`, `principal_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Table structure for table `oauth2_registered_client` */

DROP TABLE IF EXISTS `oauth2_registered_client`;

CREATE TABLE `oauth2_registered_client`
(
    `id`                            varchar(100) COLLATE utf8mb4_bin  NOT NULL COMMENT '客户端主键id',
    `client_id`                     varchar(100) COLLATE utf8mb4_bin  NOT NULL COMMENT '客户端id',
    `client_id_issued_at`           timestamp                         NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '客户端签发时间',
    `client_secret`                 varchar(200) COLLATE utf8mb4_bin           DEFAULT NULL COMMENT '客户端加密后的秘钥',
    `client_secret_expires_at`      datetime                                   DEFAULT NULL COMMENT '客户端秘钥过期时间',
    `client_name`                   varchar(200) COLLATE utf8mb4_bin  NOT NULL COMMENT '客户端名称',
    `client_profile`                varchar(1000) COLLATE utf8mb4_bin          DEFAULT NULL COMMENT '客户端头像',
    `client_authentication_methods` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '认证客户端的方式',
    `authorization_grant_types`     varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '客户端支持的认证方式',
    `redirect_uris`                 varchar(1000) COLLATE utf8mb4_bin          DEFAULT NULL COMMENT '回调地址',
    `scopes`                        varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '客户端权限范围',
    `client_settings`               varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '客户端设置',
    `token_settings`                varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT 'Token设置',
    `copy_secret`                   varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '客户端秘钥对称加密值',
    `deleted`                       tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已删除 0-未删除，1-已删除',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `oauth2_registered_client` */

LOCK
TABLES `oauth2_registered_client` WRITE;

insert into `oauth2_registered_client`(`id`, `client_id`, `client_id_issued_at`, `client_secret`,
                                       `client_secret_expires_at`, `client_name`, `client_profile`,
                                       `client_authentication_methods`, `authorization_grant_types`, `redirect_uris`,
                                       `scopes`, `client_settings`, `token_settings`, `copy_secret`, `deleted`)
values ('1590229351105421314', 'cd75a69ac1e9bc4d88cb6c0c0c91ac46', '2022-11-09 06:28:42',
        '$2a$10$UPaiLCYhQg2E0/oVl8wOpuAPqn7I/eIvSMykFPP5JZejB1DdL33kq', NULL, '测试客户端01',
        'http://k7fsqkhtbx.cdhttp.cn/system/files/1590229217885917186.jpeg', 'client_secret_basic',
        'refresh_token,client_credentials,authorization_code',
        'http://127.0.0.1:3000/vains3-admin-template-ts/loginRedirect', 'read',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.client.require-proof-key\":false,\"settings.client.require-authorization-consent\":true}',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.token.reuse-refresh-tokens\":true,\"settings.token.id-token-signature-algorithm\":[\"org.springframework.security.oauth2.jose.jws.SignatureAlgorithm\",\"RS256\"],\"settings.token.access-token-time-to-live\":[\"java.time.Duration\",7200.000000000],\"settings.token.refresh-token-time-to-live\":[\"java.time.Duration\",604800.000000000]}',
        'rwpZhcBsSbr0XD+6v6lSw+VFbWfu5OWklGyiy3szLJ52DUXE+1SqblddxFGcg8bfz/oyvdBylSeA0l2nkuTCzw==', 0),

       ('1590230761045876737', '5fd174c3e0f4de4df5e8462e6087c8a3', '2022-11-09 06:34:19',
        '$2a$10$S2A1AE/xoSTbe8j./NaGq.zgMBuketsZyaGT5hMzwWVhnXR0Wfxm.', NULL, '测试客户端02',
        'http://k7fsqkhtbx.cdhttp.cn/system/files/1590230747930267649.jpg', 'client_secret_post,client_secret_basic',
        'refresh_token,client_credentials,authorization_code',
        'http://127.0.0.1:3000/vains3-admin-template-ts/loginRedirect', 'read',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.client.require-proof-key\":false,\"settings.client.require-authorization-consent\":true}',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.token.reuse-refresh-tokens\":true,\"settings.token.id-token-signature-algorithm\":[\"org.springframework.security.oauth2.jose.jws.SignatureAlgorithm\",\"RS256\"],\"settings.token.access-token-time-to-live\":[\"java.time.Duration\",7200.000000000],\"settings.token.refresh-token-time-to-live\":[\"java.time.Duration\",604800.000000000]}',
        '0jUU8dzsM3q0uIxzEZPZ7Mu83Ex8T5a6udnwlu4zbJdE+HLW3HBosrsnlDNIIuF3Mi2WweAlk3xujyvYRawwIg==', 0),

       ('3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', '2021-12-17 06:15:32',
        '$2a$10$8dVhMnIJQxDUi6PKKhgy8O9AE5dPmb/SQaO7rJulnn701IOoPAyO6', NULL, '超级号',
        'https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png',
        'client_secret_basic', 'client_credentials,authorization_code,refresh_token',
        'http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc,http://127.0.0.1:5100/login/oauth2/code/admin-oidc,http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc,http://vains-sofia.gitee.io/vains3-admin-template-ts/loginRedirect,http://127.0.0.1:3000/vains3-admin-template-ts/loginRedirect,http://192.168.4.88:3000/vains3-admin-template-ts/loginRedirect',
        'user.photos,user.userInfo,all',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.client.require-proof-key\":false,\"settings.client.require-authorization-consent\":true}',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.token.reuse-refresh-tokens\":true,\"settings.token.id-token-signature-algorithm\":[\"org.springframework.security.oauth2.jose.jws.SignatureAlgorithm\",\"RS256\"],\"settings.token.access-token-time-to-live\":[\"java.time.Duration\",7200.000000000],\"settings.token.refresh-token-time-to-live\":[\"java.time.Duration\",604800.000000000]}',
        '', 0),

       ('3c431544-6bd5-4c2e-ab4c-76b159d73996', 'gateway', '2021-12-17 06:15:32',
        '$2a$10$yLDXAI9F4XFCSq5/p2Et4OPZPlyURjCcD.m72dv0MPNMi6qfIOHWO', NULL, '网关',
        'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 'client_secret_basic',
        'refresh_token,client_credentials,authorization_code',
        'http://k7fsqkhtbx.cdhttp.cn/code/redirect,http://f72e1293a051.c.methodot.com:33184/code/redirect,http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/gateway-oidc,http://127.0.0.1:5100/code/redirect',
        'user.photos,user.userInfo,all',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.client.require-proof-key\":false,\"settings.client.require-authorization-consent\":true}',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.token.reuse-refresh-tokens\":true,\"settings.token.id-token-signature-algorithm\":[\"org.springframework.security.oauth2.jose.jws.SignatureAlgorithm\",\"RS256\"],\"settings.token.access-token-time-to-live\":[\"java.time.Duration\",7200.000000000],\"settings.token.refresh-token-time-to-live\":[\"java.time.Duration\",604800.000000000]}',
        '', 0),

       ('3c431544-6bd5-4c2e-ab4c-76b159d73997', 'swagger', '2022-05-16 06:15:32',
        '$2a$10$yLDXAI9F4XFCSq5/p2Et4OPZPlyURjCcD.m72dv0MPNMi6qfIOHWO', NULL, 'Swagger UI',
        'http://k7fsqkhtbx.cdhttp.cn/system/files/1588425772870770690.jpg', 'client_secret_post,client_secret_basic',
        'refresh_token,client_credentials,authorization_code',
        'http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html', 'all',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.client.require-proof-key\":false,\"settings.client.require-authorization-consent\":true}',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.token.reuse-refresh-tokens\":true,\"settings.token.id-token-signature-algorithm\":[\"org.springframework.security.oauth2.jose.jws.SignatureAlgorithm\",\"RS256\"],\"settings.token.access-token-time-to-live\":[\"java.time.Duration\",7200.000000000],\"settings.token.refresh-token-time-to-live\":[\"java.time.Duration\",604800.000000000]}',
        '', 0);

UNLOCK
TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-26  1:29:15



-- MySQL dump 10.13  Distrib 5.7.30, for el7 (x86_64)
--
-- Host: localhost    Database: vains-system
-- ------------------------------------------------------
-- Server version	5.7.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sys_menu`
--
CREATE
DATABASE `vains-system` default character set utf8mb4 collate utf8mb4_bin;
USE
`vains-system`;
DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu`
(
    `id`             int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单自增ID',
    `name`           varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '菜单名称',
    `menu_pid`       int(11) NOT NULL COMMENT '父菜单ID',
    `url`            varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '跳转URL',
    `icon`           varchar(45) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图标',
    `icon_color`     varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图标颜色',
    `sort`           tinyint(4) DEFAULT NULL COMMENT '排序',
    `type`           tinyint(4) NOT NULL COMMENT '0:菜单,1:按钮,2:Api接口,3:其它',
    `deleted`        tinyint(1) NOT NULL COMMENT '0:启用,1:删除',
    `create_time`    datetime                        NOT NULL COMMENT '创建时间',
    `create_user_id` int(11) NOT NULL COMMENT '创建人',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='系统菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK
TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu`
VALUES (1, '系统管理', 0, '/system', 'operation', '', 0, 0, 0, '2022-03-25 23:52:03', 1);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role`
(
    `id`             int(11) NOT NULL AUTO_INCREMENT COMMENT '角色自增ID',
    `role_name`      varchar(16) NOT NULL COMMENT '角色名',
    `deleted`        tinyint(1) DEFAULT NULL COMMENT '0:启用,1:删除',
    `sort`           int(11) DEFAULT NULL COMMENT '排序',
    `create_time`    datetime    NOT NULL COMMENT '创建时间',
    `create_user_id` int(11) NOT NULL COMMENT '创建人',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK
TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role`
VALUES (1, '管理员', 0, 0, '2022-03-25 23:51:04', 1);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT COMMENT '角色菜单关联表自增ID',
    `role_id` int(11) NOT NULL COMMENT '角色ID',
    `menu_id` int(11) NOT NULL COMMENT '菜单ID',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色菜单多对多关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK
TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu`
VALUES (1, 1, 1);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user`
(
    `id`          int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `username`    varchar(64) COLLATE utf8mb4_bin  DEFAULT NULL COMMENT '账号',
    `password`    varchar(64) COLLATE utf8mb4_bin  DEFAULT NULL COMMENT '密码',
    `non_expired` tinyint(1) DEFAULT '1' COMMENT '是否未过期',
    `non_locked`  tinyint(1) DEFAULT '1' COMMENT '是否未锁定',
    `deleted`     tinyint(1) DEFAULT '0' COMMENT '是否启用',
    `nick_name`   varchar(64) COLLATE utf8mb4_bin  DEFAULT NULL COMMENT '用户名称',
    `phone`       varchar(11) COLLATE utf8mb4_bin  DEFAULT NULL COMMENT '用户手机号',
    `email`       varchar(32) COLLATE utf8mb4_bin  DEFAULT NULL COMMENT '用户邮箱',
    `avatar`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像',
    `sex`         int(1) DEFAULT NULL COMMENT '0-男 1-女 2-未知',
    `create_time` datetime                         DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime                         DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK
TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user`
VALUES (1, '123', '$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K', 1, 1, 0, '云逸', '17683906999',
        '17683906999@163.com', '头像', 0, '2022-01-10 23:35:34', '2022-05-14 16:52:14'),
       (2, 'admin', '$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K', 1, 1, 0, '天玺', '17683906998',
        '17683906998@163.com', '头像', 0, '2022-01-10 23:35:34', '2022-04-05 12:12:46'),
       (3, '1001', '$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K', 1, 1, 0, '测试账号01', '17683906992',
        '17683906992@163.com', NULL, 1, '2022-04-05 01:20:20', '2022-05-18 09:24:25'),
       (4, '1002', '$2a$10$2YXwEU3grzTD2FHrUZhhcugG3EJpXstbZU5x5LSQooXKetbYbIluq', 1, 1, 0, '测试账号02', '17683906993',
        '17683906993@163.com', NULL, 2, '2022-04-05 01:25:31', '2022-04-05 12:13:11'),
       (5, '1003', '$2a$10$Ny6YG3BZygFWbYvFFWOyPuhkVVuDFZr9drxdIKg7ahPlxpmaGdeTO', 1, 1, 0, '测试账号03', '17683906995',
        '17683906995@163.com', NULL, 1, '2022-04-05 01:30:36', '2022-04-05 19:51:50'),
       (6, '1005', '$2a$10$AOwBL9ceDhtlucvkBL02vuntkSjqdglscrDvr9NSM1JpfUqHk0eeG', 1, 1, 0, '测试账号05', '17683906996',
        '17683906996@163.com', NULL, 2, '2022-04-05 01:35:42', '2022-04-05 12:13:05');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT,
    `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
    `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK
TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role`
VALUES (1, 1, 1);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK
TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-26  1:30:20

-- MySQL dump 10.13  Distrib 5.7.30, for el7 (x86_64)
--
-- Host: localhost    Database: vains-search
-- ------------------------------------------------------
-- Server version	5.7.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `synonym`
--
CREATE
DATABASE `vains-search` default character set utf8mb4 collate utf8mb4_bin;
USE
`vains-search`;
DROP TABLE IF EXISTS `synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synonym`
(
    `id`          int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `words`       text COLLATE utf8_bin COMMENT '同义词',
    `last_modify` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synonym`
--

LOCK
TABLES `synonym` WRITE;
/*!40000 ALTER TABLE `synonym` DISABLE KEYS */;
INSERT INTO `synonym`
VALUES (1, '西红柿,番茄,洋柿子', '2022-01-05 08:48:24');
/*!40000 ALTER TABLE `synonym` ENABLE KEYS */;
UNLOCK
TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-26  1:30:07


-- MySQL dump 10.13  Distrib 5.7.30, for el7 (x86_64)
--
-- Host: localhost    Database: vains-flowable
-- ------------------------------------------------------
-- Server version	5.7.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `act_app_appdef`
--

CREATE
DATABASE `vains-flowable` default character set utf8mb4 collate utf8mb4_bin;
USE
`vains-flowable`;

DROP TABLE IF EXISTS `act_app_appdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_app_appdef`
(
    `ID_`            varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `REV_`           int(11) NOT NULL,
    `NAME_`          varchar(255) COLLATE utf8mb4_bin  DEFAULT NULL,
    `KEY_`           varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `VERSION_`       int(11) NOT NULL,
    `CATEGORY_`      varchar(255) COLLATE utf8mb4_bin  DEFAULT NULL,
    `DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_bin  DEFAULT NULL,
    `RESOURCE_NAME_` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
    `DESCRIPTION_`   varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
    `TENANT_ID_`     varchar(255) COLLATE utf8mb4_bin  DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE,
    UNIQUE KEY `ACT_IDX_APP_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`) USING BTREE,
    KEY              `ACT_IDX_APP_DEF_DPLY` (`DEPLOYMENT_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_APP_DEF_DPLY` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_app_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_app_appdef`
--

LOCK
TABLES `act_app_appdef` WRITE;
/*!40000 ALTER TABLE `act_app_appdef` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_app_appdef` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_app_databasechangelog`
--

DROP TABLE IF EXISTS `act_app_databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_app_databasechangelog`
(
    `ID`            varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `AUTHOR`        varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `FILENAME`      varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `DATEEXECUTED`  datetime                         NOT NULL,
    `ORDEREXECUTED` int(11) NOT NULL,
    `EXECTYPE`      varchar(10) COLLATE utf8mb4_bin  NOT NULL,
    `MD5SUM`        varchar(35) COLLATE utf8mb4_bin  DEFAULT NULL,
    `DESCRIPTION`   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `COMMENTS`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TAG`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LIQUIBASE`     varchar(20) COLLATE utf8mb4_bin  DEFAULT NULL,
    `CONTEXTS`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LABELS`        varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID` varchar(10) COLLATE utf8mb4_bin  DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_app_databasechangelog`
--

LOCK
TABLES `act_app_databasechangelog` WRITE;
/*!40000 ALTER TABLE `act_app_databasechangelog` DISABLE KEYS */;
INSERT INTO `act_app_databasechangelog`
VALUES ('1', 'flowable', 'org/flowable/app/db/liquibase/flowable-app-db-changelog.xml', '2022-01-12 22:40:53', 1,
        'EXECUTED', '8:496fc778bdf2ab13f2e1926d0e63e0a2',
        'createTable tableName=ACT_APP_DEPLOYMENT; createTable tableName=ACT_APP_DEPLOYMENT_RESOURCE; addForeignKeyConstraint baseTableName=ACT_APP_DEPLOYMENT_RESOURCE, constraintName=ACT_FK_APP_RSRC_DPL, referencedTableName=ACT_APP_DEPLOYMENT; createIndex...',
        '', NULL, '3.10.3', NULL, NULL, '1998451152'),
       ('2', 'flowable', 'org/flowable/app/db/liquibase/flowable-app-db-changelog.xml', '2022-01-12 22:40:54', 2,
        'EXECUTED', '8:ccea9ebfb6c1f8367ca4dd473fcbb7db',
        'modifyDataType columnName=DEPLOY_TIME_, tableName=ACT_APP_DEPLOYMENT', '', NULL, '3.10.3', NULL, NULL,
        '1998451152'),
       ('3', 'flowable', 'org/flowable/app/db/liquibase/flowable-app-db-changelog.xml', '2022-01-12 22:40:54', 3,
        'EXECUTED', '8:f1f8aff320aade831944ebad24355f3d',
        'createIndex indexName=ACT_IDX_APP_DEF_UNIQ, tableName=ACT_APP_APPDEF', '', NULL, '3.10.3', NULL, NULL,
        '1998451152');
/*!40000 ALTER TABLE `act_app_databasechangelog` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_app_databasechangeloglock`
--

DROP TABLE IF EXISTS `act_app_databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_app_databasechangeloglock`
(
    `ID`          int(11) NOT NULL,
    `LOCKED`      bit(1) NOT NULL,
    `LOCKGRANTED` datetime                         DEFAULT NULL,
    `LOCKEDBY`    varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_app_databasechangeloglock`
--

LOCK
TABLES `act_app_databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `act_app_databasechangeloglock` DISABLE KEYS */;
INSERT INTO `act_app_databasechangeloglock`
VALUES (1, _binary '\0', NULL, NULL);
/*!40000 ALTER TABLE `act_app_databasechangeloglock` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_app_deployment`
--

DROP TABLE IF EXISTS `act_app_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_app_deployment`
(
    `ID_`          varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`        varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CATEGORY_`    varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `KEY_`         varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOY_TIME_` datetime(3) DEFAULT NULL,
    `TENANT_ID_`   varchar(255) COLLATE utf8mb4_bin DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_app_deployment`
--

LOCK
TABLES `act_app_deployment` WRITE;
/*!40000 ALTER TABLE `act_app_deployment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_app_deployment` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_app_deployment_resource`
--

DROP TABLE IF EXISTS `act_app_deployment_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_app_deployment_resource`
(
    `ID_`             varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID_`  varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `RESOURCE_BYTES_` longblob,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY               `ACT_IDX_APP_RSRC_DPL` (`DEPLOYMENT_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_APP_RSRC_DPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_app_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_app_deployment_resource`
--

LOCK
TABLES `act_app_deployment_resource` WRITE;
/*!40000 ALTER TABLE `act_app_deployment_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_app_deployment_resource` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_cmmn_casedef`
--

DROP TABLE IF EXISTS `act_cmmn_casedef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_cmmn_casedef`
(
    `ID_`                     varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `REV_`                    int(11) NOT NULL,
    `NAME_`                   varchar(255) COLLATE utf8mb4_bin  DEFAULT NULL,
    `KEY_`                    varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `VERSION_`                int(11) NOT NULL,
    `CATEGORY_`               varchar(255) COLLATE utf8mb4_bin  DEFAULT NULL,
    `DEPLOYMENT_ID_`          varchar(255) COLLATE utf8mb4_bin  DEFAULT NULL,
    `RESOURCE_NAME_`          varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
    `DESCRIPTION_`            varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
    `HAS_GRAPHICAL_NOTATION_` bit(1)                            DEFAULT NULL,
    `TENANT_ID_`              varchar(255) COLLATE utf8mb4_bin  DEFAULT '',
    `DGRM_RESOURCE_NAME_`     varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
    `HAS_START_FORM_KEY_`     bit(1)                            DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    UNIQUE KEY `ACT_IDX_CASE_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`) USING BTREE,
    KEY                       `ACT_IDX_CASE_DEF_DPLY` (`DEPLOYMENT_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_CASE_DEF_DPLY` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_cmmn_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_cmmn_casedef`
--

LOCK
TABLES `act_cmmn_casedef` WRITE;
/*!40000 ALTER TABLE `act_cmmn_casedef` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_cmmn_casedef` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_cmmn_databasechangelog`
--

DROP TABLE IF EXISTS `act_cmmn_databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_cmmn_databasechangelog`
(
    `ID`            varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `AUTHOR`        varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `FILENAME`      varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `DATEEXECUTED`  datetime                         NOT NULL,
    `ORDEREXECUTED` int(11) NOT NULL,
    `EXECTYPE`      varchar(10) COLLATE utf8mb4_bin  NOT NULL,
    `MD5SUM`        varchar(35) COLLATE utf8mb4_bin  DEFAULT NULL,
    `DESCRIPTION`   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `COMMENTS`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TAG`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LIQUIBASE`     varchar(20) COLLATE utf8mb4_bin  DEFAULT NULL,
    `CONTEXTS`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LABELS`        varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID` varchar(10) COLLATE utf8mb4_bin  DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_cmmn_databasechangelog`
--

LOCK
TABLES `act_cmmn_databasechangelog` WRITE;
/*!40000 ALTER TABLE `act_cmmn_databasechangelog` DISABLE KEYS */;
INSERT INTO `act_cmmn_databasechangelog`
VALUES ('1', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:24', 1,
        'EXECUTED', '8:8b4b922d90b05ff27483abefc9597aa6',
        'createTable tableName=ACT_CMMN_DEPLOYMENT; createTable tableName=ACT_CMMN_DEPLOYMENT_RESOURCE; addForeignKeyConstraint baseTableName=ACT_CMMN_DEPLOYMENT_RESOURCE, constraintName=ACT_FK_CMMN_RSRC_DPL, referencedTableName=ACT_CMMN_DEPLOYMENT; create...',
        '', NULL, '3.10.3', NULL, NULL, '1998413568'),
       ('2', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:26', 2,
        'EXECUTED', '8:65e39b3d385706bb261cbeffe7533cbe',
        'addColumn tableName=ACT_CMMN_CASEDEF; addColumn tableName=ACT_CMMN_DEPLOYMENT_RESOURCE; addColumn tableName=ACT_CMMN_RU_CASE_INST; addColumn tableName=ACT_CMMN_RU_PLAN_ITEM_INST',
        '', NULL, '3.10.3', NULL, NULL, '1998413568'),
       ('3', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:29', 3,
        'EXECUTED', '8:c01f6e802b49436b4489040da3012359',
        'addColumn tableName=ACT_CMMN_RU_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_RU_CASE_INST; createIndex indexName=ACT_IDX_PLAN_ITEM_STAGE_INST, tableName=ACT_CMMN_RU_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_RU_PLAN_ITEM_INST; addColumn tableNam...',
        '', NULL, '3.10.3', NULL, NULL, '1998413568'),
       ('4', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:30', 4,
        'EXECUTED', '8:e40d29cb79345b7fb5afd38a7f0ba8fc',
        'createTable tableName=ACT_CMMN_HI_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_RU_MIL_INST; addColumn tableName=ACT_CMMN_HI_MIL_INST',
        '', NULL, '3.10.3', NULL, NULL, '1998413568'),
       ('5', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:41', 5,
        'EXECUTED', '8:70349de472f87368dcdec971a10311a0',
        'modifyDataType columnName=DEPLOY_TIME_, tableName=ACT_CMMN_DEPLOYMENT; modifyDataType columnName=START_TIME_, tableName=ACT_CMMN_RU_CASE_INST; modifyDataType columnName=START_TIME_, tableName=ACT_CMMN_RU_PLAN_ITEM_INST; modifyDataType columnName=T...',
        '', NULL, '3.10.3', NULL, NULL, '1998413568'),
       ('6', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:41', 6,
        'EXECUTED', '8:10e82e26a7fee94c32a92099c059c18c',
        'createIndex indexName=ACT_IDX_CASE_DEF_UNIQ, tableName=ACT_CMMN_CASEDEF', '', NULL, '3.10.3', NULL, NULL,
        '1998413568'),
       ('7', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:42', 7,
        'EXECUTED', '8:530bc81a1e30618ccf4a2da1f7c6c043',
        'renameColumn newColumnName=CREATE_TIME_, oldColumnName=START_TIME_, tableName=ACT_CMMN_RU_PLAN_ITEM_INST; renameColumn newColumnName=CREATE_TIME_, oldColumnName=CREATED_TIME_, tableName=ACT_CMMN_HI_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_RU_P...',
        '', NULL, '3.10.3', NULL, NULL, '1998413568'),
       ('8', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:43', 8,
        'EXECUTED', '8:e8c2eb1ce28bc301efe07e0e29757781', 'addColumn tableName=ACT_CMMN_HI_PLAN_ITEM_INST', '', NULL,
        '3.10.3', NULL, NULL, '1998413568'),
       ('9', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:44', 9,
        'EXECUTED', '8:4cb4782b9bdec5ced2a64c525aa7b3a0',
        'addColumn tableName=ACT_CMMN_RU_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_HI_PLAN_ITEM_INST', '', NULL,
        '3.10.3', NULL, NULL, '1998413568'),
       ('10', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:45', 10,
        'EXECUTED', '8:341c16be247f5d17badc9809da8691f9',
        'addColumn tableName=ACT_CMMN_RU_CASE_INST; addColumn tableName=ACT_CMMN_RU_CASE_INST; createIndex indexName=ACT_IDX_CASE_INST_REF_ID_, tableName=ACT_CMMN_RU_CASE_INST; addColumn tableName=ACT_CMMN_HI_CASE_INST; addColumn tableName=ACT_CMMN_HI_CASE...',
        '', NULL, '3.10.3', NULL, NULL, '1998413568'),
       ('11', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:46', 11,
        'EXECUTED', '8:d7c4da9276bcfffbfb0ebfb25e3f7b05',
        'addColumn tableName=ACT_CMMN_RU_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_HI_PLAN_ITEM_INST', '', NULL,
        '3.10.3', NULL, NULL, '1998413568'),
       ('12', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:47', 12,
        'EXECUTED', '8:adf4ecc45f2aa9a44a5626b02e1d6f98', 'addColumn tableName=ACT_CMMN_RU_CASE_INST', '', NULL,
        '3.10.3', NULL, NULL, '1998413568'),
       ('13', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:48', 13,
        'EXECUTED', '8:7550626f964ab5518464709408333ec1',
        'addColumn tableName=ACT_CMMN_RU_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_HI_PLAN_ITEM_INST', '', NULL,
        '3.10.3', NULL, NULL, '1998413568'),
       ('14', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:49', 14,
        'EXECUTED', '8:086b40b3a05596dcc8a8d7479922d494',
        'addColumn tableName=ACT_CMMN_RU_CASE_INST; addColumn tableName=ACT_CMMN_HI_CASE_INST', '', NULL, '3.10.3',
        NULL, NULL, '1998413568'),
       ('16', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', '2022-01-12 22:40:50', 15,
        'EXECUTED', '8:a697a222ddd99dd15b36516a252f1c63',
        'addColumn tableName=ACT_CMMN_RU_CASE_INST; addColumn tableName=ACT_CMMN_HI_CASE_INST', '', NULL, '3.10.3',
        NULL, NULL, '1998413568');
/*!40000 ALTER TABLE `act_cmmn_databasechangelog` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_cmmn_databasechangeloglock`
--

DROP TABLE IF EXISTS `act_cmmn_databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_cmmn_databasechangeloglock`
(
    `ID`          int(11) NOT NULL,
    `LOCKED`      bit(1) NOT NULL,
    `LOCKGRANTED` datetime                         DEFAULT NULL,
    `LOCKEDBY`    varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_cmmn_databasechangeloglock`
--

LOCK
TABLES `act_cmmn_databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `act_cmmn_databasechangeloglock` DISABLE KEYS */;
INSERT INTO `act_cmmn_databasechangeloglock`
VALUES (1, _binary '\0', NULL, NULL);
/*!40000 ALTER TABLE `act_cmmn_databasechangeloglock` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_cmmn_deployment`
--

DROP TABLE IF EXISTS `act_cmmn_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_cmmn_deployment`
(
    `ID_`                   varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`                 varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CATEGORY_`             varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `KEY_`                  varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOY_TIME_`          datetime(3) DEFAULT NULL,
    `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TENANT_ID_`            varchar(255) COLLATE utf8mb4_bin DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_cmmn_deployment`
--

LOCK
TABLES `act_cmmn_deployment` WRITE;
/*!40000 ALTER TABLE `act_cmmn_deployment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_cmmn_deployment` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_cmmn_deployment_resource`
--

DROP TABLE IF EXISTS `act_cmmn_deployment_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_cmmn_deployment_resource`
(
    `ID_`             varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID_`  varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `RESOURCE_BYTES_` longblob,
    `GENERATED_`      bit(1)                           DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY               `ACT_IDX_CMMN_RSRC_DPL` (`DEPLOYMENT_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_CMMN_RSRC_DPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_cmmn_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_cmmn_deployment_resource`
--

LOCK
TABLES `act_cmmn_deployment_resource` WRITE;
/*!40000 ALTER TABLE `act_cmmn_deployment_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_cmmn_deployment_resource` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_cmmn_hi_case_inst`
--

DROP TABLE IF EXISTS `act_cmmn_hi_case_inst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_cmmn_hi_case_inst`
(
    `ID_`                        varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `REV_`                       int(11) NOT NULL,
    `BUSINESS_KEY_`              varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `NAME_`                      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `PARENT_ID_`                 varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CASE_DEF_ID_`               varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `STATE_`                     varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `START_TIME_`                datetime(3) DEFAULT NULL,
    `END_TIME_`                  datetime(3) DEFAULT NULL,
    `START_USER_ID_`             varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CALLBACK_ID_`               varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CALLBACK_TYPE_`             varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TENANT_ID_`                 varchar(255) COLLATE utf8mb4_bin DEFAULT '',
    `REFERENCE_ID_`              varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `REFERENCE_TYPE_`            varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LAST_REACTIVATION_TIME_`    datetime(3) DEFAULT NULL,
    `LAST_REACTIVATION_USER_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `BUSINESS_STATUS_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_cmmn_hi_case_inst`
--

LOCK
TABLES `act_cmmn_hi_case_inst` WRITE;
/*!40000 ALTER TABLE `act_cmmn_hi_case_inst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_cmmn_hi_case_inst` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_cmmn_hi_mil_inst`
--

DROP TABLE IF EXISTS `act_cmmn_hi_mil_inst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_cmmn_hi_mil_inst`
(
    `ID_`           varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `REV_`          int(11) NOT NULL,
    `NAME_`         varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `TIME_STAMP_`   datetime(3) DEFAULT NULL,
    `CASE_INST_ID_` varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `CASE_DEF_ID_`  varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `ELEMENT_ID_`   varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `TENANT_ID_`    varchar(255) COLLATE utf8mb4_bin DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_cmmn_hi_mil_inst`
--

LOCK
TABLES `act_cmmn_hi_mil_inst` WRITE;
/*!40000 ALTER TABLE `act_cmmn_hi_mil_inst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_cmmn_hi_mil_inst` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_cmmn_hi_plan_item_inst`
--

DROP TABLE IF EXISTS `act_cmmn_hi_plan_item_inst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_cmmn_hi_plan_item_inst`
(
    `ID_`                    varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `REV_`                   int(11) NOT NULL,
    `NAME_`                  varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `STATE_`                 varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CASE_DEF_ID_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CASE_INST_ID_`          varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `STAGE_INST_ID_`         varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `IS_STAGE_`              bit(1)                           DEFAULT NULL,
    `ELEMENT_ID_`            varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `ITEM_DEFINITION_ID_`    varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `ITEM_DEFINITION_TYPE_`  varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CREATE_TIME_`           datetime(3) DEFAULT NULL,
    `LAST_AVAILABLE_TIME_`   datetime(3) DEFAULT NULL,
    `LAST_ENABLED_TIME_`     datetime(3) DEFAULT NULL,
    `LAST_DISABLED_TIME_`    datetime(3) DEFAULT NULL,
    `LAST_STARTED_TIME_`     datetime(3) DEFAULT NULL,
    `LAST_SUSPENDED_TIME_`   datetime(3) DEFAULT NULL,
    `COMPLETED_TIME_`        datetime(3) DEFAULT NULL,
    `OCCURRED_TIME_`         datetime(3) DEFAULT NULL,
    `TERMINATED_TIME_`       datetime(3) DEFAULT NULL,
    `EXIT_TIME_`             datetime(3) DEFAULT NULL,
    `ENDED_TIME_`            datetime(3) DEFAULT NULL,
    `LAST_UPDATED_TIME_`     datetime(3) DEFAULT NULL,
    `START_USER_ID_`         varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `REFERENCE_ID_`          varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `REFERENCE_TYPE_`        varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TENANT_ID_`             varchar(255) COLLATE utf8mb4_bin DEFAULT '',
    `ENTRY_CRITERION_ID_`    varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `EXIT_CRITERION_ID_`     varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `SHOW_IN_OVERVIEW_`      bit(1)                           DEFAULT NULL,
    `EXTRA_VALUE_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DERIVED_CASE_DEF_ID_`   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LAST_UNAVAILABLE_TIME_` datetime(3) DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_cmmn_hi_plan_item_inst`
--

LOCK
TABLES `act_cmmn_hi_plan_item_inst` WRITE;
/*!40000 ALTER TABLE `act_cmmn_hi_plan_item_inst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_cmmn_hi_plan_item_inst` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_cmmn_ru_case_inst`
--

DROP TABLE IF EXISTS `act_cmmn_ru_case_inst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_cmmn_ru_case_inst`
(
    `ID_`                        varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `REV_`                       int(11) NOT NULL,
    `BUSINESS_KEY_`              varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `NAME_`                      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `PARENT_ID_`                 varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CASE_DEF_ID_`               varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `STATE_`                     varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `START_TIME_`                datetime(3) DEFAULT NULL,
    `START_USER_ID_`             varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CALLBACK_ID_`               varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CALLBACK_TYPE_`             varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TENANT_ID_`                 varchar(255) COLLATE utf8mb4_bin DEFAULT '',
    `LOCK_TIME_`                 datetime(3) DEFAULT NULL,
    `IS_COMPLETEABLE_`           bit(1)                           DEFAULT NULL,
    `REFERENCE_ID_`              varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `REFERENCE_TYPE_`            varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LOCK_OWNER_`                varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LAST_REACTIVATION_TIME_`    datetime(3) DEFAULT NULL,
    `LAST_REACTIVATION_USER_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `BUSINESS_STATUS_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                          `ACT_IDX_CASE_INST_CASE_DEF` (`CASE_DEF_ID_`) USING BTREE,
    KEY                          `ACT_IDX_CASE_INST_PARENT` (`PARENT_ID_`) USING BTREE,
    KEY                          `ACT_IDX_CASE_INST_REF_ID_` (`REFERENCE_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_CASE_INST_CASE_DEF` FOREIGN KEY (`CASE_DEF_ID_`) REFERENCES `act_cmmn_casedef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_cmmn_ru_case_inst`
--

LOCK
TABLES `act_cmmn_ru_case_inst` WRITE;
/*!40000 ALTER TABLE `act_cmmn_ru_case_inst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_cmmn_ru_case_inst` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_cmmn_ru_mil_inst`
--

DROP TABLE IF EXISTS `act_cmmn_ru_mil_inst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_cmmn_ru_mil_inst`
(
    `ID_`           varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`         varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `TIME_STAMP_`   datetime(3) DEFAULT NULL,
    `CASE_INST_ID_` varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `CASE_DEF_ID_`  varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `ELEMENT_ID_`   varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `TENANT_ID_`    varchar(255) COLLATE utf8mb4_bin DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY             `ACT_IDX_MIL_CASE_DEF` (`CASE_DEF_ID_`) USING BTREE,
    KEY             `ACT_IDX_MIL_CASE_INST` (`CASE_INST_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_MIL_CASE_DEF` FOREIGN KEY (`CASE_DEF_ID_`) REFERENCES `act_cmmn_casedef` (`ID_`),
    CONSTRAINT `ACT_FK_MIL_CASE_INST` FOREIGN KEY (`CASE_INST_ID_`) REFERENCES `act_cmmn_ru_case_inst` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_cmmn_ru_mil_inst`
--

LOCK
TABLES `act_cmmn_ru_mil_inst` WRITE;
/*!40000 ALTER TABLE `act_cmmn_ru_mil_inst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_cmmn_ru_mil_inst` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_cmmn_ru_plan_item_inst`
--

DROP TABLE IF EXISTS `act_cmmn_ru_plan_item_inst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_cmmn_ru_plan_item_inst`
(
    `ID_`                     varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `REV_`                    int(11) NOT NULL,
    `CASE_DEF_ID_`            varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CASE_INST_ID_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `STAGE_INST_ID_`          varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `IS_STAGE_`               bit(1)                           DEFAULT NULL,
    `ELEMENT_ID_`             varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `NAME_`                   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `STATE_`                  varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CREATE_TIME_`            datetime(3) DEFAULT NULL,
    `START_USER_ID_`          varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `REFERENCE_ID_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `REFERENCE_TYPE_`         varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TENANT_ID_`              varchar(255) COLLATE utf8mb4_bin DEFAULT '',
    `ITEM_DEFINITION_ID_`     varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `ITEM_DEFINITION_TYPE_`   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `IS_COMPLETEABLE_`        bit(1)                           DEFAULT NULL,
    `IS_COUNT_ENABLED_`       bit(1)                           DEFAULT NULL,
    `VAR_COUNT_`              int(11) DEFAULT NULL,
    `SENTRY_PART_INST_COUNT_` int(11) DEFAULT NULL,
    `LAST_AVAILABLE_TIME_`    datetime(3) DEFAULT NULL,
    `LAST_ENABLED_TIME_`      datetime(3) DEFAULT NULL,
    `LAST_DISABLED_TIME_`     datetime(3) DEFAULT NULL,
    `LAST_STARTED_TIME_`      datetime(3) DEFAULT NULL,
    `LAST_SUSPENDED_TIME_`    datetime(3) DEFAULT NULL,
    `COMPLETED_TIME_`         datetime(3) DEFAULT NULL,
    `OCCURRED_TIME_`          datetime(3) DEFAULT NULL,
    `TERMINATED_TIME_`        datetime(3) DEFAULT NULL,
    `EXIT_TIME_`              datetime(3) DEFAULT NULL,
    `ENDED_TIME_`             datetime(3) DEFAULT NULL,
    `ENTRY_CRITERION_ID_`     varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `EXIT_CRITERION_ID_`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `EXTRA_VALUE_`            varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DERIVED_CASE_DEF_ID_`    varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LAST_UNAVAILABLE_TIME_`  datetime(3) DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                       `ACT_IDX_PLAN_ITEM_CASE_DEF` (`CASE_DEF_ID_`) USING BTREE,
    KEY                       `ACT_IDX_PLAN_ITEM_CASE_INST` (`CASE_INST_ID_`) USING BTREE,
    KEY                       `ACT_IDX_PLAN_ITEM_STAGE_INST` (`STAGE_INST_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_PLAN_ITEM_CASE_DEF` FOREIGN KEY (`CASE_DEF_ID_`) REFERENCES `act_cmmn_casedef` (`ID_`),
    CONSTRAINT `ACT_FK_PLAN_ITEM_CASE_INST` FOREIGN KEY (`CASE_INST_ID_`) REFERENCES `act_cmmn_ru_case_inst` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_cmmn_ru_plan_item_inst`
--

LOCK
TABLES `act_cmmn_ru_plan_item_inst` WRITE;
/*!40000 ALTER TABLE `act_cmmn_ru_plan_item_inst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_cmmn_ru_plan_item_inst` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_cmmn_ru_sentry_part_inst`
--

DROP TABLE IF EXISTS `act_cmmn_ru_sentry_part_inst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_cmmn_ru_sentry_part_inst`
(
    `ID_`                varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `REV_`               int(11) NOT NULL,
    `CASE_DEF_ID_`       varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CASE_INST_ID_`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `PLAN_ITEM_INST_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `ON_PART_ID_`        varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `IF_PART_ID_`        varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TIME_STAMP_`        datetime(3) DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                  `ACT_IDX_SENTRY_CASE_DEF` (`CASE_DEF_ID_`) USING BTREE,
    KEY                  `ACT_IDX_SENTRY_CASE_INST` (`CASE_INST_ID_`) USING BTREE,
    KEY                  `ACT_IDX_SENTRY_PLAN_ITEM` (`PLAN_ITEM_INST_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_SENTRY_CASE_DEF` FOREIGN KEY (`CASE_DEF_ID_`) REFERENCES `act_cmmn_casedef` (`ID_`),
    CONSTRAINT `ACT_FK_SENTRY_CASE_INST` FOREIGN KEY (`CASE_INST_ID_`) REFERENCES `act_cmmn_ru_case_inst` (`ID_`),
    CONSTRAINT `ACT_FK_SENTRY_PLAN_ITEM` FOREIGN KEY (`PLAN_ITEM_INST_ID_`) REFERENCES `act_cmmn_ru_plan_item_inst` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_cmmn_ru_sentry_part_inst`
--

LOCK
TABLES `act_cmmn_ru_sentry_part_inst` WRITE;
/*!40000 ALTER TABLE `act_cmmn_ru_sentry_part_inst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_cmmn_ru_sentry_part_inst` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_co_content_item`
--

DROP TABLE IF EXISTS `act_co_content_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_co_content_item`
(
    `ID_`                 varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`               varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `MIME_TYPE_`          varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TASK_ID_`            varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `PROC_INST_ID_`       varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CONTENT_STORE_ID_`   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CONTENT_STORE_NAME_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `FIELD_`              varchar(400) COLLATE utf8mb4_bin DEFAULT NULL,
    `CONTENT_AVAILABLE_`  bit(1)                           DEFAULT b'0',
    `CREATED_`            timestamp(6) NULL DEFAULT NULL,
    `CREATED_BY_`         varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LAST_MODIFIED_`      timestamp(6) NULL DEFAULT NULL,
    `LAST_MODIFIED_BY_`   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CONTENT_SIZE_`       bigint(20) DEFAULT '0',
    `TENANT_ID_`          varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `SCOPE_ID_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `SCOPE_TYPE_`         varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                   `idx_contitem_taskid` (`TASK_ID_`) USING BTREE,
    KEY                   `idx_contitem_procid` (`PROC_INST_ID_`) USING BTREE,
    KEY                   `idx_contitem_scope` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_co_content_item`
--

LOCK
TABLES `act_co_content_item` WRITE;
/*!40000 ALTER TABLE `act_co_content_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_co_content_item` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_co_databasechangelog`
--

DROP TABLE IF EXISTS `act_co_databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_co_databasechangelog`
(
    `ID`            varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `AUTHOR`        varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `FILENAME`      varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `DATEEXECUTED`  datetime                         NOT NULL,
    `ORDEREXECUTED` int(11) NOT NULL,
    `EXECTYPE`      varchar(10) COLLATE utf8mb4_bin  NOT NULL,
    `MD5SUM`        varchar(35) COLLATE utf8mb4_bin  DEFAULT NULL,
    `DESCRIPTION`   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `COMMENTS`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TAG`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LIQUIBASE`     varchar(20) COLLATE utf8mb4_bin  DEFAULT NULL,
    `CONTEXTS`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LABELS`        varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID` varchar(10) COLLATE utf8mb4_bin  DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_co_databasechangelog`
--

LOCK
TABLES `act_co_databasechangelog` WRITE;
/*!40000 ALTER TABLE `act_co_databasechangelog` DISABLE KEYS */;
INSERT INTO `act_co_databasechangelog`
VALUES ('1', 'activiti', 'org/flowable/content/db/liquibase/flowable-content-db-changelog.xml', '2022-01-12 22:40:11',
        1, 'EXECUTED', '8:7644d7165cfe799200a2abdd3419e8b6',
        'createTable tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_taskid, tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_procid, tableName=ACT_CO_CONTENT_ITEM',
        '', NULL, '3.10.3', NULL, NULL, '1998411526'),
       ('2', 'flowable', 'org/flowable/content/db/liquibase/flowable-content-db-changelog.xml', '2022-01-12 22:40:12',
        2, 'EXECUTED', '8:fe7b11ac7dbbf9c43006b23bbab60bab',
        'addColumn tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_scope, tableName=ACT_CO_CONTENT_ITEM',
        '', NULL, '3.10.3', NULL, NULL, '1998411526');
/*!40000 ALTER TABLE `act_co_databasechangelog` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_co_databasechangeloglock`
--

DROP TABLE IF EXISTS `act_co_databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_co_databasechangeloglock`
(
    `ID`          int(11) NOT NULL,
    `LOCKED`      bit(1) NOT NULL,
    `LOCKGRANTED` datetime                         DEFAULT NULL,
    `LOCKEDBY`    varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_co_databasechangeloglock`
--

LOCK
TABLES `act_co_databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `act_co_databasechangeloglock` DISABLE KEYS */;
INSERT INTO `act_co_databasechangeloglock`
VALUES (1, _binary '\0', NULL, NULL);
/*!40000 ALTER TABLE `act_co_databasechangeloglock` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_dmn_databasechangelog`
--

DROP TABLE IF EXISTS `act_dmn_databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_dmn_databasechangelog`
(
    `ID`            varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `AUTHOR`        varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `FILENAME`      varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `DATEEXECUTED`  datetime                         NOT NULL,
    `ORDEREXECUTED` int(11) NOT NULL,
    `EXECTYPE`      varchar(10) COLLATE utf8mb4_bin  NOT NULL,
    `MD5SUM`        varchar(35) COLLATE utf8mb4_bin  DEFAULT NULL,
    `DESCRIPTION`   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `COMMENTS`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TAG`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LIQUIBASE`     varchar(20) COLLATE utf8mb4_bin  DEFAULT NULL,
    `CONTEXTS`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LABELS`        varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID` varchar(10) COLLATE utf8mb4_bin  DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_dmn_databasechangelog`
--

LOCK
TABLES `act_dmn_databasechangelog` WRITE;
/*!40000 ALTER TABLE `act_dmn_databasechangelog` DISABLE KEYS */;
INSERT INTO `act_dmn_databasechangelog`
VALUES ('1', 'activiti', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2022-01-12 22:40:03', 1,
        'EXECUTED', '8:c8701f1c71018b55029f450b2e9a10a1',
        'createTable tableName=ACT_DMN_DEPLOYMENT; createTable tableName=ACT_DMN_DEPLOYMENT_RESOURCE; createTable tableName=ACT_DMN_DECISION_TABLE',
        '', NULL, '3.10.3', NULL, NULL, '1998402520'),
       ('2', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2022-01-12 22:40:03', 2,
        'EXECUTED', '8:47f94b27feb7df8a30d4e338c7bd5fb8', 'createTable tableName=ACT_DMN_HI_DECISION_EXECUTION', '',
        NULL, '3.10.3', NULL, NULL, '1998402520'),
       ('3', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2022-01-12 22:40:03', 3,
        'EXECUTED', '8:ac17eae89fbdccb6e08daf3c7797b579', 'addColumn tableName=ACT_DMN_HI_DECISION_EXECUTION', '', NULL,
        '3.10.3', NULL, NULL, '1998402520'),
       ('4', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2022-01-12 22:40:04', 4,
        'EXECUTED', '8:f73aabc4529e7292c2942073d1cff6f9',
        'dropColumn columnName=PARENT_DEPLOYMENT_ID_, tableName=ACT_DMN_DECISION_TABLE', '', NULL, '3.10.3', NULL, NULL,
        '1998402520'),
       ('5', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2022-01-12 22:40:05', 5,
        'EXECUTED', '8:3e03528582dd4eeb4eb41f9b9539140d',
        'modifyDataType columnName=DEPLOY_TIME_, tableName=ACT_DMN_DEPLOYMENT; modifyDataType columnName=START_TIME_, tableName=ACT_DMN_HI_DECISION_EXECUTION; modifyDataType columnName=END_TIME_, tableName=ACT_DMN_HI_DECISION_EXECUTION',
        '', NULL, '3.10.3', NULL, NULL, '1998402520'),
       ('6', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2022-01-12 22:40:05', 6,
        'EXECUTED', '8:646c6a061e0b6e8a62e69844ff96abb0',
        'createIndex indexName=ACT_IDX_DEC_TBL_UNIQ, tableName=ACT_DMN_DECISION_TABLE', '', NULL, '3.10.3', NULL, NULL,
        '1998402520'),
       ('7', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2022-01-12 22:40:06', 7,
        'EXECUTED', '8:215a499ff7ae77685b55355245b8b708',
        'dropIndex indexName=ACT_IDX_DEC_TBL_UNIQ, tableName=ACT_DMN_DECISION_TABLE; renameTable newTableName=ACT_DMN_DECISION, oldTableName=ACT_DMN_DECISION_TABLE; createIndex indexName=ACT_IDX_DMN_DEC_UNIQ, tableName=ACT_DMN_DECISION',
        '', NULL, '3.10.3', NULL, NULL, '1998402520'),
       ('8', 'flowable', 'org/flowable/dmn/db/liquibase/flowable-dmn-db-changelog.xml', '2022-01-12 22:40:06', 8,
        'EXECUTED', '8:5355bee389318afed91a11702f2df032', 'addColumn tableName=ACT_DMN_DECISION', '', NULL, '3.10.3',
        NULL, NULL, '1998402520');
/*!40000 ALTER TABLE `act_dmn_databasechangelog` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_dmn_databasechangeloglock`
--

DROP TABLE IF EXISTS `act_dmn_databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_dmn_databasechangeloglock`
(
    `ID`          int(11) NOT NULL,
    `LOCKED`      bit(1) NOT NULL,
    `LOCKGRANTED` datetime                         DEFAULT NULL,
    `LOCKEDBY`    varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_dmn_databasechangeloglock`
--

LOCK
TABLES `act_dmn_databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `act_dmn_databasechangeloglock` DISABLE KEYS */;
INSERT INTO `act_dmn_databasechangeloglock`
VALUES (1, _binary '\0', NULL, NULL);
/*!40000 ALTER TABLE `act_dmn_databasechangeloglock` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_dmn_decision`
--

DROP TABLE IF EXISTS `act_dmn_decision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_dmn_decision`
(
    `ID_`            varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`          varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `VERSION_`       int(11) DEFAULT NULL,
    `KEY_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CATEGORY_`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TENANT_ID_`     varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `RESOURCE_NAME_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DESCRIPTION_`   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DECISION_TYPE_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    UNIQUE KEY `ACT_IDX_DMN_DEC_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_dmn_decision`
--

LOCK
TABLES `act_dmn_decision` WRITE;
/*!40000 ALTER TABLE `act_dmn_decision` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_dmn_decision` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_dmn_deployment`
--

DROP TABLE IF EXISTS `act_dmn_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_dmn_deployment`
(
    `ID_`                   varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`                 varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CATEGORY_`             varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOY_TIME_`          datetime(3) DEFAULT NULL,
    `TENANT_ID_`            varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_dmn_deployment`
--

LOCK
TABLES `act_dmn_deployment` WRITE;
/*!40000 ALTER TABLE `act_dmn_deployment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_dmn_deployment` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_dmn_deployment_resource`
--

DROP TABLE IF EXISTS `act_dmn_deployment_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_dmn_deployment_resource`
(
    `ID_`             varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID_`  varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `RESOURCE_BYTES_` longblob,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_dmn_deployment_resource`
--

LOCK
TABLES `act_dmn_deployment_resource` WRITE;
/*!40000 ALTER TABLE `act_dmn_deployment_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_dmn_deployment_resource` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_dmn_hi_decision_execution`
--

DROP TABLE IF EXISTS `act_dmn_hi_decision_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_dmn_hi_decision_execution`
(
    `ID_`                     varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `DECISION_DEFINITION_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID_`          varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `START_TIME_`             datetime(3) DEFAULT NULL,
    `END_TIME_`               datetime(3) DEFAULT NULL,
    `INSTANCE_ID_`            varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `EXECUTION_ID_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `ACTIVITY_ID_`            varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `FAILED_`                 bit(1)                           DEFAULT b'0',
    `TENANT_ID_`              varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `EXECUTION_JSON_`         longtext COLLATE utf8mb4_bin,
    `SCOPE_TYPE_`             varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_dmn_hi_decision_execution`
--

LOCK
TABLES `act_dmn_hi_decision_execution` WRITE;
/*!40000 ALTER TABLE `act_dmn_hi_decision_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_dmn_hi_decision_execution` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_evt_log`
--

DROP TABLE IF EXISTS `act_evt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_evt_log`
(
    `LOG_NR_`       bigint(20) NOT NULL AUTO_INCREMENT,
    `TYPE_`         varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `PROC_DEF_ID_`  varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `PROC_INST_ID_` varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `EXECUTION_ID_` varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `TASK_ID_`      varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `TIME_STAMP_`   timestamp(3) NOT NULL         DEFAULT CURRENT_TIMESTAMP(3),
    `USER_ID_`      varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `DATA_`         longblob,
    `LOCK_OWNER_`   varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `LOCK_TIME_`    timestamp(3) NULL DEFAULT NULL,
    `IS_PROCESSED_` tinyint(4) DEFAULT '0',
    PRIMARY KEY (`LOG_NR_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_evt_log`
--

LOCK
TABLES `act_evt_log` WRITE;
/*!40000 ALTER TABLE `act_evt_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_evt_log` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_fo_databasechangelog`
--

DROP TABLE IF EXISTS `act_fo_databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_fo_databasechangelog`
(
    `ID`            varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `AUTHOR`        varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `FILENAME`      varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `DATEEXECUTED`  datetime                         NOT NULL,
    `ORDEREXECUTED` int(11) NOT NULL,
    `EXECTYPE`      varchar(10) COLLATE utf8mb4_bin  NOT NULL,
    `MD5SUM`        varchar(35) COLLATE utf8mb4_bin  DEFAULT NULL,
    `DESCRIPTION`   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `COMMENTS`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TAG`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LIQUIBASE`     varchar(20) COLLATE utf8mb4_bin  DEFAULT NULL,
    `CONTEXTS`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LABELS`        varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID` varchar(10) COLLATE utf8mb4_bin  DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_fo_databasechangelog`
--

LOCK
TABLES `act_fo_databasechangelog` WRITE;
/*!40000 ALTER TABLE `act_fo_databasechangelog` DISABLE KEYS */;
INSERT INTO `act_fo_databasechangelog`
VALUES ('1', 'activiti', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2022-01-12 22:40:08', 1,
        'EXECUTED', '8:033ebf9380889aed7c453927ecc3250d',
        'createTable tableName=ACT_FO_FORM_DEPLOYMENT; createTable tableName=ACT_FO_FORM_RESOURCE; createTable tableName=ACT_FO_FORM_DEFINITION; createTable tableName=ACT_FO_FORM_INSTANCE',
        '', NULL, '3.10.3', NULL, NULL, '1998407320'),
       ('2', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2022-01-12 22:40:08', 2,
        'EXECUTED', '8:986365ceb40445ce3b27a8e6b40f159b', 'addColumn tableName=ACT_FO_FORM_INSTANCE', '', NULL,
        '3.10.3', NULL, NULL, '1998407320'),
       ('3', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2022-01-12 22:40:09', 3,
        'EXECUTED', '8:abf482518ceb09830ef674e52c06bf15',
        'dropColumn columnName=PARENT_DEPLOYMENT_ID_, tableName=ACT_FO_FORM_DEFINITION', '', NULL, '3.10.3', NULL, NULL,
        '1998407320'),
       ('4', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2022-01-12 22:40:10', 4,
        'EXECUTED', '8:2087829f22a4b2298dbf530681c74854',
        'modifyDataType columnName=DEPLOY_TIME_, tableName=ACT_FO_FORM_DEPLOYMENT; modifyDataType columnName=SUBMITTED_DATE_, tableName=ACT_FO_FORM_INSTANCE',
        '', NULL, '3.10.3', NULL, NULL, '1998407320'),
       ('5', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2022-01-12 22:40:10', 5,
        'EXECUTED', '8:b4be732b89e5ca028bdd520c6ad4d446',
        'createIndex indexName=ACT_IDX_FORM_DEF_UNIQ, tableName=ACT_FO_FORM_DEFINITION', '', NULL, '3.10.3', NULL, NULL,
        '1998407320'),
       ('6', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2022-01-12 22:40:10', 6,
        'EXECUTED', '8:384bbd364a649b67c3ca1bcb72fe537f',
        'createIndex indexName=ACT_IDX_FORM_TASK, tableName=ACT_FO_FORM_INSTANCE; createIndex indexName=ACT_IDX_FORM_PROC, tableName=ACT_FO_FORM_INSTANCE; createIndex indexName=ACT_IDX_FORM_SCOPE, tableName=ACT_FO_FORM_INSTANCE',
        '', NULL, '3.10.3', NULL, NULL, '1998407320');
/*!40000 ALTER TABLE `act_fo_databasechangelog` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_fo_databasechangeloglock`
--

DROP TABLE IF EXISTS `act_fo_databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_fo_databasechangeloglock`
(
    `ID`          int(11) NOT NULL,
    `LOCKED`      bit(1) NOT NULL,
    `LOCKGRANTED` datetime                         DEFAULT NULL,
    `LOCKEDBY`    varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_fo_databasechangeloglock`
--

LOCK
TABLES `act_fo_databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `act_fo_databasechangeloglock` DISABLE KEYS */;
INSERT INTO `act_fo_databasechangeloglock`
VALUES (1, _binary '\0', NULL, NULL);
/*!40000 ALTER TABLE `act_fo_databasechangeloglock` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_fo_form_definition`
--

DROP TABLE IF EXISTS `act_fo_form_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_fo_form_definition`
(
    `ID_`            varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`          varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `VERSION_`       int(11) DEFAULT NULL,
    `KEY_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CATEGORY_`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TENANT_ID_`     varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `RESOURCE_NAME_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DESCRIPTION_`   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    UNIQUE KEY `ACT_IDX_FORM_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_fo_form_definition`
--

LOCK
TABLES `act_fo_form_definition` WRITE;
/*!40000 ALTER TABLE `act_fo_form_definition` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_fo_form_definition` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_fo_form_deployment`
--

DROP TABLE IF EXISTS `act_fo_form_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_fo_form_deployment`
(
    `ID_`                   varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`                 varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CATEGORY_`             varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOY_TIME_`          datetime(3) DEFAULT NULL,
    `TENANT_ID_`            varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_fo_form_deployment`
--

LOCK
TABLES `act_fo_form_deployment` WRITE;
/*!40000 ALTER TABLE `act_fo_form_deployment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_fo_form_deployment` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_fo_form_instance`
--

DROP TABLE IF EXISTS `act_fo_form_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_fo_form_instance`
(
    `ID_`                  varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `FORM_DEFINITION_ID_`  varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `TASK_ID_`             varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `PROC_INST_ID_`        varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `PROC_DEF_ID_`         varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `SUBMITTED_DATE_`      datetime(3) DEFAULT NULL,
    `SUBMITTED_BY_`        varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `FORM_VALUES_ID_`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TENANT_ID_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `SCOPE_ID_`            varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `SCOPE_TYPE_`          varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                    `ACT_IDX_FORM_TASK` (`TASK_ID_`) USING BTREE,
    KEY                    `ACT_IDX_FORM_PROC` (`PROC_INST_ID_`) USING BTREE,
    KEY                    `ACT_IDX_FORM_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_fo_form_instance`
--

LOCK
TABLES `act_fo_form_instance` WRITE;
/*!40000 ALTER TABLE `act_fo_form_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_fo_form_instance` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_fo_form_resource`
--

DROP TABLE IF EXISTS `act_fo_form_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_fo_form_resource`
(
    `ID_`             varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID_`  varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `RESOURCE_BYTES_` longblob,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_fo_form_resource`
--

LOCK
TABLES `act_fo_form_resource` WRITE;
/*!40000 ALTER TABLE `act_fo_form_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_fo_form_resource` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_bytearray`
(
    `ID_`            varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`           int(11) DEFAULT NULL,
    `NAME_`          varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `BYTES_`         longblob,
    `GENERATED_`     tinyint(4) DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY              `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_property`
(
    `NAME_`  varchar(64) COLLATE utf8_bin NOT NULL,
    `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
    `REV_`   int(11) DEFAULT NULL,
    PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK
TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property`
VALUES ('batch.schema.version', '6.7.2.0', 1),
       ('cfg.execution-related-entities-count', 'true', 1),
       ('cfg.task-related-entities-count', 'true', 1),
       ('common.schema.version', '6.7.2.0', 1),
       ('entitylink.schema.version', '6.7.2.0', 1),
       ('eventsubscription.schema.version', '6.7.2.0', 1),
       ('identitylink.schema.version', '6.7.2.0', 1),
       ('job.schema.version', '6.7.2.0', 1),
       ('next.dbid', '1', 1),
       ('schema.history', 'create(6.7.2.0)', 1),
       ('schema.version', '6.7.2.0', 1),
       ('task.schema.version', '6.7.2.0', 1),
       ('variable.schema.version', '6.7.2.0', 1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_actinst`
(
    `ID_`                varchar(64) COLLATE utf8_bin  NOT NULL,
    `REV_`               int(11) DEFAULT '1',
    `PROC_DEF_ID_`       varchar(64) COLLATE utf8_bin  NOT NULL,
    `PROC_INST_ID_`      varchar(64) COLLATE utf8_bin  NOT NULL,
    `EXECUTION_ID_`      varchar(64) COLLATE utf8_bin  NOT NULL,
    `ACT_ID_`            varchar(255) COLLATE utf8_bin NOT NULL,
    `TASK_ID_`           varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `ACT_NAME_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `ACT_TYPE_`          varchar(255) COLLATE utf8_bin NOT NULL,
    `ASSIGNEE_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `START_TIME_`        datetime(3) NOT NULL,
    `END_TIME_`          datetime(3) DEFAULT NULL,
    `TRANSACTION_ORDER_` int(11) DEFAULT NULL,
    `DURATION_`          bigint(20) DEFAULT NULL,
    `DELETE_REASON_`     varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `TENANT_ID_`         varchar(255) COLLATE utf8_bin  DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                  `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`) USING BTREE,
    KEY                  `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`) USING BTREE,
    KEY                  `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`) USING BTREE,
    KEY                  `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK
TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_attachment`
(
    `ID_`           varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`          int(11) DEFAULT NULL,
    `USER_ID_`      varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `NAME_`         varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `DESCRIPTION_`  varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `TYPE_`         varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `TASK_ID_`      varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROC_INST_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `URL_`          varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `CONTENT_ID_`   varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `TIME_`         datetime(3) DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK
TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_comment`
(
    `ID_`           varchar(64) COLLATE utf8_bin NOT NULL,
    `TYPE_`         varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `TIME_`         datetime(3) NOT NULL,
    `USER_ID_`      varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `TASK_ID_`      varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROC_INST_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `ACTION_`       varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `MESSAGE_`      varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `FULL_MSG_`     longblob,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK
TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_detail`
(
    `ID_`           varchar(64) COLLATE utf8_bin  NOT NULL,
    `TYPE_`         varchar(255) COLLATE utf8_bin NOT NULL,
    `PROC_INST_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `EXECUTION_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `TASK_ID_`      varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `ACT_INST_ID_`  varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `NAME_`         varchar(255) COLLATE utf8_bin NOT NULL,
    `VAR_TYPE_`     varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `REV_`          int(11) DEFAULT NULL,
    `TIME_`         datetime(3) NOT NULL,
    `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `DOUBLE_`       double                         DEFAULT NULL,
    `LONG_`         bigint(20) DEFAULT NULL,
    `TEXT_`         varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `TEXT2_`        varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY             `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`) USING BTREE,
    KEY             `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`) USING BTREE,
    KEY             `ACT_IDX_HI_DETAIL_TIME` (`TIME_`) USING BTREE,
    KEY             `ACT_IDX_HI_DETAIL_NAME` (`NAME_`) USING BTREE,
    KEY             `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK
TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_hi_entitylink`
--

DROP TABLE IF EXISTS `act_hi_entitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_entitylink`
(
    `ID_`                      varchar(64) COLLATE utf8_bin NOT NULL,
    `LINK_TYPE_`               varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `CREATE_TIME_`             datetime(3) DEFAULT NULL,
    `SCOPE_ID_`                varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SUB_SCOPE_ID_`            varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SCOPE_TYPE_`              varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SCOPE_DEFINITION_ID_`     varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `PARENT_ELEMENT_ID_`       varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `REF_SCOPE_ID_`            varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `REF_SCOPE_TYPE_`          varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `REF_SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `ROOT_SCOPE_ID_`           varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `ROOT_SCOPE_TYPE_`         varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `HIERARCHY_TYPE_`          varchar(255) COLLATE utf8_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                        `ACT_IDX_HI_ENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
    KEY                        `ACT_IDX_HI_ENT_LNK_REF_SCOPE` (`REF_SCOPE_ID_`,`REF_SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
    KEY                        `ACT_IDX_HI_ENT_LNK_ROOT_SCOPE` (`ROOT_SCOPE_ID_`,`ROOT_SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
    KEY                        `ACT_IDX_HI_ENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_entitylink`
--

LOCK
TABLES `act_hi_entitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_entitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_entitylink` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_identitylink`
(
    `ID_`                  varchar(64) COLLATE utf8_bin NOT NULL,
    `GROUP_ID_`            varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `TYPE_`                varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `USER_ID_`             varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `TASK_ID_`             varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `CREATE_TIME_`         datetime(3) DEFAULT NULL,
    `PROC_INST_ID_`        varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_ID_`            varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SUB_SCOPE_ID_`        varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SCOPE_TYPE_`          varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                    `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`) USING BTREE,
    KEY                    `ACT_IDX_HI_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_HI_IDENT_LNK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_HI_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`) USING BTREE,
    KEY                    `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK
TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_procinst`
(
    `ID_`                        varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`                       int(11) DEFAULT '1',
    `PROC_INST_ID_`              varchar(64) COLLATE utf8_bin NOT NULL,
    `BUSINESS_KEY_`              varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `PROC_DEF_ID_`               varchar(64) COLLATE utf8_bin NOT NULL,
    `START_TIME_`                datetime(3) NOT NULL,
    `END_TIME_`                  datetime(3) DEFAULT NULL,
    `DURATION_`                  bigint(20) DEFAULT NULL,
    `START_USER_ID_`             varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `START_ACT_ID_`              varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `END_ACT_ID_`                varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `DELETE_REASON_`             varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `TENANT_ID_`                 varchar(255) COLLATE utf8_bin  DEFAULT '',
    `NAME_`                      varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `CALLBACK_ID_`               varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `CALLBACK_TYPE_`             varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `REFERENCE_ID_`              varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `REFERENCE_TYPE_`            varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `PROPAGATED_STAGE_INST_ID_`  varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `BUSINESS_STATUS_`           varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`) USING BTREE,
    KEY                          `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`) USING BTREE,
    KEY                          `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK
TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_taskinst`
(
    `ID_`                       varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`                      int(11) DEFAULT '1',
    `PROC_DEF_ID_`              varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `TASK_DEF_ID_`              varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `TASK_DEF_KEY_`             varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `PROC_INST_ID_`             varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `EXECUTION_ID_`             varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `SCOPE_ID_`                 varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SUB_SCOPE_ID_`             varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_TYPE_`               varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_DEFINITION_ID_`      varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `NAME_`                     varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `PARENT_TASK_ID_`           varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `DESCRIPTION_`              varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `OWNER_`                    varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `ASSIGNEE_`                 varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `START_TIME_`               datetime(3) NOT NULL,
    `CLAIM_TIME_`               datetime(3) DEFAULT NULL,
    `END_TIME_`                 datetime(3) DEFAULT NULL,
    `DURATION_`                 bigint(20) DEFAULT NULL,
    `DELETE_REASON_`            varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `PRIORITY_`                 int(11) DEFAULT NULL,
    `DUE_DATE_`                 datetime(3) DEFAULT NULL,
    `FORM_KEY_`                 varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `CATEGORY_`                 varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `TENANT_ID_`                varchar(255) COLLATE utf8_bin  DEFAULT '',
    `LAST_UPDATED_TIME_`        datetime(3) DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                         `ACT_IDX_HI_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                         `ACT_IDX_HI_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                         `ACT_IDX_HI_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                         `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK
TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_hi_tsk_log`
--

DROP TABLE IF EXISTS `act_hi_tsk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_tsk_log`
(
    `ID_`                  bigint(20) NOT NULL AUTO_INCREMENT,
    `TYPE_`                varchar(64) COLLATE utf8_bin          DEFAULT NULL,
    `TASK_ID_`             varchar(64) COLLATE utf8_bin NOT NULL,
    `TIME_STAMP_`          timestamp(3)                 NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP (3),
    `USER_ID_`             varchar(255) COLLATE utf8_bin         DEFAULT NULL,
    `DATA_`                varchar(4000) COLLATE utf8_bin        DEFAULT NULL,
    `EXECUTION_ID_`        varchar(64) COLLATE utf8_bin          DEFAULT NULL,
    `PROC_INST_ID_`        varchar(64) COLLATE utf8_bin          DEFAULT NULL,
    `PROC_DEF_ID_`         varchar(64) COLLATE utf8_bin          DEFAULT NULL,
    `SCOPE_ID_`            varchar(255) COLLATE utf8_bin         DEFAULT NULL,
    `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin         DEFAULT NULL,
    `SUB_SCOPE_ID_`        varchar(255) COLLATE utf8_bin         DEFAULT NULL,
    `SCOPE_TYPE_`          varchar(255) COLLATE utf8_bin         DEFAULT NULL,
    `TENANT_ID_`           varchar(255) COLLATE utf8_bin         DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_tsk_log`
--

LOCK
TABLES `act_hi_tsk_log` WRITE;
/*!40000 ALTER TABLE `act_hi_tsk_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_tsk_log` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_varinst`
(
    `ID_`                varchar(64) COLLATE utf8_bin  NOT NULL,
    `REV_`               int(11) DEFAULT '1',
    `PROC_INST_ID_`      varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `EXECUTION_ID_`      varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `TASK_ID_`           varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `NAME_`              varchar(255) COLLATE utf8_bin NOT NULL,
    `VAR_TYPE_`          varchar(100) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_ID_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SUB_SCOPE_ID_`      varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_TYPE_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `BYTEARRAY_ID_`      varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `DOUBLE_`            double                         DEFAULT NULL,
    `LONG_`              bigint(20) DEFAULT NULL,
    `TEXT_`              varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `TEXT2_`             varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `CREATE_TIME_`       datetime(3) DEFAULT NULL,
    `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                  `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`) USING BTREE,
    KEY                  `ACT_IDX_HI_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                  `ACT_IDX_HI_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                  `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`) USING BTREE,
    KEY                  `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`) USING BTREE,
    KEY                  `ACT_IDX_HI_PROCVAR_EXE` (`EXECUTION_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK
TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_id_bytearray`
--

DROP TABLE IF EXISTS `act_id_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_bytearray`
(
    `ID_`    varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`   int(11) DEFAULT NULL,
    `NAME_`  varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `BYTES_` longblob,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_bytearray`
--

LOCK
TABLES `act_id_bytearray` WRITE;
/*!40000 ALTER TABLE `act_id_bytearray` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_bytearray` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_group`
(
    `ID_`   varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`  int(11) DEFAULT NULL,
    `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_group`
--

LOCK
TABLES `act_id_group` WRITE;
/*!40000 ALTER TABLE `act_id_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_group` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_id_info`
--

DROP TABLE IF EXISTS `act_id_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_info`
(
    `ID_`        varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`       int(11) DEFAULT NULL,
    `USER_ID_`   varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `TYPE_`      varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `KEY_`       varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `VALUE_`     varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `PASSWORD_`  longblob,
    `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_info`
--

LOCK
TABLES `act_id_info` WRITE;
/*!40000 ALTER TABLE `act_id_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_info` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_membership`
(
    `USER_ID_`  varchar(64) COLLATE utf8_bin NOT NULL,
    `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
    PRIMARY KEY (`USER_ID_`, `GROUP_ID_`) USING BTREE,
    KEY         `ACT_FK_MEMB_GROUP` (`GROUP_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
    CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_membership`
--

LOCK
TABLES `act_id_membership` WRITE;
/*!40000 ALTER TABLE `act_id_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_membership` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_id_priv`
--

DROP TABLE IF EXISTS `act_id_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_priv`
(
    `ID_`   varchar(64) COLLATE utf8_bin  NOT NULL,
    `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    UNIQUE KEY `ACT_UNIQ_PRIV_NAME` (`NAME_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_priv`
--

LOCK
TABLES `act_id_priv` WRITE;
/*!40000 ALTER TABLE `act_id_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_priv` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_id_priv_mapping`
--

DROP TABLE IF EXISTS `act_id_priv_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_priv_mapping`
(
    `ID_`       varchar(64) COLLATE utf8_bin NOT NULL,
    `PRIV_ID_`  varchar(64) COLLATE utf8_bin NOT NULL,
    `USER_ID_`  varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY         `ACT_FK_PRIV_MAPPING` (`PRIV_ID_`) USING BTREE,
    KEY         `ACT_IDX_PRIV_USER` (`USER_ID_`) USING BTREE,
    KEY         `ACT_IDX_PRIV_GROUP` (`GROUP_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_PRIV_MAPPING` FOREIGN KEY (`PRIV_ID_`) REFERENCES `act_id_priv` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_priv_mapping`
--

LOCK
TABLES `act_id_priv_mapping` WRITE;
/*!40000 ALTER TABLE `act_id_priv_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_priv_mapping` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_id_property`
--

DROP TABLE IF EXISTS `act_id_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_property`
(
    `NAME_`  varchar(64) COLLATE utf8_bin NOT NULL,
    `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
    `REV_`   int(11) DEFAULT NULL,
    PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_property`
--

LOCK
TABLES `act_id_property` WRITE;
/*!40000 ALTER TABLE `act_id_property` DISABLE KEYS */;
INSERT INTO `act_id_property`
VALUES ('schema.version', '6.7.2.0', 1);
/*!40000 ALTER TABLE `act_id_property` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_id_token`
--

DROP TABLE IF EXISTS `act_id_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_token`
(
    `ID_`          varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`         int(11) DEFAULT NULL,
    `TOKEN_VALUE_` varchar(255) COLLATE utf8_bin         DEFAULT NULL,
    `TOKEN_DATE_`  timestamp(3)                 NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP (3),
    `IP_ADDRESS_`  varchar(255) COLLATE utf8_bin         DEFAULT NULL,
    `USER_AGENT_`  varchar(255) COLLATE utf8_bin         DEFAULT NULL,
    `USER_ID_`     varchar(255) COLLATE utf8_bin         DEFAULT NULL,
    `TOKEN_DATA_`  varchar(2000) COLLATE utf8_bin        DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_token`
--

LOCK
TABLES `act_id_token` WRITE;
/*!40000 ALTER TABLE `act_id_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_token` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_user`
(
    `ID_`           varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`          int(11) DEFAULT NULL,
    `FIRST_`        varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `LAST_`         varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `DISPLAY_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `EMAIL_`        varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `PWD_`          varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `PICTURE_ID_`   varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `TENANT_ID_`    varchar(255) COLLATE utf8_bin DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_user`
--

LOCK
TABLES `act_id_user` WRITE;
/*!40000 ALTER TABLE `act_id_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_user` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_procdef_info`
--

DROP TABLE IF EXISTS `act_procdef_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_procdef_info`
(
    `ID_`           varchar(64) COLLATE utf8_bin NOT NULL,
    `PROC_DEF_ID_`  varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`          int(11) DEFAULT NULL,
    `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
    KEY             `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
    KEY             `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
    CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_procdef_info`
--

LOCK
TABLES `act_procdef_info` WRITE;
/*!40000 ALTER TABLE `act_procdef_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_procdef_info` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_deployment`
(
    `ID_`                   varchar(64) COLLATE utf8_bin NOT NULL,
    `NAME_`                 varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `CATEGORY_`             varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `KEY_`                  varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `TENANT_ID_`            varchar(255) COLLATE utf8_bin DEFAULT '',
    `DEPLOY_TIME_`          timestamp(3) NULL DEFAULT NULL,
    `DERIVED_FROM_`         varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `DERIVED_FROM_ROOT_`    varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `ENGINE_VERSION_`       varchar(255) COLLATE utf8_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK
TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment`
VALUES ('a8c65df4-73b5-11ec-b72c-fa94c2855dc7', 'SpringBootAutoDeployment', NULL, NULL, '', '2022-01-12 14:40:59.946',
        NULL, NULL, 'a8c65df4-73b5-11ec-b72c-fa94c2855dc7', NULL);
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_model`
(
    `ID_`                           varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`                          int(11) DEFAULT NULL,
    `NAME_`                         varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `KEY_`                          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `CATEGORY_`                     varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `CREATE_TIME_`                  timestamp(3) NULL DEFAULT NULL,
    `LAST_UPDATE_TIME_`             timestamp(3) NULL DEFAULT NULL,
    `VERSION_`                      int(11) DEFAULT NULL,
    `META_INFO_`                    varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `DEPLOYMENT_ID_`                varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `EDITOR_SOURCE_VALUE_ID_`       varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `TENANT_ID_`                    varchar(255) COLLATE utf8_bin  DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                             `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`) USING BTREE,
    KEY                             `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) USING BTREE,
    KEY                             `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
    CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
    CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK
TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_procdef`
(
    `ID_`                     varchar(64) COLLATE utf8_bin  NOT NULL,
    `REV_`                    int(11) DEFAULT NULL,
    `CATEGORY_`               varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `NAME_`                   varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `KEY_`                    varchar(255) COLLATE utf8_bin NOT NULL,
    `VERSION_`                int(11) NOT NULL,
    `DEPLOYMENT_ID_`          varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `RESOURCE_NAME_`          varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `DGRM_RESOURCE_NAME_`     varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `DESCRIPTION_`            varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `HAS_START_FORM_KEY_`     tinyint(4) DEFAULT NULL,
    `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
    `SUSPENSION_STATE_`       int(11) DEFAULT NULL,
    `TENANT_ID_`              varchar(255) COLLATE utf8_bin  DEFAULT '',
    `ENGINE_VERSION_`         varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `DERIVED_FROM_`           varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `DERIVED_FROM_ROOT_`      varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `DERIVED_VERSION_`        int(11) NOT NULL DEFAULT '0',
    PRIMARY KEY (`ID_`) USING BTREE,
    UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`DERIVED_VERSION_`,`TENANT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK
TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef`
VALUES ('test1:1:a9e8e4f7-73b5-11ec-b72c-fa94c2855dc7', 1, 'http://www.activiti.org/processdef', 'test1', 'test1', 1,
        'a8c65df4-73b5-11ec-b72c-fa94c2855dc7',
        'D:\\OtherFiles\\IdeaRepository\\vains-cloud-template\\vains-flowable\\target\\classes\\processes\\test1.bpmn20.xml',
        'D:\\OtherFiles\\IdeaRepository\\vains-cloud-template\\vains-flowable\\target\\classes\\processes\\test1.test1.png',
        NULL, 0, 1, 1, '', NULL, NULL, NULL, 0);
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ru_actinst`
--

DROP TABLE IF EXISTS `act_ru_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_actinst`
(
    `ID_`                varchar(64) COLLATE utf8_bin  NOT NULL,
    `REV_`               int(11) DEFAULT '1',
    `PROC_DEF_ID_`       varchar(64) COLLATE utf8_bin  NOT NULL,
    `PROC_INST_ID_`      varchar(64) COLLATE utf8_bin  NOT NULL,
    `EXECUTION_ID_`      varchar(64) COLLATE utf8_bin  NOT NULL,
    `ACT_ID_`            varchar(255) COLLATE utf8_bin NOT NULL,
    `TASK_ID_`           varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `ACT_NAME_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `ACT_TYPE_`          varchar(255) COLLATE utf8_bin NOT NULL,
    `ASSIGNEE_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `START_TIME_`        datetime(3) NOT NULL,
    `END_TIME_`          datetime(3) DEFAULT NULL,
    `DURATION_`          bigint(20) DEFAULT NULL,
    `TRANSACTION_ORDER_` int(11) DEFAULT NULL,
    `DELETE_REASON_`     varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `TENANT_ID_`         varchar(255) COLLATE utf8_bin  DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                  `ACT_IDX_RU_ACTI_START` (`START_TIME_`) USING BTREE,
    KEY                  `ACT_IDX_RU_ACTI_END` (`END_TIME_`) USING BTREE,
    KEY                  `ACT_IDX_RU_ACTI_PROC` (`PROC_INST_ID_`) USING BTREE,
    KEY                  `ACT_IDX_RU_ACTI_PROC_ACT` (`PROC_INST_ID_`,`ACT_ID_`) USING BTREE,
    KEY                  `ACT_IDX_RU_ACTI_EXEC` (`EXECUTION_ID_`) USING BTREE,
    KEY                  `ACT_IDX_RU_ACTI_EXEC_ACT` (`EXECUTION_ID_`,`ACT_ID_`) USING BTREE,
    KEY                  `ACT_IDX_RU_ACTI_TASK` (`TASK_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_actinst`
--

LOCK
TABLES `act_ru_actinst` WRITE;
/*!40000 ALTER TABLE `act_ru_actinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_actinst` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ru_deadletter_job`
--

DROP TABLE IF EXISTS `act_ru_deadletter_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_deadletter_job`
(
    `ID_`                  varchar(64) COLLATE utf8_bin  NOT NULL,
    `REV_`                 int(11) DEFAULT NULL,
    `CATEGORY_`            varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `TYPE_`                varchar(255) COLLATE utf8_bin NOT NULL,
    `EXCLUSIVE_`           tinyint(1) DEFAULT NULL,
    `EXECUTION_ID_`        varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROC_DEF_ID_`         varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `ELEMENT_ID_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `ELEMENT_NAME_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_ID_`            varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SUB_SCOPE_ID_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_TYPE_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `CORRELATION_ID_`      varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `EXCEPTION_STACK_ID_`  varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `EXCEPTION_MSG_`       varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `DUEDATE_`             timestamp(3) NULL DEFAULT NULL,
    `REPEAT_`              varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `HANDLER_TYPE_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `HANDLER_CFG_`         varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `CUSTOM_VALUES_ID_`    varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `CREATE_TIME_`         timestamp(3) NULL DEFAULT NULL,
    `TENANT_ID_`           varchar(255) COLLATE utf8_bin  DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                    `ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
    KEY                    `ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
    KEY                    `ACT_IDX_DEADLETTER_JOB_CORRELATION_ID` (`CORRELATION_ID_`) USING BTREE,
    KEY                    `ACT_IDX_DJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_DJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_DJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
    KEY                    `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
    KEY                    `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
    CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
    CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
    CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
    CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_deadletter_job`
--

LOCK
TABLES `act_ru_deadletter_job` WRITE;
/*!40000 ALTER TABLE `act_ru_deadletter_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_deadletter_job` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ru_entitylink`
--

DROP TABLE IF EXISTS `act_ru_entitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_entitylink`
(
    `ID_`                      varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`                     int(11) DEFAULT NULL,
    `CREATE_TIME_`             datetime(3) DEFAULT NULL,
    `LINK_TYPE_`               varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SCOPE_ID_`                varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SUB_SCOPE_ID_`            varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SCOPE_TYPE_`              varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SCOPE_DEFINITION_ID_`     varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `PARENT_ELEMENT_ID_`       varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `REF_SCOPE_ID_`            varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `REF_SCOPE_TYPE_`          varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `REF_SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `ROOT_SCOPE_ID_`           varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `ROOT_SCOPE_TYPE_`         varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `HIERARCHY_TYPE_`          varchar(255) COLLATE utf8_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                        `ACT_IDX_ENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
    KEY                        `ACT_IDX_ENT_LNK_REF_SCOPE` (`REF_SCOPE_ID_`,`REF_SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
    KEY                        `ACT_IDX_ENT_LNK_ROOT_SCOPE` (`ROOT_SCOPE_ID_`,`ROOT_SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
    KEY                        `ACT_IDX_ENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_entitylink`
--

LOCK
TABLES `act_ru_entitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_entitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_entitylink` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_event_subscr`
(
    `ID_`                  varchar(64) COLLATE utf8_bin  NOT NULL,
    `REV_`                 int(11) DEFAULT NULL,
    `EVENT_TYPE_`          varchar(255) COLLATE utf8_bin NOT NULL,
    `EVENT_NAME_`          varchar(255) COLLATE utf8_bin          DEFAULT NULL,
    `EXECUTION_ID_`        varchar(64) COLLATE utf8_bin           DEFAULT NULL,
    `PROC_INST_ID_`        varchar(64) COLLATE utf8_bin           DEFAULT NULL,
    `ACTIVITY_ID_`         varchar(64) COLLATE utf8_bin           DEFAULT NULL,
    `CONFIGURATION_`       varchar(255) COLLATE utf8_bin          DEFAULT NULL,
    `CREATED_`             timestamp(3)                  NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `PROC_DEF_ID_`         varchar(64) COLLATE utf8_bin           DEFAULT NULL,
    `SUB_SCOPE_ID_`        varchar(64) COLLATE utf8_bin           DEFAULT NULL,
    `SCOPE_ID_`            varchar(64) COLLATE utf8_bin           DEFAULT NULL,
    `SCOPE_DEFINITION_ID_` varchar(64) COLLATE utf8_bin           DEFAULT NULL,
    `SCOPE_TYPE_`          varchar(64) COLLATE utf8_bin           DEFAULT NULL,
    `TENANT_ID_`           varchar(255) COLLATE utf8_bin          DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                    `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`) USING BTREE,
    KEY                    `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK
TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_execution`
(
    `ID_`                        varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`                       int(11) DEFAULT NULL,
    `PROC_INST_ID_`              varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `BUSINESS_KEY_`              varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `PARENT_ID_`                 varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `PROC_DEF_ID_`               varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `SUPER_EXEC_`                varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `ROOT_PROC_INST_ID_`         varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `ACT_ID_`                    varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `IS_ACTIVE_`                 tinyint(4) DEFAULT NULL,
    `IS_CONCURRENT_`             tinyint(4) DEFAULT NULL,
    `IS_SCOPE_`                  tinyint(4) DEFAULT NULL,
    `IS_EVENT_SCOPE_`            tinyint(4) DEFAULT NULL,
    `IS_MI_ROOT_`                tinyint(4) DEFAULT NULL,
    `SUSPENSION_STATE_`          int(11) DEFAULT NULL,
    `CACHED_ENT_STATE_`          int(11) DEFAULT NULL,
    `TENANT_ID_`                 varchar(255) COLLATE utf8_bin DEFAULT '',
    `NAME_`                      varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `START_ACT_ID_`              varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `START_TIME_`                datetime(3) DEFAULT NULL,
    `START_USER_ID_`             varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `LOCK_TIME_`                 timestamp(3) NULL DEFAULT NULL,
    `LOCK_OWNER_`                varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `IS_COUNT_ENABLED_`          tinyint(4) DEFAULT NULL,
    `EVT_SUBSCR_COUNT_`          int(11) DEFAULT NULL,
    `TASK_COUNT_`                int(11) DEFAULT NULL,
    `JOB_COUNT_`                 int(11) DEFAULT NULL,
    `TIMER_JOB_COUNT_`           int(11) DEFAULT NULL,
    `SUSP_JOB_COUNT_`            int(11) DEFAULT NULL,
    `DEADLETTER_JOB_COUNT_`      int(11) DEFAULT NULL,
    `EXTERNAL_WORKER_JOB_COUNT_` int(11) DEFAULT NULL,
    `VAR_COUNT_`                 int(11) DEFAULT NULL,
    `ID_LINK_COUNT_`             int(11) DEFAULT NULL,
    `CALLBACK_ID_`               varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `CALLBACK_TYPE_`             varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `REFERENCE_ID_`              varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `REFERENCE_TYPE_`            varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `PROPAGATED_STAGE_INST_ID_`  varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `BUSINESS_STATUS_`           varchar(255) COLLATE utf8_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                          `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`) USING BTREE,
    KEY                          `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`) USING BTREE,
    KEY                          `ACT_IDX_EXEC_REF_ID_` (`REFERENCE_ID_`) USING BTREE,
    KEY                          `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`) USING BTREE,
    KEY                          `ACT_FK_EXE_PARENT` (`PARENT_ID_`) USING BTREE,
    KEY                          `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`) USING BTREE,
    KEY                          `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
    CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
    CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK
TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ru_external_job`
--

DROP TABLE IF EXISTS `act_ru_external_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_external_job`
(
    `ID_`                  varchar(64) COLLATE utf8_bin  NOT NULL,
    `REV_`                 int(11) DEFAULT NULL,
    `CATEGORY_`            varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `TYPE_`                varchar(255) COLLATE utf8_bin NOT NULL,
    `LOCK_EXP_TIME_`       timestamp(3) NULL DEFAULT NULL,
    `LOCK_OWNER_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `EXCLUSIVE_`           tinyint(1) DEFAULT NULL,
    `EXECUTION_ID_`        varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROC_DEF_ID_`         varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `ELEMENT_ID_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `ELEMENT_NAME_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_ID_`            varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SUB_SCOPE_ID_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_TYPE_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `CORRELATION_ID_`      varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `RETRIES_`             int(11) DEFAULT NULL,
    `EXCEPTION_STACK_ID_`  varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `EXCEPTION_MSG_`       varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `DUEDATE_`             timestamp(3) NULL DEFAULT NULL,
    `REPEAT_`              varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `HANDLER_TYPE_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `HANDLER_CFG_`         varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `CUSTOM_VALUES_ID_`    varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `CREATE_TIME_`         timestamp(3) NULL DEFAULT NULL,
    `TENANT_ID_`           varchar(255) COLLATE utf8_bin  DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                    `ACT_IDX_EXTERNAL_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
    KEY                    `ACT_IDX_EXTERNAL_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
    KEY                    `ACT_IDX_EXTERNAL_JOB_CORRELATION_ID` (`CORRELATION_ID_`) USING BTREE,
    KEY                    `ACT_IDX_EJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_EJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_EJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
    CONSTRAINT `ACT_FK_EXTERNAL_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
    CONSTRAINT `ACT_FK_EXTERNAL_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_external_job`
--

LOCK
TABLES `act_ru_external_job` WRITE;
/*!40000 ALTER TABLE `act_ru_external_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_external_job` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ru_history_job`
--

DROP TABLE IF EXISTS `act_ru_history_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_history_job`
(
    `ID_`                 varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`                int(11) DEFAULT NULL,
    `LOCK_EXP_TIME_`      timestamp(3) NULL DEFAULT NULL,
    `LOCK_OWNER_`         varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `RETRIES_`            int(11) DEFAULT NULL,
    `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `EXCEPTION_MSG_`      varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `HANDLER_TYPE_`       varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `HANDLER_CFG_`        varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `CUSTOM_VALUES_ID_`   varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `ADV_HANDLER_CFG_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `CREATE_TIME_`        timestamp(3) NULL DEFAULT NULL,
    `SCOPE_TYPE_`         varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `TENANT_ID_`          varchar(255) COLLATE utf8_bin  DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_history_job`
--

LOCK
TABLES `act_ru_history_job` WRITE;
/*!40000 ALTER TABLE `act_ru_history_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_history_job` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_identitylink`
(
    `ID_`                  varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`                 int(11) DEFAULT NULL,
    `GROUP_ID_`            varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `TYPE_`                varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `USER_ID_`             varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `TASK_ID_`             varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `PROC_INST_ID_`        varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `PROC_DEF_ID_`         varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_ID_`            varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SUB_SCOPE_ID_`        varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SCOPE_TYPE_`          varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                    `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`) USING BTREE,
    KEY                    `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`) USING BTREE,
    KEY                    `ACT_IDX_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_IDENT_LNK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`) USING BTREE,
    KEY                    `ACT_FK_TSKASS_TASK` (`TASK_ID_`) USING BTREE,
    KEY                    `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
    CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
    CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK
TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_job`
(
    `ID_`                  varchar(64) COLLATE utf8_bin  NOT NULL,
    `REV_`                 int(11) DEFAULT NULL,
    `CATEGORY_`            varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `TYPE_`                varchar(255) COLLATE utf8_bin NOT NULL,
    `LOCK_EXP_TIME_`       timestamp(3) NULL DEFAULT NULL,
    `LOCK_OWNER_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `EXCLUSIVE_`           tinyint(1) DEFAULT NULL,
    `EXECUTION_ID_`        varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROC_DEF_ID_`         varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `ELEMENT_ID_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `ELEMENT_NAME_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_ID_`            varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SUB_SCOPE_ID_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_TYPE_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `CORRELATION_ID_`      varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `RETRIES_`             int(11) DEFAULT NULL,
    `EXCEPTION_STACK_ID_`  varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `EXCEPTION_MSG_`       varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `DUEDATE_`             timestamp(3) NULL DEFAULT NULL,
    `REPEAT_`              varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `HANDLER_TYPE_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `HANDLER_CFG_`         varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `CUSTOM_VALUES_ID_`    varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `CREATE_TIME_`         timestamp(3) NULL DEFAULT NULL,
    `TENANT_ID_`           varchar(255) COLLATE utf8_bin  DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                    `ACT_IDX_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
    KEY                    `ACT_IDX_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
    KEY                    `ACT_IDX_JOB_CORRELATION_ID` (`CORRELATION_ID_`) USING BTREE,
    KEY                    `ACT_IDX_JOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_JOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_JOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
    KEY                    `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
    KEY                    `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
    CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
    CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
    CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
    CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK
TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ru_suspended_job`
--

DROP TABLE IF EXISTS `act_ru_suspended_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_suspended_job`
(
    `ID_`                  varchar(64) COLLATE utf8_bin  NOT NULL,
    `REV_`                 int(11) DEFAULT NULL,
    `CATEGORY_`            varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `TYPE_`                varchar(255) COLLATE utf8_bin NOT NULL,
    `EXCLUSIVE_`           tinyint(1) DEFAULT NULL,
    `EXECUTION_ID_`        varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROC_DEF_ID_`         varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `ELEMENT_ID_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `ELEMENT_NAME_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_ID_`            varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SUB_SCOPE_ID_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_TYPE_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `CORRELATION_ID_`      varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `RETRIES_`             int(11) DEFAULT NULL,
    `EXCEPTION_STACK_ID_`  varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `EXCEPTION_MSG_`       varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `DUEDATE_`             timestamp(3) NULL DEFAULT NULL,
    `REPEAT_`              varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `HANDLER_TYPE_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `HANDLER_CFG_`         varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `CUSTOM_VALUES_ID_`    varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `CREATE_TIME_`         timestamp(3) NULL DEFAULT NULL,
    `TENANT_ID_`           varchar(255) COLLATE utf8_bin  DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                    `ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
    KEY                    `ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
    KEY                    `ACT_IDX_SUSPENDED_JOB_CORRELATION_ID` (`CORRELATION_ID_`) USING BTREE,
    KEY                    `ACT_IDX_SJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_SJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_SJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
    KEY                    `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
    KEY                    `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
    CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
    CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
    CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
    CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_suspended_job`
--

LOCK
TABLES `act_ru_suspended_job` WRITE;
/*!40000 ALTER TABLE `act_ru_suspended_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_suspended_job` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_task`
(
    `ID_`                       varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`                      int(11) DEFAULT NULL,
    `EXECUTION_ID_`             varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROC_INST_ID_`             varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROC_DEF_ID_`              varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `TASK_DEF_ID_`              varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `SCOPE_ID_`                 varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SUB_SCOPE_ID_`             varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_TYPE_`               varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_DEFINITION_ID_`      varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `NAME_`                     varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `PARENT_TASK_ID_`           varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `DESCRIPTION_`              varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `TASK_DEF_KEY_`             varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `OWNER_`                    varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `ASSIGNEE_`                 varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `DELEGATION_`               varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PRIORITY_`                 int(11) DEFAULT NULL,
    `CREATE_TIME_`              timestamp(3) NULL DEFAULT NULL,
    `DUE_DATE_`                 datetime(3) DEFAULT NULL,
    `CATEGORY_`                 varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SUSPENSION_STATE_`         int(11) DEFAULT NULL,
    `TENANT_ID_`                varchar(255) COLLATE utf8_bin  DEFAULT '',
    `FORM_KEY_`                 varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `CLAIM_TIME_`               datetime(3) DEFAULT NULL,
    `IS_COUNT_ENABLED_`         tinyint(4) DEFAULT NULL,
    `VAR_COUNT_`                int(11) DEFAULT NULL,
    `ID_LINK_COUNT_`            int(11) DEFAULT NULL,
    `SUB_TASK_COUNT_`           int(11) DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                         `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`) USING BTREE,
    KEY                         `ACT_IDX_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                         `ACT_IDX_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                         `ACT_IDX_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                         `ACT_FK_TASK_EXE` (`EXECUTION_ID_`) USING BTREE,
    KEY                         `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`) USING BTREE,
    KEY                         `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
    CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
    CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK
TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ru_timer_job`
--

DROP TABLE IF EXISTS `act_ru_timer_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_timer_job`
(
    `ID_`                  varchar(64) COLLATE utf8_bin  NOT NULL,
    `REV_`                 int(11) DEFAULT NULL,
    `CATEGORY_`            varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `TYPE_`                varchar(255) COLLATE utf8_bin NOT NULL,
    `LOCK_EXP_TIME_`       timestamp(3) NULL DEFAULT NULL,
    `LOCK_OWNER_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `EXCLUSIVE_`           tinyint(1) DEFAULT NULL,
    `EXECUTION_ID_`        varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROC_DEF_ID_`         varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `ELEMENT_ID_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `ELEMENT_NAME_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_ID_`            varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SUB_SCOPE_ID_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_TYPE_`          varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `CORRELATION_ID_`      varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `RETRIES_`             int(11) DEFAULT NULL,
    `EXCEPTION_STACK_ID_`  varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `EXCEPTION_MSG_`       varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `DUEDATE_`             timestamp(3) NULL DEFAULT NULL,
    `REPEAT_`              varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `HANDLER_TYPE_`        varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `HANDLER_CFG_`         varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `CUSTOM_VALUES_ID_`    varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `CREATE_TIME_`         timestamp(3) NULL DEFAULT NULL,
    `TENANT_ID_`           varchar(255) COLLATE utf8_bin  DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY                    `ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
    KEY                    `ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
    KEY                    `ACT_IDX_TIMER_JOB_CORRELATION_ID` (`CORRELATION_ID_`) USING BTREE,
    KEY                    `ACT_IDX_TIMER_JOB_DUEDATE` (`DUEDATE_`) USING BTREE,
    KEY                    `ACT_IDX_TJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_TJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_IDX_TJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY                    `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
    KEY                    `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
    KEY                    `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_TIMER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
    CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
    CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
    CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
    CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_timer_job`
--

LOCK
TABLES `act_ru_timer_job` WRITE;
/*!40000 ALTER TABLE `act_ru_timer_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_timer_job` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_variable`
(
    `ID_`           varchar(64) COLLATE utf8_bin  NOT NULL,
    `REV_`          int(11) DEFAULT NULL,
    `TYPE_`         varchar(255) COLLATE utf8_bin NOT NULL,
    `NAME_`         varchar(255) COLLATE utf8_bin NOT NULL,
    `EXECUTION_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `PROC_INST_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `TASK_ID_`      varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `SCOPE_ID_`     varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_TYPE_`   varchar(255) COLLATE utf8_bin  DEFAULT NULL,
    `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin   DEFAULT NULL,
    `DOUBLE_`       double                         DEFAULT NULL,
    `LONG_`         bigint(20) DEFAULT NULL,
    `TEXT_`         varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    `TEXT2_`        varchar(4000) COLLATE utf8_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY             `ACT_IDX_RU_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY             `ACT_IDX_RU_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
    KEY             `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`) USING BTREE,
    KEY             `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`) USING BTREE,
    KEY             `ACT_FK_VAR_EXE` (`EXECUTION_ID_`) USING BTREE,
    KEY             `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`) USING BTREE,
    CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
    CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
    CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK
TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `flw_channel_definition`
--

DROP TABLE IF EXISTS `flw_channel_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_channel_definition`
(
    `ID_`             varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `VERSION_`        int(11) DEFAULT NULL,
    `KEY_`            varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CATEGORY_`       varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID_`  varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CREATE_TIME_`    datetime(3) DEFAULT NULL,
    `TENANT_ID_`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `RESOURCE_NAME_`  varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DESCRIPTION_`    varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TYPE_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `IMPLEMENTATION_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    UNIQUE KEY `ACT_IDX_CHANNEL_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_channel_definition`
--

LOCK
TABLES `flw_channel_definition` WRITE;
/*!40000 ALTER TABLE `flw_channel_definition` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_channel_definition` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `flw_ev_databasechangelog`
--

DROP TABLE IF EXISTS `flw_ev_databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_ev_databasechangelog`
(
    `ID`            varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `AUTHOR`        varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `FILENAME`      varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `DATEEXECUTED`  datetime                         NOT NULL,
    `ORDEREXECUTED` int(11) NOT NULL,
    `EXECTYPE`      varchar(10) COLLATE utf8mb4_bin  NOT NULL,
    `MD5SUM`        varchar(35) COLLATE utf8mb4_bin  DEFAULT NULL,
    `DESCRIPTION`   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `COMMENTS`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TAG`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LIQUIBASE`     varchar(20) COLLATE utf8mb4_bin  DEFAULT NULL,
    `CONTEXTS`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `LABELS`        varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID` varchar(10) COLLATE utf8mb4_bin  DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_ev_databasechangelog`
--

LOCK
TABLES `flw_ev_databasechangelog` WRITE;
/*!40000 ALTER TABLE `flw_ev_databasechangelog` DISABLE KEYS */;
INSERT INTO `flw_ev_databasechangelog`
VALUES ('1', 'flowable', 'org/flowable/eventregistry/db/liquibase/flowable-eventregistry-db-changelog.xml',
        '2022-01-12 22:39:56', 1, 'EXECUTED', '8:1b0c48c9cf7945be799d868a2626d687',
        'createTable tableName=FLW_EVENT_DEPLOYMENT; createTable tableName=FLW_EVENT_RESOURCE; createTable tableName=FLW_EVENT_DEFINITION; createIndex indexName=ACT_IDX_EVENT_DEF_UNIQ, tableName=FLW_EVENT_DEFINITION; createTable tableName=FLW_CHANNEL_DEFIN...',
        '', NULL, '3.10.3', NULL, NULL, '1998395602'),
       ('2', 'flowable', 'org/flowable/eventregistry/db/liquibase/flowable-eventregistry-db-changelog.xml',
        '2022-01-12 22:39:57', 2, 'EXECUTED', '8:0ea825feb8e470558f0b5754352b9cda',
        'addColumn tableName=FLW_CHANNEL_DEFINITION; addColumn tableName=FLW_CHANNEL_DEFINITION', '', NULL, '3.10.3',
        NULL, NULL, '1998395602'),
       ('3', 'flowable', 'org/flowable/eventregistry/db/liquibase/flowable-eventregistry-db-changelog.xml',
        '2022-01-12 22:39:57', 3, 'EXECUTED', '8:3c2bb293350b5cbe6504331980c9dcee', 'customChange', '', NULL, '3.10.3',
        NULL, NULL, '1998395602');
/*!40000 ALTER TABLE `flw_ev_databasechangelog` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `flw_ev_databasechangeloglock`
--

DROP TABLE IF EXISTS `flw_ev_databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_ev_databasechangeloglock`
(
    `ID`          int(11) NOT NULL,
    `LOCKED`      bit(1) NOT NULL,
    `LOCKGRANTED` datetime                         DEFAULT NULL,
    `LOCKEDBY`    varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_ev_databasechangeloglock`
--

LOCK
TABLES `flw_ev_databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `flw_ev_databasechangeloglock` DISABLE KEYS */;
INSERT INTO `flw_ev_databasechangeloglock`
VALUES (1, _binary '\0', NULL, NULL);
/*!40000 ALTER TABLE `flw_ev_databasechangeloglock` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `flw_event_definition`
--

DROP TABLE IF EXISTS `flw_event_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_event_definition`
(
    `ID_`            varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`          varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `VERSION_`       int(11) DEFAULT NULL,
    `KEY_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CATEGORY_`      varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `TENANT_ID_`     varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `RESOURCE_NAME_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DESCRIPTION_`   varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE,
    UNIQUE KEY `ACT_IDX_EVENT_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_event_definition`
--

LOCK
TABLES `flw_event_definition` WRITE;
/*!40000 ALTER TABLE `flw_event_definition` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_event_definition` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `flw_event_deployment`
--

DROP TABLE IF EXISTS `flw_event_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_event_deployment`
(
    `ID_`                   varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`                 varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `CATEGORY_`             varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOY_TIME_`          datetime(3) DEFAULT NULL,
    `TENANT_ID_`            varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_event_deployment`
--

LOCK
TABLES `flw_event_deployment` WRITE;
/*!40000 ALTER TABLE `flw_event_deployment` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_event_deployment` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `flw_event_resource`
--

DROP TABLE IF EXISTS `flw_event_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_event_resource`
(
    `ID_`             varchar(255) COLLATE utf8mb4_bin NOT NULL,
    `NAME_`           varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `DEPLOYMENT_ID_`  varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    `RESOURCE_BYTES_` longblob,
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_event_resource`
--

LOCK
TABLES `flw_event_resource` WRITE;
/*!40000 ALTER TABLE `flw_event_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_event_resource` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `flw_ru_batch`
--

DROP TABLE IF EXISTS `flw_ru_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_ru_batch`
(
    `ID_`            varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`           int(11) DEFAULT NULL,
    `TYPE_`          varchar(64) COLLATE utf8_bin NOT NULL,
    `SEARCH_KEY_`    varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SEARCH_KEY2_`   varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `CREATE_TIME_`   datetime(3) NOT NULL,
    `COMPLETE_TIME_` datetime(3) DEFAULT NULL,
    `STATUS_`        varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `BATCH_DOC_ID_`  varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `TENANT_ID_`     varchar(255) COLLATE utf8_bin DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_ru_batch`
--

LOCK
TABLES `flw_ru_batch` WRITE;
/*!40000 ALTER TABLE `flw_ru_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_ru_batch` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `flw_ru_batch_part`
--

DROP TABLE IF EXISTS `flw_ru_batch_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_ru_batch_part`
(
    `ID_`            varchar(64) COLLATE utf8_bin NOT NULL,
    `REV_`           int(11) DEFAULT NULL,
    `BATCH_ID_`      varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `TYPE_`          varchar(64) COLLATE utf8_bin NOT NULL,
    `SCOPE_ID_`      varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `SUB_SCOPE_ID_`  varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `SCOPE_TYPE_`    varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `SEARCH_KEY_`    varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `SEARCH_KEY2_`   varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `CREATE_TIME_`   datetime(3) NOT NULL,
    `COMPLETE_TIME_` datetime(3) DEFAULT NULL,
    `STATUS_`        varchar(255) COLLATE utf8_bin DEFAULT NULL,
    `RESULT_DOC_ID_` varchar(64) COLLATE utf8_bin  DEFAULT NULL,
    `TENANT_ID_`     varchar(255) COLLATE utf8_bin DEFAULT '',
    PRIMARY KEY (`ID_`) USING BTREE,
    KEY              `FLW_IDX_BATCH_PART` (`BATCH_ID_`) USING BTREE,
    CONSTRAINT `FLW_FK_BATCH_PART_PARENT` FOREIGN KEY (`BATCH_ID_`) REFERENCES `flw_ru_batch` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_ru_batch_part`
--

LOCK
TABLES `flw_ru_batch_part` WRITE;
/*!40000 ALTER TABLE `flw_ru_batch_part` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_ru_batch_part` ENABLE KEYS */;
UNLOCK
TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-26  1:30:35