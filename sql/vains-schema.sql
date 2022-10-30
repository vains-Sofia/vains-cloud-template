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
DROP TABLE IF EXISTS `oauth2_authorization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_authorization`
--

LOCK
TABLES `oauth2_authorization` WRITE;
/*!40000 ALTER TABLE `oauth2_authorization` DISABLE KEYS */;
INSERT INTO `oauth2_authorization`
VALUES ('018cef1a-4e58-41b5-b14d-db94e452996e', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-20 01:45:01', NULL, NULL,
        _binary 'eyJraWQiOiI5NDBhNTZlMy1iYmQ4LTQzOGMtYTU3Mi1jNGMwNzNjYzE5YjUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMDExMTAxLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTMwMTgzMDEsImlhdCI6MTY1MzAxMTEwMX0.ndOPIWhgt3SYTfbUTzwITUvLI4Y1hkYCXSzjWAyxU_D-IX4hbd5wmfGKnqlpUhDOcuNfizEtPi-mHbSAa79Io6JGbJhJeZV18eo7vGZc67lruv7cxye9LpWbinrQbK1AQQtFx_nwElzejZ2UAk_rf2co_kdaFO8uJc2PDEGXlNty4MvofAS2XfbwXmS2f8QAQM6wG7SGYdylSdzizlkBmTY8BbNWwMFtfNrh8W1MVthHwJxjN5pLnnBVRZ0M2aMwB6pBZ7AqrtIkOAoKRf5g7CM0jETdfGb-AL2JnqTnDsnM9_pYjPVaG0oYhtNS82aT_LOwymE0lmjtCepkLCH8Qw',
        '2022-05-20 09:45:02', '2022-05-20 11:45:02',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653011101.786000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1653018301.786000000],\"iat\":[\"java.time.Instant\",1653011101.786000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('01bca429-3274-4c34-8808-93417a8b1aa8', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-20 01:11:53', NULL, NULL,
        _binary 'eyJraWQiOiI5NDBhNTZlMy1iYmQ4LTQzOGMtYTU3Mi1jNGMwNzNjYzE5YjUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUzMDA5MTEzLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTMwMTYzMTMsImlhdCI6MTY1MzAwOTExMywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.u_qJ3ph8DZHZo4bH4VavhkKcHsM6GGCiJZBdNtlMvgcqAgDnNEYidLppcicgl__LS0PU4DWQqcsLOanZCeHlldPeIxmel59WV16b3g2jUQBSsN1nfjTbvDEof9Ch-jKv62sHZGzfXxD2XEJrpE-64fk2Vr41yKcp0Ku7qs6-C5aDcTrDaKZ_77ooHoG6B3mJgz-Jzn-XkzFi8CGaXc8aeP-XEuI_EpMD3YGm1tUvBr71h8L3s-x7GP_lUhZ2NKxntj-kAp1Lj381kIgGhYU6ysuaOPjz1lO7okSQcPAFm0FV8dqk1Dh16FmKD5b56NhUhJ5zfIgRZedxseRR73OxEA',
        '2022-05-20 09:11:54', '2022-05-20 11:11:54',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1653009113.827000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653016313.827000000],\"iat\":[\"java.time.Instant\",1653009113.827000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL,
        _binary '3mYAFBVh5Dt937pZc39CAqU316bgyiWBqJ2l8kbxe-gMJOOCm0OgPDdvsm6awrKtfBJmXlkua58UgtHQRVx0W6JHRPtn7G-jMTTdxF05KnVhrDU1Qms4SWehPdtZhFJa',
        '2022-05-20 09:11:54', '2022-05-27 09:11:54',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('02803437-9f69-4295-9dc5-eada618ebcdd', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"SIYHkPGF2r0qzGcF3m8teWeJPDQue2fiRgbZLII6XyA=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=SIYHkPGF2r0qzGcF3m8teWeJPDQue2fiRgbZLII6XyA%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"4389A1F206E679E4D2300F2F2238F1B2\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'fH0E-u_wdbmOxyKaby_x6RYCbZZGlZOq4LXMHpx2jB_cw7jSrJIyB_IVN8FOlfsf2LaDuBZFzoXo_dkPdiMGd3AC1QYJPJoaqyOVjpOVnypZ8CBbB6I-aLXp-xxW3XYo',
        '2022-05-11 01:32:54', '2022-05-11 09:37:54',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI4MGRkNjhiMi00NDUxLTQzMzctYWQ3Yi01NzM0NTkxNmU0ZjEiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjIzMjc3Mywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJleHAiOjE2NTIyMzk5NzMsImlhdCI6MTY1MjIzMjc3MywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.mNsFzR7V05KAcKUOsth6wS2SCZ-5G_F3Fr0NXDusOfygo1X-NtWbWB5gr00TQjv2ntuD8MVKrHY5JkaLrw--h3wTK5R7TQC89f8EI0AU7jIvP0pnL9neAjg1STdaxg1bhAfLwkGl3lEg13XRbRAF0aafE5287GXyXtE9lVdfl9OQZssdcjkUEtNMpxNZT4Hbtd-2YWgjXF1LXCUDqieznIQHWq0ixalw5jJnR4Uia0ZlW9VUaJ-69s1mdx2GUzNuM-S4f4nnCBsCKpVC6nx7Cz6pKMeW_bM3CglIuhxT_MGChsiV0RaMUNFvbmOeAz6Yub-t93W2e-Tp5-KjR7oovA',
        '2022-05-11 09:32:54', '2022-05-11 11:32:54',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652232773.805000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652239973.805000000],\"iat\":[\"java.time.Instant\",1652232773.805000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'vTWhCiMBhnpRa3oaO3liLwx3ljAscBEaFi1Bog8l60SIC2r8naxWM0CR3bn2KEpIBnrZ7GB2g6GxYqOjuryqC0Zw3mDD_DTeF4PIuDm1FEA03ozityXghtohB2HqMhRQ',
        '2022-05-11 09:32:54', '2022-05-18 09:32:54',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('05c39a73-18ea-4e3b-a4bd-7e0f6a0b70c5', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"j88r73FL4JZIz_o9l73IszJ1Xo3wW6YltmISxVLM1Fw=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=j88r73FL4JZIz_o9l73IszJ1Xo3wW6YltmISxVLM1Fw%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.32.0\",\"sessionId\":\"CBB4364DE6F9185752D5957FCFA4B706\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'EuQ6a-xZepP-keonKYwSQB4klMBRKfJpjLKiQF0Y4MJ7TSSrZPmbOnMxMN_NIB7khWEMBPedZr3DGUisokUsRuAd5OhpDh_m7OGW5DCJbHtVHVZXJitiLqE6tPMSbQfR',
        '2022-05-16 16:57:47', '2022-05-17 01:02:47',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzNTNhZTYwZi03NjE4LTQzMzEtODk3OC1kN2U1ZGI2YjBhMzYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcyMDI2Nywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3Mjc0NjcsImlhdCI6MTY1MjcyMDI2NywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.DHDNBgNO2XQXm9hMgzZKqqerKbDPsfnPl-tdubgiU9aQggASvPQLiIS94WCfaekxNtLuCKYalgyQm4T23wFLc2vbT21SxgV-nM6GjniQRmjXOH6GWX7lpnBLpck2ZQOpA35FkEt7t0D7h9W9g8bswvLHv3XD0KwdiW4k8k-A-GaDSV733jNGShtmgSfSi70LuFXziwAWym6FDZSKuErh6dIoCrnGgPRtqGF2j9HlWzYXRpx51_UlYnnhRWxWFL3hR2_WOf3CYREaSUWoA7N1uEVzScQAtVrtP3bSDXgj4LbrGBLhFSqssjJ0Lkngl_QwED4iC_hmkaw0fTH_WhAWhQ',
        '2022-05-17 00:57:47', '2022-05-17 02:57:47',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652720267.102000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652727467.102000000],\"iat\":[\"java.time.Instant\",1652720267.102000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'CvRoN05QOP1vxe-XYQ-U2iBGIInX4BAD_cBD34hMohgFeEZOKoT0YZr_KNR54ehY8H8LnFDvqs-lhPjkVrOIYC5g3aMy_qn6nVmrSP8oq6IRQk3fJb0X9GY9-NwE_V6r',
        '2022-05-17 00:57:47', '2022-05-24 00:57:47',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('08f8bcac-f92b-439b-b824-8def73197be8', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"9bBNTXEBditoxr-LwzrYaNh-vyMC2g4bxhhzkAYxsyI=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=9bBNTXEBditoxr-LwzrYaNh-vyMC2g4bxhhzkAYxsyI%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.0.1\",\"sessionId\":\"7CA87E44E1427E22316A99F78414EE90\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'vYA70WiNi9OZoh8unXcM78CEthFGRNyEpyHAdyEDJmMsebbMgpviSRbsocj6rDrLZSOl6jI6YGi_4grtlVerjzLCbJPq3SGC2Onga9jak1fBmtNc5p7JcQb0XpUsp4TX',
        '2022-05-16 17:28:53', '2022-05-17 01:33:53',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIyOWU1OWE4OS0wMDJlLTRiYTYtOTQ5NS1mNGM3MTM0YmVjN2UiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcyMjEzMywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjkzMzMsImlhdCI6MTY1MjcyMjEzMywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.VdeMkqUPEMaockKdcLz7uOOhoHbA0K2KZJaf1AhXWa4lG-qB8cI7kECT0cWIkc8Ws2JMK_NVpVzQypICZMjPuIJomvD9F58mKJafki1cwzBhXtMZRPrfBfgPJkwXl-mU6qLZsWM02TFQzcoJ1cPW41CGEtE58rxvkA_JydKqxkSTcprIWupDe__Jgn0GwITt03TI0GDQHWYVlZKFYBdF-587zfoCC5uh42YvRCak4TuqNwHf1peHjsNTsmvye_oZLpU7AIbNEOg9nvtzJ34PjvV4r9nW4NQ8j5nUEMPmh-4FfsybZoGQUF65SQ-cVjHDTWlCxjNpxK9DoKR2DiC3Ug',
        '2022-05-17 01:28:54', '2022-05-17 03:28:54',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652722133.680000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652729333.680000000],\"iat\":[\"java.time.Instant\",1652722133.680000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'ENZrA3YbV2AzJaPPwmS1OS25Ok_lgMAt3u6foIbmWJYTzaMfIP1qxkTHaTx-NzAN5CzZ-ENJYIfBi3CqST_kIqICDj9RzS_een3LQIEt2dOAuUFSK-o8KXNtY1-2VPPO',
        '2022-05-17 01:28:54', '2022-05-24 01:28:54',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('0c73dd3e-c323-49f5-800f-aa292c2cafc2', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"7oQQdGAQyJV82VRCD-AJIr5AeXxCn8Xb6BS54Q3zrWI=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=7oQQdGAQyJV82VRCD-AJIr5AeXxCn8Xb6BS54Q3zrWI%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"66CDA13752E23E906A6FDC08A3D98828\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'M2eqhih274dDxeopVwJ7rI6zYuIyWP29GtrlMMroRRkyy4QCzogKa6tjUl0u7tOozAeFHOUrd0kVCR3Fic06me7vyTfURdQD1Up4C-VzkjoLAswhdm3wL_-Ges0yzJGj',
        '2022-04-17 03:05:25', '2022-04-17 11:10:25',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzNjUxZjYyNC01ODhjLTQ4YTQtYThlMS1mNTk0ZDZlNzVmNzkiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MDE2NDcyNSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY1MDE3MTkyNSwiaWF0IjoxNjUwMTY0NzI1LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.VEyDrxtALIJC95EiHoip42bpigUfIee8w01ZxRyLbjF-P5ak9FZ9xvzh3-nDLAAXaAsyJmGwVsXi4XbRYdTRFPb7-eiAK7BVJFMj0XQM4rcHXzzJqdH2m-P7cXogvTL-uow0TqRCyzaX0NC1_VDvlY0l1HWfpqZxOKnRUA6h4QS8U6vFdQzfdbKV4aVrOIs84d9w8PrvGzk2NYowy0b63BJqDzKKLYpWhTKrxRexvniNcrzuRMZlf6x2nwBu7Q90wlWJcRDzklz_xfDWsCIx00jfAinNQq9i9CVUs3gxZEDSCbbGhSyPInZ_0NK7x04X5vx9hV43IAkzY-UtMp1m8g',
        '2022-04-17 11:05:25', '2022-04-17 13:05:25',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1650164725.075796000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1650171925.075796000],\"iat\":[\"java.time.Instant\",1650164725.075796000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'BA-sxi-P3u1d1GZxHmT736DfvbDbUkxxi3prAVopAODuM3YWI6erhId8-oOMA9hRZdG__A7hAmE_nXkqoXElLqAsZ_5a8i55yjo78I8vhrUZo5TxVaLaZJkzmZ7N4vUK',
        '2022-04-17 11:05:47', '2022-04-24 11:05:47',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('0df96e62-7fa6-4424-962a-b91304b4b0c7', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 09:31:07', NULL, NULL,
        _binary 'eyJraWQiOiI5NDBhNTZlMy1iYmQ4LTQzOGMtYTU3Mi1jNGMwNzNjYzE5YjUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTUyNjY3LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTk4NjcsImlhdCI6MTY1Mjk1MjY2N30.w-PZydRYzSemM237TwPFunUBKv7AU_8B50R5EFEIe1ekMTFZsJUxhpDIRfLVxspNTOFwldGzpdRbWR4JvSNFspJvQmZdlNJl9ECiTeSG1SaC035qETOWKiNJUBDqVnktuhfOCFqowV7xnyv6yJw7advWv95J4Ffm6j9INxer0OKHeTbqyEJ3ByGvo_5Kkvz9_SGUpFSrRoDIFKF9AV5zLgD23F5FWFBlWJzRFaCmMe3X8I6GuwVGR4p0VhOwVI_XXbrzrRgzCPacVANgNuKiHJEq9BBRCndGbXhAYn4MGdeaLL_ooqpHcMEucnG5r4kPTPvstoVNe8-ylotVxf0XIg',
        '2022-05-19 17:31:08', '2022-05-19 19:31:08',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652952667.906000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652959867.906000000],\"iat\":[\"java.time.Instant\",1652952667.906000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('0f649650-6ffd-4e7f-8c5e-eb7709e94adb', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiJlZTgyODIwOS1iZTU5LTQ3NDYtODRjMi0zYWJkM2MyZTYxOWIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzNDE1NTU2LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTM0MjI3NTYsImlhdCI6MTY1MzQxNTU1Nn0.irptVOQIW4dfkqEfY-1oJ99dQ3V1glOnm82BdzP8fFf5giL5OrZufO4YTlw_mS4Spuv05TWYwTFeLctsQIDPU0CwblOMousSgHej_RCvRtSSsJmhovfbHprowlNCdbWckKGmK1o2aWtfwMG7QDCUHfaXe3RTCNTILieh8tuGK6Lsbj4_e6XI7oXbPbtyFtUThZoeiowvYMp7EJ5X0k6PxJj-gmlFZfxs9-QG9xt0EBbCliI41NWmIkvFRHWfZswi6uLXG_7miO0XVd7VHUdeHxo6-mzGO2X3DA0N_V1qokx1WtXAWr0QX_-wYIrKNwmC5nlwXDiPXKwrPf7OqjqycA',
        '2022-05-25 02:05:57', '2022-05-25 04:05:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653415556.673000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653422756.673000000],\"iat\":[\"java.time.Instant\",1653415556.673000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('13a379c8-025d-45b0-9e65-e7b38872b5e8', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"N64ydYGsDEtc8d1R8958RWRoJ_iEwMmoKLqcsrCPy-g=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=N64ydYGsDEtc8d1R8958RWRoJ_iEwMmoKLqcsrCPy-g%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"F23916C9739882890C13CCF6669DECDA\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'EV_BTuEvjYSIVbws5Apqwi8ky1Izq7I-W0VrAhMHO8Jkjb2YBUphj7EdTR0dDQQ7LFGz7B32ZEEM7YsJ8SKHnw9MMIfio4q1ssbqY88AEQLY_LiqcIJSGIvyaFrEP_zJ',
        '2022-05-23 20:20:28', '2022-05-24 04:25:28',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJkYjg4MDhlYy0zMWFhLTRiYjEtYjllMi0yNDkyYjFmZTllZmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4MDM4NSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM4NzU4NSwiaWF0IjoxNjUzMzgwMzg1LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.Z5vLgZvHNZRKuRn0WqSSjk3kOk6tH9hOP6iBw3lPnWJeWP8Z2pdVglePPoWDAj7QiPL0RR-3VA0OHUqUO_-9wQF57KUdC10b37SZ6KBj98q-33himiYkxA-bTBDgKPfAFOZw4CP23D7hCEraVkDR8z9X2veEU_qcqH04QPiMYYCXv8ugfORtDHDfpn4U0ekG8IjcMDfoVZ-5mDER5RA1U81oo8kj1tU_UEQT60oQeu-0F_u5KjZWbRbeBAE_d3xJJUvIdgmhGBKr61KgP6A1sT1A_JuREc2JGuetXjCMjMKq3nvufvlAt7MiZZu2Dpea_Mi0vUideZaHyuTrHAJrUQ',
        '2022-05-24 16:19:46', '2022-05-24 18:19:46',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653380385.909000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653387585.909000000],\"iat\":[\"java.time.Instant\",1653380385.909000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'ytdwjFMTXuN6yiF-KkS585RQbtJN8im-nRAoD5NLY68wN5kHP46waXNubX4v52TnHN8l_T0M7NEfWLfme8Fb2ZGZhwqqZqt1UG1Pol5dxu7QcePa9PbxrNVNW-bRcdiy',
        '2022-05-24 04:20:28', '2022-05-31 04:20:28',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('1547fc02-67f6-4494-8f3f-9c60e3247813', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 09:26:54', NULL, NULL,
        _binary 'eyJraWQiOiI3NDdkY2NhOC0xMzdmLTQwMWQtOWY3YS1kNTM4NTM2OTM1OTQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTUyNDE0LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTk2MTQsImlhdCI6MTY1Mjk1MjQxNH0.YbiN06BUKKfmQk1GdCn9qrEDGAp0sxv44ojCmE2FMZ9Fq9pjL0iDkDmqOMY03ilIv8IeQZsQT_4xTgCBt1_l0vsU7y9jhZ-8cga8LFODICTWsUrGoEqELyqgpLtNVFceMY5RdxCdIksrk2_Hhw4udPJUdkFtgL8OWFNXbSp1eI3rPyW4pUsHfI2m5anBLeAEgxPPM0ijYjbQZMB9D2ZKfDe91BN_Qra2ll8IC8hpy9-MZeovs9XvdJdKdE3XAuk1c-VGqeTLlsLQ1yXCE5hp1YK3ki1lWj_1nvSXdb2hcskWjyUH9LGWUXDDvy_S3KVrmCwbphlJ3rMnOQktRRnx3Q',
        '2022-05-19 17:26:55', '2022-05-19 19:26:55',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652952414.733000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652959614.733000000],\"iat\":[\"java.time.Instant\",1652952414.733000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('167699e9-3ff1-4299-9208-bdc4d172ca38', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"Whl50-uFOKHkDtTMm9iO0UnWxmzBHDspvTIsS3LpN5U=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=Whl50-uFOKHkDtTMm9iO0UnWxmzBHDspvTIsS3LpN5U%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"31E65042B86BA670B822D5A171CC991B\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'mxlQrQqlSEuy29EmG0da02jAK8lsfax8ijOhICIsEVqe0mxCQaSXuWZNWR07Vlqd89oIkxqx8RJVsrkYzHLNTf85NI1GMd-Lf9umFy--IMERW5j8IbwPWrtwfm-MTM4U',
        '2022-05-08 10:41:54', '2022-05-08 18:46:54',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI4NDYzMWZjZC1mNjg1LTQ5ZGItYWRmZS0wOTdhYTMwMWNlYWMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjAwNjUyMCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY1MjAxMzcyMCwiaWF0IjoxNjUyMDA2NTIwLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.hwKdZ2Mfm30zElsaFeR6LfupdpCzRVM8aimisue802C5UyxLjvFl9BcA7BjFBNT_LpmXgztrM9BoiicpDhuUFtka_E9Dp9JgKREEL8eINX9-DAqB5ps1PfBA8tQc27aOy-UoA19Uh-0iM_vdZM8vEwizPXq5hUhtSeWFi1ZkE2GhSq-aNbsQV6516s2zLGmKwtU0oTf33jN6Fdf37aNos8OQHurV6PEesc28TaDuiXfzVM-HeqW7UbGgPk7TwXMtwP3yfqXs4NcfF8FkfFE5sqya39Rtq0Nyd3CAmRVGOxG6atpBVY6wJCAWMAXct74eYznbzgJcxSuB0k_BnnQCfA',
        '2022-05-08 18:42:00', '2022-05-08 20:42:00',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652006520.062318600],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1652013720.062318600],\"iat\":[\"java.time.Instant\",1652006520.062318600],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'i9uuR0TPpetDJuyhSIkvum6fSNhwv3BblzTOYLow-CotwAuwp370ks8Vg6hv1Cz4o2emnZnQEfNir4Kjm3RDMmB2lTvSr24qIHN4v8JKBSRglZrpt8EXHuK9hTHapwhf',
        '2022-05-08 18:42:00', '2022-05-15 18:42:00',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('1782e9d7-5df1-4f37-8df6-42cdc4e1c85e', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiIwYTEzMzIyMS00ODNmLTQ4ZTAtYTA0Yi00ZjdkNWU3M2JlZDIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzNDg4Nzk0LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTM0OTU5OTQsImlhdCI6MTY1MzQ4ODc5NH0.rx_SM9taDxBMzadGeG_ttkFhf1Bii-TbUXmjVKMXYoTyjHZkgRiwyUchxu2Ly_SKh6-Ryy7iht8USoROxl9I9jqVG7vsYIqlHfKAJM09fu1japY29HvZJLdfPvyq1K-2lH-mbwzAtec34P7KL6d1v90LJIVq6UQmweFrmuWfUZr0Zuvb3THucVHuZZRcsGawL3BHI3PCpzXGuWKzIBqpzhKxB0GdaaLBLFdIDHU3GRHJ3SQeqkFCr1zfyifknTIKmlcxPNVJJLh3g5TcLUvaOmiJga2uhkYdeiJhZg16wOexSg_lYV0TEfttwlnkSJR-nJBbpvlCNx2pb-MXPrc6qA',
        '2022-05-25 22:26:35', '2022-05-26 00:26:35',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653488794.652000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653495994.652000000],\"iat\":[\"java.time.Instant\",1653488794.652000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('18ccbf36-afec-494d-9d16-0ae82c79937f', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"4tGVKvA3_Gig8yhBj-KAp9g7htIXcpZ-YngVTrWcQBw=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=4tGVKvA3_Gig8yhBj-KAp9g7htIXcpZ-YngVTrWcQBw%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"USER\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"6AAD5688382DAE1D170D96877DBCD5E2\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":1,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.ArrayList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"USER\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.HashSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'WZ_zz9IwM23Vxr5SE-wTizUHfW8WUrGtEv9FbRXY7Mrs9PPmFFu9K4wyXifQeef9P56B4u32He32HcMvJibtlJy6SBEWo83EFyU022A7QhraLFOXJRJC1QF92_EjChqD',
        '2022-03-25 13:55:58', '2022-03-25 22:00:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzOTRlZGYyYS1hMzliLTQ3MTktOTMyNi04ZmQ2ZThkNDM4ZGQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODIxNjU1OCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODIyMzc1OCwiaWF0IjoxNjQ4MjE2NTU4LCJhdXRob3JpdGllcyI6WyJVU0VSIl19.QuBHJXNDtchNm9meAXa9dmc1qyDCai1jUBBLTHjPoOEw7Rh1Gu1qHlGnQnfFvLRyhaB_VdQpjHkjYlxeuAg1FplI7im3rb4_TeTI1dAvYrmYguFVq7yLKG3E5QHz4P7EEurYNFqN79Kd8BhGo9cwrKQBZflNmpSS0QjtE7kLBRVKzuewJjRyX2dDeHrmFjGmWT8jXRFyMu1fWp17dRbysyOFtLpSQe-nb31dxpzbqI2odnSUTXxL7jNIHa80N4_MXUEAZ43M11oqcc_G7hSBuxSvP73rGuiDw_VVgBf20WUYJGwAH2m7v3d21jAP1DRrLmEZYXb_rQFSOY0X4HmeMA',
        '2022-03-25 21:55:59', '2022-03-25 23:55:59',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648216558.643103200],\"scope\":[\"java.util.HashSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648223758.643103200],\"iat\":[\"java.time.Instant\",1648216558.643103200],\"authorities\":[\"java.util.HashSet\",[\"USER\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'IKY1szsnEJNfxEqz2n-k8njhImm-KTlG7WriHGzftSTSS9lrfBhazjO9gbwU2lqOTp1Jv8TXFfF941bDCDVjkyC88nXd4gMv4BXCJxThpEDLFCo0cp4CDTVXFuI423s_',
        '2022-03-25 21:55:59', '2022-04-01 21:55:59',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('19771a9d-1fee-4e28-abcc-75c74c6ea7da', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"r1mEPgBgIvNlwVzgYIyqPATdWZmwbyU4Hobeq69oMUA=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=r1mEPgBgIvNlwVzgYIyqPATdWZmwbyU4Hobeq69oMUA%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"3AF7DDF5EEAB722481B8510A18C41752\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '5X86V3V7u6t0D0H3pXp7SA2WgLYWo4HQugo1U0ekzjkKKyUrWa3sqqVUCuIzqKfp1O8Y4rxIbUBGFVEq4w5FK7iNFt9AVhoNd50_TMSdENVphAB_EdJjMRCIRjhLoXiX',
        '2022-05-24 08:59:44', '2022-05-24 17:04:44',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJkYjg4MDhlYy0zMWFhLTRiYjEtYjllMi0yNDkyYjFmZTllZmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4Mjc4NCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM4OTk4NCwiaWF0IjoxNjUzMzgyNzg0LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.ZM-UItKy3f_0WviQ73t3lu-8Sh_wq6B24C-x-Bibu0BlKu-pRyWXim77-kP-BM9c5_t4XoOhcI1kYJb0x0pg9pvvJCajnV5W_HAPZVawbuAq0xOiArT-W2fmttDjIOUY5-Llz-KiNJIx6rsgamZwvTq_vyfOamj-uhvvG8dTUjb0Fx-YHPEoAgMgjbc_2jGzEZjNzTYPie4CFjKl7u02A1JARM801zwgOUwuE1YaImrpgIcHkUg0BgeN0dg5BS91BfdGQIvs6VP-hcFAzu_jaKO-xL44-4OfigrYmZoGq9dbpjVOGXBTYnHKR-5pWsSMqPiD7U-ubV4u_1ERSz-UzA',
        '2022-05-24 16:59:44', '2022-05-24 18:59:44',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653382784.459000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653389984.459000000],\"iat\":[\"java.time.Instant\",1653382784.459000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'qxr5a7D1JX4BLgZIx0v2KqzMoi3EHjsEb2fL7pF8RjQQyaji7kORFTAj5Y2XQervULoxZi2cuVCr8deACmK-S1wpc0wDB_ni0X581hvtm-UWHUSN-DXB4xUUWZaIMA_Q',
        '2022-05-24 16:59:44', '2022-05-31 16:59:44',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('1a3b73a2-e1d1-4b8f-a6fc-b2373cf60bbd', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiJkYjg4MDhlYy0zMWFhLTRiYjEtYjllMi0yNDkyYjFmZTllZmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMzI5MjMxLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTMzMzY0MzEsImlhdCI6MTY1MzMyOTIzMX0.d5kg2AzCrsDTyf1Od8XawxLhNNWNmg-PF7ujRsEKeje0lC1A9w8HWZ_yLb1yInxXmCun0AjgnrquSH19nZAah1IRNmNfMorkCNvG7XoIDZ3KgrJ8yhnp7s4QJC6i2xIV0vl5mKXIJ8_XUqbGWdmwZ4-XYgerUXy-lz0H1lA_-mLkGWvwWkjg59LTouM6bTySQc6BLNO3Bg8c-XqvuoL91NBWJNi_3K8lsJGRSuS7fN6hrqmnjZdZICDSk8yH7FzQwjkXZZdIZkiamEuy9vSoYXI1S1mVPEV4ARBPq2kxBEJm_unzxa9aKXErrHPJjSduOBN4AaDCqfVs-BGV595tvQ',
        '2022-05-24 02:07:11', '2022-05-24 04:07:11',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653329231.026000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653336431.026000000],\"iat\":[\"java.time.Instant\",1653329231.026000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('1acf42ba-2f02-44e1-b2d0-454eda16faa1', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"nUchx582c3Xo7u6lwDrT4UrSKfGKL-NqVjMM4m_QySg=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=nUchx582c3Xo7u6lwDrT4UrSKfGKL-NqVjMM4m_QySg%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"EDE260B041831A95D7AA6200F353E3D0\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'PkhnXhtP-JGHeiIa-c8xDmYw-BaLZuQs1601mI2AKGTFj8aE64qaYvSSdHBVuvfJHSfhmbKr_Ib1ikLaHwlegytZ8_5AX7htXwPbw1ZFdgexoB1sCdJ0D7dPFFyAbWu-',
        '2022-05-14 14:11:04', '2022-05-14 22:16:04',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI4NmY1MDJkNy05Y2U2LTRhNWMtYTAyMi1jOGNlNTVjOGIyM2UiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjUzNzQ2NCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJleHAiOjE2NTI1NDQ2NjQsImlhdCI6MTY1MjUzNzQ2NCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.vqx_lLxzqD_0qZsaXoi1IOY_-UWZsEDlSaImvxHwCrpamsY6FTWX2kgoDLd06nYoRoiBaKBTzhvSP-UYDjXpSQKG96amxldIJDD8Sdy0wf0NxxcLwAozu8e6zpGDFOe010GqiV_4x3ZgNnddxrYuHfDrSZH6xsfiJVjD3T-MqzhLuy0AsWFToN2numbsI_OBWSSQt0-KmP5Wvp4P6bhXYI7hveSzsk7QfGDtWMZuPu1W1SWz5ZInYWd4Na94upNnL5XfpXTyhFGSxQtr9r0Vx0QmWGCGiwZI0f2Ccv5fFQqZDWOlaGf8-3QM_kJ8QJ2u2Ake2EPcQ1meakeAxa6bNg',
        '2022-05-14 22:11:04', '2022-05-15 00:11:04',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652537464.009000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652544664.009000000],\"iat\":[\"java.time.Instant\",1652537464.009000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '2mUX8s7Eyag4PVOz6DKNeXx6KIbxJ_fzQF06e5m0pVUAoEKXk4Qzexii_bDHLQeL5k53mzhDLNRfM0OzuHIdpzAKELNBg17k5zNf-DUP_jbTu8nRFxwnwGXeZ8SAnEf8',
        '2022-05-14 22:11:04', '2022-05-21 22:11:04',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('1ad39e02-4339-44fa-b4eb-46a3e26af4f9', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"poHjjYOr4LYDSEmFMfEWGU6WmV5YIrMSDuDAyQRJKHE=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=poHjjYOr4LYDSEmFMfEWGU6WmV5YIrMSDuDAyQRJKHE%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"503E965C49A0A1627F7F42035682DEC6\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'qQoRZtojl1xfc_bAb93s8htxf4Ch-q9BW2y3Lcaj0wjgnG964XLE-_rQAc7izsAQOLhIVSKSduxDyc1Po7sfgRFNjyszvazFSc1t5WxRYLjBdtIhEhTpUl3asw8eD9Ee',
        '2022-05-17 16:01:01', '2022-05-18 00:06:01',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIyMWNjY2ExOC02NzE1LTQ1ZGYtODg0Mi1jOWFkMWI1OTk3ZGYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjgwMzI2MSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI4MTA0NjEsImlhdCI6MTY1MjgwMzI2MSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.Z5PzB15MK8hAWkTkoEXCMDeDHQ710q10JRuFQnyhLbbxYeAcHgOEFagmAZhZAgy7TJz3NcUOQFTsZPPUyCsCOpEvpxt9m1JaT7L9crWWUd0012DtY6vRu4jN6HATthI8svvXI5hrR3NNsqtDXhscPNYN019o_eAkzr2KurABdkCj4rrxqNxG2ik8gvpIsTO9Dhxi6nBQ0yAaIkyymCJvoe-CCngRxxsHYwqjhWozUdXwjf_556aQH2ICI259gnpt8M8AtsG3E1bS5LALqQDrhr9noMLJT8VdHyRvdZKkq5J0PO7WPDMDELBuPyQnJ9XEfP6qrhs63HqJXL0sNMpGnA',
        '2022-05-18 00:01:02', '2022-05-18 02:01:02',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652803261.558000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652810461.558000000],\"iat\":[\"java.time.Instant\",1652803261.558000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'T3OU-8Q_k2BCq2EM5JgW2-pPbS60QY5GV__lM4JETOseb3RthuY3_N8-SJznOi8YtSXEHoyFapG0AcwfzZRnNk1BTxBEtACkL3apacK0SWExDmRzkUdARKNR_4ZxN0ia',
        '2022-05-18 00:01:02', '2022-05-25 00:01:02',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('1be0a2ae-72a3-4db2-9584-e8a926116f72', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '1001', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"PUdJ6X3EdJs2YCFL5PIAlPto82FVBaJFSwSp8apCA2Q=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=PUdJ6X3EdJs2YCFL5PIAlPto82FVBaJFSwSp8apCA2Q%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"E29A1C4876B71550C784B6874526BB46\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":3,\"username\":\"1001\",\"password\":\"$2a$10$cQexdEVuUPfVt/vlSI3Fw.pjJs8BVzYt3TdQcm9CBajxKZoQmAb.q\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,4,5,1,20,20],\"nickName\":\"测试账号01\",\"phone\":\"17683906992\",\"email\":\"17683906992@163.com\",\"avatar\":null,\"sex\":3,\"updateTime\":[2022,4,5,12,12,48],\"authorities\":null,\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'ASBDeqlchwt2myNV_WbTNCYgSz-zKb3R2aps5ckSJO6M02dsljDcDEDLn81evZyIWaYnootqajUgehWgnDJ1QkfL7GD4cQrWnDwdNpWMqRXUj8Qy5fUc3TF5OgUw8nVT',
        '2022-04-05 11:39:58', '2022-04-05 19:44:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIxMjYwN2ZiNC05ZTY4LTRhNzItYjhmMi0yODI0MzFjODg2MDAiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMDAxIiwiYXVkIjoiYWRtaW4iLCJuYmYiOjE2NDkxNTg3OTgsInNjb3BlIjpbInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NDkxNjU5OTgsImlhdCI6MTY0OTE1ODc5OCwidXNlcklkIjozLCJhdXRob3JpdGllcyI6W119.SGqHnBY_NzIMH7hVza4kh1K2usKEjTZ_j_4PMtpSPq53NDubrJcxEUyVPUmKT7ZvUuDDSEnw46Z_7817hOsSJKHamr6qkpzF5zCwmd5wlzhko-6z42nNcSlqi2Ero3nyiHqBozVpNe33rS01ZOZ6jYGciEZYw0gpx9Sb_QVvG-I-alHlXEI19rZiiw8rKpKkUBpDyoywDQiQz8F8VMFcwRKbDuOfFsuxgOZ8-wA1_otqbJ1IClLtkDF3SJxR5uOUm-1tq_S2KOJcGIO6VN-n-_bXcW2Lt3Fu7kNmF__onCRU-hzPE2HJLbzz-ZIUPhSsi9MvKN40h-y-5EXOfwtsmQ',
        '2022-04-05 19:39:59', '2022-04-05 21:39:59',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"1001\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1649158798.796000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1649165998.796000000],\"iat\":[\"java.time.Instant\",1649158798.796000000],\"userId\":3,\"authorities\":[\"java.util.HashSet\",[]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'DBYG09Oo4gs9EZ704-WJfCdwbLxc804n7SLZyW_1PpYEdt7ZRBmUcpkxCiYnrfrrq40ceXY-YiLRNwxEeNQJ03Qzy00dZkvK9nFGwHD5MgmXvp4UA6_qKQkf05V0FEjx',
        '2022-04-05 19:39:59', '2022-04-12 19:39:59',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('1d7b5405-c8bc-475f-b696-1990b16d069c', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"LcbDr_-_P_BPy9JocExyhQOisHMQC9LT55WBpUOnUSE=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=LcbDr_-_P_BPy9JocExyhQOisHMQC9LT55WBpUOnUSE%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"FE7158E2E553A4C8164EC481F9BE6A10\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'vUZ6UVceQPUv-mw0ikY355ujYsWV53Bi_3uGMNCOR10B6xWxKjlrd-OwLqHa5HsUTS32SXHqkSk4H1IUbdSN7IqGWWQrV8gLXFKemOYkTnBqQAw1bGlfxXU02x44IB0o',
        '2022-05-16 16:17:18', '2022-05-17 00:22:18',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI1NDJhZjY2OS0zNmIzLTQ4YzAtOGNmNS1iODZkNjkxYTVkMjYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxNzgzOCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjUwMzgsImlhdCI6MTY1MjcxNzgzOCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.YABloPzOAtsq1G7X8vEqapDmP4jW75aN1Mva1scihC-6KIDDpfeA4vxUfWiEI1i4XbpCAALVfxmFr0euWDU7UrU42YcM5RaiRUcOM8ziPIaiKFvRUBF-BheJTTY2ysXK_t6E34aRj8oEXnoaNa6KPaGUvZXR-sskP_YVgyqgf5AAxDxxDwSPT6cPKq6YLJvqBQsyWfctxDtHsEqbJJR7EHm0WRdnvtn_rKOZe9BR1rPIG2FQj2KZj9-hY7pCKWhFJnK0au1GuqfnNpHrxx6OZNeV9c9qdFJw39iz1GhwRxQyede8YTjq7E8B8QgrKzfck0UkG3PrRQvN1KE6hUwH7w',
        '2022-05-17 00:17:18', '2022-05-17 02:17:18',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652717838.305000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652725038.305000000],\"iat\":[\"java.time.Instant\",1652717838.305000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'Ff39W5JtsZtsBRH5Mbm75km_JLATiL9pTSnTQ0WqHhbKYr-_AU7DN5Pi9NmfiDHq8CRGhh8BHOLfcZgzUsbNZEfoK3aW7uwJ3oSjNKfIh1XCIoapzj8uNGzsYNXgxDV8',
        '2022-05-17 00:17:18', '2022-05-24 00:17:18',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('1ff2dc46-a638-456d-b12f-1b275bedbfc7', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"OQIm0J0_dvZtnBL4wSjoV3eBWkW5yaAwUeOoIglp5mA=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=OQIm0J0_dvZtnBL4wSjoV3eBWkW5yaAwUeOoIglp5mA%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B9D82904CEF7DAA06A0D695BA60120E6\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'Guqrz4DMJZqsbzl4e0Nlpd6DeCv61iAvLIF8hRK0AKxZM5OgMuhUgXt0LkYqk5OPx0q_34GfD_YDoTYyMGx6A6NlIXF4qVHAK-kEW19eWaRG1rKnJSrw9xdfGBOW_EBz',
        '2022-05-11 03:12:08', '2022-05-11 11:17:08',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('221f6dbd-c3c2-411e-a9c4-1ea0eab675e9', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"CYL73yc2Kt0rIGu3L9QPRQO636vObL13taxgu7rxL-s=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=CYL73yc2Kt0rIGu3L9QPRQO636vObL13taxgu7rxL-s%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"EDE260B041831A95D7AA6200F353E3D0\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '6iwb5BY85YCjo6QnNm1ldehcbcPKO5-xXPC96LmXlehubuIvIGYydx16aW1m-yKwuES9NWV7310as2f7Sw9O3fi6JaGfGwWCgMWLZ-0ZO6s3o-qRJoF20b7Cf5vpoQXO',
        '2022-05-14 13:41:11', '2022-05-14 21:46:11',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI4NmY1MDJkNy05Y2U2LTRhNWMtYTAyMi1jOGNlNTVjOGIyM2UiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjUzNTY3MSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJleHAiOjE2NTI1NDI4NzEsImlhdCI6MTY1MjUzNTY3MSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.vKtMDBUDfTSqrQFTd2klNJxYA3WNVT4gr9H9R9_UyBsb966LfAXof6ei6gj62rqw0ayv0ssI6O17uAL4NYleuwNOg2Nd10gkX0Ljf8UxuqjVGqkQvSzDn5dBNFLoEKcZLYU9TxQtW5CgpgcnZDDvpj5KPwkuattvf6Ujmpj1GvmGtFxClilHwv7M0GS1Mhm3N3f6Q-V0PrHls10Q94JcJP8MpvM943D5x9hSto-gl5BkhJDBOwm0akecjMePemIUU3zWJe4kSQ8Gh2G4ovWHn5rs83TwZSb_Z04uy_AhlxOT92dzcU5naFbfX6lbwp8m_YwcTKFlyQKOe0VkFKZf3w',
        '2022-05-14 21:41:12', '2022-05-14 23:41:12',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652535671.911000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652542871.911000000],\"iat\":[\"java.time.Instant\",1652535671.911000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'ianjAX3F3vgski5m-NlcNN1SqdZzq1wb4pmwJmBjyVOd0O7mHGnHUbAReajOAuVFN-7IAqFl3g2hTqoWKH8XfDcdmA6psSehlXfM2ITIjHprEBtUdQReiViSFp6MzYet',
        '2022-05-14 21:41:12', '2022-05-21 21:41:12',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('28b618fc-1b53-4cd0-b857-c8204b972c34', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"6iCsbjBuCP0UaQJoEojwTXPux4_fIx0dl5bR07RUvSM=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=6iCsbjBuCP0UaQJoEojwTXPux4_fIx0dl5bR07RUvSM%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.32.0\",\"sessionId\":\"CBB4364DE6F9185752D5957FCFA4B706\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'OIWRLGGjprLYv37M8E7kdeb-7oLJujc557ZGVmRU6I4aZJYZWO0akbUVsA--9eD2N4z2F04Rn0v5LwOU10CGyVdZLttY-qGPUAjFpIqLx48j3vr1mofnaBonUtMnQYwD',
        '2022-05-16 17:00:25', '2022-05-17 01:05:25',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzNTNhZTYwZi03NjE4LTQzMzEtODk3OC1kN2U1ZGI2YjBhMzYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcyMDQyNCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3Mjc2MjQsImlhdCI6MTY1MjcyMDQyNCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.kG1Gq1fDSVUn3jDd9GBRlyRYFXHSOtXgeR4Cg-u4YIHySLgyWI9TFO-Qcv2peQ-rl_Jyj5AQ-ldc-mFof9gtabe1PBUUu2-O93xJ_pwJp8uRpeaw5qU_rQPTGKW_6UAqdILk2vQPLMpeSTQ4dWU-QnM1389VKFH8oLNHnJebSjCAjLpozG3pLwc8Oyku4hw7NG2VpPG5fs8jkvp1ewBHuEj4RNxbOG8096AyiZ-mvJMtn-wU2l3xHv93ozNdjCPvgkvLMfKC0Gn_lKqS5ebG7u4KlIoELG8-3NFXz77CRbzqVrvkq3PLkIgq4Ar9_wXdznR8X9ytfrFkcpJVytAAoQ',
        '2022-05-17 01:00:25', '2022-05-17 03:00:25',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652720424.941000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652727624.941000000],\"iat\":[\"java.time.Instant\",1652720424.941000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '8rjxcvQ-8e_04O9db46kqkUTGna-3q8yVTyDc51YLvb96dJjWCYvy0t7kx7zJeOMHms2zrrnP3ph4qN6KDp1JkZmO8M8PjoDgEFE6d79YEXiBetIaNlpQpb0BoMUzjab',
        '2022-05-17 01:00:25', '2022-05-24 01:00:25',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('28c80c40-4b65-4999-b522-14886e0be87e', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"YCcpkBkueCvJY6xmbq8zq_ndEfVC-R9YHo9PUgP4Ap8=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=YCcpkBkueCvJY6xmbq8zq_ndEfVC-R9YHo9PUgP4Ap8%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"65D59FB76943CC2C5A91666BBAA4C0E8\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'hU-uDw6_2heuT38_BD2cgAQBrryFntWogiTzh7Fx4ZvcsYCA0iWYXW3grMjTNo9qCcIqcHXEpAVTESihsJE5MHz7qenlCFrL_Gq2KSVnrIZKIV-UNtRVO3rQ3UnJnhIE',
        '2022-03-25 16:36:48', '2022-03-26 00:41:48',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI2NjVmZWQ1Ny05MzY4LTQzNDQtYWUxMy0xODgzZjFlNDJiNTQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODIyNjIwOCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODIzMzQwOCwiaWF0IjoxNjQ4MjI2MjA4LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.W2Na40McaJHe4FmLGdb4Ahd1VOKpxjIRv8PEk1Gt7IkgqOg9qbInbB5Sl4SAp9huwGIxQt7BLyW3IUdpTYlrHErn0jMz_9TkMK-RBUg53LchTR_8gcGB4Djd1kL9u0VTcMMM8MkLYzMrB9u79EseIlNDEun79LUTTYgh6ekMHTyMicbkmxpkmmwa0b6L73ZSiPqggUsBRaE78UIVXpAw_7giO_AelY3enZET7BJDYd8DXd093S9meb9E2uNPY_JqkUVBgq94SRhWihZ32o4cRmIixILRndRXuvV7G7t1HhuN_wz7F7kmF64a0W2wMpvpO6SROSKDJ-kNAxQu5cEphQ',
        '2022-03-26 00:36:49', '2022-03-26 02:36:49',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648226208.686004100],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648233408.686004100],\"iat\":[\"java.time.Instant\",1648226208.686004100],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'Nb5TBbhRU0bqGDtA83D1MVFLUk_5ZqPDguv3i-ZzurDJcsdWGqOQnpY9BCm7RyisWDBrdUTdZIlYsJ-zySoiJ_R-PRC5dKfrUT3Jlt9gO9sSTpiHXdxr_MczCZmaK_LA',
        '2022-03-26 00:36:49', '2022-04-02 00:36:49',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('292e4aa9-9b94-4f55-b40f-2302ea53f956', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"p5V-ZvCQ9ahFtQpaJUz51rFlYC5ij9law2gzr67-diE=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=p5V-ZvCQ9ahFtQpaJUz51rFlYC5ij9law2gzr67-diE%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'h-TBTM_dqgV_T1zhuPbTtx03LRxAfuLo6o1rplOe7028KwjAKRe_5yfBJReo69jgPDw4k7_noo-JmlybpzMn2Dy2p0GuRNR6EaZMx1OJbVPtA70854ryOi9jcEBUy0td',
        '2022-05-10 16:17:09', '2022-05-11 00:22:09',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('29a12260-14a3-437d-8e8a-29108cee5dbb', '3c431544-6bd5-4c2e-ab4c-76b159d73997', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B0EE0B1734C5B87229DC695159B32B3A\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"swagger\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[]],\"state\":\"VHVlIE1heSAyNCAyMDIyIDE4OjA1OjM2IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=swagger&state=VHVlIE1heSAyNCAyMDIyIDE4OjA1OjM2IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[]]}',
        NULL,
        _binary '6LC8y-t6HKwuB-rO1YHYL176ZCsozUBsPMMNKdM2ewSnakdmHIHWFWcmN0Xr0xkhcJrW-egiCkVm5Imbrx3bImt_cQ_bjjCdxLtafvEIU33ol6NUFWXdo7lakNlXkkLL',
        '2022-05-24 18:05:58', '2022-05-25 02:10:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('2a579dc8-b02f-4f42-ae1b-2969c546955f', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"4JOiNEi58l9maZemNI6tGU6c8YtHtRlEgptQb970AD8=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=4JOiNEi58l9maZemNI6tGU6c8YtHtRlEgptQb970AD8%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"AED646FC40FFCD8D38E38B35A7AF729A\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'LHrZP5BYQymqyeJtib4SKB_fyAAiHELimyPSG_XxxnDYKAGQOLLwStEIPAbggFBufK8Ts1JHhBuF_Z0bFA9KY-uZ_d7pEY2AqLfuibae8axjHg51qzjRS7SVcecb1i6c',
        '2022-05-14 14:25:18', '2022-05-14 22:30:18',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJjMWVmNWFhYS1mYWY2LTRjNTEtYmI4MC02MzlhNmU4NTA2NDMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjUzODMxOCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLmmLXnp7AiLCJleHAiOjE2NTI1NDU1MTgsImlhdCI6MTY1MjUzODMxOCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.wGxec_0vF27b-QZmc1Xcvb_duDeqDYwp-1rMUcBaFQKhiPkkBqeFZUIl7PLHJHb7B4NgLoiBUm-kTGE60ibdtJz_uCQMBgGkhgDJwFxwzv8XAQJWoHPYOX1ZIKI7esSBp-Jky2casHIyo3xBCDbuo8CGwDju5Ih_VkNGJoy6WKwvjCuGB8suwfODMS2yqWZ1PnuXxDo7AxL2IVhfHascH-a9hWxx3QlTYnwybha60ITkRaa1Dt3VWwAqr2wJCdNZaA2OgPLfSFviQZ22Yl-mBk43he442rXDe95yuvn_YaDWM2XU7nvvssCk1awzn2K3r_uxqkgnNXKHUl8t0hm4Nw',
        '2022-05-14 22:25:18', '2022-05-15 00:25:18',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652538318.172000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"昵称\",\"exp\":[\"java.time.Instant\",1652545518.172000000],\"iat\":[\"java.time.Instant\",1652538318.172000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'Qhk17H3K5u4Q5lkLE1P2eCNmbc2HX9Tm6tkZBJzlfukJS3x11bNEQuG4tj5IByiHLNFwTGevdOSSyb8tfHsymiuHJ2mxpW4gb4PrMUY6VH9kMaxG5CnhK_s3Z5JzmLfF',
        '2022-05-14 22:25:18', '2022-05-21 22:25:18',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('2b3489a4-b1e6-4654-aecd-aa08857c4be1', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"wSN7DQ6-oYvQx6wozUaQ3uyr1gL_npfeMYMAQebv0Z0=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=wSN7DQ6-oYvQx6wozUaQ3uyr1gL_npfeMYMAQebv0Z0%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.0.1\",\"sessionId\":\"A644E1A9A0497F8C74E12CCEAF54E2AE\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '11NPBBFVvSh5P3HmYS4NOOLiS62PaYunOrkCBmsA9JVAom_kkOmIzeAcSe0dz8HKVIL-nlfLGisgihqTxKRs1dsW_rTK3f1WgRqlD7_c2pJoCiFyuG3VgYkDdOCu4zHD',
        '2022-05-17 01:28:39', '2022-05-17 09:33:39',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI2NzU2ZmQzYS1kYTdhLTQwMzEtYTE1Yi0yNTVjNjdhODViYmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1Mjc1MDkxOSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3NTgxMTksImlhdCI6MTY1Mjc1MDkxOSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.d5TWWc0_r47E3_HltisdTzQpZifKunNHT8Og3BdmFtl5f4DXhxvhQClK6ELNggcSy-odVtaOfiq250ErHbZpuup3TMQKCyTF8jGHN-O-S3zG9OJl9daRV0aeLMCrAvE-EcpTVwMTKNEbDuvJc3eJjbLFVCTMkq_DhoB5iWHnPTTSD2I33UjzIg6LQ79k16Qh0xg8YtP0brKwBHQgsPqGVdckXXWSPRwSp9-8xf287n-h940Il5nst_d02ORU0o309NuofbPFPbemmt0WxveDFFjgnZxAr7QhOxkaa510iP4wkWzQ0OMxwrgWx14eINsfEaCu6TkexOm-Z39wOuD1aA',
        '2022-05-17 09:28:39', '2022-05-17 11:28:39',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652750919.180000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652758119.180000000],\"iat\":[\"java.time.Instant\",1652750919.180000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '30BhmGCa5sEbx6hQ-PJY1APkCf6H999ELKrxp5p-xUm-t3j1k4EH_BsE0k-iAP8yaXT3t4kIO5tHdIG4OTFgg6SQ_5y3sdbULeh19-OMTsML4XkELsoFb6byWBorZSl8',
        '2022-05-17 09:28:39', '2022-05-24 09:28:39',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('2be138af-4c13-4d47-bd7f-a282369fb161', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B9D82904CEF7DAA06A0D695BA60120E6\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"GHLlmea1SDDzYeMnQHaETl16wwpv4COn4DM2efMhQTE=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=GHLlmea1SDDzYeMnQHaETl16wwpv4COn4DM2efMhQTE%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'bB25wiCDvKPI5cd-9vnanz5CUaWo8LUngl6WotOQfk3BV6CSRXfvCA22whTEQF-0IwW4ouMeRilS_0I--HMEhsLG_9q-uf6IfTNILcXlOwHS-EUm7kSbfNlaOMkopaGS',
        '2022-05-11 03:10:09', '2022-05-11 11:15:09',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('2cc133cd-7b26-4b9b-a0ac-572df740ad28', '3c431544-6bd5-4c2e-ab4c-76b159d73997', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"swagger\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"VHVlIE1heSAyNCAyMDIyIDExOjAwOjE2IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=swagger&scope=all&state=VHVlIE1heSAyNCAyMDIyIDExOjAwOjE2IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"0:0:0:0:0:0:0:1\",\"sessionId\":\"5FBC6E1CBBB312DA7721495049ECE188\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.HashSet\",[\"all\"]]}',
        NULL,
        _binary '4a-aed5E9xN_uNUhjiLWaKF79y7p2OKV3ZIKWgrRcPit-Y4YPgssoe6CJBxz0_-AJxpvUpehyw_KGTY3_0zNcu9EYmpqRf5gDPdRry8ZsI1QZdOaT4gsCQ7bYaojPhUf',
        '2022-05-24 11:00:22', '2022-05-24 19:05:22',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJiYzU1MWQ2Yy1jNzllLTRhNmYtYjA2ZC0xMzBkMjFhNDM2MmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJzd2FnZ2VyIiwibmJmIjoxNjUzMzkwMDIyLCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTMzOTcyMjIsImlhdCI6MTY1MzM5MDAyMiwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.LRXrSvf4SSE54VixBV-2g3VIaAko2hYRPM7KAFaV4RuzISzno_jPlnvDO_5RWs-KbwYufI2NpyCgNM_Bc32d7eCCqQG2wG6E8Pr4Sw9wpoJ-nt81d8CKBmsET6QWdKNCPp8qxxk9jsILxxNOZpJjKNoLszFgf7kbIA8QvNpUFmvLCQvwCN-8Pq_xgTQWCPxrfIfLDa9Fal3VaGpWFVKVSlaLA7txoI3OD6Cdby4MQmvk6bNxm2FcjaSR-ASOa8AYo6BWhR12dNDd3AURc1Y7hhwDWXpzar8WUzwDS10T2r754fR0sMg_9z-8EPqnmJISS4KKzz4vPb2528ieU1BXTA',
        '2022-05-24 19:00:22', '2022-05-24 21:00:22',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"swagger\"]],\"nbf\":[\"java.time.Instant\",1653390022.260000000],\"scope\":[\"java.util.HashSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653397222.260000000],\"iat\":[\"java.time.Instant\",1653390022.260000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary 'gvH-78AU__KEcFVj9LpjhZ7z40QFwaP-mLViRBM58_nH9wrHl-mqFd6xIAYhifAbUqucKF5-GPQr9z8izvqOoklnGnOo5pXWCG_ApCRYnI1p4wwbXf66k9_FUPbrJjj5',
        '2022-05-24 19:00:22', '2022-05-31 19:00:22',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('2fe6c649-aebd-42dd-8107-588dd21ca93a', '3c431544-6bd5-4c2e-ab4c-76b159d73996', 'gateway', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-18 22:12:08', NULL, NULL,
        _binary 'eyJraWQiOiIxYzVkYjI3OS1mODMyLTQxZTgtOWY5Ni02YzhjMGY1ZWJiODUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJnYXRld2F5IiwiYXVkIjoiZ2F0ZXdheSIsIm5iZiI6MTY1Mjk0MDcyOCwic2NvcGUiOlsidXNlci5waG90b3MiLCJhbGwiLCJ1c2VyLnVzZXJJbmZvIl0sImlzcyI6Imh0dHA6XC9cLzgxYjFkNzhlZGQxYS5jLm1ldGhvZG90LmNvbTozMzE1MCIsImV4cCI6MTY1Mjk0NzkyOCwiaWF0IjoxNjUyOTQwNzI4fQ.qF_TV_42DqTj2Ya6DSscr49jecs1YVxWib9X8GIdWQNEkFzsFvOXXE57WwwQxRzQC-PVj-WMatAYei8OsyeEE9GO6vgk1gB551SKcD8Zr69d6GKxu27y1VSXqMXm3H9i-LKgKOj8-mG0Fd_Mu65Edh8YuwdqAsk4m7O3B6ghmeuJCeyRlM-5n7qae_KnU9LFi5NyK3Lp8gahlduwWHPek0EHQNFOcx1oSprQD_aIaWGYcEqde1PiuzwXi6liA-zVq20xePnlHHiH__LytONJ_0IMLmKcIREKO0IvSIYC6WlHSGD9WaLzUTVBb26MMUuqhba_ogA3hApJQo3qTPlBOA',
        '2022-05-19 14:12:09', '2022-05-19 16:12:09',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"gateway\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652940728.943000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652947928.943000000],\"iat\":[\"java.time.Instant\",1652940728.943000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('33ae1f24-21df-4a9b-8b2d-9550d72acb1c', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"PypHgZad23veBRPI8wkdzhwE_X8WEkrkewsvch8zvuo=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=PypHgZad23veBRPI8wkdzhwE_X8WEkrkewsvch8zvuo%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B875A73BB9F1D6085F93AD38F1FBF1FA\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'qTKzFDbjCuW_dcU7Vf6qfK74GgghVEc1zWiVrN4auw6RJExsr8WYv-uk8svA6Doc4K6nPg9cvL9F5afKii2a0Y-6C0w3OP-bduh6tqoA40nQ5OmpIvulSdhc15oM1U2c',
        '2022-05-16 16:36:47', '2022-05-17 00:41:47',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5OTJmZTE3Yy0zMjZiLTQ2ODItOGNiMy03YmNiNzI5YzdmNjMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxOTAwNywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjYyMDcsImlhdCI6MTY1MjcxOTAwNywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.tL85h1_Qe24X2vQDpBsYxEo3Na_1R72JjtS_rq4jvVlBaZdNdfECOtoO55vseXna22erQ7jjqQYlcVsfF2WT4UOlrI4vf9AnXdfBSz6QiHmM-sitF772VKxkdwpEyd2Kcvy1zObMriO8BLsuu-yLIUEeSkTQ4y3gAzkqdZtI5cuSvFnlr_8sg_H52_cbH4MO45pDkbl-IcOEW-pzb0fhfFi0jB1x8BUsW3Lseyysovyc0E1yTF4A4vjCOPDVvZuJJdqSGS4hznduG0AdR62SlH78UGCPB3EtpoQPnkZkkOJOcqHkoNga609QW-NidSXP5DLm9PWKKqN-tYzRFBJhrg',
        '2022-05-17 00:36:48', '2022-05-17 02:36:48',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652719007.673000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652726207.673000000],\"iat\":[\"java.time.Instant\",1652719007.673000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '9n829w2oJTElkcxVq336ePELLwJX8gPmc4uePN01HoJnw-uiZQBfkm2Q8HPielWl44f4w507Zo9-xyED5ToiowQq_q51sLUaL6GyR_H-wzUm-UwQIb-SNfx37aLO9blW',
        '2022-05-17 00:36:48', '2022-05-24 00:36:48',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('34c2e507-6c01-4480-8a16-11f79df127d1', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"UDEFTFm3OrwtKQ6UOT0X7rWNwADRoq3urDfwjtnwKUA=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=UDEFTFm3OrwtKQ6UOT0X7rWNwADRoq3urDfwjtnwKUA%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"EDC9697B40361FB869CB3D7BFCE347F3\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":1,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '7bkhYoj3vIN2ZlBfKIyFYbLwjkmowgLxVFmI8zyTltRPKHm8qdJxPdPC8KBmUwLtkXYL5-dk4Q_dJ3Z8rbXABHDT41AayqopFmSdmNVoh9DzVganqXwh49SX324u0giM',
        '2022-03-25 16:18:02', '2022-03-26 00:23:02',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIxMjkzNTUzNS1iN2JiLTRmMmUtYjdjMy1iMzdhYzNhMWI5N2EiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODIyNTA4Miwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODIzMjI4MiwiaWF0IjoxNjQ4MjI1MDgyLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.EWY35_KUrio4y3WF_lwP8s5ZwsPsKv3wi7n8Tg2ET6o5-Rw-7v4XhVXvKmoVlpDy5E8QTqL9geiQPC-xMsN5qFdbFEYoJxxEz6nSZt7-yDrMdCz1-YYm8RvSzvQn6DIduvUUin4ltUiBXVm17Q8H0lx8kQ4lKx6fJNg5FEzA4wUFE8iZjSyOzCSvJBFhHyTwmV2lHJPxHyQGQPiWxjLX8VMLOfTINhaKOUxtD9Mn_jO0tMWjA0ri8CJIV1AKk3zfs_hJ51jnM6-gae8sexfmbVlw5z4bHLh6vQ0nEMPVVq5p7IquY2-2AECNKWTerWfpkH02vJfAN2nfLCqGdHpPWA',
        '2022-03-26 00:18:02', '2022-03-26 02:18:02',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648225082.313269500],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648232282.313269500],\"iat\":[\"java.time.Instant\",1648225082.313269500],\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '7t-ptmDRzVzPcdythu9y61uOnEuwjGCGX-GqstC7lv09TRI7kJAmB_9tT03XZyGktZke3TZRnB-4hSTgbByzP5pqVlgE4fvHlzcYQIXi1wxmCqd1w3R5RrWfe--R5hRP',
        '2022-03-26 00:18:44', '2022-04-02 00:18:44',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('360df354-2244-4b8a-a78a-17a13e2797e0', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:51:12', NULL, NULL,
        _binary 'eyJraWQiOiJjNjNjY2E3Mi0wM2Q1LTQ4ZDEtYTIwMi02MjNjMWQ4ZGZmMjQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyOTQ2NjcyLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI5NTM4NzIsImlhdCI6MTY1Mjk0NjY3MiwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.H6rNEttOh_cSQ_YJUKQ_c66jOXiV_m9egjNDE9-EELJltrvFijCVdvNCxJ1REIiYfoqwLSnLADA_dgjpcH8wtpTY99lsdJABIZ015M4TTwyia_r9jq2LpcDOHVcfW1iW6x0lNQkm_CwnfUW2peLpiZbiNKCtycHmXMfAXJipxkks861S_vjclDdC727IK4A8CcOWEyclaHOw6b4vx2dgJ7EsX0xf3smTD-xYEanJvEKMZe9zM3Vp-aAWngo88WKyvc5rrtMgP3L6vaL8QJ0iq91zSo2nE1SO5hAyXit6xfiOAMQ4b3d7bsEMo6Immm9WHU7WhgejV2ayBP1g4ywsmQ',
        '2022-05-19 15:51:13', '2022-05-19 17:51:13',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652946672.605000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652953872.605000000],\"iat\":[\"java.time.Instant\",1652946672.605000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'Un95Gc5YSm17ZPYa6y_ogu3bewmo23Z-HiEvmL--3RQilkl-nYtNFmL47N3q7dsJmZz7fbhnbEzS4Og33zlwbOV6rw602J9cdCGZWv__KntFYQCWI4aw6yQXithsKkTj',
        '2022-05-19 15:51:13', '2022-05-26 15:51:13',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('37cc16f8-2503-47ca-9a17-a6ee5f1932cd', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"ybGIZ70ut4Uk97IZZKGfNUD0uFBh1v17TLC5WUaU94Q=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=ybGIZ70ut4Uk97IZZKGfNUD0uFBh1v17TLC5WUaU94Q%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"81040A11CD62A230BE1081A5C457EC19\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'Puhp6s8kG1SPfvLLVE55GaTv1tSjK7OwtnKUnzwWYuiX83V0_qyZcirhfMr77-gRRogC-r6tPMzoM-UsJEteX45zB0f2_wkS40FeFsEiu4GR2_SDL5UKma8ZhBT6eLsF',
        '2022-05-16 01:31:00', '2022-05-16 09:36:00',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIyMzU3NDg4MC04M2Q5LTRjZTgtOWZhZC05NGMzNTM0NWYwYzMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyNjY0NjYwLCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwidXNlck5pY2tOYW1lIjoi5LqR6YC4IiwiZXhwIjoxNjUyNjcxODYwLCJpYXQiOjE2NTI2NjQ2NjAsInVzZXJJZCI6MSwiYXV0aG9yaXRpZXMiOlsiXC9zeXN0ZW0iXX0.DEyIh4K7oT1vVCl5RS_GSn5Kl46rHzkJiXcjl_xT5ag5_omPlGjBOnAhPJT0YbnDdFmf5B13xntO69j8BxUpLPlYJJid9XwMxdgjiMpvZWLXb9m8L0wO7rdD3bHRVl7k5rrfp5fTzA7BlREqG5Xz7KqIvgSu-dQdwFc7T6Y0k1s1CGwUgkWcpfjyIorpljzeyoh2DA2ySZNrRkJ7SeOk4b5WESQWAv6vQz-cLMsooWcU0Y9YGU4ncPRkpovMydT6QcvL7Yij9SEMhXHD1sq0oIgXlUztnXkMVi0AgJXHaYb3tNC6Qla84nmlGZWeS1TYqCPohm7OuYr5uf9V_EI48w',
        '2022-05-16 09:31:01', '2022-05-16 11:31:01',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652664660.520000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652671860.520000000],\"iat\":[\"java.time.Instant\",1652664660.520000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary 'QtIXZL7j7T9nSYa3boghnnuM8DrecnXc_0nxYwt_b8Rqg5z_GKBUeDXGvfsrIaMiahZrUyhYApaNJ6xRoC6zHkiRLcSaWTe9la7C4ZY-X7-Eq8zVgAJsFvujcQB_8L5y',
        '2022-05-16 09:31:01', '2022-05-23 09:31:01',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('37fe5e79-eb06-4ce0-a7c8-b70e730a55a2', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"USER\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B18DF0E2FC5B062BC52B0AD2B323CE15\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":1,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.ArrayList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"USER\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"SVcVNRUwIxyquxNP5GiV5aZTNCiXEwhcJ-m1ACLc7VE=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=SVcVNRUwIxyquxNP5GiV5aZTNCiXEwhcJ-m1ACLc7VE%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"state\":\"XLr7YVeZWftXeRZXjpV7yd52JlMacAjRYIJmVNCPnlE=\"}',
        'XLr7YVeZWftXeRZXjpV7yd52JlMacAjRYIJmVNCPnlE=', NULL, '2022-03-25 13:45:07', NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('39026245-b8c2-4aae-b545-a296a2d73ea3', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '1002', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"-V77806N9KOLE1u4Ah5kfArQh8g5r70OE8VtPEbYEgU=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=-V77806N9KOLE1u4Ah5kfArQh8g5r70OE8VtPEbYEgU%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"7CBA5FE3B035FCEDFB07A20A06790B50\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":4,\"username\":\"1002\",\"password\":\"$2a$10$2YXwEU3grzTD2FHrUZhhcugG3EJpXstbZU5x5LSQooXKetbYbIluq\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,4,5,1,25,31],\"nickName\":\"测试账号02\",\"phone\":\"17683906993\",\"email\":\"17683906993@163.com\",\"avatar\":null,\"sex\":2,\"updateTime\":[2022,4,5,12,13,11],\"authorities\":null,\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.HashSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'BWPQMRXe-pd1Ndb_nZze-4e_-sdOuMw8lbiWvJ9SoKDhikXTREdTTMCAqVuBr7eekvQEMk3MS8aJxiEwyTniSHRx9iFHk__AcetSUimG3DqcqQOOc9zi5kULyPcjTKSd',
        '2022-04-05 12:09:50', '2022-04-05 20:14:50',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJkMjZmYjM2My05NDY2LTQzYjUtOGViMi1mYTUwOGQ5ZGYzZmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMDAyIiwiYXVkIjoiYWRtaW4iLCJuYmYiOjE2NDkxNjA1OTAsInNjb3BlIjpbInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NDkxNjc3OTAsImlhdCI6MTY0OTE2MDU5MCwidXNlcklkIjo0LCJhdXRob3JpdGllcyI6W119.mtksu0i1o1sj7j36WstyG4R_Fa2Coi4MCT1YOcMoWsswcl4G5FGvQl3aieIz2b8tHi2wwjYMA-1OcfkzdAWh726KEF1eUM-fBEizw892uWRL352JBN6tyHHrLZtkhqRE1FdjabvtGo4Og_psz0WZJFtFUeCoB_Sb44fgtud0iGzLdlhlsOrsZDNqrLJ350so4QRSI83hzHMwxA3VWSVWthjhJF-gX-WQCZ90-JDYkJH1Aa5-JJiWxacMX1Lw3-Vugm5TSLPvIHh8io6cJLzRndzUcwEg8TkbNjN4wBJk0ZOKfs_fwYAgqbpr057jTuGOUXvLipdgmFSAtBqXycHqMg',
        '2022-04-05 20:09:51', '2022-04-05 22:09:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"1002\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1649160590.662000000],\"scope\":[\"java.util.HashSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1649167790.662000000],\"iat\":[\"java.time.Instant\",1649160590.662000000],\"userId\":4,\"authorities\":[\"java.util.HashSet\",[]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'Ky21wo9Ai3MUWf3fflzEiTpCMRV3Qm42prfoTGjc83aJNLp2-JgHHgpxQ_OUJ8skQBLiSp4wKGJcC1K_gVf4klj8tZpsTFKMJ1ZqXkp3-P9cAt5LNBXEv0O36t7oV8ON',
        '2022-04-05 20:09:51', '2022-04-12 20:09:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('3ccb16c2-32fd-47c6-bbbb-835b1234d9c9', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"aoxMf-z_z7LnhG858MHVk4cAdCT-_CST6K1nhxd_VTM=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=aoxMf-z_z7LnhG858MHVk4cAdCT-_CST6K1nhxd_VTM%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"0:0:0:0:0:0:0:1\",\"sessionId\":\"C01798E7D65F66952A820F0254DBA3CD\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'J6yzh2vZUFPagR0Wx8AHoTy0PyBKQeeFnRyZJzYAlpYUJCgobcfjKQdWHa8d7fMCX_ctmITGLNFfDyPdy6SnYTt1uEQB1CSi3suVnG-jdEWHY3ZBAl-u_ywj3MI_CDP7',
        '2022-05-24 10:42:21', '2022-05-24 18:47:21',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJiYzU1MWQ2Yy1jNzllLTRhNmYtYjA2ZC0xMzBkMjFhNDM2MmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4ODk0MSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM5NjE0MSwiaWF0IjoxNjUzMzg4OTQxLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.jzwo28R4Z1K9Rg_Sb8Zwf1ZycLKecb64FNCmPoQHxb4WB6ql6oL5s_1j70kXSSMLIvwIpvIP8ElXnI81P03UGOrB17zdMtJs2X0NaYXTMKLcAW-UfZsvr1-o1BBwIXoh9QmETgrrb-X_CKWKIfGQGYFlMg_6SHElqwuYYzExv1MBML0xkNGv_bncvdU585wFXlFwXAAXp6tsIUcgzzqYwaISbwTqS138ZFh-W8QUCiBT9tv4Bwm_ESNmBheLqwau5DnU7mo-pPLSO20J_Z3lLTlKBhLlkW4b67AkJjxKmHGKFdsYw5EZzyNirJfvQuXTfB6A1GVpZhXv0xF41rbqvg',
        '2022-05-24 18:42:22', '2022-05-24 20:42:22',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653388941.502000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653396141.502000000],\"iat\":[\"java.time.Instant\",1653388941.502000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'y2mYaXu0CNDFvVk7nu7XE_SC_sZ0-EVLaI339cW4_cmVKLzHhqyJ6yGhurmnJqLBxml-MwaT--Yll9t6BM7cRuplexPke7Ijax5WdrjkpqQfzHjsPoWpTPxoxLieSEIU',
        '2022-05-24 18:42:22', '2022-05-31 18:42:22',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('3cde8db4-c773-48c2-b776-1ef39719659c', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '1001', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"669ORd55TY04bDqZGRuoRkZ4XDZSjTldKg4sIvrYxLU=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=669ORd55TY04bDqZGRuoRkZ4XDZSjTldKg4sIvrYxLU%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"FC0A66DDD32E7228E80022D4EE4F5DA1\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":3,\"username\":\"1001\",\"password\":\"$2a$10$cQexdEVuUPfVt/vlSI3Fw.pjJs8BVzYt3TdQcm9CBajxKZoQmAb.q\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,4,5,1,20,20],\"nickName\":\"测试账号01\",\"phone\":\"17683906992\",\"email\":\"17683906992@163.com\",\"avatar\":null,\"sex\":3,\"updateTime\":[2022,4,5,12,12,48],\"authorities\":null,\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'cUTUID0ug_-t6GzMOYf_M4Evow-3u1T97CalNV3y-cdwwu9KGjL-54lXXZEGvRkdZi0DZuzrx4D6kTvkxe-wA8DYmjWvgzo9ezF9_d91WxD4nG5qbY40JY_EN0EbZ2H6',
        '2022-04-05 04:43:41', '2022-04-05 12:48:41',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIxMjYwN2ZiNC05ZTY4LTRhNzItYjhmMi0yODI0MzFjODg2MDAiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMDAxIiwiYXVkIjoiYWRtaW4iLCJuYmYiOjE2NDkxMzM4MjEsInNjb3BlIjpbInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NDkxNDEwMjEsImlhdCI6MTY0OTEzMzgyMSwidXNlcklkIjozLCJhdXRob3JpdGllcyI6W119.dOxeRpI8KhK_F5jl8q5NXNkP28XpfrHf0UlA6S4YptDo6ErKq9KXucGGdgezjf9ul0CXR_D0DaKmAr3-LjafZ7IoDsHkg-ho0UTYCRBEZXpJKueMnL4j3kZBbCn_x-2gQ7Kg5VOEtbeVX75G4BF3nEPABZoV0V0cf-sGEWHpPoNSuZdClLNkaRcWsRejYfUbxvtx-j8qXCxSq1dl4R4gEjs_PTcgqa14WAc08n-WEVTMtGHxHv9ffWS_EQYypJOC5TbaicnMtqOi3FV6cuyGUHwKxzlhbiIBm2Mb6R6y6tlV5HbLAiJfNQnQAv3J1_URU2g2kJkmXLPWvhl50aejnQ',
        '2022-04-05 12:43:41', '2022-04-05 14:43:41',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"1001\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1649133821.475000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1649141021.475000000],\"iat\":[\"java.time.Instant\",1649133821.475000000],\"userId\":3,\"authorities\":[\"java.util.HashSet\",[]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'QXUWgXsi2vAnqDGZEylDumtsLwguz_bO1Qw7OgHU6Qoy26_qK2IuHieQdZI9RECUg2vANYQerSMYsbsDzCkfgZa3dpQzYB4GnDPKkRQIFhBR7HrnP-SdOuImpZFLmpGE',
        '2022-04-05 12:43:41', '2022-04-12 12:43:41',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('3dd0a80f-a755-4fa7-8aa3-a45a14b2eb9d', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiJkYjg4MDhlYy0zMWFhLTRiYjEtYjllMi0yNDkyYjFmZTllZmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMzgyNzc5LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTMzODk5NzksImlhdCI6MTY1MzM4Mjc3OX0.lyQAE7fZr8znK81yePyhrEF9NsB4jkD048lYfZaQmQdG9GB8MqsPUxkk-PDJfLMX7M8hVahsr1qTt0pY3EBdx9fHBkuq2CfaleksI3VcYSFo2t5_55LDpA2wUJDyxqeChz1m3CKKOgHEvy9LTpcetX-_wANKAuJy6JmqxaEJ7rDHrQNZPLM_imIzGrTC0em5cD8JeRDlP6AIfPFfxZOggo3sdhvtUL3m2G45JNuh3VG6Agotivb7Qr2va9vGeZf2xPOwzPuNLegEMeLEyksm51ScHW1TmblzGAFlz8rVcnW6QBj400BH2ih37cjyDo3Wmsb2sifotWb4S5DvqvVX5A',
        '2022-05-24 16:59:39', '2022-05-24 18:59:39',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653382779.167000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653389979.167000000],\"iat\":[\"java.time.Instant\",1653382779.167000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('3f459812-e527-4b69-b1d8-621cd50f99ce', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"yXvgIZ8hL-dACaSF0Mg6iUCIQ5VhkcXRUBr6QZi4MFM=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=yXvgIZ8hL-dACaSF0Mg6iUCIQ5VhkcXRUBr6QZi4MFM%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary '0ExBdotoKaljzxhT0pEN_nSWRFPXsyLj68aGd5LcD2oIflPSGI5yuP4jTadKv2hCV3FZPyCX-nnHqJEoGxMBHBFnsnZaKv0zsvscVm_ppdHw62MzpvGul5Gr9_7itYaH',
        '2022-05-10 16:17:53', '2022-05-11 00:22:53',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('4064bfa1-b44a-4d72-9a40-c44713aaf725', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"jlnO4h5KA5AcwsW2OGsVC1Sukw8evQeDjJuBEUvvicU=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=jlnO4h5KA5AcwsW2OGsVC1Sukw8evQeDjJuBEUvvicU%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"EB6E7309A96D7D71888C4F6972B221BE\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'cyrDX_CDEGSKNq7l7x3taJnUbl6pKZ-0WLK0suH_5eL9dqZKjSlXIdj3eUDkQ03teBvMLVJmIKbUr_s19ubA81OlstDyESlfLbE1mNA6j7qc6ieiOPU7E7qmkmUL6WAt',
        '2022-05-16 16:26:28', '2022-05-17 00:31:28',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI1MzRmNDc2Yy00OGIyLTQ4YjAtOTk0ZS05ODhmNzRiMTZkNzIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxODM4Nywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjU1ODcsImlhdCI6MTY1MjcxODM4NywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.BKG3lNic-cF254QpNBJYdD7Tyn69do2AfX-DA976YCjs5eXNXtu589OLk0sAF9g256m7l0CfK8vTgdudTfSfHseEhQRKOfQGzvZA8vgWU-glzG0--vsniIjN1CKNHnB-AxPVvnCdmZ6A061WXOszLCK_KH4yFWgQT_rJ8df7v4zvWUQOyknEOJJT5esAvhXdE5aoc35Pqpmvn7gwsXdkCxNqvUq5yjNRNEZSgYH9O4ZjHBujwG8stPRkmdyk3VO_eLBipVKsWk8UWFUeUzUVWq2TguiNvpWrt6bA2a0Jne17JQwXGbqD89Q8Sze66ZL3DY_i8HhR1JEFa2SBdeSaCA',
        '2022-05-17 00:26:28', '2022-05-17 02:26:28',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652718387.819000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652725587.819000000],\"iat\":[\"java.time.Instant\",1652718387.819000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'KC2IDI4ilGE5xOXoso0agBERIZiP5DXp_3fm1w-K0pCGpTiUUD3qvHALjOqUbyF0JmIcS9ahnPaXkhmmU8txexvW7ATolTe7Vxfw5Bkf6S-byHVut70jldqjDGdqiPf8',
        '2022-05-17 00:26:28', '2022-05-24 00:26:28',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('40afc939-20dc-45c5-8f43-febafc70ef04', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:46:47', NULL, NULL,
        _binary 'eyJraWQiOiJlZTJkMWI3YS1hZmMwLTRkNWMtYTJmYi1jMDI2OGNjMjhjYWMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTQ2NDA3LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTM2MDcsImlhdCI6MTY1Mjk0NjQwN30.GR3rVfprV_f44OiOYnBgW8v28M71_DHPk8k57k_Uwp7w1KCdHKbik32q2J1pJdj2PSWIjuW4qrW80MdeM5WnPLO3Iw6dpPBmTesJbq8o1eq8lRdbiFTvznNxVJ6bbP98wCVBZf1pl3xkirGLZy12_LvITYWXegss6prjoePmu3bSbV49mhibtIs-NJqwomoXVDVAYzI5t7grooztiknxQmG1cHcs7nT12L68WLKdPrO11PXXUU_lsPjm4u_tWsK_6gLYowaXavXDG3-islXKm5pG-ZZg958qyX5a48eaDxLyKYs369Ty4qiVg_yfm8ao6PUxtmrDnXlbaNs-aO7TVw',
        '2022-05-19 15:46:47', '2022-05-19 17:46:47',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652946407.091000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652953607.091000000],\"iat\":[\"java.time.Instant\",1652946407.091000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('420fc958-7b4c-46f6-898d-9b1471497bcb', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"kaSNYSc7LZHsosw7MMHO-3DTvdXPPyyaDU9YOgzOqNw=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=kaSNYSc7LZHsosw7MMHO-3DTvdXPPyyaDU9YOgzOqNw%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B9D82904CEF7DAA06A0D695BA60120E6\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'hIWKMU1JWPzw6qXj2F9we6A4-DHOmsaK6yfM9mqhybG6Sesib1aY3SdDrGIFATq-pMisGSfkGxCXBWhNpH8IjZbN8Y_GCLaiGKlA9wiegM7Xmkp3nnMuL43lzI91yX-q',
        '2022-05-11 03:28:50', '2022-05-11 11:33:50',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('4213b506-bae2-4be7-aa82-1b8241cbcac7', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"LGnPBNPubTipuFCdpw2oC-ki8e3NocZgczLEEXMYG9Y=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=LGnPBNPubTipuFCdpw2oC-ki8e3NocZgczLEEXMYG9Y%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary '3LRVEQIZo8TI_1HmGNiXkqNsPp3sl8OhOEdUfvdFccdvGaur41Q2bwiIKA1mIMtYuo6nWbe-gEQw0YbtdQireZ5Sc5vfOSLZe9nWdyAeUqcpqpxi4RF7ipFCuh86kCyN',
        '2022-05-10 16:30:15', '2022-05-11 00:35:15',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('437b04f8-8259-4f2b-98ea-375d19c87472', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"zD1JYDFn4iFd8VkLP6i68s7SwkxUdq3slqMJAi1hun0=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=zD1JYDFn4iFd8VkLP6i68s7SwkxUdq3slqMJAi1hun0%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"8C0EF9C37B7B97168A716669195A28CE\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '7vrDzk12RA1Syhy6BVeFaJ-neewmwFMzT59f5xRUU9o6HZ-MJ18D5CkXij2HqnFe55UOCXSYggr9ZViVWonCx2LW-KHL-y923sz_0ovR_-7UMFV2S6PDSlakA8Zk0xos',
        '2022-05-14 16:43:46', '2022-05-15 00:48:46',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJjMWVmNWFhYS1mYWY2LTRjNTEtYmI4MC02MzlhNmU4NTA2NDMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjU0NjYyNSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLmmLXnp7AiLCJleHAiOjE2NTI1NTM4MjUsImlhdCI6MTY1MjU0NjYyNSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.Yv1aRg86MK1a20QJKLPUlQtTGq1v_pSlWYDocCu6MZ9iziMYDAwv2Vjc72fD7uwroNv-UgJKcTjvqypOLKCw4_4b9-1Ucz1YK_XggpvDitjCsdhSaAHzZeVpSZbKvy6MPR7vcvJxTKzLWEKyTBRJepFPHHwmc3DWusJvXm8c0xEc1ZKPaPQcdU-NFFC5Ltu3QRat9CKOhp-xrqmy_Brwy5nBoYgjp0m9YDH2AzRLRcfeBjxI6UMPv9y3z04JqMzEpsA4nfze7hUtiy-hZQ3MrhKCdiXYJQR399WXM1YxhV30NlY4t9ZrMdq6h4c1IwyOKsqQz-iaT2kZXuP5nqKkNg',
        '2022-05-15 00:43:46', '2022-05-15 02:43:46',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652546625.816000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"昵称\",\"exp\":[\"java.time.Instant\",1652553825.816000000],\"iat\":[\"java.time.Instant\",1652546625.816000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'wpiSYgOj0-PO-LoO-DXqaMMAEGfUBJeMIL_j2Oop15528UR4vOk6F8qwRT-WphGiW65pJk-hYEmAlTjAv48thWByk8dS9gK_FoIjjbEVG4s6D_LDmD-NMnmpKLvNfV8k',
        '2022-05-15 00:43:46', '2022-05-22 00:43:46',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('453feef5-2010-4aa5-be7d-785ed3bc9800', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-18 18:33:06', NULL, NULL,
        _binary 'eyJraWQiOiIxYzVkYjI3OS1mODMyLTQxZTgtOWY5Ni02YzhjMGY1ZWJiODUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyOTI3NTg2LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwidXNlck5pY2tOYW1lIjoi5LqR6YC4IiwiZXhwIjoxNjUyOTM0Nzg2LCJpYXQiOjE2NTI5Mjc1ODYsInVzZXJJZCI6MSwiYXV0aG9yaXRpZXMiOlsiXC9zeXN0ZW0iXX0.vjCP1Kl1V38rsJflGxk3ssb5Jp6m4kB6PBKjb2rgv2cJHU_D-Vmv1NSLtneiCn1uc7GDnG1iR3RGsEUAL3jSntVyQXozBiXLhXRIYjv0Ubpv4CTBNIOwtrjmF1hdaw4Sl7WfFINNdlshA0AsqiII_qpGtoD5QAjwAtYn3gHzFR62S7U3cuIxgOydiiMQ0UJ1X0hJ6OP8CGZWVHlFW34S7YvIbydOqxR2TAjnDjrikkOWhZ1w3PikrQKZSSzXmO-1Lvx06QZMBBAjzInibJj1LK-Z5xT-tWU4IOqP4imt2JC0IDMlMHVc87mb4NUS58IIsFWfFhTZqU99UrIcc_x8_g',
        '2022-05-19 10:33:06', '2022-05-19 12:33:06',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652927586.193000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652934786.193000000],\"iat\":[\"java.time.Instant\",1652927586.193000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'sQveyhMnd1OZNxaQROZDnqt0lD8A19X77kX2umOdnpUtbCVgTMQ2MGoZSeXw5iOPYq1IbpkHKb64n-WebKLp83aKDIHuOLUJ7VmLMiWYF2xUz5UXcUmdO4bgOm29jwKW',
        '2022-05-19 10:33:06', '2022-05-26 10:33:06',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('45a39cdd-b4b8-4e7d-985f-45258d2684fc', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-20 01:44:53', NULL, NULL,
        _binary 'eyJraWQiOiI5NDBhNTZlMy1iYmQ4LTQzOGMtYTU3Mi1jNGMwNzNjYzE5YjUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMDExMDkzLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTMwMTgyOTMsImlhdCI6MTY1MzAxMTA5M30.RcFC3wjaPrNDlaJnvTUcduPxUXR32vjbF0QlzdlmeP0lfzEZ-4zzG9t43sQeSIVRJQOpzNyKhd1nNEruRmA9Kgt7ZnBtCZKo4fmYKKkXZPMUZTITSJHop4UQw96VdGScN1ht7IE8lCXL3_-zwlu6vNfX0OcP_gB0oUkEJVEhHkNU0JcBYdpbbq_1s_tmfy17VCBnLyTmeUKcIcqSC0YZLZt69UnGK4-97O-hCnuheqUTKCXWo3o1O-4gBvDfpF6QI4RA7i-dNS6wdlzpWxkgu0P3PVYCKtJOMTsKbKXyH-uUQAwyaZ7f9_WG0nqinuRFUujoS8ZlUEG7fZJ10AsbJg',
        '2022-05-20 09:44:54', '2022-05-20 11:44:54',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653011093.888000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1653018293.888000000],\"iat\":[\"java.time.Instant\",1653011093.888000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('48fc6b31-4947-4c37-8c12-1a98e9637933', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:47:23', NULL, NULL,
        _binary 'eyJraWQiOiJlZTJkMWI3YS1hZmMwLTRkNWMtYTJmYi1jMDI2OGNjMjhjYWMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTQ2NDQzLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTM2NDMsImlhdCI6MTY1Mjk0NjQ0M30.UVGHaf4jTbxWX0IScoZDdgOMVE_XvavOljpOKM6LkvOm91w3yqQkuKtoCpKq8Wb4DbxYJlM6oJCz08gxGq3b75v9UjgW7yLeVndXwBJBi7oFh-UToo2UOOpsF-muYoCOqr05m3TcWUbOqX-xBm9AGWD4tI8_i9x3MsYekAYCEhcbnBhprrzSm2ueQ72VO0xA0agc43oIjN3xqDGjMCfGJtHAdDncEw6A4lUFtuTvdx1HkaIMXCA3PEeHRcYSBeY8PkRpR7ctEEHZc9YvulY_lWGNIxpOMdHmk26dG2bCNLlP9jfrKY2PlzeMDoywJPEWmm_LkjoV8-hRohVw-W0wJA',
        '2022-05-19 15:47:24', '2022-05-19 17:47:24',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652946443.734000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652953643.734000000],\"iat\":[\"java.time.Instant\",1652946443.734000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('4a6d9122-97bd-4291-b8e1-ba58a25f0ac6', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '1002', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$EmptyList\",[]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"31FC5696AB58CCEFE2152E0C39E78B70\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":4,\"username\":\"1002\",\"password\":\"$2a$10$2YXwEU3grzTD2FHrUZhhcugG3EJpXstbZU5x5LSQooXKetbYbIluq\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,4,5,1,25,31],\"nickName\":\"测试账号02\",\"phone\":\"17683906993\",\"email\":\"17683906993@163.com\",\"avatar\":null,\"sex\":3,\"updateTime\":[2022,4,5,12,13,11],\"authorities\":null,\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"eDPq1QA45q_4rq2m4-ocIbNxtzPzXstJm9urxe9ZjFA=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=eDPq1QA45q_4rq2m4-ocIbNxtzPzXstJm9urxe9ZjFA%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"state\":\"YEs2Vy4_xNq3T88YNbENs0J-D-ru4yn6LoxlOzonHG0=\"}',
        'YEs2Vy4_xNq3T88YNbENs0J-D-ru4yn6LoxlOzonHG0=', NULL, '2022-04-05 11:39:41', NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('4ab22f09-2b96-4002-b1a5-be9c01e42bcd', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"_gSXZGHhLaFr2hYneKWtXa8hGPSuTmdMsHKIJZypJjc=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=_gSXZGHhLaFr2hYneKWtXa8hGPSuTmdMsHKIJZypJjc%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B9D82904CEF7DAA06A0D695BA60120E6\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'rXm2RmKLeJofSBUEAfDwHZSZiX3vUpcWjVniwocemWkEcGrkEcI-pjOAmJy4LOjWE-hdyfoH8hwRpTys684nMzjQQHwT6R-ESp0Lw4I84SKEyI8ZBafa3A4Hf6Tg5xop',
        '2022-05-11 03:35:44', '2022-05-11 11:40:44',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI4MGRkNjhiMi00NDUxLTQzMzctYWQ3Yi01NzM0NTkxNmU0ZjEiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyMjQwMTk3LCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwiZXhwIjoxNjUyMjQ3Mzk3LCJpYXQiOjE2NTIyNDAxOTcsInVzZXJJZCI6MSwiYXV0aG9yaXRpZXMiOlsiXC9zeXN0ZW0iXX0.Gx2_FE2spEdzZ1MLqTzLiqZiiot9oP1r_9MkvBc-ctGz5rzaLiI9KPfx_0cUIoKn8peGmvShUegB71Usm-Pfn_k62ztbaePbsRXwY4vpf9zP8pmYbnS8fsHAICMhFSeVgKuYFbZblznrn-BWzR-bhY0jUV8P_EHZO3skiJXxWkmth4C8ez8_i0J_5zCj2r26qyA30K455avFSXHpeL1QmwIA1yq5Fh-M67Uw5IMixatLFpSzLp5puuoFzn9GC0Ytew5JQNdJB4laAKAFtirL8D8EGkTtm5SzbIPAabKlDGJOwdNXXv898HaEElo5kwdHjT3bU2QGgH8bkJKcCRXL1w',
        '2022-05-11 11:36:37', '2022-05-11 13:36:37',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652240197.189000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652247397.189000000],\"iat\":[\"java.time.Instant\",1652240197.189000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary '8XDhU0hszqQMYRxgHZ9gkTwXsfzpzBymfgJsGKK1__4hJSHs9bNubQBR-rnjmNWPSiySvlcmQs-pz43spanwI2iBn52ECZsJ9A0ll4yDFaEnaN1t9RUK2r1BVlgBFfnc',
        '2022-05-11 11:36:37', '2022-05-18 11:36:37',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('4ac26308-2ce0-4e6b-a38d-bac2c6de22f6', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"IGNV2as8S1kh34cWE5V1mrU2EH4q-EZ7w0b0Fwa53_g=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=IGNV2as8S1kh34cWE5V1mrU2EH4q-EZ7w0b0Fwa53_g%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"E7092A02E907F47A0DCF2F39BF0804FC\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'Pjuh-PObpeMubg2yyqALzB9k8QUWz8C5j7sE5j49RjjEws7MS52itldicA4n1BGK3_gepvP3TGo0OljBR4aLgHN_wwTr0fcbAdf7nDMnlQXqeH9vOnlW0TJZOgz-izas',
        '2022-05-24 10:31:13', '2022-05-24 18:36:13',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzMmUzM2ZlOS1lNTI4LTQ2MTEtYWEyOC1mMGEzYTQ3MDAwZmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4ODI3Mywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM5NTQ3MywiaWF0IjoxNjUzMzg4MjczLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.nxwRfIooPzUD6E0QcpjY66QK76CVfam7Tso_hhAuWkN2pN0duCy2jTHR1-CRpkIfoLu2-AMm6r9tXYDTWxT6QRy8thak1abK887agxMlNsZ8P2SbohAi4CK7GajEdcw7YNkqFvCWjHwiEBptc5CSmGgYoqgKICdC8hSJBORDnw9vXvwjO6Lr6tBVab48BghNck97JMAgs1KQ9va4tNFkytFniaPU6a1LL-Bp0siD72HEYXYQd1xtEnqG-cMIo37yhMOq6d2tXSg7teynhg0h2dSPcCJ12G1dkxRj1P57ArJvaZLeX6DBnl3EAs-65FNkZU9Nihy-wpqotfjNeEjHjw',
        '2022-05-24 18:31:13', '2022-05-24 20:31:13',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653388273.334000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653395473.334000000],\"iat\":[\"java.time.Instant\",1653388273.334000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'b8nGbhdWaN-tXR8YqaS7sZH-jClNuu7Kfs3_PkcTGm1bpajorVl_xg6J2llLIkxReuCGmr_epQALG1eegyORCQiODJgOSfoFynwkWVg6XPx056pxP5CMDXuSOsXzZXFU',
        '2022-05-24 18:31:13', '2022-05-31 18:31:13',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('4ae6e530-4aa4-48bc-8569-dad0ee43c8f5', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiJkYjg4MDhlYy0zMWFhLTRiYjEtYjllMi0yNDkyYjFmZTllZmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMzMwMjA2LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTMzMzc0MDYsImlhdCI6MTY1MzMzMDIwNn0.Mx0V3ZXMgB_IXNryGg-JXOyXZcXTna_ED0aFDozuvIcOcXx9qKP_sh0dqz_IW9GR0wBQjxeoTWNs2Uv65IKkthgI5eKVeN1KhjFIxG6ANvFsF7H0Z-5FrCPm2E4L8-qSwPnT1BiyvBb1oXcAlQBW6b-zStpk6iK7w6Ae5_jlmMb3dS9mbfOWzirBPpAgMCReTKj2EMqLoPqQtln_OXByjzCpLhrqOMcmYxTDW1GWcflN_Uxhbay7JLppTnMxHdK2XOfGdBVP3hbSEefY34JDTnMVe8cJ8PxBses5DejYgyGZgTB2vfLP3ZO3ZOkmuAW8YDUSKbFu7rXWEIqfmMEMaw',
        '2022-05-24 02:23:27', '2022-05-24 04:23:27',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653330206.907000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653337406.907000000],\"iat\":[\"java.time.Instant\",1653330206.907000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('4bdd434d-ac2d-41c0-8835-5b24d68d3043', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"gtjquQb-Rf0fSpXm7PHUAPgayEitZgxBEMPkhfDyfc0=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=gtjquQb-Rf0fSpXm7PHUAPgayEitZgxBEMPkhfDyfc0%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.0.1\",\"sessionId\":\"A644E1A9A0497F8C74E12CCEAF54E2AE\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'ZtjngXCAJD8QDphMUFK6NaXFjkEP8XZJhehY8U6Sa8FuniRNS7uAN26K_a1RMG96noPxD2W6fBKgwxGZC7Gv4FTW4CaqYzHnmZ462oaw2RjN69gcbr9JqmDbtxDKytJ2',
        '2022-05-17 01:28:45', '2022-05-17 09:33:45',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI2NzU2ZmQzYS1kYTdhLTQwMzEtYTE1Yi0yNTVjNjdhODViYmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1Mjc1MDkyNSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3NTgxMjUsImlhdCI6MTY1Mjc1MDkyNSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.WztxN3pG_H_aKvBznPQ7rJ1J0z8M8_cpEQgMEbsXLI_5w_YCDxppx5rRPAS1D-UBxR7X52N529WB3_nA1ZZYBt0zTNjfdBHbVN3UBVSD9-DvEo7DXYFv5QMESgN_p8vcJsSOUqFAYBRYsjSLDr-kF3pFnacnmFl3r9v545jgZEXihXiNjGGDB_upp3n_OUgBOoC7VkM1Da2dOQJ9cWHXQhB7lffBy9aDOFy6FdJjVXzFys3pxJS_dTZXw18ea2QXKeNfeBTALGHBSCV9Jgh3rR1gA9k7MBFicXpqjqqonBnPQ3Sg_i6qkw3jfTfQrGvertwuBNrVvg5Rz_RaGX5TFg',
        '2022-05-17 09:28:45', '2022-05-17 11:28:45',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652750925.175000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652758125.175000000],\"iat\":[\"java.time.Instant\",1652750925.175000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'MNH8TtJeVP9Pe4BXr9sJM0lNcgkNZrdlH1saLJdX7ZgJ14F03fKDD_75HMonW0sOAhRQreuRlUtrCJXzMBZZvFQ0J8SAJAyKtyr3q1qVsea505sV_LykXCW15WdpTZXi',
        '2022-05-17 09:28:45', '2022-05-24 09:28:45',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('4c22d7f1-06c5-47de-b17a-aec28702535b', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"2nXTA2RJw4zhFZt0B01RyHVZuhveZbVBYt2K22Qn8nk=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=2nXTA2RJw4zhFZt0B01RyHVZuhveZbVBYt2K22Qn8nk%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"0:0:0:0:0:0:0:1\",\"sessionId\":\"3FA9C590A16A92C7344B82DEDD544A38\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '6IRHjl8EUhWsjAjGv0QBD-svo4qx3SMYu8evDkiyFdB6iXvQPusH3G7PCSGYzQPeLQWSU90KSmoiu0babG8P2Ix0zx0P38jjCX-EfofI0kgaLbpa2nBuTJpnuKb1bSDq',
        '2022-05-24 10:39:41', '2022-05-24 18:44:41',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJiYzU1MWQ2Yy1jNzllLTRhNmYtYjA2ZC0xMzBkMjFhNDM2MmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4ODc4MSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM5NTk4MSwiaWF0IjoxNjUzMzg4NzgxLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.vs_x_7SKkqjoB9fgd8jhjeVHm9N33nphj8RDup-SbOo8EhLX5M7mzT3A9-wsLQnxJgci0fR4GBj2_Wyt5kg2XNL1--RMnbiHVZkJGcfnRdgRfBhK9dyGkLuiqDu-WqTvHauf39XI2jRgTyi42qmmY1qTMefvYZIfxoIU1oUSMGHyZQmILLyz2ALClDvoqvIoixnAXpF3mFvUPO_m6fIQ6_ylv9WuLqyRJW_5PuMPl_QQl6nCkJDb0hXAlca7i4gtjQloY-Y2pXqjKiGnSx_dNrhfHBS2p5z9eogHfBEQhwW--xt9iRMik2Z68SSLOWMXB6UtST9s0l-7Lv164RmcCA',
        '2022-05-24 18:39:41', '2022-05-24 20:39:41',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653388781.311000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653395981.311000000],\"iat\":[\"java.time.Instant\",1653388781.311000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'e3Sr3qT1QBwSLmGnuGJS7-jRbc5XzW6kauirX1wGslqSU4vm3KGVGQeuE-hkJNrgZAiGPAatcG8Ba6YRZW7CDDHs6AECizcccYWb6CDngpVlkNiCR4Xn4QYa6H0bTgv9',
        '2022-05-24 18:39:41', '2022-05-31 18:39:41',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('4c4230aa-1a60-459d-8ec9-718f17010800', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:51:09', NULL, NULL,
        _binary 'eyJraWQiOiJjNjNjY2E3Mi0wM2Q1LTQ4ZDEtYTIwMi02MjNjMWQ4ZGZmMjQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTQ2NjY5LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTM4NjksImlhdCI6MTY1Mjk0NjY2OX0.xCXbN-k5uQaTeLLjPhw2ZHCkUcE76u68u9zeDQ39-d2usw0gB0eKBEssFUEzUaxwLZkNSl6S7ByjGq-boRZoO2htvYwsS611zbzUm0hpd5YV2Haug--hvRajxV9VYIopSKlguyj2s7xJQ4xUryJt4ZftcSrh6wOseN-tp1b3DtE0TPLHsw1drtQAcdEy_XnwuSOSeBHjIPG76HHwWKQZCF_v-8iw9jIvIk1FFsDq0lsPNwvPas7ftGMP8_Aas5ho_8OyAbL_deWDJuoNcbxpdIRbL8dqNsmgyPCZwPlHP-oJB1oWz2aTMRWcwmj2JkpE3osdcvAUyK5ts3fKT9m7GA',
        '2022-05-19 15:51:10', '2022-05-19 17:51:10',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652946669.850000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652953869.850000000],\"iat\":[\"java.time.Instant\",1652946669.850000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('4e1c46f8-a520-4dfb-9252-744b8cf044b9', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:51:36', NULL, NULL,
        _binary 'eyJraWQiOiJjNjNjY2E3Mi0wM2Q1LTQ4ZDEtYTIwMi02MjNjMWQ4ZGZmMjQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyOTQ2Njk2LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI5NTM4OTYsImlhdCI6MTY1Mjk0NjY5NiwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.CDoZLd0g5f6LfJ24t3ResQ0E-ushhvuohij9fQdRgDscoI4qiwdTwuZFdrYAmxT_ifwti8fMnC7ZTXA5zcbab006UVEYrIZykYILkEAJiwrDrTlZM-m_yuhg50YWruj-p0KPJR-G5buxLOC5YHHS0m9dEcSzch97csKJQqKGAjT-PLxN2eXzzAI625zwfYhjC1kBSVUlSfBh_kPgp5hiq1kMdzUJElclBZexrSwH0ygKI5GyOvCcexPP1Ch3U-LyNnQgweDQjUwFOgG2pKXpmMmXSxRI9U24RloK-OuGRe4yf1Vk632CLmITEmmaI2XVLshNuuInJb3vvyRoKa3eag',
        '2022-05-19 15:51:37', '2022-05-19 17:51:37',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652946696.507000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652953896.507000000],\"iat\":[\"java.time.Instant\",1652946696.507000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'CyS2Bwlr9XK6JoLMviIuIXZy2PALjwCdd13j2IVV8zlCLVt3G9kc0T04qBAmLt-qiFVB43TCTt1qsZSD2AMs-q-uX2REnWpWInshsy-R_5_t8c2UPcOlBS7NZ4n-d3d3',
        '2022-05-19 15:51:37', '2022-05-26 15:51:37',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('4e76e4ab-6301-4a49-8f77-53994976c0c7', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"INBjPraUuVvgB-w04GXCQSbORV7n0-9hZudy2gHWQ2U=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=INBjPraUuVvgB-w04GXCQSbORV7n0-9hZudy2gHWQ2U%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"1AE3D89D1273CD49D80EBCB90F2340B3\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'mM7XdiMDiZ7wr792W7FkqluclssuVjWU_3_AKOKcrIaDwTMYzseu7D35fpTMGM-Tjw1MaOBiXl8NTZmrH7r1do_9LccUn6VUWSYG5_Ni0y-7FdBZ7u_a0MQcWAgdrE_x',
        '2022-05-14 17:09:35', '2022-05-15 01:14:35',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIyMzU3NDg4MC04M2Q5LTRjZTgtOWZhZC05NGMzNTM0NWYwYzMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjU0ODE3NSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI1NTUzNzUsImlhdCI6MTY1MjU0ODE3NSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.kE_oD5T-LKsysUYALa3AV3nc6Tqqr4CuAtnGSnC2uSj6akyYpoV9YM7WSXCMIiL5bV3FcTnqpzusNomPvtUDJfwFXJcx_EBXCvNXUFa700KpAhoomZQvi1dCmvIO6wcvvhJZUJ3WEL_KFHicjJJnJTi-YWhKnSuIv7MEX0bLCbs1LfIvEcoO7OdoE_eCxRKF3Iw8LyY1IJi6DbGhfEbQ-k12Chj_RRXcp4tcKPgYTC-8C9owbGg_ctZ4loAb3k1r-bKPpBluBjEzfTOU1Kd4T5iC1MF01aE1Z6Uz0l-TOwa5Fqko33ftLxUaX9R3L5uJkpj90o4x6EJ8zhFxyA4JDA',
        '2022-05-15 01:09:35', '2022-05-15 03:09:35',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652548175.121000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652555375.121000000],\"iat\":[\"java.time.Instant\",1652548175.121000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'tCvPL8fLG4MUPH_umm_wKskbH3CfWgncPmqqHo87Hw0IWLtgBsOp5M7NtxZwEXwIX5hVC0DIB28WmMaDdJx79nVmQW5xBbkWqb5lddF7Uryv0BXTXTtWHAKwkD1ZY-Mp',
        '2022-05-15 01:09:35', '2022-05-22 01:09:35',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('52aaad8f-c1c2-4a0c-8d47-07aaad77f96c', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"Txqz7cCyqjlqn42GhXeDxRSWFV-OS9JQja8CHsYvSD0=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=Txqz7cCyqjlqn42GhXeDxRSWFV-OS9JQja8CHsYvSD0%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"3E571180500D8C795BD50303A14900F3\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'Bwf9HPbwxqzwoLT3P1ElTUaY4EVVUepD3OH_GCSIeAitT3lmi6Ki08-PRE_09GWzy5-8we0Vnb3-dJqZLVtYlG2r415dz-DnaeOg6tu3TONyYYrdsILETuEB6binzQH2',
        '2022-05-14 05:48:08', '2022-05-14 13:53:08',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5YTdkMGNmYi1hOTY3LTQ4NWEtOGY3ZS0zN2QxNDJlMTFlZTQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjUwNzI4OCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJleHAiOjE2NTI1MTQ0ODgsImlhdCI6MTY1MjUwNzI4OCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.M5ZdLXRDd0VZ5DullROesQA4iwg2JCuBBmGLsY0m00P7r2GCYumrICH8Nqc2ziKLhM9CY0OCJ_EkTaIbGmDqEdjigshasrKhpcIdMT21esDri_MX-osYbrPE0cm6H9_Cigu8mI5awNLlN9QrJPXVpaWY-C2mGwJiaPHFeggqKwBbKh_Ihg96fWwsI5VfrdXuLkCHDLRF-ZBlFRWaAVRX2vfn1BK8v3lY8GGKhdzuxSOxYadATKQgv2Cp-zdJ-xnkafWGs_l8PFUw_iqNSX0z1Z1wm4b2Ka8eXt1dmDCzD_RXEt58VRLWBDopVI3rXyCQK4Hy7oTRMQCOTMPU_IJJaw',
        '2022-05-14 13:48:09', '2022-05-14 15:48:09',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652507288.530000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652514488.530000000],\"iat\":[\"java.time.Instant\",1652507288.530000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '1KmaX6D_BjcfbjLMAOm9bPHt01m4FFgduvGsSAqv5XIdkAC7FSwIzZYD1spSP1esdN7Xj5o8tMVwvrIgt6k0kirooBjNwtUueF6jiDMvIzS91EGHiDb7ZrqO8c6IoyCL',
        '2022-05-14 13:48:09', '2022-05-21 13:48:09',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('5447a7d4-4ca0-446d-9f1c-63a31aac9fbc', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"HJKfxtm_fVrHi6dWZU_zjeyfsYoPMof5nO2lVPMRFko=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=HJKfxtm_fVrHi6dWZU_zjeyfsYoPMof5nO2lVPMRFko%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"0:0:0:0:0:0:0:1\",\"sessionId\":\"5FBC6E1CBBB312DA7721495049ECE188\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '4xx_lSysV7vvF-miysrEoEic4HGYgXuq36UZi2r_LW0DaGgPNFPYQwUycU4dWMD8PH1g122IbD4EzSmYq-Cruh5PfFANlBfPJIZX33fFamF4wUFcxqO3nmwfh_fgiYRU',
        '2022-05-24 10:58:42', '2022-05-24 19:03:42',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJiYzU1MWQ2Yy1jNzllLTRhNmYtYjA2ZC0xMzBkMjFhNDM2MmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4OTkyMiwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM5NzEyMiwiaWF0IjoxNjUzMzg5OTIyLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.RSiB8L4TtcdIfigI-NFrWQd0Qo61kKOGoH-Em_Uo7_46iVqKKwMl1n3L3Sxjm7g9ozjx9_MxCoZ_mKIR5nB4IqBh1ZsfUOv3xL-pygz8T9PiVYgcQ3bc8VlDI0aRvFxfuGNBlnuQWgp58j_Ttm7IHejjJx67so-68GrWDQp2vEWa9u0EcFR8NtCK3z3bEHEhk5_o2Ij9UIYIoC8a7xtz4BkKOPotRWLmHyu-nEEEETLXfMZ2DgAeSEhZpFKAuTVI6_rP_rwQWH-7hqCkVXHFMZ06tKYGAzSDts4_lsa-0oDCNzVtXRJBqWMdAj_LIy52zzTIAJOflvIo_yPxsVemuw',
        '2022-05-24 18:58:42', '2022-05-24 20:58:42',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653389922.431000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653397122.431000000],\"iat\":[\"java.time.Instant\",1653389922.431000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'gupPT9FE2Z6urP1aB-eQAT8XaANkErB06SS0O3CSANtaR8bDFwGFleH_3aV4845cg7lUp4cQs_NKfocZTKz3m6x5lbRNXEiaCDUIBXcchqj7xV_Rz54SrXcFv-gRu_wH',
        '2022-05-24 18:58:42', '2022-05-31 18:58:42',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('54c24672-efc5-420f-a1ff-1473f9879a2e', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"SmNFOVlxjPYZOvIFqJNvHbJED-5ZkcCuTGjfo1lGFnQ=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=SmNFOVlxjPYZOvIFqJNvHbJED-5ZkcCuTGjfo1lGFnQ%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"0:0:0:0:0:0:0:1\",\"sessionId\":\"5FBC6E1CBBB312DA7721495049ECE188\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'LPL_sNZtEUFfOK-Kzb-5QkGlOW_fHyxbOHWELjLiOI6j_DZqK3ZlLDmkr5qlVgCn2Wn5lIa7dg9dljn4tuYoGbVV_DyOixhOMGwTZq5UZuUJh53qFgb7PrmGQAYeT35l',
        '2022-05-24 10:57:58', '2022-05-24 19:02:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJiYzU1MWQ2Yy1jNzllLTRhNmYtYjA2ZC0xMzBkMjFhNDM2MmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4OTg3OCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM5NzA3OCwiaWF0IjoxNjUzMzg5ODc4LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.UuE-PecW-fkfE6BzOhaDxjEUo5bGN-1r8iW7TKdrxb23la9zIHACVpqxkKa-tkga3JkJ3XR09xo0258P9ijL91mqpluwTuMd1Zslz5GSOcTvtu1a4uc_IQugq2KOn0JQras14AVBGgtdXKedpEgouHLLFO5-28Fhn3wETejGH27k544vU3r8MkTAjMIPWlHx9QTyFNTh16HVY7yei1OEK0ebEIcLLimYkKIdqmAYb9R6UYEsPKms3rsmvMwXQyXb_ZogHXsUlc8K1hrAhqDaF6xtbRKOQ5n8ZiHk9DajUxsGgpwLI70NYHaTLB2hNTFshvnd6a4wDoKSZS8Hw2eT2A',
        '2022-05-24 18:57:58', '2022-05-24 20:57:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653389878.034000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653397078.034000000],\"iat\":[\"java.time.Instant\",1653389878.034000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'WKukW7yYDrEDMBkNuDg06-6XLgO9V0ptjc_fnBtjjJs_KbmDgFPYYovsv2MdOYzFZlRU17i4AHvylYDJ-vu9yH8qPM5_zsyei5khubBXfR7H-puy8EpTS_lcWiQHj82L',
        '2022-05-24 18:57:58', '2022-05-31 18:57:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('55859a14-b971-4a15-b509-ad99ded68664', '3c431544-6bd5-4c2e-ab4c-76b159d73997', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.LinkedHashSet\",[\"all\"]]}',
        NULL, NULL, '2022-05-17 07:37:10', NULL, NULL,
        _binary 'eyJraWQiOiIyMWNjY2ExOC02NzE1LTQ1ZGYtODg0Mi1jOWFkMWI1OTk3ZGYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJzd2FnZ2VyIiwibmJmIjoxNjUyODAxODI5LCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwidXNlck5pY2tOYW1lIjoi5LqR6YC4IiwiZXhwIjoxNjUyODA5MDI5LCJpYXQiOjE2NTI4MDE4MjksInVzZXJJZCI6MSwiYXV0aG9yaXRpZXMiOlsiXC9zeXN0ZW0iXX0.vtKnRylneVyiQp6K4CnJkK_yMxyL2AQ_0S_jWY68dH2KFyl5tq2yY2xlMRvgOvzHLp3A_vSDTLNd8gMmskDfyGJ1DD6nRWeqxwm_evdAcxJrb8zTm9HK97BpRQYaDBVYhc_HT7D3j7f_fvwY8cDsQlhX0vkWcc6QblWcmjO0RCW3URZ9UKsy1TRr1jheMsLZFdiylW8pd5nb0VniLhIFPm_nt5Rp7jbu3JfRo-hEbLxFwif6cK_rVmgHxHQqOagtru4Hm7B-8ZLMIqkZJXXE2TApiVRxT1NXQfKFjCxL3bYoJieFCUtttLDwsV6N0L_L0vCIRc1_Hj5_UxIoOy-JmA',
        '2022-05-17 23:37:10', '2022-05-18 01:37:10',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"swagger\"]],\"nbf\":[\"java.time.Instant\",1652801829.619000000],\"scope\":[\"java.util.LinkedHashSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652809029.619000000],\"iat\":[\"java.time.Instant\",1652801829.619000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary 'jE6A4Khm6rPygmJRtkUsiUIDPTUii-TtkIg6oEuH8Thvv1ehS6ulXEY_V6RSf3gfCDnJhRdGQ24R594BuKv-yp_8JmTApSHJd9F1yzIzoScRFD7XGSuDtVfwU8YoqNyY',
        '2022-05-17 23:37:10', '2022-05-24 23:37:10',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('591db83e-a4bb-4b87-886f-2fb338ef2f36', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"hBsoVKaHE9iaCsCF5zddk-YD5cw7AeA4aeuAZB4vPlA=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=hBsoVKaHE9iaCsCF5zddk-YD5cw7AeA4aeuAZB4vPlA%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"5CB5FC5DBD7F0E2B13213EBDADC75ECB\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'ERn-XUzdUhVEILHdomTkzl5-rmx6NBjR_rzFmyJQLLIF1GzzPv8jZO5dxzb6QWu65geBO0_lTEwo9w-XrzgO2mH7QsvbOx9E-HKS_cBTyCJRAed69hkJ8itl9PkBxyUQ',
        '2022-03-27 13:57:29', '2022-03-27 22:02:29',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIyMmM5YWU0Zi1mODcxLTQzYmUtYWJiMy1kZTNiMmM5YjUxYmYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODM4OTQ0OSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODM5NjY0OSwiaWF0IjoxNjQ4Mzg5NDQ5LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.AFZTJuMQdQ2v6RqX4Eo8kRAOkgbZ78dbWTSmInp6qZmwQ8bZKXBq_qqJ3stepwTlteVW_N7YmbAvmXBb4jpld8Ugzl74qN42FJhKuNJWe6_JMdB24pBE5XII1IKQkue1GtABhkq60mg1Vmol18twmKsxu91Bl64gds9JtxkXIqp4vygz0CFIHl8xGTz66zoOQOtOUB5oub7eZgNISLR1q9erG35DLXKoGSfxv8WvGx7kn4yXxG6ypBQO4UbO2SI41-PQKQwpzdJNy5B2Hj9wx5orpia05c8zcEXay9c6pk4YJFMRWhskxKghBsyXwMTzdt0fj2JxFtf5QN_AGpe0SA',
        '2022-03-27 21:57:30', '2022-03-27 23:57:30',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648389449.690000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648396649.690000000],\"iat\":[\"java.time.Instant\",1648389449.690000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'WcRUO6cTvlTA4iYvBpjNix2LdpykjFyBVjB9Ib7FXfHlpY653KnXvsAbJXvZqIeyDf4HJpzANoPHlS9joUjUcQzNEh4A1ILHusfKQlmuIeEfMScNq0YSHdIzLbxpWbYF',
        '2022-03-27 21:57:30', '2022-04-03 21:57:30',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('59f5466f-b31c-4005-b891-44f74c6d008b', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '1001', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$EmptyList\",[]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"E29A1C4876B71550C784B6874526BB46\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":3,\"username\":\"1001\",\"password\":\"$2a$10$cQexdEVuUPfVt/vlSI3Fw.pjJs8BVzYt3TdQcm9CBajxKZoQmAb.q\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,4,5,1,20,20],\"nickName\":\"测试账号01\",\"phone\":\"17683906992\",\"email\":\"17683906992@163.com\",\"avatar\":null,\"sex\":2,\"updateTime\":[2022,4,5,12,12,48],\"authorities\":null,\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"JZ0exiRWrvj0RLDVqnyN1CUS-xfzVBRRgoJmyTv_FXw=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=JZ0exiRWrvj0RLDVqnyN1CUS-xfzVBRRgoJmyTv_FXw%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'EWmp_mwpc_0D0c-ZgPclFpMmcartCNLtrgVma8lQjOdXn_8fMnKmvjZ2UojM0Ms_IEEFav0xYDw57JexvUp-OC4n1b-uY46PSB3x37XgC_3R2vBLexY7Vh35Sd1faFLi',
        '2022-04-05 11:39:54', '2022-04-05 19:44:54',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('5a6e19d5-5a50-4b4c-bdf1-674b347b4dc5', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"2TsXdiB0wZH02gfvLNVnQUWAS7_9B0-E2mLlojOdf3Q=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=2TsXdiB0wZH02gfvLNVnQUWAS7_9B0-E2mLlojOdf3Q%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"A6D74B84D6CDB882DCDD2FD52CCA292D\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'N0KwmexrAB6IGfwB4jW0g_LB0jeSZuMXbhpmGmmPBu6NmdnD8meu4IT8oLGxEv-fzb_W7yhrIRyJyTzqa3GadMh0dugvfA4aA78kKGXIuIlmgVqeNoCdMw073Li-rz-z',
        '2022-03-26 17:47:14', '2022-03-27 01:52:14',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIyZGYzYjFmZi1kMGRjLTQ1MzQtYjc2OC1kOWQ2YjBmMzE1NjMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODMxNjgzNSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODMyNDAzNSwiaWF0IjoxNjQ4MzE2ODM1LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.nILIevsCxyC5lrRaHnCLZprGLWjo_cEDCjhAXlfl5ySK2GZiVpzzvWEA4ZxBikGtE2lW72dzTtWITAeTrH_7lp8Mr93ZMbMly5MAzDg0trmw3MyFTqGecrigj38_glUhcuj6A4DnpgxEYi9cmVIbrR01b3U4rhIgINwdidgni3gBpvy8z0Y7jeFaQ3ElV3aDqVNDU9nqNvkE4aI4jUhqh3lJnfRwiRw1XbVZuk9R7Ko11BPWgSGAxgIazuX7uK5yYhEEVtC2HZmtM6futPHVLM1rdiC3RMxbZXzWcALYGivpoaG8JhAV2FsD7BaYE4Q9il27YiIzEZmOVpM0Q8WJVQ',
        '2022-03-27 01:47:15', '2022-03-27 03:47:15',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648316835.042429900],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648324035.042429900],\"iat\":[\"java.time.Instant\",1648316835.042429900],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'KNPG_UzlnG0vitVCOxHGPvBLYXt_FUh-1m4-6BaF-3mTof2BEmfnmH02iuWFg4LjrqTQ5LkbPp6LLeTXagutaR9ioMaPfhV5SXMFor8mfGOU338G3_vu61ohLuaE2v9u',
        '2022-03-27 01:47:15', '2022-04-03 01:47:15',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('5bc670e2-a734-4c83-8f1f-ddfd8a92e19d', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"3__sY-1AnVxD6QaNSWOQOY8KljmpaXd0gs2P5JBEmU8=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=3__sY-1AnVxD6QaNSWOQOY8KljmpaXd0gs2P5JBEmU8%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"EB6E7309A96D7D71888C4F6972B221BE\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'yeWMHV_AbutVnQHRafE7aFYv58jqYkq1C_gtu_bktQ6SnUOIef3mh8CZVMSM7u4WafY5LbRMvWLXZ5SumeRPTzfsVm_slfftDx7_halGRLXxrjCT4US4KbF8RugSbEEB',
        '2022-05-16 16:32:59', '2022-05-17 00:37:59',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI1MzRmNDc2Yy00OGIyLTQ4YjAtOTk0ZS05ODhmNzRiMTZkNzIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxODc3OSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjU5NzksImlhdCI6MTY1MjcxODc3OSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.fB10hmAFKPR_ZuR4P0IQ0o2puMX1NMwXy0W0iqf3enesf0lq6jiNUp9bv4_Ops3Ro9mgLkoUo9NAiUobUdMWnbYy8ebhTAcI4zk2zNZmBUTaHVJ1IG4yuOVU2F1KYV72dLsCVtLQNY3lMcFf6WsJCocc68wjeqPziU3gKEIGgMgEp7AvFZZFGwvfV28RLVN_tgnqfajO-mHMqohtbB7Vln98Se7Aw2B4oNDYnwT2Nzh9MpanVe8qc3NhFvyq1z1mJ6jNvuWT4QofGMI8JYlGK83UbTno-5iNnquL4L0n6DSTwKm8qT_tkh2IvTbF9DgBitTYzfkF9hcPDTBlluCOAg',
        '2022-05-17 00:32:59', '2022-05-17 02:32:59',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652718779.001000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652725979.001000000],\"iat\":[\"java.time.Instant\",1652718779.001000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'SUUagIt-HBmgTijuKd8NV2q9MsdlKQik_nmoWsoJI2MOg6NVJZHLxSyz1RQM20Y3XFhLCOicB224xprY661QxmEj88MMPiqXBbT5Wd4wclvPC5Ri65uJ4zzLTmh4EKY7',
        '2022-05-17 00:32:59', '2022-05-24 00:32:59',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('5db5233d-88be-4725-afda-53c7eb1eb818', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"vJ47E4n4W_RlZLxoBRmdCNQZLQ0XB9KQo7yBjCzz9as=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=vJ47E4n4W_RlZLxoBRmdCNQZLQ0XB9KQo7yBjCzz9as%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.32.0\",\"sessionId\":\"CBB4364DE6F9185752D5957FCFA4B706\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'xNmHLPv2iByseVezT6OkkCm7BzWcTLEzptWtIz43jeQOb2XeO8nlZddjsTHVU9w6Gc6aa4cNOQ570AY5uqBdkdU-_LcZKr4dS2S-_m2y1pCYXBgTglXjNpSuTiosDiKB',
        '2022-05-16 17:04:25', '2022-05-17 01:09:25',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzNTNhZTYwZi03NjE4LTQzMzEtODk3OC1kN2U1ZGI2YjBhMzYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcyMDY2NSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3Mjc4NjUsImlhdCI6MTY1MjcyMDY2NSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.u3uh6wfgbLGtElDuPweT1IQk-cQ2MDGDdAlFGFCSTkU9uFSHCJgx4yAxQvU492X4okRdrJl0rZnFIGfZH_qvVQ8wM6MxVwfApOA4f2fm7ySRXxjyp9TYNmh6BLUb5u_4hDLnrpnJJ6lrDdMloQn9sjCkrZkOuGovgzRPrTdXiQm4KY7M6DHDv6CSJVob75Vcq_MLqwnsudYaeeRITaVBQMGXTFQJ4R-0ij8PY1W3LtvBWfoLpraATN4HXT-rzR1WqZyOuMOgrl055905zwlRTcKWAPiXxvAD4KCsO-uygaoKVmupUJhVFrU8cXxWqoIwd3ymrI-ArM4iaY1PXwsmXw',
        '2022-05-17 01:04:26', '2022-05-17 03:04:26',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652720665.563000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652727865.563000000],\"iat\":[\"java.time.Instant\",1652720665.563000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'rgLktznI4kLtlDOeIZB1Kn370gqpoEJhL7p0B06FQbhWPVMdPGnE0XZf1JOLVQqP88-fkhPidqLhJbPhnhzfuaHeTo9ErFQPpByA2RWRvItRXb-VYGU8sf8qTIhvX_jZ',
        '2022-05-17 01:04:26', '2022-05-24 01:04:26',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('5e013e29-47dc-4b28-9539-74a71e7a0c91', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"JQDeURMQ-LiPS-JLluuhwWKD28e2po1c6U3Soq1-DNY=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=JQDeURMQ-LiPS-JLluuhwWKD28e2po1c6U3Soq1-DNY%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'gHLWDfkPdxf2LgKKurGu6svrIBBhyvPdRyVw1U1zoymYCeIi_ETwbVpbMsJuNjJV3Iga6BGvbpPu2ig6ViCr5MIRpev-Dz1n8Rb00166rasbQOS1fYWpX0OoYHp6nY6T',
        '2022-05-10 16:11:16', '2022-05-11 00:16:16',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('5e2c3ee1-7c98-4c95-b8d0-e5ff92a377ef', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiJiYzU1MWQ2Yy1jNzllLTRhNmYtYjA2ZC0xMzBkMjFhNDM2MmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMzg4NzgwLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTMzOTU5ODAsImlhdCI6MTY1MzM4ODc4MH0.nKWFXnkRpQRC1-f4JnZo_SB9TJERkvPdYUWbfNc_Uikl27b4VDa2s-NR9OG2-HA_ItmqaVfnNXhLoPUYjkU-yaMLC6OBSGJamuOSwcvdm7d8mPLmpXD784D7NDKfIHS-xUS-uduNB5CONBseyeQ1XoUxXI_JsyCRQhi7uHeD7Ry0PlP6HWadcououO5411Dq1pvgcNdxAngqqroKoLzIDOoyO7SRlCfBC8GVLheabOKfpzqDaE0HrGeFQST4JrZA9KvWMlRPx-GOcVfiFVCFCwTsBW1h1xESHiyMX3Frj6e3F4UDxeKt6stAa7cUIzZ_uds_Y9u1mik4anDfxzqwPw',
        '2022-05-24 18:39:40', '2022-05-24 20:39:40',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653388780.165000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653395980.165000000],\"iat\":[\"java.time.Instant\",1653388780.165000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('5ec1f7f4-e3c1-4872-90b5-3332630bdf66', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:59:56', NULL, NULL,
        _binary 'eyJraWQiOiJjZjdhMTMwNS00NTY5LTQ1NDItOTRkYy0yZjA0MmQ3YzRjOTUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTQ3MTk2LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTQzOTYsImlhdCI6MTY1Mjk0NzE5Nn0.e9INMd9Wck6jeV5G_Loj_7nbEmdGszPIKmZP6Tk2dPK1YudjsD8LSj4AWuFOdTn--F2UITFFYKR-nP3yc_VP3XgrYfq6g0Lusk16Y-tSzMy3MKkVawV-qY3z7iyGV_fHdTNDrD_KWradu3NIvLWEiE1SWZQIof76DVvE2S-uswZTzBhZUqs_EHaV9em10hT4EPtMU552lKb2DNtnzDqjR4BB3-UeMQwfowQp0zZHIIFza_I7_LQrub3kZiGISOWUiIRt-DjRTEGLEU3hj0qlTsiU5IczkJ85K-EJyOXJ4bFuKPRcDjeciiQQ8njoqBiJrAxkNU6yc0e2lV5mPy65eA',
        '2022-05-19 15:59:56', '2022-05-19 17:59:56',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652947196.140000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652954396.140000000],\"iat\":[\"java.time.Instant\",1652947196.140000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('611bf326-0c49-4a50-9341-99431bc16d6a', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"E5lZToOOAAr7tF6c0H8RUyXELxK4D_rkUHzC6Kuu5fQ=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=E5lZToOOAAr7tF6c0H8RUyXELxK4D_rkUHzC6Kuu5fQ%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"54F9479C36AC6AC6C45FFA9CA9C67310\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'lKd7bpDAHaAhXSC0xstNV3IOA1pQEH3ITtL-JaMIFa5GiPkqJrT9Q3howxS8DhmVxOxJ8RsmDe7BMsTAaIc1fs6Mh1iv1ccxSNX3e04G3l4Ot5qcjJyMaZ3d1D5InTHh',
        '2022-05-19 02:24:42', '2022-05-19 10:29:42',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIxYzVkYjI3OS1mODMyLTQxZTgtOWY5Ni02YzhjMGY1ZWJiODUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjkyNzA4Miwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI5MzQyODIsImlhdCI6MTY1MjkyNzA4MiwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.fvX1Jt9b_p6HhWEArN8cyhuciGlpHuEnZNY6BB0AbQz8Pbovi3jD3XsyJCqdJDM9z5huwi4G27qwYNpQyYs473xdBBlWuQb3R0T_TvWdPrNsxaBYSWJaR7aLoLYospVEoWJVBt0cG_WEcGs2Y-tSQw_lLmoS4fQULDYgtkRypbLAKEqTJ5YaNeAEZMLPL2o6illApyRiNnJucRFkAQYsGvI8pDYxePKb1RxiB8fq9dGeZ-YU-iHdgJD3IkB0Qh_pbtrd0Cy4Ue74G7BBqSs5I69SXVKmpWTVot3d1iijJ5h6NKbNlF8nd6wXR9ELhH0tPrRGBTADx-0qXDYLN6uU_w',
        '2022-05-19 10:24:42', '2022-05-19 12:24:42',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652927082.487000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652934282.487000000],\"iat\":[\"java.time.Instant\",1652927082.487000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '_xhz-EEXncerwKqKYtPyL8afzni3AkTVWvepA3qQurxpaaGt8sTbDixNa9CBbyJOGq1L8FvpnKQ4wR3T_ab69tRy2dlfan-2md8GtVM7KXoNEpuAp2S-iUMKofFxWm1q',
        '2022-05-19 10:24:42', '2022-05-26 10:24:42',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('6179104b-13fe-43a2-86f9-e2ac14843641', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"sJ8e1Tpz3uLc2wqO76UTRpkU5T4ODc4KMjGEV2eKxds=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=sJ8e1Tpz3uLc2wqO76UTRpkU5T4ODc4KMjGEV2eKxds%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"FE7158E2E553A4C8164EC481F9BE6A10\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'Xx8iWtQEFeoCOOLgZ-7Pn3mH_eG_CSq4sMXNrZcUPLrpBmjDdJhPLN4VHHdJLPuXdjr-qH-YzQ_B5lcIJigqtIK5ybN7H8KWg3Q6uzkhnzKwMUwLf5xQv4cazyOYB5jd',
        '2022-05-16 16:15:59', '2022-05-17 00:20:59',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI1NDJhZjY2OS0zNmIzLTQ4YzAtOGNmNS1iODZkNjkxYTVkMjYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxNzc1OCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjQ5NTgsImlhdCI6MTY1MjcxNzc1OCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.lTm6uukojPx0d2bx26JIxRQEVYrQoyGRCe5tl2qHoPoe7FxBaB9mh0C1j8bJ0eFgHnp7XK8HL2FZ5w1iNj4WAqZCmW0-M2sz_aVNUVYYrOFVISddetVJdo7sAdxO9Ym4CkL3zXvRWMqDtNYYT-ns4M3pFj02v4xm_wcScWYZYY6XDYSjFadtWs_Ru9RHG9e7lmYpnQF16ETo3kkD8rEMVo7tWcjHanwrBIaa9FIcbE8SXK02iiddTZMvXEZjirD-I9lHimmRtHp4oMZCJ0TIkwV2BsxE7zDskaxe2_Ij1bwbcDF-WphYH3WuQTa-carTnGetFRYbuTzzDzgo2J4GYA',
        '2022-05-17 00:15:59', '2022-05-17 02:15:59',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652717758.899000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652724958.899000000],\"iat\":[\"java.time.Instant\",1652717758.899000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'XiruPj1lsc-yQEGaeryFs8xOkUs13uqNDkj2-fz1bVjd7VeGK4SKQHjI0eqZ2b8W9S3PKVYesYqHDmw86SLEUFUCRAJvuS2RB-QFOiuf7GjYpdoFqnBFLNVlN9MxUC-D',
        '2022-05-17 00:15:59', '2022-05-24 00:15:59',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('6212ddbb-e448-4fa3-aba8-500eabc9d697', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"fC8TsoCXZNjmVfG5FE0k0ZnxBQJv-PugUw_PqKPcP1E=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=fC8TsoCXZNjmVfG5FE0k0ZnxBQJv-PugUw_PqKPcP1E%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"EB6E7309A96D7D71888C4F6972B221BE\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'sql_3ekogVx36lwX6GrI4V-0ngRWfUOQ7-EvuFAh7erC44InpQDSwdbFpnvThm7BLaBxRSNkIPTVrkmSoh0GWU3tAFMUc3FC3WpgEMGguIPYZtTAjC6pmZx7eoF-dSrS',
        '2022-05-16 16:29:45', '2022-05-17 00:34:45',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI1MzRmNDc2Yy00OGIyLTQ4YjAtOTk0ZS05ODhmNzRiMTZkNzIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxODU4NSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjU3ODUsImlhdCI6MTY1MjcxODU4NSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.W4YzlG1Q1y2sUq5ayEtBvytcPS4zNTUD8IIervmmFy9POXfKayT709UomC6eeLf2f-EiLvzGlua6tt8o0hOk0CR9cdD7P4AfFc5Fu7w3MImfBaGSPbLIsfplraqOEdOCFWyPNFnDhh5CN1R9Mp7uFa5kVrWeUYcOMjTPTTbH7R3PAUnktvxdrFilljIzt4A--XvsWWJJZYEhsdzUhZOrw5zpK9pLCEofwx2Kt75L-BJafkYAeeqBpskpj5orTQTdYuxu0zxDEnVQM-7RhL9UUd8HGs5ZcdAh2Av1gpBnnCTvWYK8dD-N6UuRUqwXWoDa8kYcd9Ej7RBt0ekRSMiLHQ',
        '2022-05-17 00:29:45', '2022-05-17 02:29:45',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652718585.443000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652725785.443000000],\"iat\":[\"java.time.Instant\",1652718585.443000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'v2LiI2nggxjsbu9R-44WLer-062JQwcEtiqKm7o0Qg8d0Nhg1MFP5kFRUuYoHNwoOx7EsH3Et4rJXQ1j4PG-IqPZgeLv5P-gCfKXXtuQW3tnIuoVZ1Av3gELgzqDIqVJ',
        '2022-05-17 00:29:45', '2022-05-24 00:29:45',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('62552d80-cf39-4230-9356-ac285b3d5b97', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"tcNt5hCZs1t_byV13d2Ht6hAql30_A56sF1RzyAGJnE=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=tcNt5hCZs1t_byV13d2Ht6hAql30_A56sF1RzyAGJnE%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"75620FAF58916FFA487F648FB18C27D7\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":1,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'HHTRWWXovqb6mx6QdzKR9xIw2XY7396sT-8ornI0TGCYUwk_xpHjrLqDcodI4lvp8_bm0LBWVjVHsLMhMvFNvF0MS9jkL27vz5Wf3sBRClOUlGQx0nHkxUe9v8fqOMzK',
        '2022-03-25 16:11:11', '2022-03-26 00:16:11',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIxMjkzNTUzNS1iN2JiLTRmMmUtYjdjMy1iMzdhYzNhMWI5N2EiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODIyNDY3MSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODIzMTg3MSwiaWF0IjoxNjQ4MjI0NjcxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.IhT4dj1_m7W7X31oAx4fgDgaoi3IGR3FeznWtjQ_10fMH3RRZrqPoq91WTuxZUVoQ0d3ViqUlp1qZBikB3TdS7KT-m6UgX8JSdXN6ap0LFIqqY3OwTLvnlJhmDfjlomCz9LSFDsFpX_UuojNewyFG7LTn1Wp_Ry8m55dm8ajJWSi1x6uxt01CBHPNwGlOxKu2AkqKbJHmWJZrVxPMObh6FKygRepRL9pSGvc54YNhQak93hAOGo0Hvb8fbNUNLjhL-2PXpkQ1r2wUnj0g8dmwHgUlbE_gyUG1AmLr6Lag3rX4-QN_iA7KbNvb50IjUqy5Yb4DMic5Wr6EuAlrilfog',
        '2022-03-26 00:11:11', '2022-03-26 02:11:11',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648224671.202814400],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648231871.202814400],\"iat\":[\"java.time.Instant\",1648224671.202814400],\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'GNx-dH9mjhlY33paFduxDdgC6-g6_KiwRRR49EW99UItPvCZRAYarHgGadHcZkJ66qvwNY0oXlN_HtTsTnmUePuE037xS_1lT7p0ib90o2xSHrRH0T5qsQIpvuB0sguq',
        '2022-03-26 00:11:11', '2022-04-02 00:11:11',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('6356b4d8-51c1-41d4-812c-4330e3589943', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"L3ClszJ4Tomm31czCIvbyRtrLXTk8v1a-fjWjgmBn9M=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=L3ClszJ4Tomm31czCIvbyRtrLXTk8v1a-fjWjgmBn9M%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"55D683A9B74F3CC6DF87ACD71B86A164\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'qzDAfUZTnhMef1qcL-OhyE-_yRc7eZyduNbYl1EzTdCCs-krhPzQlrTlBdXPlnEYCp7GfKvBXKDljOc6Efw-ohOiy8_K6E3r_1oL3F2ve3QtDmUwY8TJjzwqdZCub8ge',
        '2022-05-11 06:02:31', '2022-05-11 14:07:31',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI4MGRkNjhiMi00NDUxLTQzMzctYWQ3Yi01NzM0NTkxNmU0ZjEiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyMzE3ODYwLCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwiZXhwIjoxNjUyMzI1MDYwLCJpYXQiOjE2NTIzMTc4NjB9.F6UqkL_28SPzkp4Ylm-GGvIuO1pmbP1AoLrGpj5MG6mvPPzjZFMDigEopEHdCjjoqdVAGz2co6iAMpG6mI797XaPA7JNThQEDS6btZgYKRJPmZtrKsW9G40raxV4jKwS6hIm_68kT4rW5VbdM-gpNrJmOXO73KZdBeRwOtTZKJsNN9DDhmlPX6PGe88M67bV0RiHh1O3e3Fb1uFqRYOOEnQB8KNmRQgr31qftca3aSsWR5sSfOvyEKegMFIaPkAifFO0uYa8Lg5dXwt0R84mZMikWpQTMxfvhoe1GrLkLe3Q1OpcLbtX8x3E1eBsx2_UPR3fExOJUIXENix5FtXzPg',
        '2022-05-12 09:11:01', '2022-05-12 11:11:01',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652317860.622000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652325060.622000000],\"iat\":[\"java.time.Instant\",1652317860.622000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary 'Wdb3FSXiJGeVAkxGT8f7v0Jq8wPsocCMyZCTOHURHZgY3eiJP_2kD2kTiDkQGExcNLqfrL4h1byj874zNlwkcQvkpG4Rayzvy4q-2eeVgaK_LIuKoMMy4LUgl7u-1wbJ',
        '2022-05-11 14:03:35', '2022-05-18 14:03:35',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('63590299-fd38-4ff7-9e75-d273ea11290d', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '1002', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$EmptyList\",[]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"31FC5696AB58CCEFE2152E0C39E78B70\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":4,\"username\":\"1002\",\"password\":\"$2a$10$2YXwEU3grzTD2FHrUZhhcugG3EJpXstbZU5x5LSQooXKetbYbIluq\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,4,5,1,25,31],\"nickName\":\"测试账号02\",\"phone\":\"17683906993\",\"email\":\"17683906993@163.com\",\"avatar\":null,\"sex\":3,\"updateTime\":[2022,4,5,12,13,11],\"authorities\":null,\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"JZ0exiRWrvj0RLDVqnyN1CUS-xfzVBRRgoJmyTv_FXw=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=JZ0exiRWrvj0RLDVqnyN1CUS-xfzVBRRgoJmyTv_FXw%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"state\":\"z2nJnpXLVidaSoLPbEdPPFuFM0DfxOD-g9ond956hyo=\"}',
        'z2nJnpXLVidaSoLPbEdPPFuFM0DfxOD-g9ond956hyo=', NULL, '2022-04-05 11:38:41', NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('63fb0bc1-5741-45af-9b69-52eedc351d15', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'vains-Sofia',
        'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken\",\"principal\":{\"@class\":\"org.springframework.security.oauth2.core.user.DefaultOAuth2User\",\"authorities\":[\"java.util.Collections$UnmodifiableSet\",[{\"@class\":\"org.springframework.security.oauth2.core.user.OAuth2UserAuthority\",\"authority\":\"ROLE_USER\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"login\":\"vains-Sofia\",\"id\":52526354,\"node_id\":\"MDQ6VXNlcjUyNTI2MzU0\",\"avatar_url\":\"https://avatars.githubusercontent.com/u/52526354?v=4\",\"gravatar_id\":\"\",\"url\":\"https://api.github.com/users/vains-Sofia\",\"html_url\":\"https://github.com/vains-Sofia\",\"followers_url\":\"https://api.github.com/users/vains-Sofia/followers\",\"following_url\":\"https://api.github.com/users/vains-Sofia/following{/other_user}\",\"gists_url\":\"https://api.github.com/users/vains-Sofia/gists{/gist_id}\",\"starred_url\":\"https://api.github.com/users/vains-Sofia/starred{/owner}{/repo}\",\"subscriptions_url\":\"https://api.github.com/users/vains-Sofia/subscriptions\",\"organizations_url\":\"https://api.github.com/users/vains-Sofia/orgs\",\"repos_url\":\"https://api.github.com/users/vains-Sofia/repos\",\"events_url\":\"https://api.github.com/users/vains-Sofia/events{/privacy}\",\"received_events_url\":\"https://api.github.com/users/vains-Sofia/received_events\",\"type\":\"User\",\"site_admin\":false,\"name\":null,\"company\":null,\"blog\":\"\",\"location\":null,\"email\":null,\"hireable\":null,\"bio\":null,\"twitter_username\":null,\"public_repos\":5,\"public_gists\":0,\"followers\":1,\"following\":0,\"created_at\":\"2019-07-04T07:55:46Z\",\"updated_at\":\"2022-03-12T08:02:01Z\",\"private_gists\":0,\"total_private_repos\":0,\"owned_private_repos\":0,\"disk_usage\":0,\"collaborators\":0,\"two_factor_authentication\":false,\"plan\":{\"@class\":\"java.util.LinkedHashMap\",\"name\":\"free\",\"space\":976562499,\"collaborators\":0,\"private_repos\":10000}}},{\"@class\":\"org.springframework.security.core.authority.SimpleGrantedAuthority\",\"authority\":\"SCOPE_read:user,user:email\"}]],\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"login\":\"vains-Sofia\",\"id\":52526354,\"node_id\":\"MDQ6VXNlcjUyNTI2MzU0\",\"avatar_url\":\"https://avatars.githubusercontent.com/u/52526354?v=4\",\"gravatar_id\":\"\",\"url\":\"https://api.github.com/users/vains-Sofia\",\"html_url\":\"https://github.com/vains-Sofia\",\"followers_url\":\"https://api.github.com/users/vains-Sofia/followers\",\"following_url\":\"https://api.github.com/users/vains-Sofia/following{/other_user}\",\"gists_url\":\"https://api.github.com/users/vains-Sofia/gists{/gist_id}\",\"starred_url\":\"https://api.github.com/users/vains-Sofia/starred{/owner}{/repo}\",\"subscriptions_url\":\"https://api.github.com/users/vains-Sofia/subscriptions\",\"organizations_url\":\"https://api.github.com/users/vains-Sofia/orgs\",\"repos_url\":\"https://api.github.com/users/vains-Sofia/repos\",\"events_url\":\"https://api.github.com/users/vains-Sofia/events{/privacy}\",\"received_events_url\":\"https://api.github.com/users/vains-Sofia/received_events\",\"type\":\"User\",\"site_admin\":false,\"name\":null,\"company\":null,\"blog\":\"\",\"location\":null,\"email\":null,\"hireable\":null,\"bio\":null,\"twitter_username\":null,\"public_repos\":5,\"public_gists\":0,\"followers\":1,\"following\":0,\"created_at\":\"2019-07-04T07:55:46Z\",\"updated_at\":\"2022-03-12T08:02:01Z\",\"private_gists\":0,\"total_private_repos\":0,\"owned_private_repos\":0,\"disk_usage\":0,\"collaborators\":0,\"two_factor_authentication\":false,\"plan\":{\"@class\":\"java.util.LinkedHashMap\",\"name\":\"free\",\"space\":976562499,\"collaborators\":0,\"private_repos\":10000}},\"nameAttributeKey\":\"login\"},\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"org.springframework.security.oauth2.core.user.OAuth2UserAuthority\",\"authority\":\"ROLE_USER\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"login\":\"vains-Sofia\",\"id\":52526354,\"node_id\":\"MDQ6VXNlcjUyNTI2MzU0\",\"avatar_url\":\"https://avatars.githubusercontent.com/u/52526354?v=4\",\"gravatar_id\":\"\",\"url\":\"https://api.github.com/users/vains-Sofia\",\"html_url\":\"https://github.com/vains-Sofia\",\"followers_url\":\"https://api.github.com/users/vains-Sofia/followers\",\"following_url\":\"https://api.github.com/users/vains-Sofia/following{/other_user}\",\"gists_url\":\"https://api.github.com/users/vains-Sofia/gists{/gist_id}\",\"starred_url\":\"https://api.github.com/users/vains-Sofia/starred{/owner}{/repo}\",\"subscriptions_url\":\"https://api.github.com/users/vains-Sofia/subscriptions\",\"organizations_url\":\"https://api.github.com/users/vains-Sofia/orgs\",\"repos_url\":\"https://api.github.com/users/vains-Sofia/repos\",\"events_url\":\"https://api.github.com/users/vains-Sofia/events{/privacy}\",\"received_events_url\":\"https://api.github.com/users/vains-Sofia/received_events\",\"type\":\"User\",\"site_admin\":false,\"name\":null,\"company\":null,\"blog\":\"\",\"location\":null,\"email\":null,\"hireable\":null,\"bio\":null,\"twitter_username\":null,\"public_repos\":5,\"public_gists\":0,\"followers\":1,\"following\":0,\"created_at\":\"2019-07-04T07:55:46Z\",\"updated_at\":\"2022-03-12T08:02:01Z\",\"private_gists\":0,\"total_private_repos\":0,\"owned_private_repos\":0,\"disk_usage\":0,\"collaborators\":0,\"two_factor_authentication\":false,\"plan\":{\"@class\":\"java.util.LinkedHashMap\",\"name\":\"free\",\"space\":976562499,\"collaborators\":0,\"private_repos\":10000}}},{\"@class\":\"org.springframework.security.core.authority.SimpleGrantedAuthority\",\"authority\":\"SCOPE_read:user,user:email\"}]],\"authorizedClientRegistrationId\":\"github-idp\",\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"F364ADBB4B26335481C6E797318D0DC2\"}},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"z68NgNYKMGhuC4cbkk34WHzHms0-Blup784E7fSrQyM=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=z68NgNYKMGhuC4cbkk34WHzHms0-Blup784E7fSrQyM%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"state\":\"DwhhZVfPi4DaAbWko_I9d_sAeIyQKraJbXixoY3tkgM=\"}',
        'DwhhZVfPi4DaAbWko_I9d_sAeIyQKraJbXixoY3tkgM=', NULL, '2022-04-17 04:35:03', NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('64c17d2d-69ad-429e-a64d-c80aebccbc0b', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"UXwwYiN-Db-TAJ0xlVkCOHhla34bfnlCr5WHe5QtMAA=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=UXwwYiN-Db-TAJ0xlVkCOHhla34bfnlCr5WHe5QtMAA%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"FE7158E2E553A4C8164EC481F9BE6A10\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'SaoOl_6y25IaWRO9WF_4j0Uta3-LJcC0UTpPMZv_5jFNpnoDHCAtoxlB6F12u7iqBRlKRpIQzzcgAIaLrFvozU0RtCpbHSwfGm8PN0Yc21FaEbCGKmmQkc2WHZmpUVln',
        '2022-05-16 16:15:51', '2022-05-17 00:20:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI1NDJhZjY2OS0zNmIzLTQ4YzAtOGNmNS1iODZkNjkxYTVkMjYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxNzc1MCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjQ5NTAsImlhdCI6MTY1MjcxNzc1MCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.FbN6GVOOnVFgHNqcObfCVfKEq8vv2nzkXLrsp2WxvblpUIrp8y3Dc8TgOb8JNjXS14FFCNVDuyX13qSny0zOmAAaRC37lufgOwapfgkFPe0CtThhX7V1UaU6np1MCb1CgKedgET9dNoilh0JoXqTi0BAYKbmvAWaKioT2sWkPxV_etlnqIAtIrBJzsFPxteW1wNEaekcmkoeqVg9z2Wi4_7pslBl2i9LL0SUWPU_w3QcyRUaek8EBkQW1SHvs85bMp_m47oUgmjBIDnhyycF4Nm40Z3L2TaA2OM39weGvPE7cdAdPzrGky5gHRDnlRKLeG-HKDtrtAAtWRz_RK8bvA',
        '2022-05-17 00:15:51', '2022-05-17 02:15:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652717750.680000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652724950.680000000],\"iat\":[\"java.time.Instant\",1652717750.680000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'Q46pwDeLHwxXj2KX14Zr0ku6LcmVBz25bA-exEY4H2A5qEJwhTaJyp87rPIMB0peR2VgOqLbzelCzVgNBJPIHCPVd-1wkGVxmOwwLxLUE62mgCWia3c_jle2M93Ooogl',
        '2022-05-17 00:15:51', '2022-05-24 00:15:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('65fde506-8ca6-4a50-81a3-ac67650bfc49', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"E3BTc1vrUjQm3583JRINFUEH_36dnOMGrNksKxUcMsc=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=E3BTc1vrUjQm3583JRINFUEH_36dnOMGrNksKxUcMsc%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"3BEC9D75F402FBCA9C7905A0BE527243\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'Ud0ygnGYNJNIgFdRd4ny4oBgLsNsCv9j42Y6eivnaK5-lMB7ZaInnPjj8rTxJZT7Tm39lKLdZQ9zs8s-XyO3xuxVQ4fy5p1D2yCC6YF_KoYLfzzcQbFYykatvTkqeMid',
        '2022-05-08 10:47:57', '2022-05-08 18:52:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIwMWE0ZTdjNS1hMWQ1LTQ0ODMtOWM4ZC0yYmMzNGFlNWYxNzgiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjAwNjg4Miwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY1MjAxNDA4MiwiaWF0IjoxNjUyMDA2ODgyLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.bGyQoRg-WJocF6D-nIKMJb8l6oVrxAfG9cDwKOEt7kbLxX63h9sHG_Vh0pd16O51Fe8SbDB2q1jlum6W3bSEmIYVHGYpp14X_4CD_qgAA_F7-gDPh_70OycBTKJ-m-kmMx6M2IVp55cLdu6J7B1slJ-6AbeujpqRuPvjg31K6i3dmLstLwtJ2lVt-Iuo-uuSX-u3oGsYxEtQPu2ZAdLYdSCt-q-joIzvYMdNKLs9keTMAx_koW107eZHkPFHFyi0fiXTI7Jc0ViLwE3Zd6mANpXHe-rMjlAJjIlPgwtKFpzLc2gMqGjavRivRJUlq4JI3msHGAt3-RwTDvisCTpjuQ',
        '2022-05-08 18:48:02', '2022-05-08 20:48:02',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652006882.132497600],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1652014082.132497600],\"iat\":[\"java.time.Instant\",1652006882.132497600],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'ACClLq82iSL6HPEKAhF4P-6AWB8woXXJbuCHxS-u6UHdz-S5Zj2wnNj5EgTIo1E8nhA8hkp-VGQpmjiXwsjfmmpd2Hew-ZfXoGKUi3goRKrZJR4YEVxYt2dyuYPk6I4V',
        '2022-05-08 18:48:02', '2022-05-15 18:48:02',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('663fa4db-c8d2-46f3-b8eb-fe3ad28ff949', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 09:25:18', NULL, NULL,
        _binary 'eyJraWQiOiI3NDdkY2NhOC0xMzdmLTQwMWQtOWY3YS1kNTM4NTM2OTM1OTQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTUyMzE4LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTk1MTgsImlhdCI6MTY1Mjk1MjMxOH0.eZP0U_svHq-PaT7ujSDfly6wBEmvsZ4sRDrH_ioDD5DC1Vw5sXXrg7SIo1G-HDaaUg9s-HxnAzA5FUuuxSTBU_NRtgHgno8T2qa3PdE7NSwQC7SsFopQK0WQrmvNbInK2atriYlKIuZVbDrmjnbxU1UZ1EDfBwXWA5NXpCVaXWGABRNSGtoVzUZgA1fNWMke2BuNGw_i3YidMR3D6z75RGCpaqU-Ogf5FBIYW8oRvVXxa5GWrgLJhA_x9e2j966veZ8ywmb8voMv6V2d7orsy75-9pL5DNBbdbxzoUINuyfzKmbP82aVCijls1GlQyIS1N-wLCwMvbN7aMC-JxI_CA',
        '2022-05-19 17:25:19', '2022-05-19 19:25:19',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652952318.536000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652959518.536000000],\"iat\":[\"java.time.Instant\",1652952318.536000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('68a6f1b2-4f55-4eb3-8025-2b7570ee4dac', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://127.0.0.1:8001/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"xFmXPhd5eDzzF622bUxHGvJDeGTH9LkEhnrvIpc17FI=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=xFmXPhd5eDzzF622bUxHGvJDeGTH9LkEhnrvIpc17FI%3D&redirect_uri=http://127.0.0.1:8001/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'nP7L99ie4E1hs7nc1jQWd13YOo7QNUCy25aL_Lmj7Q-4uivK19UYZ5uxPaihUGqkDQEVP7PHT_IyGwDDKctRvrlkVbnmq7nkSQdg840HHd6O2LHr95EYAkITyEFsy0-I',
        '2022-05-10 16:20:01', '2022-05-11 00:25:01',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('6993aed1-ee66-4b3e-8dbd-959f6b66097f', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"w8c4v0gEIKRIAL3RAkcapHNyMpntT6GhTCl2Exb9_X8=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=w8c4v0gEIKRIAL3RAkcapHNyMpntT6GhTCl2Exb9_X8%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"D3723FA34D71932D03144922CF8D5E84\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'HOwhsxSUwOWwkcp4VFh1iKG8en8wMbw00y0Nl9XmtqJHVZCCFiQEvLOtQjhZyfik-d5pHH2rv59-5Q4NpA8Zq_x73ySoD5pOYpGfnZdw-vPsnFG1LkGlEPzixCXcT6L5',
        '2022-04-02 12:42:38', '2022-04-02 20:47:38',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJiM2Q4NmY1Zi00NjM0LTQ5NGYtYjE5Zi0wOWRjZjYxMDdlODkiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODkwMzM1OSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODkxMDU1OSwiaWF0IjoxNjQ4OTAzMzU5LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.qBHWp9Cx3h3k5f6YBMSa0XfH8ZCvw5ai-rD2jo6qjysTRn2ffQSYj1cMyIL3C7UudaCcs6GN-VlnwtH4qAxym89ZHP8j0-m5BRI3SAX1RmsE2xYCyIeCI0LI8MIWO7LJTVL6MWEBDRrQkngfEtxGHkFKgZqLF3_1hwWXdxxMEVs3JVzymLcMsJQm5eyAJeyh_bHzzB2qJga_Xc5eagUpASzr0kCsb-z-VNLhIKIj6QDj5oWAiKKKnfAXGhkFsfhqDfmlypaqr08r4OymPUdGFem69ZR-ETfSzv4zMoFD5A2s6vVdEZvyoD3cecAtxTzh_g82hZ_HuBhAnIjP1RmdzA',
        '2022-04-02 20:42:40', '2022-04-02 22:42:40',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648903359.993000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648910559.993000000],\"iat\":[\"java.time.Instant\",1648903359.993000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'iR7lKqZdDnfb_y6lMQniOLtjSoT4dGlOjNQgLSnpEiWM1ljFevjlXyirF_Sn8roJIgR1VML9FHZ1viOl_heLhCgZhylAPOWTDHVSRoWD7UzW7Li_UpCUn2Apq1hlY_H4',
        '2022-04-02 20:42:40', '2022-04-09 20:42:40',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('6a42f4d2-95fb-40a7-8d64-2d571a1e8363', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"mkjVRQ3qSMcxjVuRC0ikEgUsh-vWswEawivfDbcNLRI=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=mkjVRQ3qSMcxjVuRC0ikEgUsh-vWswEawivfDbcNLRI%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B875A73BB9F1D6085F93AD38F1FBF1FA\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'kqO7PLOmLf1E_SwlhZpkwzNGx2eh4Ukh_JJZZLOV2cWasKmJcBnI8k_fSGrWWriFeuGi_LC6GeHXSRXWnqm9Jvj90T5RIOjWh3DDyCZtom20w1k_lMyt0iEyPgmSnxBj',
        '2022-05-16 16:49:17', '2022-05-17 00:54:17',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5OTJmZTE3Yy0zMjZiLTQ2ODItOGNiMy03YmNiNzI5YzdmNjMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxOTc1Nywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjY5NTcsImlhdCI6MTY1MjcxOTc1NywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.BWZMQtmJar4OAxpJY6ytNJeNjP07n3vy5U7ciBZWcyf-g0Urhr7IOTGhDgmPX0eJAMw9k6w-XGtPYNyi6lKhDbODA4JkkeEw57cLZGIQRVArA9tdcGsW6b-C0n09NUe5rSL1EfDvY5I-UNYrHuMKhRqDr9nnzjp7AL9PpOfmYAAVrNmW9b-tCN8U38rOwrdTo9iLtBM9a8tlnqjAuRXOQEKWGoqK4qWk-l82k45llO3KB-8Y4mUN4KDJmfbas8DZZuWmGMTUPHA9ngQLJx2PGs2rBj1haaW39t55tskzX8Bfjio0wZMzl1xP5kn1m_hjHsD5Ct6yekx67zcpP1XOrQ',
        '2022-05-17 00:49:17', '2022-05-17 02:49:17',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652719757.209000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652726957.209000000],\"iat\":[\"java.time.Instant\",1652719757.209000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'sD1R83sTqhNbA2_2JVesFA0lvmyyxoLANo3A-SbjDoPny7k-nlxvs85XLPKVHuQoU6B1WUV4DlkJsi3XQeGPkd8AUDO08FVsLUKsJI7FYIIm0s42gt01FCkzUhL8ccql',
        '2022-05-17 00:49:17', '2022-05-24 00:49:17',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('6a6ae4e1-6d44-44a9-a3bb-a6750e74291c', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"6yX2_qWSJmdLE_IGHh1PjSn9kpPtAXPRsrgya6DYUGU=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=6yX2_qWSJmdLE_IGHh1PjSn9kpPtAXPRsrgya6DYUGU%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'QkRxyLIUs6aQqRG_UYGmvOoI9sxs28J3o4moMcXCF9mXtPlxnlDp7TRY4P_oDZADJjczCN8dUraniIDKxo75_nTMnINQyk9WhTux0sw7bjh5rRLQBpDCyNOxbIS-TYYn',
        '2022-05-10 16:04:42', '2022-05-11 00:09:42',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('6abc6a3a-d70c-419f-bdec-0cc89635feda', '3c431544-6bd5-4c2e-ab4c-76b159d73997', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"swagger\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"V2VkIE1heSAyNSAyMDIyIDEwOjM0OjA1IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=swagger&scope=all&state=V2VkIE1heSAyNSAyMDIyIDEwOjM0OjA1IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"C8A145F4FE02B23DD1D3099C6FE1C11C\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'aVUXg_Wl2Ee7i9qzarBZnl1ExUgx4HuJrQsEoMnspqWJ6U40_zZQE1HmE0iqvLKTp0q3jgyB-mq9tCzwCPBxMiLhqcUUBfsbf5o88eZ3NZ8mnklpBGSOmRULNf9UTd8Q',
        '2022-05-25 10:34:09', '2022-05-25 18:39:09',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIwYTEzMzIyMS00ODNmLTQ4ZTAtYTA0Yi00ZjdkNWU3M2JlZDIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJzd2FnZ2VyIiwibmJmIjoxNjUzNDc0ODQ5LCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTM0ODIwNDksImlhdCI6MTY1MzQ3NDg0OSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.wWmJqYBSELRlo7sGnUNeOjk0bstYqwGxgpXFGAf70D_rmor1YNSuqosHMdMTBfeKAuvx_kk1rvQnBaODFYTLpOyZURsWHitmlAkUbS9FjZJ7q7jOmr7xqfgJdnA3uPenp5AiuHmMY_3Qd0gVHSMwxSYzuVF58a6zgB6ZnQxpa_gquq37wOoYX_rmmUf1Asdira1v8nFTZE-OpwdYAihoFroMB3F6o-jz6U3veGViTZfQTEwOAdOBfhRf70Wxluh88qFxA7LiciU-ucMfPUXdkgrrCxklrxz0GA7phljGoEL48UBRewPwzeDm2bbWPayK2O19jit4S3dkPcDyzi9dcw',
        '2022-05-25 18:34:09', '2022-05-25 20:34:09',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"swagger\"]],\"nbf\":[\"java.time.Instant\",1653474849.407000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653482049.407000000],\"iat\":[\"java.time.Instant\",1653474849.407000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary 'bnYHEWc9iVwBDL2cSMstIb6HUA9BHyWnI5JgQqwoi6-6nnHis-rIsZKJ_bXnRtjtfxYvn5GorIUOzH14AgpZOwD8MMrSHtpHkKM0y6JB2cPqT9QZTuJJntfaY0fJmf-t',
        '2022-05-25 18:34:09', '2022-06-01 18:34:09',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('6ac4e72e-3ba9-41b9-bcc0-4c0059f59c27', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"rFXQ6A3N7dK980j2oCNlqndyDMUWVc4vsGLXfPKmKxc=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=rFXQ6A3N7dK980j2oCNlqndyDMUWVc4vsGLXfPKmKxc%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.32.0\",\"sessionId\":\"CBB4364DE6F9185752D5957FCFA4B706\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'yDejXrjy5m0R6ABTXPLK3bgnAix8dq8vIxZY7P49n5KTrMNtcAajeBnVA82u6O1mwOrMmsu-N2syaUyQXeaLrC9n7OqeRSeGnvqd0s6BEpBn-pdaFreLtowQvoksg-jM',
        '2022-05-16 16:57:33', '2022-05-17 01:02:33',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzNTNhZTYwZi03NjE4LTQzMzEtODk3OC1kN2U1ZGI2YjBhMzYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcyMDI1Mywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3Mjc0NTMsImlhdCI6MTY1MjcyMDI1MywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.PBMJ5xHSiV4gl63FWLs2HyZE-Cws9w27UlaH7BaH_JKa5v9atpCCh17UmMeA4m9_0HQF2Uy-zF0FwsLDRugQD7xCkItOW45vtQUhk5hUTz1hnWTqjOuBAhhMVXeBOpEUnkNRoBRD9v9MNWbZ44PgknkSNNnQxUPfV7C-ivZUt1Q_kllTP9Jn4p282oVElqsd7ogxz1KFVH35hsQKngvN-lxb6loUpABKoOFU536pl0O0Glh7TpHMkp9sDr14OztnLtCTczaANvaA-_cUjf6tl2of9GggXSH2u9YXRiFWPQWIKHgERjDmbj0_7zm_njKYRUYE9ntrC70DhwYXQY-oFQ',
        '2022-05-17 00:57:33', '2022-05-17 02:57:33',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652720253.280000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652727453.280000000],\"iat\":[\"java.time.Instant\",1652720253.280000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'XW2xQpS6yadUg3yf70JT8sWAd1bc8mjvhED6YdnrGd6TiBHkPnwTs8ZVV7ecK-dLJUHtEMJQFvBhzipES4cp-qhyKkXRDwNZmUp_gBIlt73vOWFteDuwuKgOyC8I8RU8',
        '2022-05-17 00:57:33', '2022-05-24 00:57:33',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('6b379686-efeb-4c07-8264-f682388d6f6f', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"BZ6REFp3QZmoxoYkTx25cVeYi8NjB-7JjWDGEEeEz_U=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=BZ6REFp3QZmoxoYkTx25cVeYi8NjB-7JjWDGEEeEz_U%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.96.0\",\"sessionId\":\"C63D33B151C0AB401722D7F2E385FD42\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '9Vcu9X1YdJYxFmVaD5PqhxVSyJgtJ-oEtW1TUGOEDcw8GFUHnwTvp5dS3FoX9oVXSZHTW38d_su6Yq6-PZ1esjxhOUwvR228U1XIxT9mFFnPFWioHnCrDenkmr0BTBkw',
        '2022-05-16 17:51:48', '2022-05-17 01:56:48',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIyOWU1OWE4OS0wMDJlLTRiYTYtOTQ5NS1mNGM3MTM0YmVjN2UiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcyMzUwOCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MzA3MDgsImlhdCI6MTY1MjcyMzUwOCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.WsL2_EX9G4-p8C9jbbOJChE2uwaS5rpHwi9LaPVHm80cogtBMkd_4K8hsSI7zEIIbMY5glxFN41p_IN1TY0B6Z2xW3e1Obgnc-w5uxZlKBX94z-AsfhkEsT_61xroqfTPFiktqbXVO-AdUnnP1HkV6puInG63JFAn7vA4GyvVqEEhBq8czwpfODD_tvjmbQiJwilaU-xm-Nz-PelkKP6nDBgIJKaNy2mPmZGOq1cbvju12HSdU-meBLVJ-MUkbekr1PaT_DEn4iYM3uxZ9mHbJMLEGYvkApUDnXAuzn_W0NBaDPtgqv6uXDSBnfD0INh8YOzMB1WBqRa9ot90O81Sg',
        '2022-05-17 01:51:49', '2022-05-17 03:51:49',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652723508.595000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652730708.595000000],\"iat\":[\"java.time.Instant\",1652723508.595000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'i0rmhdo3Kph_cGx2nAfbYWEqWBGILBn2W24crwTE_srdkjWe45lx6HBNbNrwb6xRGcLQhMH4b_RoZO5Zd9MZX-7xkUmwbJTgAwyBKCq1T6TmYIn4r6-LgcWsoqL6p9WY',
        '2022-05-17 01:51:49', '2022-05-24 01:51:49',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('6c643473-ae7d-4883-b12e-758151b0d0b6', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"MUuh49YXrYuXVB_KFReTOhdUTm86M8izclmVJzZXA8I=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=MUuh49YXrYuXVB_KFReTOhdUTm86M8izclmVJzZXA8I%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"81AFC17344C7B404AB22EFF5CB5BC974\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'OBztc_EWFicYjocafR3LBKbb2347s2B8JIl-hm50vshsNUBb9H2RbK1isKMxW8VHq55PhPom4Kr8dvhIAlfy3pzr5xsnor70Whns5pRCplaE-UyUAOPxAMDwgbVq_X0Y',
        '2022-05-24 09:34:23', '2022-05-24 17:39:23',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJkOTNhZTVhNy1jYjJjLTRjZjUtYTI3ZS0zZjAyZDcxMThmZmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4NDg2Mywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM5MjA2MywiaWF0IjoxNjUzMzg0ODYzLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.EHn2nC3pKhgEcMn7M4Bgj9hWBwT6Nc3_a8DaWswWa0vKAuIju-BKcdnJSvrVXQ-42UHObMT8_kycIK9Cj5sokoy1Csbfwz5NznTK0hmXj7J6RjoGL2IZN4JveJAsVBJgfE27pLrrO_sASNjHyLixNsFvbUK4fcyJnp1rNH4TmsznrmNL2ch6ObDucoW7DiQtoLONEnUmnDbpjf2PhbiqEJ7XQN3oNoYn3eu39LhK27i3qzbARG0CMFRdQTPFsnKUCdMUxBlNYVphEC9pPdhGOCfb957yOxHKknvsm62JI8SMav8klFWaFvGhWfLAC5sOl4Gq08oquDgkE2_GRDg7IQ',
        '2022-05-24 17:34:23', '2022-05-24 19:34:23',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653384863.314000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653392063.314000000],\"iat\":[\"java.time.Instant\",1653384863.314000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'tyAhQ-m-OQi-8NHEIGmB3NXs7o0tWlmUxkQoQQBZQXprvutwQc3BsBoeK3QyoOcd4rn7dnOseinHW4ndG7qBT7_F2BbjscpypEGUY7qbl6c8d3qW30Z5vN8i9z4eb0PO',
        '2022-05-24 17:34:23', '2022-05-31 17:34:23',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('6de45239-a347-4bfe-a8f4-88be61647ca5', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiJkYjg4MDhlYy0zMWFhLTRiYjEtYjllMi0yNDkyYjFmZTllZmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMzM3MjI3LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTMzNDQ0MjcsImlhdCI6MTY1MzMzNzIyN30.F6sLcDa7VDPFWoPWv8wQH5RTxyl8oNQHJEdgYcOIsdFAGYLlW7PoPHj1E-KpaEfIorbRCeqLUaLija87E-ujHYiLuUGwgIKvpFUJxhKBmRgpN-zSvqAFVINpUHztYZyXM8j9CWarBDQfFpU8T3DHhRBu3mR7eWQ8UEqvidn6Pov56Fs7QW_x_rjPk8zhWnTRlS60aV23c3x07X_h0JX2DEx3lS4rKbQgBxP-7xVZmSBHyfnjAXdEGEwLfUGNKWMuDBH4NPMG0rL731J55hEdRrFQBjgwsQW6SzSUYJdPRL4liB_gXgNVzing6aoi5nqIBfXJv0ZlX9CFL4TPm_CTPw',
        '2022-05-24 04:20:27', '2022-05-24 06:20:27',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653337227.449000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653344427.449000000],\"iat\":[\"java.time.Instant\",1653337227.449000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('6ea64cf1-1aef-472c-aa92-b544e2bc2499', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"urVjEdr4lWbl0EOl_NiYeLnOBeMiANSj5SuxCR1qVLE=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=urVjEdr4lWbl0EOl_NiYeLnOBeMiANSj5SuxCR1qVLE%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.32.0\",\"sessionId\":\"CBB4364DE6F9185752D5957FCFA4B706\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'i-FreAagrZ0pwHckLwvtc7bP4f-BmmaoYYfyQLmHKFi8V1uDUi6y2hySAEpKoOrXjhdtTrYxNWDLZeHkqfwfNsCEctarQrPLKS4mlkFI1e450yT1QnfnH40ZHQHilqWA',
        '2022-05-16 16:59:04', '2022-05-17 01:04:04',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzNTNhZTYwZi03NjE4LTQzMzEtODk3OC1kN2U1ZGI2YjBhMzYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcyMDM0Mywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3Mjc1NDMsImlhdCI6MTY1MjcyMDM0MywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.s_dEJ04JQbTShHj_6r_LNJ5maiyH8hNpznLON27Zz3qGikt5cJ5PqAQCtMcKDcKa6StmE2uDMPp9eE4wYFqrdEt3QSF-gOlDG70NCRF8SWaRvLtMuDLsnUVuxtolw4qrV0xMK99br6WE5UfRYwUpoCEgBantUugBoLhlP1uaIltNeXpHwsF0SlY1MDihq75Sa5tCbFcMKwfug58-fAH6HN1jUx8SFInXz0o5eFNTVA4IYBqMOCKVHXr12bhQn-RJr2XZZnFUustBFA9zUO6S0OIrd36ziQX8KtwzngVDsI89echSRKA2RU6BdvxX4N83-qSGHrlM3nFH61df4ofilQ',
        '2022-05-17 00:59:04', '2022-05-17 02:59:04',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652720343.722000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652727543.722000000],\"iat\":[\"java.time.Instant\",1652720343.722000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'ZVPB4-NskwNZNtrbpUoAZb-SLc3_ht13KuKDrj8kN91kA8rlcca6wLDgChTGnLNYP-p701cAAhj3xtjFjdDF3TgZ5uQq6_ZTyAeE0aEB4Oilk844v09XcBZc_28kX4pl',
        '2022-05-17 00:59:04', '2022-05-24 00:59:04',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('6f666fa5-6929-490d-a592-05db2240c109', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"DWcyfjtAT2yndNbwDVDvt5CLQSqMZEp3v2ggwUlHueI=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=DWcyfjtAT2yndNbwDVDvt5CLQSqMZEp3v2ggwUlHueI%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"8C0EF9C37B7B97168A716669195A28CE\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'HFI1KiWSEaSl6V68J6hUx53g88MvgSrpgFpfQH0-UwQNmkdJw4IkTZAbS7bZQTX4PK7yUXX5ROC4VB5FQN9hu9xtH68EdUBMTBEm_3Fpt9H74OubvlPyb6hW__unTo_u',
        '2022-05-14 16:52:27', '2022-05-15 00:57:27',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJjMWVmNWFhYS1mYWY2LTRjNTEtYmI4MC02MzlhNmU4NTA2NDMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjU0NzE0Nywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLmmLXnp7AiLCJleHAiOjE2NTI1NTQzNDcsImlhdCI6MTY1MjU0NzE0NywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.uA5IROcsOYy7Bx1nkkxvc0e8jTB5IAMSl2QwD50lhbMR0wIf1ySXe1w6pOplrIQYlesJsp8vKyAtxX5MzVX0vhqsOM7spFC_Ysp8bjt1I8gk-hPqacr372jD28oGvNuUwNB6a2sSkRZigFTmvHEiZpVbWg9-BdaffjJRwj1jMy9Du67IGJRX0WC21-yA0gEyezpm1P3zqAqsm2dR-v-dODbKwbPJvDdWGgtsKDeZLtGqk6OO67uSVoYEU5PaeMlWVpc8-PrzEpzlBgy6NRH33FHcEWPI8tOQnKOHR9VJDWBDUMwYz-JGFGLbct4RUdfAG7teEyeIBaVn_00x304Z0Q',
        '2022-05-15 00:52:27', '2022-05-15 02:52:27',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652547147.008000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"昵称\",\"exp\":[\"java.time.Instant\",1652554347.008000000],\"iat\":[\"java.time.Instant\",1652547147.008000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '-lGjQcN4NtUsXxWK7kbW_y10U4r4vbY2CJv_FoV3aFGgbioHYDsd9qxt_8YuE2opNHZkKPVV9p_McEVDu-X44ePJBw1JrjzpKb02mAAqHfQDzG8TsEVWHxR864Sk48OP',
        '2022-05-15 00:52:27', '2022-05-22 00:52:27',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('70f544e9-c9c6-46e4-980b-a6a122120517', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"Q0bcW2diYsLZibChpEKB6fPPCFgqvhUmAh2nc7-qUes=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=Q0bcW2diYsLZibChpEKB6fPPCFgqvhUmAh2nc7-qUes%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"E7092A02E907F47A0DCF2F39BF0804FC\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'w39T2bkJ4G9QK4eSPJTCme-7dQ-Usd2x554T7KPXAcpT-GviWyPp_Q2fimNpm5PLw5rm4Mu3G902mSkykrpusr2uH7Rdw2F2PBVWe7hzK9-zPoerCB3ocmZxwsmMW6OB',
        '2022-05-24 10:33:56', '2022-05-24 18:38:56',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzMmUzM2ZlOS1lNTI4LTQ2MTEtYWEyOC1mMGEzYTQ3MDAwZmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4ODQzNiwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM5NTYzNiwiaWF0IjoxNjUzMzg4NDM2LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.bFHu8CKAou6r2qJrGsMx5Fgb1oA1_EsqXZ1zIwL28jAJCMha4efdzCi8moyXok5uzhU3GppIt1B6yBcjLopMT2mliR2M1vhIMLSg_-ud3gN0B8U6i3SoQyIEOP6LGmUAdDespBt_YKP-hZ40OsO8LuXFO8R6pXc-SL61gX5Dl_XG7RLoMaoBZorzggdw9v2s4lwtQ2Mzmt0DXghrRsdXICLG7pZkFOa8Tr0ZAe7E9PvkOvk8ZsM-1yygq5m6TO6Oqf0paagKPNWJASxbfmsunmXwEMnHhAbpD1Lm3BRXLfUsG5Dg53Rd4Ou9DSxyE1gZbM4AdlQks6JeCjE5N3xDtQ',
        '2022-05-24 18:33:57', '2022-05-24 20:33:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653388436.544000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653395636.544000000],\"iat\":[\"java.time.Instant\",1653388436.544000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'GfHOsv3j3DB0bwvE_7BSWZWmiK2Jhj9HOTKjXpuXclYcMIjo2yAONP0SmTy8aPFqQTXbv-HEe_Wv6s2mPhaqKDUgTfAmu-YTIneBn_9HIF54FTccLjJ5a0i6tzrDrNFm',
        '2022-05-24 18:33:57', '2022-05-31 18:33:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('72d3ab17-0fb1-41ae-8e77-dcf78fe6fb44', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"nIc3yESuuFyp7BSU8osRqtPjyVCoWcYyJTz2Pbw6WF0=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=nIc3yESuuFyp7BSU8osRqtPjyVCoWcYyJTz2Pbw6WF0%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"322312E0804DB54793BF79E866045B5D\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '-ej_JlhPLl-XGjywEvlgQ2HqOUMODCulMD9JpL0X5gyTuEJwuF5dRl1L39Hw4Xejgo9-lvcEBQRa_qr3kiqDBzhsZrQrHe6WCFATuQnWajVvMwW-1tk-qiaXyHlpGhmi',
        '2022-04-04 16:48:59', '2022-04-05 00:53:59',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIxMjYwN2ZiNC05ZTY4LTRhNzItYjhmMi0yODI0MzFjODg2MDAiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0OTA5MDk0MCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0OTA5ODE0MCwiaWF0IjoxNjQ5MDkwOTQwLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.iED_YMI4Oah183zK1iFpKsaw1XHrYieHGkuBZdR4d63YALKqT5aSpFfTFg4_FUI0w1Cfd7Jy3ZoH2rlndIY6GL0e__b4n21M_G_wIG1yObn9aJqYtAB-pIUkEzLNEp7KZBy6oCKzq9AN3sGBJ4yL7i89uYPgCbK6MQwZDm7NBdIkdBmZHwzDe39qlWxpTnPbDRaUvWl-ZpEnpGuqCvS2Bh-WBiewRebmJ6rg4J3DAK-2-KUGQXdOfOtSN3DGuRSOGGoC1A-LQxhK5VU-KwUv9bowzImaBc6AWL-RizzRqW6uVn7SSNsskR3rpHu6QdAtbdrtUvBcJC8YonxNBN9dSw',
        '2022-04-05 00:49:01', '2022-04-05 02:49:01',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1649090940.690000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1649098140.690000000],\"iat\":[\"java.time.Instant\",1649090940.690000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'CBqlZxqfmYYGLMw3MpkYCkxVGF92Ewuzl-rvNlNh9OMg-zi7lI3CI5rYJ2v18yGa8qoq-x4eI4QOb82U6soktbtFDVclbEoxMyL1tF_TknE3JkGrVaDmX0U7SaURmiUj',
        '2022-04-05 00:49:01', '2022-04-12 00:49:01',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('72ff32f4-8054-4a96-bbc8-e8b3de69b187', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"OQo-8timZw-SAVdef48Ui3BlW0GlHJVC4dnc8HPvX_Q=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=OQo-8timZw-SAVdef48Ui3BlW0GlHJVC4dnc8HPvX_Q%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.HashSet\",[\"all\"]]}',
        NULL,
        _binary 'ddoN3UqXRC92_jAHdSovjk-uRTSxvsKAAtLEBpWKl_bSYW9zjjvNfGu2N7MdCj9x1MURpoTQmXUH4oXPU9EW5F_eVxVFXt_4ufAd9twZ5xF33OkQ6uq3HofWmmI6GIcl',
        '2022-05-10 15:57:37', '2022-05-11 00:02:37',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('741da1ae-3762-4d8c-899f-4b735bbb0042', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"D_GrYk1-C5FTTt4OomzbeCPZNDQVnMyeGvF1H7vrsOU=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=D_GrYk1-C5FTTt4OomzbeCPZNDQVnMyeGvF1H7vrsOU%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"0:0:0:0:0:0:0:1\",\"sessionId\":\"5FBC6E1CBBB312DA7721495049ECE188\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'jrW1ADf_ODLFpRsKzoSlBb5BO4UC8eCj2a6mOGeieIZMUL0585P0L8SsmjKF6DTuSnHq1KuEJMDSlc7g0rXbkgG4XJ-5MAOEMKAu7rqzqP3Hw9E2JDWsGXyUVYkQNWSR',
        '2022-05-24 10:57:53', '2022-05-24 19:02:53',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJiYzU1MWQ2Yy1jNzllLTRhNmYtYjA2ZC0xMzBkMjFhNDM2MmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4OTg3Mywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM5NzA3MywiaWF0IjoxNjUzMzg5ODczLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.AJx18I0sxg5SxDwSDzOfbwNsZNaaKEwoQ5s6EDTHEu5HruyXRavI9II6vaSx4sUpTWPSlcUOQZWYJoxyxbYZCyWdF3J2Ooll4B3G7z9ZEWtRQxJVk0V3yBLYJVpvBQpK5TecCkwLabigzozstlu3IFV07WAUp7GzF3Go9zYSBpVZE4LxBVkTJ7D_pqCQasWjqT3q_447AmuaFmjf1ou2tMivarDvNcKGed12XJYaXHTVG8fZMy6qEyPcPvrib2ZpYGvzrFGlBWZSKv-Pjdy9YDw129NzsWIM3pp5TOoywmjzh_T8nWW4yCGO5hlTuhDy0y0jFQaZq2F_DWCFxp2yBg',
        '2022-05-24 18:57:53', '2022-05-24 20:57:53',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653389873.412000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653397073.412000000],\"iat\":[\"java.time.Instant\",1653389873.412000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'DbaJ5dqwLrSxnIdfJEKGCo8Qd088P7PoCbduy7ev_hh-yomQSkm51fi5Fj4cmRheYFj95ocI18mULP6e9vMRUSNAKcgKAH1oNydTPLt5z5O3Tmm_89AtjSUbtAC3Gx3s',
        '2022-05-24 18:57:53', '2022-05-31 18:57:53',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('7461d178-91ce-45c4-bd2b-0485cf2e23a8', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"g2VYo2QMxfAVBkbD2zk1cVF1ez0olv3KZ1CYwKvlOqA=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=g2VYo2QMxfAVBkbD2zk1cVF1ez0olv3KZ1CYwKvlOqA%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'oZseroUf2jRn64JdDT7_h3Dsiz9lCKaXPzvZTD1UZFO8lwykeANpSd62mQGLnekGOcUj3wLOamlwvm3s2An7gnNjdIP9qK6hXBk7A7uC3z5lUX7frOtMr037wCzoBnFU',
        '2022-05-10 16:27:20', '2022-05-11 00:32:20',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('7472f839-93f2-4758-a441-d7371264b7b8', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiJkOTNhZTVhNy1jYjJjLTRjZjUtYTI3ZS0zZjAyZDcxMThmZmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMzg0ODYxLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTMzOTIwNjEsImlhdCI6MTY1MzM4NDg2MX0.mApV-yYcqh1dkjFgny-8DDfPqEKxG417OB0DM9G53iuYspz2_QnB3rp_b3IyBVu5SMmwOS-TTnfCQicf9-fqY2H8kvZ4EMk8I1iqY2aw8w1a5VjUVsQ4ZlHjzedGtVbgnJfTaJxlVhIilN7Ia9OhY39Me78EgoKMS7B0-SXIzCcAC-8tedRVmk6NR4gDRr-qgYQwRDZC_Fv2jnOSkx-fFKRFZ9AA5rTJiwUSdij7k18a21sXqiiSJ94aPmbwAVL5gw0Uqs2uXKk6msLPJf-3YYAYL92uZIZQGjymfnIlUv2i443fgl2pHHLlrhN7C8z3LhDz9B-Ll9tBoYiOUEO7Aw',
        '2022-05-24 17:34:21', '2022-05-24 19:34:21',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653384861.448000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653392061.448000000],\"iat\":[\"java.time.Instant\",1653384861.448000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('76d069ef-12a4-4ba6-aa6a-2c50aeaeb1f2', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-18 18:33:23', NULL, NULL,
        _binary 'eyJraWQiOiIxYzVkYjI3OS1mODMyLTQxZTgtOWY5Ni02YzhjMGY1ZWJiODUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyOTI3NjAzLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwidXNlck5pY2tOYW1lIjoi5LqR6YC4IiwiZXhwIjoxNjUyOTM0ODAzLCJpYXQiOjE2NTI5Mjc2MDMsInVzZXJJZCI6MSwiYXV0aG9yaXRpZXMiOlsiXC9zeXN0ZW0iXX0.xQOzoqocoFQ-CVpKhcwVF2hVmLguFwjbp3-EIw5Mm7rEOKOQulTtsjKwwDub1Wq0dXsOT--NUa48n3CCjNK4hOMxPab3gu_CJB2VdTj6DA0wl220Zxo5jqeDFLKJrIRaGAn23Uz0ge_NKeXE_KDLLlsIP24_ULxejhUVVhb7-xKNUWTY2vFM0IlhmXSoKzwGeLTzjoknHv6CpHgE4ggWka_z9_M38F9NaFOrUUT_rOduGAsTGIsL9_I10bVVkovb_t0wzBUDBEPsw5MTAv8EdXfF26dXMN25ZaFtYKRSSTa9lAuXlm3LqPnjbjZs219DW2I9FshOj0bCt8FLkOGN1g',
        '2022-05-19 10:33:24', '2022-05-19 12:33:24',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652927603.778000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652934803.778000000],\"iat\":[\"java.time.Instant\",1652927603.778000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL,
        _binary '_L6-TEKlk-UgvNN7ZnefoZ4F-pm2k5MSmh24EKjj5HkHoCnPMEGPluQRB9LeI4imVbXikGShuxIEKuIITTdsAzJo2MYxWGGzWl4qN6cM4v2N9AOJvkOXIo_UQLdojeoB',
        '2022-05-19 10:33:24', '2022-05-26 10:33:24',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('798272b3-5961-4d71-bc4b-c00deec2fb57', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"sbdK7uQor7dGTlWTXFLMpjqoKP714ILYZfMu7B8B2A8=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=sbdK7uQor7dGTlWTXFLMpjqoKP714ILYZfMu7B8B2A8%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"EB6E7309A96D7D71888C4F6972B221BE\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '67lVXaNsRTcruYuV3KjotivYVnjKwAvD1hhm8dHnpvJRBxy12Eef4OTPVRHlCrqaf5wsBa8L-3KUoQnLA6loI36Syw_dH76AwOgDoSH-rOG5I2TL0YxVdMUAXQZyjSY_',
        '2022-05-16 16:34:24', '2022-05-17 00:39:24',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI1MzRmNDc2Yy00OGIyLTQ4YjAtOTk0ZS05ODhmNzRiMTZkNzIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxODg2NCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjYwNjQsImlhdCI6MTY1MjcxODg2NCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.B9vV2zjpBxBmUmJNLq7aM4so4A33kkdWdFVN5bD0sFOmkI3Cl6_J5BwnZ1wEI6fADxcPcm0GhTikgIZIfzZLQ43c-CiO5GVBVzQoximyz32sefD7Y8L205IY3dMu0uf8CkGD5LSSOs5uB6qUSETB4GMHYUZ2_9Qawl_ffwVcoru-PacIIMW9P5LAJu-aK0d67wAfxn92nTHLIx5XsziHO1QwldKkVz6f6m-EzLAadhUXChWf5bV6heOyF8Okyed-DK2K6sfmqGd6pS4SccCzdb1Jp6OZbG3ciZjM-mu37CCwn_NHfaJTkZqI2T25cqDhaJMYZYG4MtZDb87olnt_TQ',
        '2022-05-17 00:34:24', '2022-05-17 02:34:24',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652718864.411000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652726064.411000000],\"iat\":[\"java.time.Instant\",1652718864.411000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'e0Y5OzkHngpJ9f1gHeln4hTX5_rhrOuECAHDbsYmu4sHVfFd96iRPUN6cOlOGtzjwG4IR3lCnVYiK0v18DtlPw7L3MLbojzADiy99zhgPNBsEGV6Hs--2jXfGS5VE9id',
        '2022-05-17 00:34:24', '2022-05-24 00:34:24',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('7d262236-ab06-4441-843b-ba6a48ee30ea', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"8BH91nSA_MZRpy_jyQf784p-Ca8bz0GU0MYyxI1n1jg=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=8BH91nSA_MZRpy_jyQf784p-Ca8bz0GU0MYyxI1n1jg%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"EF4E2360BFF18AB92F5928617533A7EC\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'lsN5bGn1a-joQaAo2dm9yXxxrALY6lmbt7w-XgvoMjLjcIhDoBEZLHA7aSqHUbl5a2nnThKnlDIOp7Esu0DXHyhUuAvA-70_xD2UZbPEiZb7yNwZxDMqadQ52QZgX3ek',
        '2022-03-25 16:40:03', '2022-03-26 00:45:03',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI2NjVmZWQ1Ny05MzY4LTQzNDQtYWUxMy0xODgzZjFlNDJiNTQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODIyNjQwMywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODIzMzYwMywiaWF0IjoxNjQ4MjI2NDAzLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.phTzRBF4LAN4CuvXNz07YsM2GxGLfOyxlU6YvJCirMD8D_RwScO1Ttjc5xirpPBjbAIA_w2pCj8GJhWu5D_abkCZ59kDNZUZgP7XoUotanR9kuwqGa8DK56zvsm9wB-SB7oxszCMVHc_5YP8rfeGNZWKxVOiRM_3PP5JPp2Jw3hRJK_NaAHOVNUU1ozqzxL32_tzV3HPuASxnUclTMG0HDKKs_hcf-sMrArdmFBdjYuRv6T6k2GT3KM42chs7r5AGeWefTpthJWWj_go1QXjA3vLx5BHImAVJPI8WnTEIhcPMp41zyHhwZwzMewQ6m4yCxhoZ0W1y-1z5lXRuvvZhA',
        '2022-03-26 00:40:03', '2022-03-26 02:40:03',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648226403.086839100],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648233603.086839100],\"iat\":[\"java.time.Instant\",1648226403.086839100],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'l6nz_TYjesXlVdfaqSZaTbKdHuRU6C75HuSl6_o1RqkGrIzBnINLjxwdNVK1LqpNZs0nS4JGKyFrmBht0XhH53LZNZ-DFR5VjqeNnsgsGV4TgIFp17_Onm0oua9MHaWM',
        '2022-03-26 00:40:03', '2022-04-02 00:40:03',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('7ddbff52-15f3-4770-9f4e-6b18fe55e25e', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"q8FlLStUFrEoqgPgzfMxGsZHLF4cclz0jaQdO6SO33A=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=q8FlLStUFrEoqgPgzfMxGsZHLF4cclz0jaQdO6SO33A%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"2CDA3D067E8987BDFCB127728A763578\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'D7DIa6bDPThv_BGruzOC0fPXbwnFOcgxvokuPxaj6IWMrYOkyd0llIqKdcY7QEUc7hqt2mTG-vdJphJsjbIlV9Yqv6xqhXuVx7ebq81iU-knZ7vrqLFAaorLjZCjrKsy',
        '2022-05-13 15:15:57', '2022-05-13 23:20:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5ZWNjNmRhZi1mNzg0LTRmMzEtODJiYy01MTc5YjBhYTk5OGYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyNDU0OTU3LCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwiZXhwIjoxNjUyNDYyMTU3LCJpYXQiOjE2NTI0NTQ5NTcsInVzZXJJZCI6MSwiYXV0aG9yaXRpZXMiOlsiXC9zeXN0ZW0iXX0.zIc_neDafH0y4rERm1rWWhsT5SQ8dK8YyJvl86tNL2ehnOExGDQdrBj8wfup5iHJZmkzvVJyvXZ7YkxbG6iFvHsaJ7UyZXW5dyY_At6qqixGBTDQX2bQtKpjEMZdvXAbzpfUc_nbNiqoAXmLJUX8sCSL7grOoT2dFA50mOH8Gvl2uTe6-HdWgt4m2oKPffof_7SPjMFqAKjv6fMDrnff2CpnNYIyR-VB4FMFMzHdDRykPmIKE-gInvhVXrVRkIo1oo0oI3V5TU_iBCtuBDECxtg8NjHLvMCsgDNWlmFWt92k1wnggzwWajJNlWEC86DQeySzADtu5YNNngNbLKbwYg',
        '2022-05-13 23:15:57', '2022-05-14 01:15:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652454957.479000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652462157.479000000],\"iat\":[\"java.time.Instant\",1652454957.479000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary 'TXa98fzHyumj4qKu1S-7IepmKcO30FbU1jTFVQLfubW26cryFZmTQZmZMAiBtv5_Y5YXeWn9DAhXQbMpPC0D9djVImqulsgZkG-hGzDL0egCxatPoz4lwBl4f_pSfoKC',
        '2022-05-13 23:15:58', '2022-05-20 23:15:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('81f7697b-b57c-4bff-9d4e-6f224cd43047', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:54:28', NULL, NULL,
        _binary 'eyJraWQiOiJjNjNjY2E3Mi0wM2Q1LTQ4ZDEtYTIwMi02MjNjMWQ4ZGZmMjQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyOTQ2ODY4LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI5NTQwNjgsImlhdCI6MTY1Mjk0Njg2OCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.y45WDDZ7Fn6rgu-RtpiT0oiYYUl0VZG5MSGqvIqO5TPL9IKUmo9H4vSWH9YJ8QGgm1eAyaIbtpNW-LU_PVyzynPDRhWdFWPb3CuuN5ab60cwCGaK6_bqBk_tWaStpy9TIZ0X4dBbXuBq4bMinWAldZhzI4ffWbU7TvKw_kiUmkbusw2bO_6q1BK-c6KycXdU5lLqrWVKDzz_nJD6jx6WmZXfs_xC4qnOl9Sz8IvrM7-5-Uh_dYuCimPQ7daXkcSANM8bbw9u3N6DCH2TQQCLveg43jvX8egePR7SLkYYTPjlcyZ-eKAnNQdP-NwPUwjBM97izf4aZ-4WLduf0LiK-Q',
        '2022-05-19 15:54:29', '2022-05-19 17:54:29',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652946868.721000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652954068.721000000],\"iat\":[\"java.time.Instant\",1652946868.721000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL,
        _binary '8K715jfikc_QClbEMku52znpwLS2ALB-XaFNP-5kjcQxlGVfGCKK90GKVY3uzXHWYsoj5w_bwi9XTZ8nQMaH_ycjNxymnGIV05aUvomvjtlOGtWOQg53ie1jNZ9ZQI0j',
        '2022-05-19 15:54:29', '2022-05-26 15:54:29',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('830e2510-137d-4593-81bb-a67fdb397f19', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"DyXh1niOvPaYxDJOFcBAn_ez_V4AJqNVYJUixZtTq2Y=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=DyXh1niOvPaYxDJOFcBAn_ez_V4AJqNVYJUixZtTq2Y%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'BxFeQDlWxvpGem8EjztusMxtIij7Wg79qrKW2CfXiogElRPmOWR64Js_iCOuJc840ofxRfAqhUT1bLIALF9epDng0f9W92a1uYa2CfQBCh-1n0sdjvA7CGEkNr1u-QYD',
        '2022-05-10 15:58:55', '2022-05-11 00:03:55',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('838edecd-e7de-43d7-82b4-6b2c9810bb44', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:59:56', NULL, NULL,
        _binary 'eyJraWQiOiJjZjdhMTMwNS00NTY5LTQ1NDItOTRkYy0yZjA0MmQ3YzRjOTUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyOTQ3MTk2LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI5NTQzOTYsImlhdCI6MTY1Mjk0NzE5NiwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.A5FtpehDNWhRiN2YvNUN_KdgdAD2Yb7jCEqCjX4Loiw2yPhOvkTrWBglHDDsx6SCC-xnA6Sly4IILtm2A5gVuZEPEB5bDUhqIcirffvCu_DcCBbWbGiohLMo7oTu_qC13n_QSUtSA4ijLa9k0NvgJ4gwQn4TAbSGlj32d-GbQU2a9o64GZjoB9wC1IDTOsTozCk-iS0ZgoS79athTpOKklBogf1Z0kN1bEJKhddVH15R7YAmR7jRaKttqhf9-_Kx8-8pElABY33l7laHyVLaq-iAZJw9UqODZOztmr_o7lfxdagZ-Qym416f86eguUiDlsmWf2nHl_OJH2r0e-BtBw',
        '2022-05-19 15:59:56', '2022-05-19 17:59:56',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652947196.472000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652954396.472000000],\"iat\":[\"java.time.Instant\",1652947196.472000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'C97-Vfbu-LK6-_-yiK7hQdRXctjwuFNk7LIrn5IKWGDL77e_98SL_5jBkb1tVUL-tLrm6UOPoc-ZSiahqP2Yx0QZhsw1F6AHOG7oeKsQ8ln9rfji8kiC4B7BsnTjXD8T',
        '2022-05-19 15:59:56', '2022-05-26 15:59:56',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('83924d55-49c1-4a8d-8867-d8c124f09272', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '1001', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"4D00t5azjojhV2nU-Jn_7kHWLgWvXKoXZ-ioZa1CKUI=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=4D00t5azjojhV2nU-Jn_7kHWLgWvXKoXZ-ioZa1CKUI%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"E238426DF65246D3FF3435187895A8BF\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":3,\"username\":\"1001\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,4,5,1,20,20],\"nickName\":\"测试账号01\",\"phone\":\"17683906992\",\"email\":\"17683906992@163.com\",\"avatar\":null,\"sex\":1,\"updateTime\":[2022,5,18,9,24,25],\"authorities\":null,\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.HashSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '_JoC2-IIrYLaohRWPI8E4jvsMh_EwIwzXWeKqHLxR1WK5wJLtaO0rR7EewKYVrIRivWIMtBFQs0HkizzkU25jHLIPGkniSvsbRF-SBVyaoWnkel585BVZXcCQFFfYhEM',
        '2022-05-18 09:25:27', '2022-05-18 17:30:27',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIyMWNjY2ExOC02NzE1LTQ1ZGYtODg0Mi1jOWFkMWI1OTk3ZGYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMDAxIiwiYXVkIjoiYWRtaW4iLCJuYmYiOjE2NTI4NjU5MjcsInNjb3BlIjpbInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwidXNlck5pY2tOYW1lIjoi5rWL6K-V6LSm5Y-3MDEiLCJleHAiOjE2NTI4NzMxMjcsImlhdCI6MTY1Mjg2NTkyNywidXNlcklkIjozLCJhdXRob3JpdGllcyI6W119.bP5d98HODWwSqxSFNCi2elqRbQq8pdPp-5BUt7omTOVGbWUYSuyByiH-VSCnJZnR_ZG_w90pz-C_V9uzOI5vlN-dBNpXYJTE3S7C1AIRSIZMYKKFpdUkxCsGcEn78mn8H3woYEI4H2HDOABL80uPLh4vS0kw8SsPDl9vcpFRvn8kdYC6S_nE5uv8OgjFJTpo4eAJpuSVFDSpdhn9CgpBawKf11nmTfwaxWgIV4nFmBgcGzqSZQnspc498Yk1Y6LS_0LiVAvhPdkN7TzSVNlOkULJp99JiCpflbaaG-hKwSKNv_jY-ZkATC0tVYnn6MUJgsb5alJodZI16uPf9W5wKg',
        '2022-05-18 17:25:27', '2022-05-18 19:25:27',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"1001\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652865927.095000000],\"scope\":[\"java.util.HashSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"测试账号01\",\"exp\":[\"java.time.Instant\",1652873127.095000000],\"iat\":[\"java.time.Instant\",1652865927.095000000],\"userId\":3,\"authorities\":[\"java.util.HashSet\",[]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'OBejFCkdyXCQMzNjLyNhYc3tAyvjyenAI6EqQmqCEhGIYtjnC9P8BYagyM66VYNZdhR9dUFok8-YImEWf8jRFfo5GSZobg5PF0xfX2SG-F_lzefRYIts83c9NgYtHR6R',
        '2022-05-18 17:25:27', '2022-05-25 17:25:27',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('848d24af-90fc-4e39-aca4-42a66a1b8f69', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"KgqYUcUlSPPMegr6pODKTCO_0EwEScF656B9FAOM2M8=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=KgqYUcUlSPPMegr6pODKTCO_0EwEScF656B9FAOM2M8%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B786C4D88CADC943F0F1D778CE1CD15E\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'rNo_aHghdJeA3GrThfBVO_8C17uvb7_G9kFIy3nDdYENAzeMv85n2pto5GEiPvaGmbRLAszqFBn8Tr_NApQM52052yRhJcZKJuTdGjy4qN0NFAE2b1mLHuVl6kqn82Dn',
        '2022-05-14 09:11:58', '2022-05-14 17:16:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJlYTg5M2Q2OC1jMTEwLTQ1NTMtOTlmOS0wNjVmZmE1NzQyYjUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjUxOTUxOCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJleHAiOjE2NTI1MjY3MTgsImlhdCI6MTY1MjUxOTUxOCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.fxlYOVzx6LqEORBdoBF0YEVsz-iwSjhi5Q9YDnQDDGcMyUASKGn9YSnX3DcAQ0AWlLR6H4pvhmge7n_mTsHCEKBaTDFiRXpgW2KveDgdzBGLl25rvIgerchPWab3cScW3OKTniGXz3JoTw-3zPcQ225OSbdNhXOBaNcbjJIS79KD57lWnHGHkxVe9zhVrazRbZTAioaZrXPvfwD7nQmC51ws-XSsXn9dCSURAvEvnWaahb2yCzUg2ssvruZprNL9OCuqlBh6h9PvDVPb5XwRk7Vn20hzC00DfERe5gu5n8v4rGsmPM4NE8PEnKkvUf4_YgKPaYoajGw1B0ulnBaGGQ',
        '2022-05-14 17:11:59', '2022-05-14 19:11:59',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652519518.585000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652526718.585000000],\"iat\":[\"java.time.Instant\",1652519518.585000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'mPNIK6r4WbTmgLDpCs-7wD27EfRdE9m6hvHwY6sFfnVSqKBLmF6vJbURg0oY2DjPwU3FUYZDNthQTn42MnHU_EL3Z3qW6Y_7KWNfIO60SgHv7Mzag17sd3ALBqDEgaep',
        '2022-05-14 17:11:59', '2022-05-21 17:11:59',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('855e0113-b2c3-4ff0-8e9e-467d70158d41', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:48:40', NULL, NULL,
        _binary 'eyJraWQiOiJjNjNjY2E3Mi0wM2Q1LTQ4ZDEtYTIwMi02MjNjMWQ4ZGZmMjQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTQ2NTIwLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTM3MjAsImlhdCI6MTY1Mjk0NjUyMH0.H0Fx14aP0EczQs0N6HWfELCGQ-uDfqYoqZE5eeuCAQ0hDdhSv5ZTVjSt-m6dYZIm8-9-3ERGy8HpKE2l-SEaTWXysTXVUUUP2pAUSdnda9JV1qJwJj1MSQS7ARvB19qyLDXqTgQGEkIUS8zjmbsnuzX8xwSCSdzLkAHAeYDY1NM-nlG_toaQO69DpOEpPwdCSgRe5tFAmG0Xebazba7b82Rks9qks-b-qnSPJnUCeFohg6eh6AcXFC4cNJFRb20Y-R0bKSYcO7C687irkNn-3vJQt57Q6MdU-VbQEYDjmquoWE5oIfgv9DI482Q3k2OHb-qzgUH3IJty1eBVHa14Cw',
        '2022-05-19 15:48:40', '2022-05-19 17:48:40',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652946520.462000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652953720.462000000],\"iat\":[\"java.time.Instant\",1652946520.462000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('8561bc4a-fa17-41e2-af9e-1f1bae84aa03', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"qUZL-Kc7FXahpAJ9k9kPPayX1_7uQYqvfFcnE8FuopY=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=qUZL-Kc7FXahpAJ9k9kPPayX1_7uQYqvfFcnE8FuopY%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"227AB67464C4F5A63EB03D6B1B84FD2A\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":2,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'USvITQPPgsnlJUlyX0mQD140ac--wRM_ErCRw9tVaVpt_e6nX-igEMx298H8LdHUVoOr53J9vu3AIkownvrFFBvXrmaA2h7KCJYP0vpp4nWm4pEAIBod2v5IH0pCFv7c',
        '2022-04-05 04:39:31', '2022-04-05 12:44:31',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIxMjYwN2ZiNC05ZTY4LTRhNzItYjhmMi0yODI0MzFjODg2MDAiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0OTEzMzU3MCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0OTE0MDc3MCwiaWF0IjoxNjQ5MTMzNTcwLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.YqimvBPDrHPlo5LML1NSYmREAOdFkilt09Xnczpdq_hxI96gM0V9J6_jnA9B8P_rH_ccBYZGL8CiJvFDNyEhJCNHnuiK1Bo0Owp2lFbOB4oIFqzMXnX0HDle2HHOvqoy6njzHVtvpi6qSxVTe-fsHqyU33LcT3vnOWFed1zz3X0nMqTjru4QOwp9Ln7TmJoo7PDHtFlb4UdQXh46Pcr9DGUIRU154sQsHVxpAQ6AR6HtiorFRVulu36KrdXUqME2yVI9Cn3SGBGvvO43-ejz1IxY2BJnJHSiXDYjT0TgsvGQiMBQvRnSVLTYxtgIjAc8ic6hahjLIoeFfz0fpalLEg',
        '2022-04-05 12:39:31', '2022-04-05 14:39:31',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1649133570.993000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1649140770.993000000],\"iat\":[\"java.time.Instant\",1649133570.993000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'xi_7hyYuRx1vPvet0LaQ4Qchdedt7B5qTuo6YYh3iKi2AneM1srPQqnhHhyeC-LFdLHpemtZhOKiqVJWHn-d9Mbk1I_tbs1y6YjN283wMoaPPCCRXyY1mnt-exnI4Z2Z',
        '2022-04-05 12:39:31', '2022-04-12 12:39:31',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('86cbdc9f-c887-4ef7-bcf5-4cd251e238fe', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"lwook_V_-b2mbH74g5evF_6TjYVi1HccNqKvAo8IvdA=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=lwook_V_-b2mbH74g5evF_6TjYVi1HccNqKvAo8IvdA%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"F75FE12776C90B9C0A8300FAA560818D\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'Q3cgEEnpr9GJZw2R13WHpATfyfQaJxLt_x9gey6FUA-BrN1UIdo1MqZDTdugtnHJ1OhqtotuxBsmmJyy_dB8W5RH20ZymkwpWPi_YgOvn2uT0pgLxdepcIrpjJQfzT_m',
        '2022-03-29 12:52:06', '2022-03-29 20:57:06',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5NzAyNWY5Zi1kNDE5LTQ1ZmEtOGNiNy1lMTZmOGEyMjBjMDQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODU1ODMyNiwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODU2NTUyNiwiaWF0IjoxNjQ4NTU4MzI2LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.P7dzT7ya-h_ZQWs6pMaoT4htfqJlie4s7wQshPVKguNkJW_laWacBf3LzdE4kxyRfCHhlYUF0r8XMTiVpbkjseMngamVhwp498hMeegsjO4O2tshSMxQ66jmii3BZ6p5Di2-sr7aAymBu5Ea-f4Af5Q9S--NZl52UyZY27CAt0Xp49vZZxt4alQWpxLNjm3ZOiLFQ3XLDTfzCHlfZfkmtsh1qFRgWcVlD9ZNHynaWwG6vNFlw4hfLgejLQOMMYlk3lUijUhV0sxkL732vBeXkHkv9M0LlE86MMfYYBtlD-eTc3qsMgP5g2f2vtmPktnTpQRPdPdeC8B9re_A0VlMPA',
        '2022-03-29 20:52:07', '2022-03-29 22:52:07',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648558326.958000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648565526.958000000],\"iat\":[\"java.time.Instant\",1648558326.958000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'w8jSswifcI7dZFIEnCtGU46jXBUHTXC9C_TU7wOKzbFZYzt8kt5XHezKUcjfP5O-WsfOHIrjWgVYSnz0f-zdsa6nKtz2Y4yPbAo2Jc97UEkNtOG5Y7hCmsNz3TYpZcIz',
        '2022-03-29 20:52:07', '2022-04-05 20:52:07',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('871a4bf6-eac2-4595-b233-f6f9f52414db', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:49:58', NULL, NULL,
        _binary 'eyJraWQiOiJjNjNjY2E3Mi0wM2Q1LTQ4ZDEtYTIwMi02MjNjMWQ4ZGZmMjQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTQ2NTk4LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTM3OTgsImlhdCI6MTY1Mjk0NjU5OH0.T5nQGOYgvLYL_R8yj-_BkBbsiS70zBFFGIsRgwSR09goMl0CyAeHNd9iQSlROwR49Ogpo4LM5muiyIOdVtyOrXpjsBhb66dhTUkd3BRi-t1DpREoM18Of4pkH6ZEtmtfyPxE8EQ_N6SgjIRgBaV0WRad_9f__mzIKCQ63CtNf2KgL5UtX7EBjpR0Ysj5aWNyJH1AFd0o2O7gW-hxpcZsu7ZCLKzaTNsEa92W0PZgUHWK6T2UabA3JK2JWI4Ovfy--Lop_bGsYEZW7KWyexEqgxOnsoxXc-mp_K_B0gA_RK71oaVkjrHfFag1PsDO9l7L_A7Fq_Cds0-VIFyox56ftA',
        '2022-05-19 15:49:58', '2022-05-19 17:49:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652946598.410000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652953798.410000000],\"iat\":[\"java.time.Instant\",1652946598.410000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('8746620a-9d08-4337-8def-e72c6b9ddcc0', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"3ffD5hQoVyy6sccbh22rHiCFSrqgXGOeMHOLzx9VyV4=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=3ffD5hQoVyy6sccbh22rHiCFSrqgXGOeMHOLzx9VyV4%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.128.0\",\"sessionId\":\"AF4DF72489D3D5F8843A0479B7A0BE68\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '-S6UpOTxJHUoQzWVo7wFoDENjS16cZd89WzPzpVJwgEJ6145Rzt4s5Wf8kWeHcvH2Idjwq5QkAytoHLDwIGa8xOw_On2xwPyiorkjCmTKqBjYsJN6AmXp9qEcOFEdjgq',
        '2022-05-16 17:08:09', '2022-05-17 01:13:09',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzNTNhZTYwZi03NjE4LTQzMzEtODk3OC1kN2U1ZGI2YjBhMzYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcyMDg4OCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjgwODgsImlhdCI6MTY1MjcyMDg4OCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.Wj9Yly0tgHSIwc0V0JPlbtW5Chx488zsydmrlppcUzfShQFThcY88djLJHLek-SCM75ZMUEpfFTBJQJgmx-lwi72owE1EbrJyQngfBiLsRPjcxvlOyduyWUy1mtdxjMVyLk55ZDTLM4AO6ZI6Aj171gDp-MuOrZEVCqSJFiz6uI1UzfVH05JvsjfYmSNYFUiwf0IOYjXUzvt9X-A2K70J1bkddf_p2xlXkcYsSr5qkJr7ipE9yh7BMuLpvsx4j5DyEnBOfvs3l1cP8ZH2IIyX95Jp1V2IJqW72tJKnqETeX3wvZLIn7CmAz3yhk9MYulRRrV3vssqiUX28ALvikYpg',
        '2022-05-17 01:08:09', '2022-05-17 03:08:09',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652720888.805000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652728088.805000000],\"iat\":[\"java.time.Instant\",1652720888.805000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'PSBQmyvlfnQsjhu6PZF2zERf-XaaAUZZQMG8ING3RrksrslTyRhh4tuh0cfo1dnvduAL_ktzCg21s1gzQWpu60G3zeAE3NZwqsrm6U-0DuDkbxBiomUQmPVV8StwWoLf',
        '2022-05-17 01:08:09', '2022-05-24 01:08:09',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('875dfc87-5101-43b4-8db2-d8d7b907a740', '3c431544-6bd5-4c2e-ab4c-76b159d73997', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"swagger\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"V2VkIE1heSAyNSAyMDIyIDA5OjMzOjU0IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=swagger&scope=all&state=V2VkIE1heSAyNSAyMDIyIDA5OjMzOjU0IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"5B2C1F169ECD10F8FD27B554A7021886\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary '8t57Aq8myvodeZE5uiASvG9FsR3QNy6fNrAVzCrSL_ZNHoHLgPpQgW0tLpGMWD1c28NXJ6qA_8YVIb4elnWmeI3BUl7ABS4o2KJVMmeS7Jq5-f__INuMXSnWN7l7qw0U',
        '2022-05-25 09:34:06', '2022-05-25 17:39:06',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIwYTEzMzIyMS00ODNmLTQ4ZTAtYTA0Yi00ZjdkNWU3M2JlZDIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJzd2FnZ2VyIiwibmJmIjoxNjUzNDcxMjQ2LCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTM0Nzg0NDYsImlhdCI6MTY1MzQ3MTI0NiwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.y2I6wNzVnUHKiUvLVIx5O3_ZdRLXjrh25JVej-MbU0a2Wrjp6JebgBD4zLL8tEmEJl3TcGfdXWtadVPSZ3_z1Mi0eYHXqffNM1yl1tLNUF2KTbOwcoccAjq8Zth4w8nqDDOR5WLyo1PzML8hdLzsJ4nYgMv9WlOvUAyEZXntPIgwVTZ9CMwYYUfSOJ-524m0YwYELpsYwvTnVgoND1SCaPa7KrbdOfAoiYpf8tk9Szy9pZYjPEcSmmZPfMYrg9jgZ_RbTWkgaLb32BgB_EGzT0i8EUPghFxPuSoSt0o48TMb_yPSO4EpGn2sqvm9CFpWglsxY6pV5sO8bt2KimdcyA',
        '2022-05-25 17:34:07', '2022-05-25 19:34:07',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"swagger\"]],\"nbf\":[\"java.time.Instant\",1653471246.839000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653478446.839000000],\"iat\":[\"java.time.Instant\",1653471246.839000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary 'h64q3P-Aax0LBSl2zaXjhejyb-QFmz-eb-oCn9uFk7129KWiLFDREIhrMMF-cAGlPSDB_AzQQhkFEcECHiBoAjnGeW4L0SjaTTgT4kADEkE3qJQGhLXRAyzJNkb3MZ2A',
        '2022-05-25 17:34:07', '2022-06-01 17:34:07',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('89e8a072-b06a-467d-804e-77fc73fefdbf', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"BsfdHZpnkd4v5WfowDqt-LJBcZJfplzEeGMXqHXYPJY=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=BsfdHZpnkd4v5WfowDqt-LJBcZJfplzEeGMXqHXYPJY%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"C8A145F4FE02B23DD1D3099C6FE1C11C\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'fW34_SJT500VmN_0ZYD7Jgm1oxDV2p19kOYnXVm8j4_3joXHynIl0VjPyCVmYlQE1-O4vFrpar-UMPjXgznjltumsy7va1zovbcdfDOmY2Kjaiidwl0nrV493aA2Uwww',
        '2022-05-25 10:36:34', '2022-05-25 18:41:34',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIwYTEzMzIyMS00ODNmLTQ4ZTAtYTA0Yi00ZjdkNWU3M2JlZDIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzQ3NDk5NCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzQ4MjE5NCwiaWF0IjoxNjUzNDc0OTk0LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.UxgxRB54e9DMD1QtMkQvh0tOhsBt2akMwN2cn4FuLCHFQmNsPMOg-4MigDXo2PehARW2cXdsQG2DN8ohswnTpCB78qQfAWWzqsn7vtTeV2J8pRnEN7DCeD74u-w4ruLXQZl8Xuz37hxg9sEY6qOk5zlf8duGn3kZKlGQTut1uzLpCpcyCrhcEiLitRWHQ9rxyc1hXT85TGpmDaaBYEty-9t_QzTdW84yvZjMbPMBuewAgSeCT7F1Puf49GII9nzk5FgcD2nvv0wGaN1JNSYIqQLMEMZSXS7vmLO0T4pU9NOVjNLvYsf5Zydjt77UlnQ21H4-RWFS0qQ1VZYFjmnNDg',
        '2022-05-25 18:36:34', '2022-05-25 20:36:34',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653474994.308000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653482194.308000000],\"iat\":[\"java.time.Instant\",1653474994.308000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'cJ5QoM2IedmD1hmQjYvKviy-M5N2tA0yzBPeASLRlaafLQvklY6MQOjiCsrV_JrIQjFYm8z5zmFk98-AC5K79SzlnYXeDDfVCI_-ZPexQtalXKR92uHwxEcuxA0flX8h',
        '2022-05-25 18:36:34', '2022-06-01 18:36:34',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('8af0fa47-141d-4430-bdbd-72201959f6f8', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:51:12', NULL, NULL,
        _binary 'eyJraWQiOiJjNjNjY2E3Mi0wM2Q1LTQ4ZDEtYTIwMi02MjNjMWQ4ZGZmMjQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTQ2NjcyLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTM4NzIsImlhdCI6MTY1Mjk0NjY3Mn0.mKtshc-Bo-8lXh9oWUHtAPVfSdQNH53yRYAlZJjJvtnCNNkZg4I6Vam_LB-JvjqDa4BBGvcNiDsG8H7tgiIw1DAb6iloLsBHQ1h3Qx_2C2bYl9A6OrBPeSlKYqnT3czpsBNHSF-PAOvkTBQERkYjID_ZQdxBaCHapcOgxbfvfbbnzRHhcbs8xkKLqitojFDCJDdNGaz-3IEG2JOQINPqvTiKvVhrgNsheJkHcPJso-eP8sWV_7OpTvRlFErqwjLzpwL3l1YzUavueB6GGM9qzkZxy8oqeQqObwHA_w0C6EL7SlUztoD1uEwTkaL8R2NdSD_Kvahc6WKHDj9BzIqRbw',
        '2022-05-19 15:51:12', '2022-05-19 17:51:12',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652946672.382000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652953872.382000000],\"iat\":[\"java.time.Instant\",1652946672.382000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('8d1500d9-77ff-4173-be22-9ca6acd104f1', '3c431544-6bd5-4c2e-ab4c-76b159d73997', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"3AECF64C3C45189AB966A5C820D547D7\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"swagger\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"V2VkIE1heSAyNSAyMDIyIDE1OjEyOjI1IEdNVCswODAwIChDU1Qp\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=swagger&scope=all&state=V2VkIE1heSAyNSAyMDIyIDE1OjEyOjI1IEdNVCswODAwIChDU1Qp&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'tCHpdC4lzQijiRWQBuEmThbgY_N-6-pWmTh76ShOTWWBexkJGG8-IoEZroilmd7yeVs1nydZQt1zhaHx90OHJ8nh56t2k9wF4kbsxm5fZIgt5yUgNF0nY-YhxZ88-1Ku',
        '2022-05-25 15:13:24', '2022-05-25 23:18:24',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('8f036935-1a03-4aad-b693-4c1ad8862b5a', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"N5stDks4R43DA1jDUtQPQx-50Jdk-t4kSiN-tY8qbWQ=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=N5stDks4R43DA1jDUtQPQx-50Jdk-t4kSiN-tY8qbWQ%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B875A73BB9F1D6085F93AD38F1FBF1FA\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'Hx1vxDNhDgcTz1CahH2AMNGH-L60RsAO1d0ICs8wuMCHT7AjV0iR8P-paOkpL_KXyFHd5bGso_2zOGi8xaywawFgH5jRksSQ19WIL9APf4LRNP8JmgX060fyhDG38j8I',
        '2022-05-16 16:48:58', '2022-05-17 00:53:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5OTJmZTE3Yy0zMjZiLTQ2ODItOGNiMy03YmNiNzI5YzdmNjMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxOTczNywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjY5MzcsImlhdCI6MTY1MjcxOTczNywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.GNrPgiNTLdrk1jakJotRfgCmqzJT0TPWcKDI2VomgWdfwas5LehlMZq1hLAg5X0erpex6Xg_sO3GLzprOlkZWvInyFBciu2HNzPADbmAmuv2xlBetP-FFJ7eRTHa0SmBuvfehtsv6CYTIMn_kEo5L9zvwgtRpm_aSqgVH0EOAK1249Tnk3dqEHeJHMW45NCQDkbUtrvMwK2a9CTFVrBQ746d7l9Bry1kTdvRr_krTJr_qVnTcPnYqcOjuCSyN6ri7RzDoa6EAwbBY2OZ6uQ0bFu5sXHpml-pO9Eju8aPdDUEEcfkc0_EFjM0GQnDtBSsbA_EXcYA7skjQ41hVS5TlA',
        '2022-05-17 00:48:58', '2022-05-17 02:48:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652719737.739000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652726937.739000000],\"iat\":[\"java.time.Instant\",1652719737.739000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'gM1gKKRW9Q9_J8bdNkUZAV1S07VDnk_elGFrvhGUaF6F_eM5FVejmdiZeIDS7a7Nh-aYlc9Qmrvj6V_xmKs_-7AZMtRpqBE1Wb2lGkD5VA60jbsHjAbaU97ODenZmO_f',
        '2022-05-17 00:48:58', '2022-05-24 00:48:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('9037bdc8-06c9-4024-9130-3d7505652d20', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"XUCjcmx2UpjNWAhXaR8fRZnSfLbTHDtT71ZLJMPiNbA=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=XUCjcmx2UpjNWAhXaR8fRZnSfLbTHDtT71ZLJMPiNbA%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"0:0:0:0:0:0:0:1\",\"sessionId\":\"D6EA217D50CA4FF3E8D76E18D0E339BE\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '11HAFTHQj1hHj7rA8sg6R8U0SE03_lhB3CwaEVkZuU8Mj5Ie15kfRngXkQcKEIisUZO_cNgYVnJTe7z8P5w_Fh6XoSBkNNM47WE5_7g3CK3lp02Ua-M3F7Z6ttUpCVKT',
        '2022-05-24 10:17:49', '2022-05-24 18:22:49',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIwYTRiZmRhMy1jYTJlLTQ1ZGMtOGI5Zi03ODg4OTIxYzRhZTMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4NzQ2OSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM5NDY2OSwiaWF0IjoxNjUzMzg3NDY5LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.bACn_xQhAWPHB29P0f1defWaz9nL63PYMorgucpDH3SxZ7C1h8wqGCDKa8l1FIfpJsdpDfqAaNhiL-5QiTOYpaL8vwBUahdWMr6-EmuxeDkGcIAIunoYJwpBBowMa9Dwfm5v8WfW66f9VqJ6mAm-y5cy-P_p61YdHIx68wURzcektXIGtxUIPftYBlPBI4SIHdgj-i0qBPvhNPD9hYWTPTVjp80DTW35RUonN-5BD5axa0cpSDxHw_Wpir8QhrGqkjF8gcCGpYOsSLz0eKrUAVQmw08J-fyAGNCb8Qi1IHtI6a7R-7pwBfZscWrFPi3ROEFK1KBsXkhjgqcOlHYxbg',
        '2022-05-24 18:17:49', '2022-05-24 20:17:49',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653387469.228000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653394669.228000000],\"iat\":[\"java.time.Instant\",1653387469.228000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '10h6Bs3WqLkRCh8-U2rBEU0laEBRMLO-5hGBxbOBOlp7ayejNmh_MyG6bXyV4VFetn3O-p6KaCnEH0Gn07wooexM_SnyMr4MJQYAW8j62fwIdCY2JqvL748prrdC-MMj',
        '2022-05-24 18:17:49', '2022-05-31 18:17:49',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('90b35995-53b0-4c9f-95d2-244ca273ef61', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiJiYzU1MWQ2Yy1jNzllLTRhNmYtYjA2ZC0xMzBkMjFhNDM2MmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMzg5ODcwLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTMzOTcwNzAsImlhdCI6MTY1MzM4OTg3MH0.Uyi0yTZ-prSYQ6wfEbZ5cO7rEJ9Eymh73AQzTbWxx6oQazMly5QOZmonydrdWqR_IVWyaqRT9avgsBeudwtkjS2uHpynGXdEF1MJuz36mchTw5psLvlIjTF3EaJ26uuhS66jvQGR4Mnnm_Hqyq51BOnS0C0R4aelXSfR9FeDZrNmXJEDfUft16_CaoHG9d5w3Ks6IxH4Ligh2RL9SYYBoA-6N4wyUKWOapt0mTFoxKJjLvtgrm8yCT3YLMsEddqk_mzMA5oE9oHOipkOjGDLxHgSbAfb4A1_OgIo-kMYtZ0zSMLm4KeE4bVkEiRJb9I73hyForZGIQuQaZfjiecTAg',
        '2022-05-24 18:57:51', '2022-05-24 20:57:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653389870.686000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653397070.686000000],\"iat\":[\"java.time.Instant\",1653389870.686000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('92a12516-b381-4c4c-8817-ba4980de2fef', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"5h7letXRHcOXyD0SmUu7vYoKTDNThO6UDR-Qn6HadjU=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=5h7letXRHcOXyD0SmUu7vYoKTDNThO6UDR-Qn6HadjU%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"54F9479C36AC6AC6C45FFA9CA9C67310\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'w9q4zcQmaweza2xthvdIGi3apuU7G979W0acAJpKt7UZnhySjCzuU02C_5WsI5HLUeWVZIBPD24xSIJ3foFhOiU0NGbUOi1g7benCr2R6iAe0HVdFnTgEaNVyYrHJ2Ub',
        '2022-05-19 02:24:40', '2022-05-19 10:29:40',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIxYzVkYjI3OS1mODMyLTQxZTgtOWY5Ni02YzhjMGY1ZWJiODUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjkyNzA4MCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI5MzQyODAsImlhdCI6MTY1MjkyNzA4MCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.rrOzdP70b-4bBMwB3sJuFVXyT9gmT1XBsio-k9DO1Vne1nqTs4e-GnuDEWfzQYIBZxGHw_gKx0GdbRNSAI6XqnubYFjAzbCbhwpBv5aTfwVbbhCOvCftOgSKjFYaBWx6NXLfabD4wXpIyvu3ZuZ0wBYZQBV0eEF31T4ZfC4QELAb6Icyeps4bunPEx40NIlZZOJRP1y4H0YwySf9hVe179M4TFkvnIh_zD4adYCaBgZM_F6SHxEQHXiduCDWW66ntdFE7SABPFDkHvI9hMM7rCkdVjeuPwjytkpAwAZCbcAd03lXz8moOYQxScH7w6epfelEFT8t-uQiVWNi0F5rvw',
        '2022-05-19 10:24:41', '2022-05-19 12:24:41',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652927080.680000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652934280.680000000],\"iat\":[\"java.time.Instant\",1652927080.680000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '1vgAFtYr6MBRCG828KflhZ32O4FBTm2_I-tluNiem0slsbNsSOhJu6TA7HB5p1Mznyvaf24h-GYADSHO9Sf5hxf0I5s_t-WgDXhF5kvn0wKcTCsxtn4nCWY55t_Gpe8n',
        '2022-05-19 10:24:41', '2022-05-26 10:24:41',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('9490af88-d05c-4898-ab9e-b5e8b239a9e9', '3c431544-6bd5-4c2e-ab4c-76b159d73997', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"0:0:0:0:0:0:0:1\",\"sessionId\":\"5FBC6E1CBBB312DA7721495049ECE188\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"swagger\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"VHVlIE1heSAyNCAyMDIyIDExOjAwOjM2IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=swagger&scope=all&state=VHVlIE1heSAyNCAyMDIyIDExOjAwOjM2IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'poNPZXc3pgxTACbGesQd12A1_iw9aQk0zMrBUm0Jo5rzcQhbnG0NRTJrVfVx9ItjlYiJKcokjpugFaKnPyHkSRULlSCfA5qQfMqgO-t9jV_YUUXY7-Q_tReYiS0XrlsV',
        '2022-05-24 11:00:37', '2022-05-24 19:05:37',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('94a62b6a-1922-42a5-884e-3c96a6ac4586', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"dbisW2a8V0nLBTkhejbAXPUH3Hd32PBr4Kr3tl58vcA=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=dbisW2a8V0nLBTkhejbAXPUH3Hd32PBr4Kr3tl58vcA%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"0:0:0:0:0:0:0:1\",\"sessionId\":\"5FBC6E1CBBB312DA7721495049ECE188\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'qscaHlM0Ccpi_ChqYNs4zDP2xQOUrmbJGMyV_xXvBXk_HlZxjNaM0aV-R0uwRdJT5SF-_Bzaf50bsFf5GarhdWghBKzcrGn-u0fi-qe_hezAKv1OfNxqA6g4mkj6V6N3',
        '2022-05-24 10:57:52', '2022-05-24 19:02:52',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJiYzU1MWQ2Yy1jNzllLTRhNmYtYjA2ZC0xMzBkMjFhNDM2MmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4OTg3MSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM5NzA3MSwiaWF0IjoxNjUzMzg5ODcxLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.hBReQYTKAR4AL3Lt_p22YEqYjRdx9j7fPan948yTA0Yl7VzRXjLT1ePQoSY55aZK_LkETV3wul5ifIqwOyQ3nuh_I11sxxr8Uz06-cK0jXm2Ep7eKKMSt_Z95jJqY5JHkU_MQMppZ7KznWKcwgXAqmV1Yw_oaUzCWzHgpj9EStAyfK5rE1fy6JNyz7eVmmkj-gELxILbRKhSWo57zCalwX0mhCgyqqqY3FwTtQcLJBSim_RxoSZuT5jqfDqP3ygDAeJ32GMokbKPtfkyctvKTkBAspakhIjZ5WGpn5Jn8ZMw0m0tnR843QB0nQc-VwRScfzp9g5L1bLrafTbb6snQw',
        '2022-05-24 18:57:52', '2022-05-24 20:57:52',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653389871.708000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653397071.708000000],\"iat\":[\"java.time.Instant\",1653389871.708000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'mdd1BAaP6TZb5Tr6jl0ry0_WW7L9roktNzGLeO4wJzClsjByakEY634BjDXhTBQ13QSX7Vt4_H6OJ5HGxpDGdQLKqkPd0qrFLasD5DTI44OrYy0AltCvfHdw1PWj5NUO',
        '2022-05-24 18:57:52', '2022-05-31 18:57:52',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('9559e872-31b7-4dcc-8f24-79bd36cfaf3e', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"u5eY_hVDtjPE1V2Euhx3H8MeB-_WvWskbTtbQsxLJqs=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=u5eY_hVDtjPE1V2Euhx3H8MeB-_WvWskbTtbQsxLJqs%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.32.0\",\"sessionId\":\"CBB4364DE6F9185752D5957FCFA4B706\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'nnHfxrEZkN87gTG0kuloveQKmCBTOSYzYBaLw-Wpem1FRtyd3wC8N11pFpC5Vf0ceCzB4K9SdP41a4Jdv-iZFhgRYs0zen4XC9XzB67LpGU2wr0HoNql3kqS85efoci3',
        '2022-05-16 16:57:35', '2022-05-17 01:02:35',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzNTNhZTYwZi03NjE4LTQzMzEtODk3OC1kN2U1ZGI2YjBhMzYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcyMDI1NSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3Mjc0NTUsImlhdCI6MTY1MjcyMDI1NSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.A6qSAA8glCoFXLOOx3x1C2zGMWV5PWaTzu4XMSJKyRleSlkpCRBSLN5j_x7L4HBiJoAxtN37rUnGDFAB6AHIkbsRDSh-kO6BUCjxquhPi3qR2CLtKSI_bvtvynxS2xUEYwlWXJTExqWadfBTqLaxuIcOMdCKhcQD2ws-T5J4uwTyo5xJbQbmjxdaUXPYYpUb9egPhycuyXrcY1jgYerXcau-VWMyuSLR3VKeCFTGgxBrBWGqCwz1yBTOs0j9BxkA5JiFA-sBP7f0u_gyCVXWE3k99ws88Jh6FIpv-y2RwIKmhqB24kE_g18mjCkrUUL_0v87XghSa_dvJ3xSSn7a_w',
        '2022-05-17 00:57:35', '2022-05-17 02:57:35',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652720255.325000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652727455.325000000],\"iat\":[\"java.time.Instant\",1652720255.325000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'lLi177Ssyhmp1Sk4WHXMoGfFQMa1as5xjpPW8usDcEu2LvqUO3X-mESVlZXMfW14SELVSbdlhhobAEjZKvwSyXKpc3IqoyKuQHdTfAtsnbks4VInBggwD4qQMUMnzBFD',
        '2022-05-17 00:57:35', '2022-05-24 00:57:35',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('9604519f-b3ee-4d69-818f-7b1f0bfe4388', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.128.0\",\"sessionId\":\"A71EA77B9C796704501EA14D03093E89\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"Trxduj5xlb2WpK0tcqCWG7kNjKIB0hTWI-GoIVn_958=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=Trxduj5xlb2WpK0tcqCWG7kNjKIB0hTWI-GoIVn_958%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'eyMw1wVVL2FHt_WCax2F838WlguUxEOvJNBdgx27r13iEQpPSVQ1Z9YTV-Y8HGewiBWwYo1gtqZaBuIlXNQ6Ez9RFVvAb0v14Zh4okwx6nmH5lCRdaJDs-wRCafFpH1z',
        '2022-05-17 03:09:05', '2022-05-17 11:14:05',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('96b8b5d9-b4f9-4b6d-ab49-38b885363f72', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiIwYTRiZmRhMy1jYTJlLTQ1ZGMtOGI5Zi03ODg4OTIxYzRhZTMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMzg3NDY3LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTMzOTQ2NjcsImlhdCI6MTY1MzM4NzQ2N30.BAfbeRTS1bSocdw9SxGGMcKKfuSpBN2eyddiPdr0NV0Y0A25fao9GDFNsJQ_U0etYNEOylQceJ53leYE2451fYHRYn4Od7h-uJAFfBRw4fJ2_YZwWrOLxLyUv3YR6gHpgCRVK656wIyYfxPKGnGwEqLPn5WCR1GHfh-rwUFEVBjy1H_9WrkmsRNyCmmvFTYJ5YDG10v6c0uMCb5ojHTLI1OdJCp1HEY8z8EmyBKb-R2EIYy4dkpaDQ951nbZSRoJfZlwsXbSqVW-zi60FmZ9MvkQwOvdXNXwY_bet4yRg7dthp89uVHLGVQ0rjiim2tEQI9WUaq4IprWFmg7DGxfgg',
        '2022-05-24 18:17:48', '2022-05-24 20:17:48',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653387467.690000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653394667.690000000],\"iat\":[\"java.time.Instant\",1653387467.690000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('98ad0366-2ae3-4119-83f9-c42505cfddaf', '3c431544-6bd5-4c2e-ab4c-76b159d73997', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"swagger\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[]],\"state\":\"VHVlIE1heSAyNCAyMDIyIDE4OjAxOjQ0IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=swagger&state=VHVlIE1heSAyNCAyMDIyIDE4OjAxOjQ0IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"0:0:0:0:0:0:0:1\",\"sessionId\":\"D4959DE46EBB2B62D628DD983A7D74A0\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[]]}',
        NULL,
        _binary 'QZ9q8G781jEZB7-Wd2GzGp0OWVECJ_AvRNWI1PCtRwCpjTGd1n3EpLYvDIlba2TyckN8oP5NpZGFLuRRwcxnEOZy1d2AKzA9X2YMk_3zie2_VevX7wUJ2WQEdz8Nfw1D',
        '2022-05-24 18:03:23', '2022-05-25 02:08:23',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI0MzM1YzIzNS05OTgxLTRkYzEtYjRhYS02ZDBmNDAyMTAzNzEiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJzd2FnZ2VyIiwibmJmIjoxNjUzNDE1NDAzLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzQyMjYwMywiaWF0IjoxNjUzNDE1NDAzLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.QydYSpyZugfL68FjclWZDWjnMsJ7O2ou-ZY0K6f76PSQfgsGQIMLGwdKFdmiVpAKv28HIr_GBHrEemN_uxOmWaDqjhYkG1mdWH84uxuOm-WMLEP7vcDLkKCz4l7YPblBOML1isE9lymL0cG_7RP7-a6mdRXbCfKpFIYRYJKtFnKse0_0FoY7wB-8zYqUu6PoKEhl4P3pf_pys_B8VktulofMXmJngtDVREknUxosHiOfi1n_TBLJI8oT0jlg1ZliVGVg05Yzuis_63fs8Y16R4YvNHR06oWz8BJyUXJkGOJm3evg2aNnMAWcqeomW003G94_2CIkgVhIFuCvdNR1jw',
        '2022-05-25 02:03:23', '2022-05-25 04:03:23',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"swagger\"]],\"nbf\":[\"java.time.Instant\",1653415403.439000000],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653422603.439000000],\"iat\":[\"java.time.Instant\",1653415403.439000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', NULL, NULL, NULL, NULL, NULL,
        _binary 'rWrWukw4YTuStLtKoM5hNKy7jsoMEaqlqYXmXRg63RGoY8mWmfy7ZEtHqdiLY_l5M_qNGADRwMGLws2CgDNt9-YblRynFsuoOCbO70jEvRsnELWd6rT3FCi305UKAFuA',
        '2022-05-25 02:03:23', '2022-06-01 02:03:23',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('9a3666c7-a3fd-4cd2-9cfe-b99b574f5950', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"NiP8l5HzhYU519-LfQr3CMGs2QJB26WHpbWqa5cPNXo=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=NiP8l5HzhYU519-LfQr3CMGs2QJB26WHpbWqa5cPNXo%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"67D670AA5611FBAF82AEA0B5304E75F8\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'sIKQpsnqmPRWwstlkgMqJ2gf_I4FztmKw76mkKGorQMYb1zOOgit8hF17RMDvVfv_6yKQfODYN95wgojmSNQOr0bVcJDpYpVsfZpz7fC2fi-sK4FBrCXBT7z45l2vDCS',
        '2022-05-14 16:56:03', '2022-05-15 01:01:03',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJjMWVmNWFhYS1mYWY2LTRjNTEtYmI4MC02MzlhNmU4NTA2NDMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjU0NzM2Miwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI1NTQ1NjIsImlhdCI6MTY1MjU0NzM2MiwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.wabIjm4od42-zXxmYsa6dVpqd4DkKG1oz6tHirTdFWt0s-YSF33NpIaXWHaa9DdFjvf5542yb95NGmM6o2LbO7WzT-DTlgd_1GxQWj8Pc6FIqHw7Csw4caasWCmmr8FqTeeaLNFVO2eatQvUYAkrkqjsh87OwMbfkklfQIMS9_2rmP52SwpDjTBhOu5e7Um9x_3yXsyBUVxWoMt0UhPBIU3L2jTm92743ps9F2UzTA6PFhMrdBb8Do8g6Yv3cI45nKELpG2p-YUpbMahyKvV-hHWXtIkSd9lBw7cneEHpq_qqCeZD3M_fVzyO7vMe3lnwS6hh2YH_40BGuMmVLqJXg',
        '2022-05-15 00:56:03', '2022-05-15 02:56:03',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652547362.917000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652554562.917000000],\"iat\":[\"java.time.Instant\",1652547362.917000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'JEWhoIXnxqqtiTmcwauZEjDEo0fV7QPAc6P7OHLgJwkVsQRAGfHvUzkabV949-yjaMY3PonSiUX7HWzS-YODagS66T8CthGC5a8L3JZWj0aWAGK_b1BE0tqpmWVuHbGA',
        '2022-05-15 00:56:03', '2022-05-22 00:56:03',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('9c0f43be-b7ec-46a3-a747-8a462fc0e1e7', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://127.0.0.1:5000/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://127.0.0.1:5100/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"jdIFccW8TSJbNKyTcB2vKs46P73mb-Wo9tw1QWgmZGg=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://127.0.0.1:5000/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=jdIFccW8TSJbNKyTcB2vKs46P73mb-Wo9tw1QWgmZGg%3D&redirect_uri=http://127.0.0.1:5100/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"C53836CD4EAA915DF71D6D0C104915EA\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'vABPVGcjKcXY2fkLqv_JAGLYLDYNnbnFQFFtNjySzF9TnzhLdKZVA8uSHWN_7ZhwgnA0EVlD9yyFiKLENCv6NjcgE6Rj4FpY16PazSPtx4Ww8hdwuaMfcErdP5F08wPo',
        '2022-05-20 01:45:38', '2022-05-20 09:50:38',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5NDBhNTZlMy1iYmQ4LTQzOGMtYTU3Mi1jNGMwNzNjYzE5YjUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzAxMTEzOCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6NTAwMCIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzAxODMzOCwiaWF0IjoxNjUzMDExMTM4LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.UfFym0etKvfWkAAXj2Iv6semYPo11s2P8VCFMG5ORHf5vvN4f-IDHXwTrM6oj4fwKTFbDha55H5KO--zZMm0lBk-i9uYhFsRMmU-Fmv5jjIE3Fjvyp7USpHY6rnbZrVPYglh-zZUkj_oS8qoh20IYUzIls8-DHvSKcnXaRTkmzZ6myT-9k3TL0Ddu7nLhzs6NlGShZfCOiM0yAY2-DVl_j-latAA92ruDL7Le2zox5VXsBxgW4J6QLYUpvRe2chSxbydraRqrs5P0KTMJs9W3jDR9ZTEClerRsuYZYhaygHvVAZb537wFpmZ9y64Byr4Bskvzy-PpSrPAEUeuzYRvA',
        '2022-05-20 09:45:38', '2022-05-20 11:45:38',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653011138.005000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653018338.005000000],\"iat\":[\"java.time.Instant\",1653011138.005000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'l_SjX9e6j32xkxu2TOSyru5Crjb22Ul3-z_XVt4ZkBsifuiblII312O0mVo4UW8ZLCTo4fzJOzZwYGnKV5REZAoWFWDndbs6HnH6yL-yRq5fEwLzz07YVfiMVYIbeyHH',
        '2022-05-20 09:45:38', '2022-05-27 09:45:38',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('9d9f870f-1894-4786-afed-9fc0cc667d0e', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiJkYjg4MDhlYy0zMWFhLTRiYjEtYjllMi0yNDkyYjFmZTllZmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMzMwMzYyLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTMzMzc1NjIsImlhdCI6MTY1MzMzMDM2Mn0.btErCysU9lO81Un6T8feVuqoYK9RZ9riVGp-CXE2sXjrMJP5LiAy3MztjpJufZxFTXVk_xJ-QkC6NxoiM9INGmbujrAzRK_UEdBKOMSVVAE1zMfHcC7Xw40wZnVBEB-SOqBAwEgI-4aT-tWlVuWRnWyfJQeMIr-AbB254uPFZYWBOrfS0ZfRerd5v1c1m6EOyKDYXfJZpYk48ZPxhcjvQxx7_NdFbYL6L9YzCWzZALlfeoWzwundXPO0yDB9Pd1X1_TOChztWddnfQbR1puVf2_steUnM2_LtVn6vJ6Ml6qxt4dpvVIs3wUpqlG13xG_W6lIWX09jGAzcZhkIYevIQ',
        '2022-05-24 02:26:03', '2022-05-24 04:26:03',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653330362.930000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653337562.930000000],\"iat\":[\"java.time.Instant\",1653330362.930000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('a077f13d-02a9-4987-b0f0-2b6e3110f1af', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiIzMmUzM2ZlOS1lNTI4LTQ2MTEtYWEyOC1mMGEzYTQ3MDAwZmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMzg4MjcwLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTMzOTU0NzAsImlhdCI6MTY1MzM4ODI3MH0.kH2kLGJtdXnI2aZPzVV6dx_rae5vkxp-MDLLVL6JpNVlG_5YgQf66J-DJV6hSn6hN6kxFR6yrhHjB74Hgu08Btz-5Kc9fzWKkABEwBbFUT9FJn18qXHrYLjgYwQK393qZ8gfopOSSPJ1VZeUa90dXKsbM_oV70r_2UogSClhRtjC2_phbRNfVqYLFrq6DaMA0LDYcSomw_Lo1THZ_CbfSFnZ-LBeVYIQ7wHQkSnpDm5NDsGJbS5BjrsfeIuhzExctHjmHmPjnmohK0etcNIz9_FUxszAm4zdYdfOjX2Xdt022Xk5n4Mh5XGL7cmSm0ueZW31s91ikPpOsDT_2QzctQ',
        '2022-05-24 18:31:10', '2022-05-24 20:31:10',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653388270.277000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653395470.277000000],\"iat\":[\"java.time.Instant\",1653388270.277000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('a0d10059-8a64-4be5-91b9-8a22d0a82532', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"BI5uGKto6vks1XiuXpwwDwFyODs1WzD7FjcZzD0FxqU=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=BI5uGKto6vks1XiuXpwwDwFyODs1WzD7FjcZzD0FxqU%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"76C6312EB2134E2067E31453A03A2ABB\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'rBN_n-9pdaYTpX6QeXl9VfORpgS_VY-OgoA9SGSLlSoav4gACjSvLyQON1Dcu6Cf3sCoVdwi84Is6I6KE0tsTgDTkf_H1ldvnPU6ZDYNYKIU8mJm4mqFZQbrNt4yV1iM',
        '2022-03-26 15:51:31', '2022-03-26 23:56:31',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIyZGYzYjFmZi1kMGRjLTQ1MzQtYjc2OC1kOWQ2YjBmMzE1NjMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODMwOTg5MSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODMxNzA5MSwiaWF0IjoxNjQ4MzA5ODkxLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.bwxFcjDFJlJU26aDSiwJO6GGx8R_EL_29AQWpAm0UVRksnp5FqMOOnBoSZzOW1In2zQJ18hsgpdpuwxXlfhlX-ehGxAsRawQX0KlqNF-AVPOnnpP_O6bkF286biiNt9IRw46lf_8ik4WFuRPR6_GtWw7NhMBxK9VYmHxhVHtU2zIn0VnOtJs36BndvukJ33fO2WO2wpo1ITX50ZjPRpusTOCu2qZ6xU2Zvov5IdHRr1ze7V1u_fxYqVCXLusvUlXIMP89yKT80KoSlrd-glql6tmwLBTCe5ABg0VKoMeQydAWT1BtkeYNc-jQnQ1Jiagy5s0dbvj8IHQmAgmEbaQUA',
        '2022-03-26 23:51:31', '2022-03-27 01:51:31',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648309891.336878000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648317091.336878000],\"iat\":[\"java.time.Instant\",1648309891.336878000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'QfMpcg7wjND10tQnqUIGYSkCKxyiBv2-nn5in45i-AwvGtlfEZFF19fXD3XWeBGQghpq9-BJdtMV2wLIj_MhOGcgi4JdT8U3--McXRFNCg4-F4BdmTaEH2zFzN9bnGp2',
        '2022-03-26 23:51:31', '2022-04-02 23:51:31',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('a1436042-362a-4357-b147-751673186f05', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:51:36', NULL, NULL,
        _binary 'eyJraWQiOiJjNjNjY2E3Mi0wM2Q1LTQ4ZDEtYTIwMi02MjNjMWQ4ZGZmMjQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTQ2Njk2LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTM4OTYsImlhdCI6MTY1Mjk0NjY5Nn0.OWPfMho_FJ64K8d6MtAAWnK1t0va6GPxHaYViwnEPe8eSu7e2Btit5_IG2PaN6gUMEp03XlUBUB0RqN91O-4ZiYHbAs1OOvl-7QKArUF2q_WBZ3HVJY6xnshzDHdozCoFwmpuDVedcmKVuvyLArPOoufONguQs4h_C0UkoYooflqq6J5uuKl5XAXmbYzSJHVnd44nNWP7V9kr8nbWuNZ4gZo3TLBygi6IoT8AMBh0KM0toJKuAHTtzEJuqSzLQ_ZwI_L6jb_Edh4lynz6H4TC_f2FBy2rgnZIgyMdPU0wXy44-aXFR8u_AaDItMBxACBEs6VB6bK1a6gKPy1HRs3ag',
        '2022-05-19 15:51:36', '2022-05-19 17:51:36',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652946696.296000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652953896.296000000],\"iat\":[\"java.time.Instant\",1652946696.296000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('a3f59c86-4e20-4cdf-a81c-b3613920af67', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:36:36', NULL, NULL,
        _binary 'eyJraWQiOiJiZTM3NmIzZS02YjFkLTQ5MzAtYWI2MC1mM2FiNTBlNzIxMzkiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTQ1Nzk2LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTI5OTYsImlhdCI6MTY1Mjk0NTc5Nn0.vc5GcmQuSDkDguF5YbBpXBMhHYSxDtlIhhIZyROrGDeFS2JsOk_qgrsPKlFcQ0Xfumeuy0FYdr8VSJP6G6Dy92Wwor9-MURf0KKQKXrdODHKlBCsWNYn_30PQxcH7OKf1GXaaIp_egZcgu0vHOzYYL-LpdOVO-th2iBHaryw1DeOVmV0hY7VvSm7jJK4XK2V7yeCfo0JLckVK-tHR84r7BcTA0GqSnVSjjD8j9byjZ_1B-aEidZOzalnvkBrDS_bzcMMmEvkP3sUFxqweg74gl6IPBwCVCEcWjj5Q9VkDeI-Yy1Pb4GwXMiQoTeXdg2qScOZFSmacJk9VujrBIuFAQ',
        '2022-05-19 15:36:36', '2022-05-19 17:36:36',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652945796.181000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652952996.181000000],\"iat\":[\"java.time.Instant\",1652945796.181000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('a80372f5-c4bf-4fbe-a2f5-a7c6fe8aef95', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-20 01:11:53', NULL, NULL,
        _binary 'eyJraWQiOiI5NDBhNTZlMy1iYmQ4LTQzOGMtYTU3Mi1jNGMwNzNjYzE5YjUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMDA5MTEzLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTMwMTYzMTMsImlhdCI6MTY1MzAwOTExM30.MDHRU1pEBrza7YYcpgKcCPKXd789Y86Bh9gZlvcoBJDW3ui8WFxXYFEjLrm5tFtJFPmBwDrp1itoG-JrAJFdcNrX_Odc7vUVaKt8Rf8zzB8-h5i8SvG64sm5QaEkgzrhZLekHjn1hGHVFOfs9GXOnJ3KJ57-KDlvjxDPCIcyUU5A4T1_HZ_S6pBXvjmDQWzuGHQ_874mWMEomp6_0Tgt6WXVv7LyS2GOLH-W4QZblhvA_WXKZ9rNwmgG5AMLzh6_a0HVdCXHd2_X-0-qB4NHJJTGKJd7Xh5oSCHBDDC6pRMft-3aKTHO7svxcj3hxfk1XN8h6m3O6uAVHoWBGLU8LA',
        '2022-05-20 09:11:53', '2022-05-20 11:11:53',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653009113.125000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1653016313.125000000],\"iat\":[\"java.time.Instant\",1653009113.125000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('a9d22597-3f9d-4633-9f94-114ee0a46a7e', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiI0MzM1YzIzNS05OTgxLTRkYzEtYjRhYS02ZDBmNDAyMTAzNzEiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzNDE1Mzg3LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTM0MjI1ODcsImlhdCI6MTY1MzQxNTM4N30.rI0JOor14XE5Nakskgwv1mUbvXD7XrEdW3VGepc9u581X6eHEDLMTkDHHH5O_SSN-B4XDHQ3RrbKGVYZjfgUrkLWyxYnXILW9W-YHMuQwPV36x9D2jc1WIspnxgdBWJZVA-DRf_zfhkjqKAkEy7Dj9kIPnFl5S_-mb2Wh0pq8lLJCDfW0S7KWJrn63xe0PkS85_9FKn0tKQrwTjd20wlnFEKf5Fc2d8u4nuvHcD_cm89N9Fu8nO_x-1x7mkRwVFMJeO8xK1Qeb-UIE-jIYtqhNvxHUo7Dq0gD_LDIwiNUoPnnCz8MftUK6vsazjFbWXL0xyIKCop5JJLj1C_V2zMzw',
        '2022-05-25 02:03:07', '2022-05-25 04:03:07',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653415387.366000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653422587.366000000],\"iat\":[\"java.time.Instant\",1653415387.366000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('ad053a18-f3d2-4b42-bd22-17b7cf18fba0', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"7EmrY3bvEL6uxsvzIxGwhEwjnrh7Pv9cnPLABrE5wOE=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=7EmrY3bvEL6uxsvzIxGwhEwjnrh7Pv9cnPLABrE5wOE%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"A6D74B84D6CDB882DCDD2FD52CCA292D\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '8l5Q959Z5MBk_rQaaHrG3XFnPTKBrTf8qUADzRt-aLoq_q6_52-X8b1_cWoTXAgPk_-mCW-Vlh_91bhBcXA9oYs7HMY3NgoTfqQJgtvAJWLl1qnGj_rFjNixt1SAuXsC',
        '2022-03-26 17:56:58', '2022-03-27 02:01:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIyZGYzYjFmZi1kMGRjLTQ1MzQtYjc2OC1kOWQ2YjBmMzE1NjMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODMxNzQxOCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODMyNDYxOCwiaWF0IjoxNjQ4MzE3NDE4LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.YzqUMASe7vj_g-SIl85hwZzslWyVjmta7BejYzXt8qjgyyUHW_hNQC_AK9IDtLva4Sf36TYSjCruoTJN5nudz8HrLYTGHj-OFZK4R_kPgtRE7Az1zrDy4nLvaNPuQN6TgSpZ_OQ9DauIXAGknPOgIDlltsEJAPb-HUk38A68OG614ZkVM1gKql3Z8VXObEnIZouovS29feQp38SxUFZ2eE_-fdXwkJ4w7JdZbN4IQSU6sXDbt6mpjlYGb6XjV_8VSR-D18F02tP6vT3Qj_hkWpAggA9GaVTTU3p6sz103oDrvCyEF1qkglSd_v1R4wGq_2LdbrhPIeuH78HhJfKVBQ',
        '2022-03-27 01:56:58', '2022-03-27 03:56:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648317418.006718300],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648324618.006718300],\"iat\":[\"java.time.Instant\",1648317418.006718300],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'CRN78I_UahHn14cccrvhtD8uyokk2UabwM9qvCsWzuyxxySk-h-l2T_rFCnbrqY671KRe4vj0WfPoxYK2Zf0afV0d_RULw4tbyacA8iBVegMQ9rk-zJdpHWAoV4anrzY',
        '2022-03-27 01:56:58', '2022-04-03 01:56:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('ae4e725c-dc27-4801-89a5-18439f75e1df', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"8Th4ynq6ibPDON2xXOuANFV-zVDt3PAWM_lrRwD-vbU=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=8Th4ynq6ibPDON2xXOuANFV-zVDt3PAWM_lrRwD-vbU%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"C4C506F3C925C3DB42BC5F309D35F731\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'I2bjkDkGEH0pbUpPLerNpifieTpz6Z61ey84Qqks_-Wv_ndsV_lf5Z1ux79g8n8HGN1_GGgE7fIg5OhOzl4FyGUVQlsnxISvB7o_rlkapYTijBKuJi3yxP_n5iCWYwTM',
        '2022-05-23 18:07:13', '2022-05-24 02:12:13',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJkYjg4MDhlYy0zMWFhLTRiYjEtYjllMi0yNDkyYjFmZTllZmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzMyOTIzMywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzMzNjQzMywiaWF0IjoxNjUzMzI5MjMzLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.BrygeGiCQ7-lEq56keLL0QpgoodWha-vdQgil4bvXOBnDkydUvOZ6uJuhKIlMxdaoIQPDgoLx95YojmgI9OQ54ObiquUvkW0Pvrt1EZGxr9oGj4zX1rqLzFVs1i1qxTAk0OFUmjjcUEscnewkyMWpBbpLrl1tgrxYkUpWZuKEagS-wq7pvtC3cMxDQPOFmwRsxy0LXv4QrlIHPYDIiwpped--Xj-WCloN3Gjv5bL5sDSBzH9O5KYfFClKbD2v4AEs6CdNzDRwrnAzoZW4MpwfVBbu55FNjcoq2zJD7DN2IENd-zF24C4r0FSo-tynA9EC4VzyxXvC6k7SOBXOWSGTQ',
        '2022-05-24 02:07:13', '2022-05-24 04:07:13',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653329233.034000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653336433.034000000],\"iat\":[\"java.time.Instant\",1653329233.034000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '0XmQOqVg7zAAKaqDJtMEFH7Z7-1Cv8ljghlbivWCpnD4kBMc_y_JjPft6R1K7vD0Lp4Vx7qcO36BFX5_f8oEGWXoQgj4lRrrWb8hf4kjEZXpOlqNFpBeYg_00oWXpFHZ',
        '2022-05-24 02:07:13', '2022-05-31 02:07:13',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('b2fd1fe4-1768-4149-bc5e-d7c46a4bbf3e', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"M0t-57GvFR5lg-Ui567xVR6L6_Mfxd4dr3VXGCaRBXQ=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=M0t-57GvFR5lg-Ui567xVR6L6_Mfxd4dr3VXGCaRBXQ%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"0DEF3BF53463CE1F8501D75462FD9590\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'plQ7-Xjhm8xwNrS6qZ8d9tgVvS8OTLyeBxcLYAdUBtPQ3GFrktkHEfc03QeyQTVIUCWq-pbe2A3-ykwpqayYKUbBy22o7HHVfATcvB2Mru13Bk2EbbkXrLePduNRHL6G',
        '2022-05-23 18:26:04', '2022-05-24 02:31:04',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJkYjg4MDhlYy0zMWFhLTRiYjEtYjllMi0yNDkyYjFmZTllZmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzMzMDM2Mywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzMzNzU2MywiaWF0IjoxNjUzMzMwMzYzLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.saQ4uIKpqRem63a4Srrz94DuZW4u_MEofSAmgpPpJ93uJ7wo22Es462OiSeWSX9FePgp2FPRD-bj8t5XuBzMo4nR-OMqY25RKR7hqz-rOeV0FHS6uR8qbzhYL-flZMeOue9TQygglNXFxahlZyYZu84z4NsNdBm77lPa3_wzQROYxxKyk-lsgvQlLsdnO09j73yEf-lJcxS5Qfx7RvM_xgfLcMb-rjd0qUrF06jtWESItRDRO-KsmKpRhvY7MVO9Y9V15il3bQaQB7DGW2q2m05hTOlsLZU2N6_gU4LPHbRJ37Pp0VpbzcB06wLjHL_4iCpdP5v-67oYRwbfJaW25g',
        '2022-05-24 02:26:04', '2022-05-24 04:26:04',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653330363.824000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653337563.824000000],\"iat\":[\"java.time.Instant\",1653330363.824000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'swANKxnDxBBlCKkxpLH6i2aZGmDRGfzuUPMnfn0sica4N6GqRDWqeeUwTE2rcqdX_bNKowQIn16-14hSjRb09FivNiR-o6okM2b3a0OJu4Ya7tcxzkfHa_eK1gIX_3u-',
        '2022-05-24 02:26:04', '2022-05-31 02:26:04',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('b36479d2-186d-4733-908c-d0abac873297', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiJiYzU1MWQ2Yy1jNzllLTRhNmYtYjA2ZC0xMzBkMjFhNDM2MmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMzg4OTQwLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTMzOTYxNDAsImlhdCI6MTY1MzM4ODk0MH0.B6WqI5jZtFjr3fafjObRXO-8gG3tB0xvJzs3Bzj_SkbGGcIy8WY6ozBJvxIXKL3z2IzlzNMmYR65YY3ugOdsQx87AqQRbKK6CSkbs5gpJa7Z5W6J3FBgDTinS3KZFoKylTRmzJ7y3n0o9thOqXZR0F8XixfTHXmCFJsyl-uIxIfAD3JdLUXgLxY96IHeAGe50jW52RG5V6etW--vEmLBexcQyAXAh6KeoIsa4I57xbVkZR4vWjilyyhH7axW_QTUBSDt1qypeSsDD6gMQZGTYtfXXGm-sRJXf2_2j6_lwkuCzLK2YzDb1AzF99zNC9bhh9ntCaCkuCeeHIMSknyYfA',
        '2022-05-24 18:42:21', '2022-05-24 20:42:21',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653388940.971000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653396140.971000000],\"iat\":[\"java.time.Instant\",1653388940.971000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('b390a486-9e00-4284-bb06-5c6a0478c5dd', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"bPQdyAc5CyXga-zYZFsKs2gSkRM5CKpnYB2LH5Tw4es=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=bPQdyAc5CyXga-zYZFsKs2gSkRM5CKpnYB2LH5Tw4es%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"91E716748DA2C99A64093BD55E931160\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'yR8OFg-XfNTGKGSRWPLnYfhUBxphyB3mCxqktbKE7sEIV0W880ZEqgZu8MN5-aqzJL99lxbHDY0FgMGDz-sFFRC76n5yX-iOyMryZwdvm0tT0ZLulKEHkgF8jvnZO71t',
        '2022-04-17 02:56:57', '2022-04-17 11:01:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIwZjk1MmM3NC05NGQ0LTQ4MzQtODBjZC0yZmI0NjJkYTg0NmIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MDE2NDIxNywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY1MDE3MTQxNywiaWF0IjoxNjUwMTY0MjE3LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.kzDTqMrU7zXC7g6DSg0AsyEwTsYzDlM-CIB2POMTGKFV8ouLc7fdMZ_jCDGM3LIQeDeLmQqj_Bu28qOnu6SqcPjmlFLm9uoNCPcnKV6hhS1aKBzF2xejzHacNv3roK_YWzMZ_RaNhOeERXsxgF9jgXw6Zh7pK2abP9F25FqKj-NT165Q-41mANEcd06I7QmMmg4hraBDHN0tLfsj-GHaw5OVFz4IYIbc6n9xK0TN_qRuu-eFLjFxpVT4PMJ0920-gPpdWFSJq5UD-PGwvLO5q92UvV5Bs9pXIbZg7PaO0ujlUns2UawdXyz3xx47np0KRNmtEVSNjnnYiVp32Eg5mA',
        '2022-04-17 10:56:57', '2022-04-17 12:56:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1650164217.123907800],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1650171417.123907800],\"iat\":[\"java.time.Instant\",1650164217.123907800],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'cgHKU2e9u0A8Hs_4omAiY8DjzMv88GV8AIBNBHqTNtxhCDSeAz5OEHRJNmHmAwmeQU_vaDSJxiqcDYr4PZCqIgf9OPgglXS-Qmxi53aXpe_6LwVo2F8bKjt-jTJi5s0e',
        '2022-04-17 10:57:08', '2022-04-24 10:57:08',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('b46f1497-81be-4eca-a3ea-f323165a4a84', '3c431544-6bd5-4c2e-ab4c-76b159d73996', 'gateway', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-18 18:18:14', NULL, NULL,
        _binary 'eyJraWQiOiIxYzVkYjI3OS1mODMyLTQxZTgtOWY5Ni02YzhjMGY1ZWJiODUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJnYXRld2F5IiwiYXVkIjoiZ2F0ZXdheSIsIm5iZiI6MTY1MjkyNjY5NCwic2NvcGUiOlsidXNlci5waG90b3MiLCJhbGwiLCJ1c2VyLnVzZXJJbmZvIl0sImlzcyI6Imh0dHA6XC9cLzgxYjFkNzhlZGQxYS5jLm1ldGhvZG90LmNvbTozMzE1MCIsImV4cCI6MTY1MjkzMzg5NCwiaWF0IjoxNjUyOTI2Njk0fQ.QuWzzro9sJSi5T49jkYQGN9dhvGywqRoGLuLLL6WWnub_mC89tiSzbLcyGil_pVRHHB5B7TeL5lQH-IjoXpxtfFJPkGgaxP3mRrCJ82raTlC-dZ53tbccSUbjNgJan8CgF4SFX9aSQwVYPreM8uRqC4jMMQIh48oOa4mNIIhEE8IQsNRETg8W17z79e0s05tXZiBxl7aQh5ka9Nms5mNIhEheBW7exZs3LQRkMlki2XAuIThSpfK4FSwVO_iAERUPWzIARy0LFrXff8F_9vxakagNo7E3q396ITgZHUD94_0wY_CLbIHncCyKjyUjvyZQhyRirfmbFE1PwB1jnQxCQ',
        '2022-05-19 10:18:14', '2022-05-19 12:18:14',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"gateway\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652926694.497000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652933894.497000000],\"iat\":[\"java.time.Instant\",1652926694.497000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('b534c49c-c18b-49d5-ac6d-423a40b93961', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"T6NJ6nTKzw8y3etxVHKG1UpQGwWLsJ0wE34tQAYN9F0=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=T6NJ6nTKzw8y3etxVHKG1UpQGwWLsJ0wE34tQAYN9F0%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"416859B0A615BE1508A00740D77EAD65\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '8lwjh8Bf9d0T_oeOaY6iqsDcA7FfwaGCE0-WUfYxnABu0TNEqvahEUNm6Fjay-A46OIh6GwL7_Gc2IVpO9ymP-Mbd2JnXj7wBpl6BiAsYdXNtdomD32c9FEFWCPpXZBB',
        '2022-03-27 12:55:48', '2022-03-27 21:00:48',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJkOGFkMjhiYy00OGU0LTRlODctYTU5Ni01YzU5ZjZkYzQzYmIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODM4NTc0OCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODM5Mjk0OCwiaWF0IjoxNjQ4Mzg1NzQ4LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.jLTOhjRoLAFoE0HJ5wmTNbgp3Dmt7UTsrJX60gIP9c9Whyrey5VV7jhbFptoM-V9u3dUIDLJZ0Opvmu9jsU7RSb7-BfBPvxtjNpemFGW6xVoAJjgHg73TTD0uzJKL59gigv7Rvyyj7XC-Io8CY9Zu-3qMb6k56dQTWW5CpY8QmtrGxoqAOueqWgh6YPpT14tWNZU_UAme6YpnAi1tNNJNn6-i_lZWX0nC6MUz0niPDoS2IYbLMSrJYOF7nL4L-16TfV628w3qalV6P7OOv0y0PhopYwu_TjzsPQZGJoeDhND0t-q_6QZqNUnudCFRirUnIG2HNjs31FJ_RTzeyrz-g',
        '2022-03-27 20:55:49', '2022-03-27 22:55:49',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648385748.506000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648392948.506000000],\"iat\":[\"java.time.Instant\",1648385748.506000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'q2EcVnVGRgK72_aPhqRTJHB5AepUYzMeK6G9UDsaCaoiK0-8026ypKhKEKBYB_pJfY1eIRDeOJDvv3uFAkOAsP7HJUvsECOeFSv2EINJzOP69BXagHDD9gnIfqdRU9s1',
        '2022-03-27 20:55:49', '2022-04-03 20:55:49',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('b6b2eded-a570-424a-aad2-50ea548a365e', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"ML2oRpF6h18MN6vUwEWwrxbTWqXQ4cIwQLD_RC4l67o=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=ML2oRpF6h18MN6vUwEWwrxbTWqXQ4cIwQLD_RC4l67o%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"A8F6BA8CAC41183E0B60CA0263624E78\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'umQs_0gpHuieI4nmui9BX1XVGBTQmUv0qsOJNJWeqR2vE6NI445L843SIHa4LAhyjRMJdXC5Q4liBND5PSrEQISIbetWmY6tQzhKYoyoyhy8zYO-V6_87gSa4wUgoBE6',
        '2022-05-13 13:42:32', '2022-05-13 21:47:32',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5MzY0ZGQ0Ni1lZTMyLTQxODEtOGMwNS05MjhjOWQ1NjAyZGYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyNDQ5NTI1LCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwiZXhwIjoxNjUyNDU2NzI1LCJpYXQiOjE2NTI0NDk1MjUsInVzZXJJZCI6MSwiYXV0aG9yaXRpZXMiOlsiXC9zeXN0ZW0iXX0.pphH4ZeBsmyLuPBsK6UUKzaAVT8ElRPD9_BwH_ZGNu4smWem1y7CA-ajF5nnZ4CJExQYo-FYOxkgZQ0ZD77KTbJesBaMnIy2MVZ8sWS1MlWKqlaj6__aFkt8e7J7ois-2ujSqXVEHT2tQuL9c_qkopqOK2MwKZgTVo8mXoYcfQNIVwTUVWUPaKg5Xx6vXbGjIphfNdcuN1AxZ8c056V10BNNxQnHcg4hvc9oIuYDU8HnnhnqVpXlQ4sF5NnmHE7cEZnyhNUNuFRx-zHWTTuEe4IHVinlrBsFWRnktAQGfeDweXLWNDV1Q0RTgcmY-ZMlO9AZYYk4odXmY7isgdQBGA',
        '2022-05-13 21:45:26', '2022-05-13 23:45:26',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652449525.558000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652456725.558000000],\"iat\":[\"java.time.Instant\",1652449525.558000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary 'WEBJ_5vod4bt2IVHMlyrrs5P22Az9zbZWj9CsrN3bBIj-dTUvi79FW0x_Dwd7XQNUDMW6VQTkKGdvyfk3AKqdOZywW-HQ9YOxS5X_J48960MGulDDykSdtOKwiLd4b_O',
        '2022-05-13 21:45:26', '2022-05-20 21:45:26',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('b6d48984-2e42-4abd-af31-c20c661cf667', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"99WE-389ctr_Q1HvRN8qOMfsk37sTj9wwcWKKz5anuU=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=99WE-389ctr_Q1HvRN8qOMfsk37sTj9wwcWKKz5anuU%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"FEB4A84C54A9C099E764E45A27C5CE5E\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'MQa63ol9UdMRc07jBY5j1-jAswgnoZOxw-muRlPR7bpvWFIm8m7Y-FJKREkNDZ4AV9O-XjskGVh6lh3lSGx9Ysqj_qzgE5hWLwnRDUDtbzjsgFXNmsKqfsvC8Ab8WGDk',
        '2022-05-13 01:25:07', '2022-05-13 09:30:07',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5MzY0ZGQ0Ni1lZTMyLTQxODEtOGMwNS05MjhjOWQ1NjAyZGYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyNDE1OTg4LCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwiZXhwIjoxNjUyNDIzMTg4LCJpYXQiOjE2NTI0MTU5ODgsInVzZXJJZCI6MSwiYXV0aG9yaXRpZXMiOlsiXC9zeXN0ZW0iXX0.QcBdeU5s0oF1J-7D_VM9Z65elj3uPcPJr8AW6hShLdp_DKCqXba7AOg0ZYTmF0VpKJzuoyTterOo2mXE8y-nYIQOFZ2uPo9Yrp9-VKSZlSofLPeIgNymc1dMKZprIC07TAq1wyn3ECPy7Y1Yobo8z6guU7DcxCZaLXCQjXiKk9c75_rwPZHxvkgolIGifgcCKh2tGWvrsDcNtfqBNHiBXOO-btBusj9DQZxHHZde0a2cqMGomDe8VSzPHMSAXeMqxv1NbYDaoYbM1pZA4l2owza0AJk67VZz_i7tYF5XNCo2Azapi9cIxXdjo8p4Gf834SSRp1VEg6GdA61EHkh4Gw',
        '2022-05-13 12:26:29', '2022-05-13 14:26:29',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652415988.953000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652423188.953000000],\"iat\":[\"java.time.Instant\",1652415988.953000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary 'gpIbvKDAH9zoZDdFcNULJRm4XjhJp1-3PFRJlVev0NRFFhg-Ewsu8xVFnTWMG1MWD4jPTDKhTW83Z-zDfU-DZo62BnzH8yqvS6SSg46TeaGiPIR0EYor-5ZJvt5Dwgl2',
        '2022-05-13 09:25:28', '2022-05-20 09:25:28',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('b8861c6b-e595-4a42-8bf3-e786cbd10007', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 09:31:08', NULL, NULL,
        _binary 'eyJraWQiOiI5NDBhNTZlMy1iYmQ4LTQzOGMtYTU3Mi1jNGMwNzNjYzE5YjUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyOTUyNjY4LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI5NTk4NjgsImlhdCI6MTY1Mjk1MjY2OCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.kHtNbZgERkr4j5S0a3w6KNp57HciuEE7PMeIlfI1Q4imrqH7GzaJWYzbfjHcB8LgAyIvb5Xxp9nL5wUrpncGo-ezNwYZ5gE10ptd_TXh88QOkEdyVtfFMda2bzGW_gVCtcRFmbyHECcNVb1wzzJJGb8A_5qzDg5476-vzG6WEF5mP8I5FomNoJHbzvrqy07LV7q25rkoFEi9FaYf4ukahqwQoLSp1VkAjW9a3SlLfqaL0Oquw2BOiZZkt2ITt04ew2t3VousPNwQGnFXXZOD05x4xk_bihRq5pdz3tmXkgXxG_pBHHaJOFM42dV5G0Y6xidkJhzvvf_tNVPwX3gt6g',
        '2022-05-19 17:31:09', '2022-05-19 19:31:09',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652952668.654000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652959868.654000000],\"iat\":[\"java.time.Instant\",1652952668.654000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'Uc1LgBp8HlZLpYA9cgJ7GJULEGtZz0vZPkv8eUzH6If1LG3cmlAgGZUorawbBiHBB9fyqNESf5z0a-3tjlbcJGfiNMwegv_JJgmn9JA22ft9g4R2OMZK0gDogsn0PPFN',
        '2022-05-19 17:31:09', '2022-05-26 17:31:09',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('b8a3b2fc-bf02-43a5-a0f6-3beb8bb29dc2', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"0hzfNopMEhmjxJFpHcJrjfUepeuuDQ7dGim512fW5Bw=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=0hzfNopMEhmjxJFpHcJrjfUepeuuDQ7dGim512fW5Bw%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B875A73BB9F1D6085F93AD38F1FBF1FA\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'NSafbbw1gsVJrYUkBShueglzdUNbzsk-yfU0UTo0jq3XDfgNeMFwuDn0gqzgmft4c2tzGKX5YKf6-hNKoqQfdDt2Ax4ikfAE17vNDz-9I7OruQ1IpQ7TfR_xegMPl9NU',
        '2022-05-16 16:47:22', '2022-05-17 00:52:22',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5OTJmZTE3Yy0zMjZiLTQ2ODItOGNiMy03YmNiNzI5YzdmNjMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxOTY0MSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjY4NDEsImlhdCI6MTY1MjcxOTY0MSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.M-28yZpHNwXj2a8ErlMTSjL7by9R3t8petbgSGf49TDcUNwhfXQ0YyZo0jOxObuR14JR84dR6_4UU6Fkd7K47hiqz5XiYi1rFB0h2Ys3VGbcMFV-rTvp3825qkxLeghX5cUyJHSPlELLyAHmaeruP-ibheVif0T-BxeFfSPoFe4zi3NKxjoDIRVSMbUreToAaIYWy_q6BOAX9G0Pb9G-NmcosUnJ2bcJL7Fy49TL27g7qHpo1ndnNopFr8Fn6pqZvecthHhBgPjtCXt6PQeIAqxqUe9IL1j2fSUnP6Y2glK_3eOGuFaSj0bdg2pGGW_BZtaty9bMrUenbh8_6bzf7A',
        '2022-05-17 00:47:22', '2022-05-17 02:47:22',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652719641.971000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652726841.971000000],\"iat\":[\"java.time.Instant\",1652719641.971000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'YFJ0NRfwcsL6RTtW8C02TvWKs3MyqKaTNEdHmxhLbdWHYw9fVE6wC1ce0_LzbXXw5t4mD5Qu1ITEiYR713Qt8tGrRUE4cyh9yv7XfUZn5TAvJm6LfMhFmDW-es8LmPYn',
        '2022-05-17 00:47:22', '2022-05-24 00:47:22',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('bcf6cd6e-553b-4871-96c4-3a3d16ee3ea3', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"dOBeFUt4qhioaxtltQhFUMNkYl6OcRpjlmhFjnODMkM=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=dOBeFUt4qhioaxtltQhFUMNkYl6OcRpjlmhFjnODMkM%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B875A73BB9F1D6085F93AD38F1FBF1FA\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'VALueB_k8Zf-Xne7fCrtN5-8N0DaIBTIk4Y7LVRdn_M-hO93ThlKsxioN2bIpylOhOydqyHGhR2xd_XpvnAaE84agV7hK95Cug78A1aZX8369BvjWNPyCAfQWD7uOlr_',
        '2022-05-16 16:48:51', '2022-05-17 00:53:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5OTJmZTE3Yy0zMjZiLTQ2ODItOGNiMy03YmNiNzI5YzdmNjMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxOTczMSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjY5MzEsImlhdCI6MTY1MjcxOTczMSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.vcZdfi53Z3DUUVuvxyXB-ij3ANzwm_dK0dXf0prtPEvYjAemB8vc3Ggu7GCWr0m_jzpkYfdgQcj96dwTqRxkBANrpTBanqrNpwX4dhWyG-Em7XI13Hq4AKixZ8tQlX2ZY8FCsu9mAg_KZbDvVce5B-3JvLsDbTnYmAGNK4ZFfEkrMsHSYXdPLrJlkf-xWYStE32wNdWlItY3mEjsQ_R5QBMdRdXF2o9cXpBX7ciqKoy8pUGT9xm2lpsgIoQd0VoIk8Cz96i0XmjZVxG-ukJBQaNO7wKGldigFC89STbQEdcSib7F-nfUQiKiBYtu-oy5WCE9mNZAxHHmruZp2MglmQ',
        '2022-05-17 00:48:51', '2022-05-17 02:48:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652719731.204000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652726931.204000000],\"iat\":[\"java.time.Instant\",1652719731.204000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'KviQ8JBK3YAJIRKk04DF5quzADqZilHZ9HPhdIPM88AgFPR7j3EZRWDRp_myXqz7-Ntoc0IEe2nhib5ik2WSq3YlpBxgCGrWoeUE4FXbVq73mOkuGRSfa-R5TI4rJUnH',
        '2022-05-17 00:48:51', '2022-05-24 00:48:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('bd68c120-25d5-4750-acfc-f9645957bab5', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"QweiRR6o6NjNigiIPLY950_7GcAnMWaPtgMUJNqtpdg=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=QweiRR6o6NjNigiIPLY950_7GcAnMWaPtgMUJNqtpdg%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"526F0D03B173E47D1AEEDA6A71A31AB5\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '5Xu4CC3qeAfCO88VvWkKEyzsxttLtI7dxSj_iiXGeu1VdS54l3b3NjLGiKzw5lrY9hBsrYW6uPN0tqe5GD1ZFY1IJ2cw96zYDm01RKOxtU257Cf1JRK1mPeZ747fJ-Fu',
        '2022-05-16 16:53:38', '2022-05-17 00:58:38',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJlMTM5ZGI0Yi02ZTdmLTRhMDMtOGQ4MC0zZWU5NmRmNzk4YmYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcyMDAxOCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjcyMTgsImlhdCI6MTY1MjcyMDAxOCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.YHaMD0WKrn1PmJ6sqDS4veBpVEoqgEGPpK014tKfgFxzZM-VInV0elADZn4-WwLb7oiwhAmoPgJc81vEL6GU1I6Q1r6TdjW9dYIMjlMdkvimyZI4cQ7YGqAfYCeQBwP_5VIpFtB5-69ckatmoZ2KZHr0_W4Er4QecqeRZJL_sPkslaPMosmwmZtq0nRy-ODXJusdIyJbW-w6qy-steqhdEjC4croTGxzGnumlcSUp8NS3WkuRhWNy7yn5lSZEOPXfKGv3qbG5auF1leaN6A6VQcx5puJQZNPBPOTCDkP8kKlf9dTyNaGfP3n6VJvGZZL7scBacXQsiYdVyovcEeCmA',
        '2022-05-17 00:53:39', '2022-05-17 02:53:39',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652720018.582000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652727218.582000000],\"iat\":[\"java.time.Instant\",1652720018.582000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'AYyl3UKojNZIcoLGVnyh_rMVCQLXrFTdUpq0rSg_jxyHQ7JkydcNGEhaPfHZYV708t63-TFWyywuwhPTLIuyl40nqrXJSiFgpw8PPUD-2WqpeDKtLXSULn9XS91om72O',
        '2022-05-17 00:53:39', '2022-05-24 00:53:39',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('c25158f8-42ce-4bbe-93af-48be3978a572', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"tTu-HwRJAYGKu5rTgpYrBYwq8rJDDocl6ThNP3NStHI=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=tTu-HwRJAYGKu5rTgpYrBYwq8rJDDocl6ThNP3NStHI%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '8idK__rheLiKjs1hgSPFOarxoIDSCWtLR07FK2R0QPecRO7HMlEfNwwtb4xzWkQChSDUt26rJdl24-5gpf9-nVZr0ifXO9ixyl9_fYRBFxUyrRRajkjLaJ_YLPIsom5W',
        '2022-05-10 15:46:57', '2022-05-10 23:51:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI4MGRkNjhiMi00NDUxLTQzMzctYWQ3Yi01NzM0NTkxNmU0ZjEiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjE5NzYxNiwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJleHAiOjE2NTIyMDQ4MTYsImlhdCI6MTY1MjE5NzYxNiwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.Mo3k7hAxxU4QQ3c4rL22ny5Ps_fKuHNKKn5njNJ90yfT4SoqS3wKmNvWEX0nlDPTnRVBt9ch2stF_WtHpwJ3d2kfkM1ksmM74EYbrUP0pIpNqWEAp-DztDC7vig4SEWWawRbIFEPzp8Viy-XH8SpqhAdZUwoBFi-aqdOYqsObTQU0wL_8Jgci6Bk7A4ICEFQDLNUVQxsGy2zPFQWbPzC_4PzKXQV7LE-8mXY_-1PidDqsfkshL_yzCOLeGgAJpeVdBckUZzvac1KWcei6w-68Kq-EQikkdyJGeuBRS8NAwwkmIIWSDLe5CXaxYUbO9BJBEWCdQ1NgMtXp-zHfBgzFw',
        '2022-05-10 23:46:57', '2022-05-11 01:46:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652197616.924000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652204816.924000000],\"iat\":[\"java.time.Instant\",1652197616.924000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '9J7URovxgClhobkbdMy-ZybZnAzZpuBdUFgENr6foubWe1uy_xRgEX6ZVdrQ_U8E9qZik44BJUMtFVeuNWNR_4CQgonAmGcFIaeOxO_RF77X8-5acYxcugpdvqi3xzNA',
        '2022-05-10 23:46:57', '2022-05-17 23:46:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('c29a7a7d-69de-4fea-92f6-df7be4914354', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"MIQLv7tDiDdJH5s2V4bWSr7Vx8Pk38nDICj13Un5K7Y=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=MIQLv7tDiDdJH5s2V4bWSr7Vx8Pk38nDICj13Un5K7Y%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"E888F369D27204C2ADA82229739C2D31\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'LP9k_jUK6riEU2VVxYQ4X6WIN8TmVHDzfVW82Z-OKerYovRIZLpF7GCtE11R-wdrAPs6k0mVNYSe27Uqvh0asYISl9MfXbVJUUVopOhPqkLcUXHwPnsvL-PVEz2pnSdU',
        '2022-05-10 15:50:57', '2022-05-10 23:55:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI4MGRkNjhiMi00NDUxLTQzMzctYWQ3Yi01NzM0NTkxNmU0ZjEiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjE5Nzg1Niwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJleHAiOjE2NTIyMDUwNTYsImlhdCI6MTY1MjE5Nzg1NiwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.AK_vfzzukg3PABDPonS-k3VhnThPhS1rRFltwNowyviJeZ4KHD2Xzrz-YtJMW2j17VFb2VUcoo4isopcQKO2RoWorVT_n6tUVBERoKRo4ahs8KfWmNyTmYTxBbQTkol68CLiCtgQN0m4bgoSKy5zk8i12lwqbpVIP6eoceDwXFdVvi1X8tkYmERp6gJRk2RnPhuLlWFE2fFHAbQgIQEFAHKAf0avcvgRlA5qZyrZ65kkSDfOkkiRzi7byiamKpnpQ-cT6NAadIK3BhQmcF3MI4fkiVT-aUKyKOYao2jPQ3-ZhsthO20rdz4yY-ifiOASZharRnBOiMXD_KQ31AwEYw',
        '2022-05-10 23:50:57', '2022-05-11 01:50:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652197856.685000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652205056.685000000],\"iat\":[\"java.time.Instant\",1652197856.685000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'Q6FGHU59n47hWH9X7K73wD5fT0U80pN2a0jW7WYnOm-tXxfjtZpOixTs6edKDnLLzkX2PyEcoQE13DqTIxTzAGDAK0UiA4yMaL1P3ZNDeOHVh1ZZTiYDR8ENg-wz1aQe',
        '2022-05-10 23:50:57', '2022-05-17 23:50:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('c2d75690-16c9-45b5-adec-3c2be474e8b8', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"UhmVUHiF-KCY10eJ2NG0fg1GaKb9pRz-tu3iJatC-Bs=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=UhmVUHiF-KCY10eJ2NG0fg1GaKb9pRz-tu3iJatC-Bs%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"D7D7160EB2EDC33E98149B0270A9AE51\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '50sMXmqBIwsvS79g6SgZFwX9zwYr55jGCErFJpN2eCdsIz4-dFNdmfzU6pWzrkCF-BZ_0gtd7VqNLlwAdESSZZ13XcPg5di4Igyy7vhO3ypduoKVHZ53frrs_24bByGz',
        '2022-05-12 01:54:17', '2022-05-12 09:59:17',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI4MGRkNjhiMi00NDUxLTQzMzctYWQ3Yi01NzM0NTkxNmU0ZjEiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjMyMDQ1Nywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJleHAiOjE2NTIzMjc2NTcsImlhdCI6MTY1MjMyMDQ1NywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.MY76Sax9ZkFh6l2pCTGRep3sNW_ClXwbbWGZiEmdzKmVHiQfX0XmL5heHKjkLZExCuTYsh3emhw4dzBCeOu8xuGvnzBcUfk-b6GfgHH59wg2GQvCpLereI-WTfNliBuKKmeCowvDp8g5cS02CTN1mxtmSk-iS3otC-UZJni0Efdqk0eSOqB-ul5eNETJLQ5J0LNOhe8MOeDpW0jOvWYX4PVISka1Z7mqIRnHau9_d6xkJSp05njqJ0RjrGOazcHD4UVfJgSt-d3w8hnMT47D5j-seh2ApHf-oB8YEFsx8cHW8yoeZUoRIw9oonclVGBmZX8cXA88tnwG_5ruHb3-zQ',
        '2022-05-12 09:54:17', '2022-05-12 11:54:17',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652320457.005000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652327657.005000000],\"iat\":[\"java.time.Instant\",1652320457.005000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'Iba9eKCb4_6joRZWkyI3eNYgidCHwGSjjFA649lNtWM3jDayO30-A39urfq0dlUPlUDdqTuWpWa_ydBOMpBzdKTGuCd0prEnjFTj9r3Wm5T6QIYYH9JAqoIr-ZES3A3Y',
        '2022-05-12 09:54:17', '2022-05-19 09:54:17',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('c375bef3-0df9-48e2-adc3-2d3dd0f2077f', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"fl5RGufC1TWzraOz6EWydwp6Zr2bzAMAGRGesmooNVE=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=fl5RGufC1TWzraOz6EWydwp6Zr2bzAMAGRGesmooNVE%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'gLEBY9ZjCzOv3gjEuA2WSR9rDJw3hwjIfUVWTtAXzaeYKKs60--8uKxXTiCg40uYio1oZTvJnVZreoCKTRHLJxukq2pBl00FI5WwIfPClb5nzK1h12gIGYvNtOgs_91h',
        '2022-05-10 16:28:11', '2022-05-11 00:33:11',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('c4534a70-eb83-490a-9ae8-2dbdff55cf97', '3c431544-6bd5-4c2e-ab4c-76b159d73997', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.LinkedHashSet\",[\"all\"]]}',
        NULL, NULL, '2022-05-18 18:33:50', NULL, NULL,
        _binary 'eyJraWQiOiIxYzVkYjI3OS1mODMyLTQxZTgtOWY5Ni02YzhjMGY1ZWJiODUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJzd2FnZ2VyIiwibmJmIjoxNjUyOTI3NjMwLCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwidXNlck5pY2tOYW1lIjoi5LqR6YC4IiwiZXhwIjoxNjUyOTM0ODMwLCJpYXQiOjE2NTI5Mjc2MzAsInVzZXJJZCI6MSwiYXV0aG9yaXRpZXMiOlsiXC9zeXN0ZW0iXX0.HnKXHgVpqGJwe0mmDDi9q6PIaISlJ_zHI3JfGqnRgWeJzPRb0vHToWCUuXbPz5DoNImc4_1m1jq4FYz4Ssf3iHIBdn63eb1geElk4yLzhDVEAfKBbj1--BrBAnbZXkWdLevCYoPZAa2kBDy4g4YF9LHhHOphWVyEVX5xDY-y_vwJ4dnS-L2i3pphy_ZPmmVGRz9Vu5TRWlEK0Rgz4tixfjrX5Gp8V8gaO-iW5oDCKHzVafU__np822jmU8lKW5ZeeoM6lfm3MDM798OQO_tzdutYPYTOTq4NKTbP8BvjKzAqRxwhJIlre8e8hPb-kCq9dwZ2J9jAz_saxr6sMqkdnw',
        '2022-05-19 10:33:50', '2022-05-19 12:33:50',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"swagger\"]],\"nbf\":[\"java.time.Instant\",1652927630.448000000],\"scope\":[\"java.util.LinkedHashSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652934830.448000000],\"iat\":[\"java.time.Instant\",1652927630.448000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary 'e-yfgJUP7lmJIhSuQk1dcEPRGRV83V4ovYxheWYhkyN3c90EPSfLhmZa3f6Kf4kT_oE_7jEmttFvZQpsmU8IsQE1EmFvcXFzhY9xWbM5JWAiLd0F76iTctmBReQOOMvQ',
        '2022-05-19 10:33:50', '2022-05-26 10:33:50',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('c4e4f585-8b70-4782-b5c0-b1756273ea84', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"9AtE2nYXXzfck2p_mx0uzf2c6cUL9XHMNp-GPyhprO0=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=9AtE2nYXXzfck2p_mx0uzf2c6cUL9XHMNp-GPyhprO0%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"EB6E7309A96D7D71888C4F6972B221BE\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '3lLk5OhX0LN0uwmBcNH9S_sqA2PrRb0AHTW8eI1_5GB6Q5-SPeio-REi1NmjDyHerC9uwlrsQCihdXOCWzk40WsavEiG7dbLM_wwSPXdQ09zC4Nrj4-4HkV6A0FaXlpl',
        '2022-05-16 16:29:23', '2022-05-17 00:34:23',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI1MzRmNDc2Yy00OGIyLTQ4YjAtOTk0ZS05ODhmNzRiMTZkNzIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxODU2Mywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjU3NjMsImlhdCI6MTY1MjcxODU2MywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.JGANKZ4bJBVQ2iepG4iIqg0lm_aaurrJUzCP5-n8QWg9DzsXmqHo9vTWozpAoQf-ESF-bB6iwD1MOjtCk0uTiRh7BnhWOrsb-hHc91KYWfHODP7WriCJVMw3UDAAqQfb-PTkdWyjdhqgUQGUaobHLQYF7ajaoBXw4u7AS9wdabSxup8klpUHJvEp4chbA9s9QD7jCZDtRBrh-j7KLJmjEjQaRmxDvNK2YiVYF6RqZVTbwgS0mT9OXKFOva3mwHBZjTKm1D1zUnJIIPmHAacH-E0opoPsOCciQA47I_eYtcdAzmmZFZ_SQm2YeHbN2Wx6TFG3nUGazz0KebsGSwiPsA',
        '2022-05-17 00:29:23', '2022-05-17 02:29:23',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652718563.128000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652725763.128000000],\"iat\":[\"java.time.Instant\",1652718563.128000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'nTgmMybF2Gjvqg4r3FtwrOvePKgbGNEaWm4OLJBJ-9is1OMZVSb40ubRJzA4ipdfJRsicVLhgpqgkDcyIaESDQVzJdF4sjuI9HlJXVGO-NtJsLevPDgAJ0qi5yDckFTM',
        '2022-05-17 00:29:23', '2022-05-24 00:29:23',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('c4fae527-ede0-467e-87a6-8198b81e1498', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"9vSJNWX29g3We7pYSMu3zBGen4XQQM3NnHwuLjfTdRY=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=9vSJNWX29g3We7pYSMu3zBGen4XQQM3NnHwuLjfTdRY%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"EB6E7309A96D7D71888C4F6972B221BE\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'MPrE7sAqojVCREDKh0rBazORUvEaI20F9Q8ZB5lPl8uTYuvPxAms8gtcaJc55JRAj5aH26SKJIUDuALRJTPn3k57k8hSAkNhhIE84wNq7P1tdCIOAGu5AH0s1ckX115C',
        '2022-05-16 16:28:20', '2022-05-17 00:33:20',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI1MzRmNDc2Yy00OGIyLTQ4YjAtOTk0ZS05ODhmNzRiMTZkNzIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxODUwMCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjU3MDAsImlhdCI6MTY1MjcxODUwMCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.cz4IZBf9r65ppklFw-Qv55RurSsjEPqyaKT-yRa1o1D_tn0HeT90pDw_NS7EByi4DdRCVXEudT3F30DrWCAjogyyKdBAVQ6y73tCdRihOSZmCf-pq7izF061CiouWRwPUeoVa1zKuVe_XphTIeZVQttWyztYZWacQKxqbB10aZuj7B8A4df6wcjboyCyx31nlmws2owkBkZ0BEGVksA-HWQ1xVCzfSu3786a4C58i6Z1xUpMBf-D1cn8PLdXdRw1hBK9JoPIeouM291XOIbKjvlPFiieHhGGiWrbtpWn2zBjN8KYxlIdh9XtFbT3ilx9tkocUNMlFlFTrzHrHrCrnA',
        '2022-05-17 00:28:20', '2022-05-17 02:28:20',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652718500.431000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652725700.431000000],\"iat\":[\"java.time.Instant\",1652718500.431000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'byQa6MgofshLu1i8Hu7ZqSSOsXoF6IxU9zLo8UeUwJFwb4UZoq5B3AL7clzfhXgaQOsAz0ZuAM9jxqcpaQ1vSBRz6z-Cc9Mp_ShQVnq1WkScH2b1L_zB0GL8UC3mfOPw',
        '2022-05-17 00:28:20', '2022-05-24 00:28:20',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('c4fcac65-a9b1-43f1-8ae1-212acc824b28', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.LinkedHashSet\",[\"user.userInfo\"]],\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null}}',
        NULL, NULL, '2022-05-17 07:46:29', NULL, NULL,
        _binary 'eyJraWQiOiIyMWNjY2ExOC02NzE1LTQ1ZGYtODg0Mi1jOWFkMWI1OTk3ZGYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjgwMjM4OSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI4MDk1ODksImlhdCI6MTY1MjgwMjM4OSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.IKFCgB3I6YLQSXJl2_iwJ7Ng2XQ_Lejyyi_4eBeRK2I4LRvoO5AQmpZuHYbIOrVeooL2uCwIZ0IJFQuMhPb7LJ0pzPIiEobWgXBBT3XzvnGpCiLXfgQG0iNw_64MFGJbpG6-1xcQ75z4TwWcyksKzqyYuSL6xD1E5hslS81nguMtFuV34BrGYBbWQZq6A1S35iT5Okvrf3uSSbygirx4I1KhdCclyhaU3RXSs2egLnVd7ustf4fNHktHf9DkBb3pKYpjbUWj6PUdkcfe0Y81JTK5ca4D0bYtA2fftN4uR8zz7ySnXwhSEGlUhaonw1a-ZrtABLgCwc1x10Qt-Hf_nA',
        '2022-05-17 23:46:29', '2022-05-18 01:46:29',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652802389.433000000],\"scope\":[\"java.util.LinkedHashSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652809589.433000000],\"iat\":[\"java.time.Instant\",1652802389.433000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'KRmnFt7HYr5IUIjHN4w29XI8yWRIP_rUKFiPH6sWAK7_h1OF6Eby5yDxG9ZREZP9Rt1rW_lUfxQfoJ5VOiCa7pEoX8Vl0o6zAS00VjuXw4QhjnU3a6pWD52Wlto7riKr',
        '2022-05-17 23:43:26', '2022-05-24 23:43:26',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('c5041ed4-6ef5-4b37-9dad-d9a6973c9863', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:54:28', NULL, NULL,
        _binary 'eyJraWQiOiJjNjNjY2E3Mi0wM2Q1LTQ4ZDEtYTIwMi02MjNjMWQ4ZGZmMjQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTQ2ODY4LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTQwNjgsImlhdCI6MTY1Mjk0Njg2OH0.WQrn3f7kwOPv4xJJW1zxDLhbnydMC_wQMN1VPMs5LQ9I_MIqQzZMWGrXgrb8bwZnCTWYPa_QRPGN1E4SLc76akTlInJMk_DXLeMJ0STKEi50DOMU0J74fqNSwlCsK79SiRl70zmBOVVZ8XFHznXZYskaOiankBzCwTrfoWCUaYcQ9el1gcvPuRr5pnelGZUEBTN9HgDjeoqHMYBBjYWijAP7sKFOHaun_pt3fuUT_dbLwqLtwG_wakPOGFzgU_cX094JJGZ62_FZF1E-FoRl0B4OirbsyzYSclcI8YARBC2AELkkEf9NJzy9cVEmHa67HXB5acYyBNXJkKhZh4fKNg',
        '2022-05-19 15:54:28', '2022-05-19 17:54:28',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652946868.482000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652954068.482000000],\"iat\":[\"java.time.Instant\",1652946868.482000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('c5440d52-2597-4c7a-b307-9613815b4f40', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"WiaGqWSa1mrEvvSVrNHoOIgkJBkbwzhoTx4S-c7g3aU=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=WiaGqWSa1mrEvvSVrNHoOIgkJBkbwzhoTx4S-c7g3aU%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"4B4A270FB723C1ABE61789D395462EDB\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'dMG9bUfY2XlvwAEzZYt8mL9flNLBGvJ_l29mB7PKamzl8Ozt2xEniM2xcK7wQHbe3jTZVi4IRclQGEu6hx0sTkS0Ay2mralJiaX9XQHJRlMEzt71bqF1btEYNMC357M1',
        '2022-04-04 09:40:29', '2022-04-04 17:45:29',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJiM2Q4NmY1Zi00NjM0LTQ5NGYtYjE5Zi0wOWRjZjYxMDdlODkiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0OTA2NTIyOSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0OTA3MjQyOSwiaWF0IjoxNjQ5MDY1MjI5LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.W-hUn5AZHghnDqHxPPzxF98kg5zSdQu2qJGvODm8IFz2MLyu4yh265Hxr0S6xieiqHjxJEAoZTRvCRYjkJK9WqWRiasF1Fq4Dk7ie1mNXjqP2iKFX8SbvWyJavB0W4benS1qpX-_NA6w8xIDKPEMicw17dOpikEcsRhhcf7FTKIHsZg_Ozj9pKQiCnKaO-N4f3S29sibJBEWKaeGSTAueU8PSS5ds7EXp1np0ie0qEPiK6RAPB4ku02f_X3F3rQFRi7ClSPypD0WR7yI7XZoIUoaV75o20ZmHu2xKJ9skUzYWYYM-go6hdScR9zkYepuQUb2XIN5eKMBJWKmcrxmQg',
        '2022-04-04 17:40:29', '2022-04-04 19:40:29',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1649065229.381000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1649072429.381000000],\"iat\":[\"java.time.Instant\",1649065229.381000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'btC3hh8immVRtCoKMq_yR96JhS9632Z55NjwFD3bkiOwnFKugRmA3JW7q5u_2WdvuxzfYqcNGcDqkL_Zr88WrBOcp4RcvUBY7ovwPVlUGIp7Tkkl3VVDrLB1vTxCSVie',
        '2022-04-04 17:40:29', '2022-04-11 17:40:29',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('c78c51d9-762c-4c13-b67d-041322b0f292', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"E05Snh4CzdrdPyLaMgaUX_OdSkDekAlPdVJNCQHSEXQ=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=E05Snh4CzdrdPyLaMgaUX_OdSkDekAlPdVJNCQHSEXQ%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"EB6E7309A96D7D71888C4F6972B221BE\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'u_YDnyw0ICHivSLQ2nj3RAMxSlKuEzDMuRYwZmWjKllEaF3Mq4mIxKIoYhQBm5-CtcXiTi4-NlH1OQYDG9JACoMDTLWW3__90lq0unf85Ps1Mz1OczNeaAmodK-oJDfK',
        '2022-05-16 16:26:08', '2022-05-17 00:31:08',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI1MzRmNDc2Yy00OGIyLTQ4YjAtOTk0ZS05ODhmNzRiMTZkNzIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxODM2OCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjU1NjgsImlhdCI6MTY1MjcxODM2OCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.f5E96Tbn-18mXyRxnCAamVJJcV9NWzIr1wbXEt1WQu2QQ5Pdhc_Aja7hj_-yZO05oFggXggG6QlCLcUAj3B9NWAQ-XcDBD4zjFhOxtKJK4yiTZR3YE05DbvVrGMHBhF2j3dyqknrXmiS0Hp47hX1hgAq85y74D5baKJQPhz5Qs31bjVTi0pXvxqFIusyzWlVnJBKEmQTCbq6inTOAnTHVrKBlzyQLlkFPwqi2UDT5RdFr2HrsXPghuP4XHFuS3OBgJN5NYN6BaFsmP_8pxVKVlG9ZJfPbInU5-UFdNzOeLV1wQ4d-aZX27q0bByl7m1zI-lmlDI_lsJ5AAW7AU3_Sg',
        '2022-05-17 00:26:08', '2022-05-17 02:26:08',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652718368.272000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652725568.272000000],\"iat\":[\"java.time.Instant\",1652718368.272000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'XXq7qZqSHEYWn4zfrmO8d33VQsDCBNXT2efdDv8dLJIQ8ClZH939nfhCN4gtTMnbHpV7UBcV-azRBHqvRwNIypMRaltyBzraMcSxGxeSX67EnZudpL-7tHjTi8dzQHg5',
        '2022-05-17 00:26:08', '2022-05-24 00:26:08',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('c8b47e4a-4403-4c0c-ab93-21c3a9af5c36', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 09:26:55', NULL, NULL,
        _binary 'eyJraWQiOiI3NDdkY2NhOC0xMzdmLTQwMWQtOWY3YS1kNTM4NTM2OTM1OTQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyOTUyNDE1LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI5NTk2MTUsImlhdCI6MTY1Mjk1MjQxNSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.QPC2AHP5IU1KRpmlC45-6JRpENhnlzz9aGQeys2rMwGkAjrrpMEMuJ8ZFL32a9-HBI4aDexFtLJzIwjSiFitKd-gx3RXyPRPnLOVA6zvs2cb7rHkyNUwi6kT6jPvhQfUk5M2DVk-y7x4LPjeWThs6C2RZV2IXqSY0sVoZGLqF0AoG6VQDl8iUwgybCtsVANuLqeUDW6EwF5xSIS6K7x3Rs5Gnpy5Goei_CQ5AMgibSBJJrtpzyKwvy424UkZtHXKm2PH9o_YKrbqM-mK3Z4e0p52ibmn7vsFh3E7WRYlddjJBLJHhrdzctMg_Pl8C32PAG4hSRBCiDOtuwKcZrve7Q',
        '2022-05-19 17:26:55', '2022-05-19 19:26:55',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652952415.230000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652959615.230000000],\"iat\":[\"java.time.Instant\",1652952415.230000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'h_zNxx_ZchW5zwffxRv7Y11BrxZnwGV9zraal23Ma4XIVQ5AbMbAGnv_WjOWLVdTm41P1_6pXyQLixHVhJGfU8EaGNIwQLm5uWHJ0mdfDp8ajsi2aM5B2bom6ol7Rsrk',
        '2022-05-19 17:26:55', '2022-05-26 17:26:55',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('c952aba0-7f3a-4526-8661-c0ad8e7eb1ca', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"COSKYGoTF1s6ru8k7vAmqhFfB3e9-pQn8BZbxJgJkds=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=COSKYGoTF1s6ru8k7vAmqhFfB3e9-pQn8BZbxJgJkds%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B875A73BB9F1D6085F93AD38F1FBF1FA\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'aMvGuO08NLA1QiscOz2mLyLPAVsxj1e4AKRN9VyZ6ztA_7qnN5FOV4CkP4pJ_0Al9t5Ug5tgX_GnBQamUoCOy5l7ClUKFcyPQeTiHoMeuD-1CFa1csesoO6XzRxgFVHq',
        '2022-05-16 16:37:26', '2022-05-17 00:42:26',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5OTJmZTE3Yy0zMjZiLTQ2ODItOGNiMy03YmNiNzI5YzdmNjMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxOTA0Niwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjYyNDYsImlhdCI6MTY1MjcxOTA0NiwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.vMd9gj6Rvt2t1wKiSKl74AgQGQ1sW0aK7sQH_1xaWaGqv6YNtjscynq0hulNbeQ2xvqbd2PpizJoiGYMGBJWj0twRngOQlLm00ykSeXwL84j-kpSLJ55P2xNiQFioex01UzBhu3_ir4e6Ffweo3PNketUGw8iYRkwiY-jbWn8u3jcpSo0LdEZZKPfyvYAZSwDgaCXrj8gAhwV1i1igYmEvlT-ac8VBJCFLGvvV3-7I52uFrzgfqQ0KhC1H_B7RDRm03xYGIwPPxhkOzFB1l0OQrv8px9nW9VYCfNbZcfR8GORLut2ozGHyUXtwlHVlqSMLjNsr4XWB7Gsrycb4d4ZA',
        '2022-05-17 00:37:27', '2022-05-17 02:37:27',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652719046.533000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652726246.533000000],\"iat\":[\"java.time.Instant\",1652719046.533000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'jnJ-aBfBmbIjcEdJOaU6rJiy-UDaBHFtHVsbEk-1FWFzhj-Y3K6rVwWlc1Y6mfdm3sZdM1GHVUkaAa_DgRHIGsh0tqav4L1bc-QWRL6_EO_vucFJXD77jcoGnlzEUK5_',
        '2022-05-17 00:37:27', '2022-05-24 00:37:27',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('cb2746d9-3b99-4367-9e39-399eb3c1f515', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"ntISspMRIHCo1VqLhxQeYbz9F_x9sP7sgcI13VhEy_0=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=ntISspMRIHCo1VqLhxQeYbz9F_x9sP7sgcI13VhEy_0%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.32.0\",\"sessionId\":\"CBB4364DE6F9185752D5957FCFA4B706\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'qyLWG-40IsqF1ArdG2HsE7tRZfmPIaZvLSC7M2i6DQl2Wz5Gvv9EBs8lgZMhS6N81drMMqe6Cjzi53wcJHqDTegNZnzoayCQXkx_2iUlzW5yAxcK9MLP9Zv8yTbRXLGy',
        '2022-05-16 16:57:58', '2022-05-17 01:02:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzNTNhZTYwZi03NjE4LTQzMzEtODk3OC1kN2U1ZGI2YjBhMzYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcyMDI3OCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3Mjc0NzgsImlhdCI6MTY1MjcyMDI3OCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.JhRDpLS_UBg5awESmBGs6SZ0-HsH4tAutXEHpUetXSeCV0nDn9fpeZ6G_EdX2n3a6dHHs5VZ7fnV5FW5Q7LbtUQLV9rodukvAMKCkGDzxienPOZCAmaeqHkCep1yLRkZpuobQhjQ7UJ-TcNskOQariHBhxYsq6b748QzIqiD-161rg1GXoVXE_yIVJtjCR61ZY7wBEdQOdcxo1SJn9D0Z09t0zxssePEDBAKmiLYLtPpkux31EP2VQMH0Cbbj-njJYdQ4wfMDDLGDtm0ixf_HlBfP-tr8ttsOF5_LruMsVTzyQEQ-g5Rd6cxeKINbYu2eJZpnibLvVx3iM6hT2Nt7Q',
        '2022-05-17 00:57:58', '2022-05-17 02:57:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652720278.484000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652727478.484000000],\"iat\":[\"java.time.Instant\",1652720278.484000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'qpbqGIxZtF_U-tMW_U9aCE-5gbpcKlCTgyzIN1a9w0ekCmY3LlSVtvB1I-0uuXEmUfz47N72ErZQGuRhU831ePMm7v10OGheoowA1cykWrcY81lfJeikIHi5YBZb6IE0',
        '2022-05-17 00:57:58', '2022-05-24 00:57:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('ccbcf002-c5f7-41d7-9639-0173eece9967', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"gsgKW8hRZykoD6etPxMVdrWv6HqnxWoF6h2OeeRbBZo=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=gsgKW8hRZykoD6etPxMVdrWv6HqnxWoF6h2OeeRbBZo%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.128.0\",\"sessionId\":\"A71EA77B9C796704501EA14D03093E89\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'xVAWWYzF3vmG7nzsAWZ6kNZXmrE3D3IoEHC5nj1CqiSXEEq9mNk60ENtWm1Zm2LmCGN3h1YAptCm7ysVLBoyVZFUhGPweOQOXx_coEjeegeYEXFu_eKQ1188ZC9hoZoW',
        '2022-05-17 03:09:11', '2022-05-17 11:14:11',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI2NzU2ZmQzYS1kYTdhLTQwMzEtYTE1Yi0yNTVjNjdhODViYmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyNzU2OTUxLCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwidXNlck5pY2tOYW1lIjoi5LqR6YC4IiwiZXhwIjoxNjUyNzY0MTUxLCJpYXQiOjE2NTI3NTY5NTEsInVzZXJJZCI6MSwiYXV0aG9yaXRpZXMiOlsiXC9zeXN0ZW0iXX0.DBhVCeixKSelKPrKAt-5VemrFWRljFFnRNfV-pdu_6GQ6KQAPr0vvVVFrC-tF2Xu_putnjMJG0LeRyP7Jwf5jZuNd5H_HFHB0f3i_elDJvTRHQAiBS5fjWbe4anqsj1kQPkV0VGSplcl9W9-JTyfQXoi2OmdDlpkHSMtyT3oYGynXsmfPAvZz3JQpwjpXc1IlzhCYX8CZgJXrQx3IbiUNn61moCvu6gVIOUHe02cQa0hhh7eu-m3f2DAc1GO1e27w4IyxLQK5ocsGi6k5pMpYCzNARFgeRv8McNNkQtWnK9rT3CZdqRH8iaU-qQRL-nBwusDLuVkM0DEwDi_8CeytA',
        '2022-05-17 11:09:11', '2022-05-17 13:09:11',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652756951.459000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652764151.459000000],\"iat\":[\"java.time.Instant\",1652756951.459000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary '3BbKOPxKBhZfvREgaembxFvxnuIwK79XjwDe2gWNWghxquplx01LYhVeZMOMI0HGa-PYn3NH_Y1JplW9TF-1Q4l5x6nE-3jjc-XHtIdScG7-oe59VQow8US3OjwLrZIv',
        '2022-05-17 11:09:11', '2022-05-24 11:09:11',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('ceb298b2-3043-4c3a-87b8-1d62e8865b81', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"Ksvxp4Ta3ki60OGmulBysDL-Djk_uB_8Ste0I206eGU=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=Ksvxp4Ta3ki60OGmulBysDL-Djk_uB_8Ste0I206eGU%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"D0637C26B44D1641D816C4AC56E480D3\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '0c_Nt4AkjG7cD4h1CmPm3mji2cWyMUZsutuVqsyjPvRE8zCSYbS7dmYyLR6NpERANqmPLuK5HGhE-Nig6iXhAXI1YuGR4dlxUtnnRlB_uQllAqNt49qyJvyY-uuPXEiy',
        '2022-05-23 18:25:28', '2022-05-24 02:30:28',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJkYjg4MDhlYy0zMWFhLTRiYjEtYjllMi0yNDkyYjFmZTllZmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzMzMDMyOCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzMzNzUyOCwiaWF0IjoxNjUzMzMwMzI4LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.bRphZlQPJHd6eSQg08KGS0vleJdQizdA3s4gYTPHfT4ASAl5Ob1jwOOI3s7YE7KSEGbmdIHGOdwSDuCYHrH402XzHTiGcV6qups7Cf2e4Qh3_TiCeA2mw7RVhcXDxnPB_UzUkDlgAJkKieiWfk8Wpd7jf8sh_WqQCcsbBsknJqgWLmpHvLVOeVuW8pyPN-14hfQN97y5YW06VCNfB2yAc4OW2lIXg2QTZZhyh0MVFOcQk9zYjwCKA6b845y0LeFDSyjt918IwbYQPSch3k3GMUh3R6eB2octFBGh3YmlCyZjt3OKuCX9BROIsozIub5jP-KFAVy1SJ2BBrDXZvqm5Q',
        '2022-05-24 02:25:29', '2022-05-24 04:25:29',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653330328.550000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653337528.550000000],\"iat\":[\"java.time.Instant\",1653330328.550000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'HQoxj_ACZPGoXi6b0zBWAjglqQc17v6k-RbQVtyBPkgyQfWErLnfBp4n_DD5WKwoLf2Wo43T4Yje90jWDYXXtngqgDABZAHeMwI8nGFY0UZHXY3WlASDuoLW2BKOjJmT',
        '2022-05-24 02:25:29', '2022-05-31 02:25:29',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('cedabde9-6037-400b-af9d-31b8d2fbff09', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiIwYTEzMzIyMS00ODNmLTQ4ZTAtYTA0Yi00ZjdkNWU3M2JlZDIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzNDkxNjAxLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTM0OTg4MDEsImlhdCI6MTY1MzQ5MTYwMX0.KenDOCYFNyPg9WHK_1j2PVq0UFypc1_BZD4qrVpeS-fw1uDjTpcOW59sNqREd3wnp3I-Vxl237LFjrsIDlNJMAuXE-8zafZ4YbTFUSg-9VLayChhawu__Y3E52WXZSCvbZ0jcd_9xwnBO7Fe93L-5-YGf0qo_6R7JSeXovmCFeoMpRXDzN7J_124cV5zcS1d1MZt6OmcRFeAd1hBk9YeTsEGFHMCzNYMk69fJAhp7siYp5WMpFG0FSusWjiv8VnUwlyOayYHQMNCWldUeLc5Ekn9GLyimN03ou666Sae8h3lLIEarZAlS3w7mTkUiO_0JLzQNXidPgNue0sgYa9Qyw',
        '2022-05-25 23:13:22', '2022-05-26 01:13:22',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653491601.967000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653498801.967000000],\"iat\":[\"java.time.Instant\",1653491601.967000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('d18b75d2-8c1a-40e5-ad61-617407e5da7c', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiIwYTEzMzIyMS00ODNmLTQ4ZTAtYTA0Yi00ZjdkNWU3M2JlZDIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzNDc0ODQ4LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTM0ODIwNDgsImlhdCI6MTY1MzQ3NDg0OH0.SV1W6qSuEmvhawHacKqZjeT-0K7YTum_gXBEBJGNsab3XsFw5vQJzlC4OihuzVosliIvHNI2kED7CGg2LfxHQjQVdKP5Jbc8Tfvn7ewFT93Uset91ljo4bgjTMQL16tVM8Fhk0tlKGORzS2xEwJNs7cBTf69ZSdN3OdBt-JEKYfka3hL27KjPxuJSrGn5S8UcI9wmqZ2gS8RuR1ckX0aw-f4aSBpTlrx514Boww6DRcjIQ1rVz56_7JzLmSYie4FXIxyXCVT8Ft73knZa1cqdyiUr_BPU8Kuckarhlj-YEDqjlXNugvNcSCVemO4SNg_4o5NzI5v6xHObfzqEgHmLg',
        '2022-05-25 18:34:08', '2022-05-25 20:34:08',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653474848.082000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653482048.082000000],\"iat\":[\"java.time.Instant\",1653474848.082000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('d286cb28-4ca7-44e0-8b89-a128f2d0e087', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"0wH-qZYG5SeWkkhR4wCyQHAPRjXN6c36b7gVKThaTeE=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=0wH-qZYG5SeWkkhR4wCyQHAPRjXN6c36b7gVKThaTeE%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"4C707FDD2F142080337EBB33F8DC9F56\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'y5zOqvZW369hjsD4r2Qn929Kk1voM3TQEUY5WOCBKKF2uUzWdDKTdHect0VBw-U3X-KBAK1LPSOPF1NA38UQf4uyvtQLy_aaD2OYUF75d6watWVquKDEGndlAdQUIEFK',
        '2022-03-26 08:37:52', '2022-03-26 16:42:52',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIyZGYzYjFmZi1kMGRjLTQ1MzQtYjc2OC1kOWQ2YjBmMzE1NjMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODI4Mzg3Miwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODI5MTA3MiwiaWF0IjoxNjQ4MjgzODcyLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.qh3HxHdVkQoat0CJzIBKKyzC6akVgBVkKm7DKAoHhulYhEpFshDu5uaFKDQG8P736KjnVw2d3Xk7wzj7sUyVjZmcKUFpcFFLkXZ8IV2j-vQNepl7bSU6_qcPKn_w2Jy14-c2VxZcqtemto5KNBJwy0lXJ-q3yR064icVkpJgtmFSWJzj0EQ2sYBHERc5QO6v_SCSdPtDlxKbgowAtXjo0M8MnzdbeA0kpurIszeGKHEqMRqfjaMIz5ZXz2gqhQ9qyCJ3jD9Fy9Nf6Q1zEJ8YYABVvjmNEj1W8Lq7PTncA_uITg0Zr5XmtHjeN_QRxD2EtuTliBxr77ABIfltfJO-Kw',
        '2022-03-26 16:37:53', '2022-03-26 18:37:53',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648283872.969815300],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648291072.969815300],\"iat\":[\"java.time.Instant\",1648283872.969815300],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'eZFo7zXLgjbsAxQm9PRqnLXJNbrUVSg0lEXZ13A02Dt9U_4FSL271g9uQd9NUpha0PdMvPDj3Y9dFnsRm465PBrg0iddU8w6ln9necfrEdOA526FbSY0MDhR40CDwyDr',
        '2022-03-26 16:37:53', '2022-04-02 16:37:53',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('d2fbac6f-6d68-4589-be2c-fc39b50b460a', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:43:15', NULL, NULL,
        _binary 'eyJraWQiOiJlZTJkMWI3YS1hZmMwLTRkNWMtYTJmYi1jMDI2OGNjMjhjYWMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTQ2MTk1LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTMzOTUsImlhdCI6MTY1Mjk0NjE5NX0.dTntZRoSkCT5tkTitOEqzhGsG8K1zy4Da4zpQQ6q0GYervSs-lsU2e9BFuKKgxLEFTF-aoRjmXhgSVrbMs4Ti31pbeynN48EUhOSJpAVWXg6I2e2Fze-feZ9FdtMSCKGjWLMkhEfCQTErBcwJypaGnvyDafMQOuvB9kTYmZIXoh0FWjInuo9yemiSRpq_vcpeXvIWxB29gbgJOvqzAzTg-TuJdMkKOaOPsxsx_NcDDSwhmnhNaw3eQytzbUrcAfQhqy_D3DayHRFr-oFoBQ9EKWjepbWBNBsW8Y5AgxDpiCyx-U0dCnRz-nIklF77Rc9HmWXUdZqgIRlNaAnODTLUQ',
        '2022-05-19 15:43:15', '2022-05-19 17:43:15',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652946195.064000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652953395.064000000],\"iat\":[\"java.time.Instant\",1652946195.064000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('d4056151-6d85-4a73-8a1f-654027aefed8', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'vains-Sofia',
        'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken\",\"principal\":{\"@class\":\"org.springframework.security.oauth2.core.user.DefaultOAuth2User\",\"authorities\":[\"java.util.Collections$UnmodifiableSet\",[{\"@class\":\"org.springframework.security.oauth2.core.user.OAuth2UserAuthority\",\"authority\":\"ROLE_USER\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"login\":\"vains-Sofia\",\"id\":52526354,\"node_id\":\"MDQ6VXNlcjUyNTI2MzU0\",\"avatar_url\":\"https://avatars.githubusercontent.com/u/52526354?v=4\",\"gravatar_id\":\"\",\"url\":\"https://api.github.com/users/vains-Sofia\",\"html_url\":\"https://github.com/vains-Sofia\",\"followers_url\":\"https://api.github.com/users/vains-Sofia/followers\",\"following_url\":\"https://api.github.com/users/vains-Sofia/following{/other_user}\",\"gists_url\":\"https://api.github.com/users/vains-Sofia/gists{/gist_id}\",\"starred_url\":\"https://api.github.com/users/vains-Sofia/starred{/owner}{/repo}\",\"subscriptions_url\":\"https://api.github.com/users/vains-Sofia/subscriptions\",\"organizations_url\":\"https://api.github.com/users/vains-Sofia/orgs\",\"repos_url\":\"https://api.github.com/users/vains-Sofia/repos\",\"events_url\":\"https://api.github.com/users/vains-Sofia/events{/privacy}\",\"received_events_url\":\"https://api.github.com/users/vains-Sofia/received_events\",\"type\":\"User\",\"site_admin\":false,\"name\":null,\"company\":null,\"blog\":\"\",\"location\":null,\"email\":null,\"hireable\":null,\"bio\":null,\"twitter_username\":null,\"public_repos\":5,\"public_gists\":0,\"followers\":1,\"following\":0,\"created_at\":\"2019-07-04T07:55:46Z\",\"updated_at\":\"2022-03-12T08:02:01Z\",\"private_gists\":0,\"total_private_repos\":0,\"owned_private_repos\":0,\"disk_usage\":0,\"collaborators\":0,\"two_factor_authentication\":false,\"plan\":{\"@class\":\"java.util.LinkedHashMap\",\"name\":\"free\",\"space\":976562499,\"collaborators\":0,\"private_repos\":10000}}},{\"@class\":\"org.springframework.security.core.authority.SimpleGrantedAuthority\",\"authority\":\"SCOPE_read:user,user:email\"}]],\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"login\":\"vains-Sofia\",\"id\":52526354,\"node_id\":\"MDQ6VXNlcjUyNTI2MzU0\",\"avatar_url\":\"https://avatars.githubusercontent.com/u/52526354?v=4\",\"gravatar_id\":\"\",\"url\":\"https://api.github.com/users/vains-Sofia\",\"html_url\":\"https://github.com/vains-Sofia\",\"followers_url\":\"https://api.github.com/users/vains-Sofia/followers\",\"following_url\":\"https://api.github.com/users/vains-Sofia/following{/other_user}\",\"gists_url\":\"https://api.github.com/users/vains-Sofia/gists{/gist_id}\",\"starred_url\":\"https://api.github.com/users/vains-Sofia/starred{/owner}{/repo}\",\"subscriptions_url\":\"https://api.github.com/users/vains-Sofia/subscriptions\",\"organizations_url\":\"https://api.github.com/users/vains-Sofia/orgs\",\"repos_url\":\"https://api.github.com/users/vains-Sofia/repos\",\"events_url\":\"https://api.github.com/users/vains-Sofia/events{/privacy}\",\"received_events_url\":\"https://api.github.com/users/vains-Sofia/received_events\",\"type\":\"User\",\"site_admin\":false,\"name\":null,\"company\":null,\"blog\":\"\",\"location\":null,\"email\":null,\"hireable\":null,\"bio\":null,\"twitter_username\":null,\"public_repos\":5,\"public_gists\":0,\"followers\":1,\"following\":0,\"created_at\":\"2019-07-04T07:55:46Z\",\"updated_at\":\"2022-03-12T08:02:01Z\",\"private_gists\":0,\"total_private_repos\":0,\"owned_private_repos\":0,\"disk_usage\":0,\"collaborators\":0,\"two_factor_authentication\":false,\"plan\":{\"@class\":\"java.util.LinkedHashMap\",\"name\":\"free\",\"space\":976562499,\"collaborators\":0,\"private_repos\":10000}},\"nameAttributeKey\":\"login\"},\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"org.springframework.security.oauth2.core.user.OAuth2UserAuthority\",\"authority\":\"ROLE_USER\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"login\":\"vains-Sofia\",\"id\":52526354,\"node_id\":\"MDQ6VXNlcjUyNTI2MzU0\",\"avatar_url\":\"https://avatars.githubusercontent.com/u/52526354?v=4\",\"gravatar_id\":\"\",\"url\":\"https://api.github.com/users/vains-Sofia\",\"html_url\":\"https://github.com/vains-Sofia\",\"followers_url\":\"https://api.github.com/users/vains-Sofia/followers\",\"following_url\":\"https://api.github.com/users/vains-Sofia/following{/other_user}\",\"gists_url\":\"https://api.github.com/users/vains-Sofia/gists{/gist_id}\",\"starred_url\":\"https://api.github.com/users/vains-Sofia/starred{/owner}{/repo}\",\"subscriptions_url\":\"https://api.github.com/users/vains-Sofia/subscriptions\",\"organizations_url\":\"https://api.github.com/users/vains-Sofia/orgs\",\"repos_url\":\"https://api.github.com/users/vains-Sofia/repos\",\"events_url\":\"https://api.github.com/users/vains-Sofia/events{/privacy}\",\"received_events_url\":\"https://api.github.com/users/vains-Sofia/received_events\",\"type\":\"User\",\"site_admin\":false,\"name\":null,\"company\":null,\"blog\":\"\",\"location\":null,\"email\":null,\"hireable\":null,\"bio\":null,\"twitter_username\":null,\"public_repos\":5,\"public_gists\":0,\"followers\":1,\"following\":0,\"created_at\":\"2019-07-04T07:55:46Z\",\"updated_at\":\"2022-03-12T08:02:01Z\",\"private_gists\":0,\"total_private_repos\":0,\"owned_private_repos\":0,\"disk_usage\":0,\"collaborators\":0,\"two_factor_authentication\":false,\"plan\":{\"@class\":\"java.util.LinkedHashMap\",\"name\":\"free\",\"space\":976562499,\"collaborators\":0,\"private_repos\":10000}}},{\"@class\":\"org.springframework.security.core.authority.SimpleGrantedAuthority\",\"authority\":\"SCOPE_read:user,user:email\"}]],\"authorizedClientRegistrationId\":\"github-idp\",\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"3E106CB74AC8B7CF78E5AB4E8A6FDBEA\"}},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"EuBlFg_QOpksujhwThRyTA3obSaRdQsYHbB-exrP8Ws=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=EuBlFg_QOpksujhwThRyTA3obSaRdQsYHbB-exrP8Ws%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"state\":\"psuokeCdsoqvjoLOQ4C7i53KB91ElqGJXryheSjdBBo=\"}',
        'psuokeCdsoqvjoLOQ4C7i53KB91ElqGJXryheSjdBBo=', NULL, '2022-04-17 03:14:03', NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('d41ff188-7afb-4474-8b07-2db22fde6e0b', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:55:38', NULL, NULL,
        _binary 'eyJraWQiOiJjNjNjY2E3Mi0wM2Q1LTQ4ZDEtYTIwMi02MjNjMWQ4ZGZmMjQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTQ2OTM4LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTQxMzgsImlhdCI6MTY1Mjk0NjkzOH0.uLaiLywS9tdueiDv95FQNaAfFFL9YCqeUAmtrPuyV7r2IImId18z8YhPTKfDphrmEk3_7Hjr3GFVK54i9VGvhZaBOJi27407JqoqYn5_k8JLTsl_b0zfTICJqxW5mL_yfylCaiOEUIGFU7aXhzD3s_N9_-zQ8RuNDbP19E6HaUodJQjVe9u2y24sdfcvOhvDWxBvFyZB2gfHEFDla3TaVgpQ__5uyQQwMPpUPgBYfEJst5XfuRGN0gvkj2JPk17OVVvm91DIQXEN_GJdXkme28UfEpMO-Fe05KcxcsBn1MVHvjjvtVnCfD31f1w9qhNvwPEoXkfykTiJZHT8hU9Q5A',
        '2022-05-19 15:55:39', '2022-05-19 17:55:39',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652946938.759000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652954138.759000000],\"iat\":[\"java.time.Instant\",1652946938.759000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('d470c6ef-7c3e-4cb9-a74d-22bd7ccaace2', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, NULL, NULL, NULL,
        _binary 'eyJraWQiOiIwYTEzMzIyMS00ODNmLTQ4ZTAtYTA0Yi00ZjdkNWU3M2JlZDIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzNDcxMjM4LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJleHAiOjE2NTM0Nzg0MzgsImlhdCI6MTY1MzQ3MTIzOH0.caVLcPZ23Z4CH-_Z1XwQ6JxkgeZYcJs28JrhfkD7LUlmsdLiBCFZatfEotaEpKLSfU5479O4dFFccV8HwvnLBQuo1GSYFghO2UL0uzRoX46DSI5GUb9q5Sudoc5CrR9NrWddKPNZdZj6X-yGXyTR6rR0kY5izUZ6PLQ2VyP_j9CEVc2ISJ4hENb-B1Qt493Bgzhim1y1ySwpwAsD3vVLcLXaKzshyRBMOYD0GcerF3cEiw081JnhhnW6au2uEnbv6D_-j58Dvh75uqpq6ecVsMALs-C0zGjjlS8fwT7Jgb0XQrVtZ9OQ6UpNrD1lWpun_tSWkncQVhgkmhazuI24XA',
        '2022-05-25 17:33:58', '2022-05-25 19:33:58',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653471238.414000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1653478438.414000000],\"iat\":[\"java.time.Instant\",1653471238.414000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('d6274f89-575f-485b-9844-b496d157869a', '3c431544-6bd5-4c2e-ab4c-76b159d73996', 'gateway', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 06:34:37', NULL, NULL,
        _binary 'eyJraWQiOiI4YmRjYjYwNi1hMjI4LTRhYzktYmVjMC0xMjdkNDVjNTM2OGYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJnYXRld2F5IiwiYXVkIjoiZ2F0ZXdheSIsIm5iZiI6MTY1Mjk0MjA3Nywic2NvcGUiOlsidXNlci5waG90b3MiLCJhbGwiLCJ1c2VyLnVzZXJJbmZvIl0sImlzcyI6Imh0dHA6XC9cLzEyNy4wLjAuMTo1MDAwIiwiZXhwIjoxNjUyOTQ5Mjc3LCJpYXQiOjE2NTI5NDIwNzd9.Jo-GVY1xdQciJas_vIlFy9wgtvCiTWYgiUJ0I-AAsZv_oqNkDaOMCZF7gkb_Xz2Lvsc43YU0K3VGufKCQ19VIZX0HtHB3Edbj_Ku_e54-JRE0L7GwMhyxGvthZS4-Om73Hb8xprqEKQrVW_v-9qi6UxRLHyTRbMFRxHAzd46VapVuo6YfiSkbTfAykaqusWpQ6-6CQYfuLPxp0dmpOELLg2vtccIidqO9gF9bJZXHoWddFqX0cndZdn_4ghJAdWL4hWb2iguJzq53HFhaH9dlQPCGLKNiuFCDUPl8ztutys9bNZsZ6kQEmX9Rmj_3BtPQE633Gtq14bEWk0aLWYlZA',
        '2022-05-19 14:34:37', '2022-05-19 16:34:37',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"gateway\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652942077.138000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652949277.138000000],\"iat\":[\"java.time.Instant\",1652942077.138000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('d930005f-8111-486f-812a-52ed65aa08e5', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"SF49gtlVpkp3mFCr2aORqWHGswjQAWZIv10xffjwPIg=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=SF49gtlVpkp3mFCr2aORqWHGswjQAWZIv10xffjwPIg%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"A2B8530452B95F60BDD393D2AED3C485\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'wNdhSpGGSJ4HUNtdPtri_kc66sfdgcdRnU0zF-3By5TZbsCeLfG6GAZtH3CfOIbcV0KCfuCyDKH-9e1xDS4PeVV-nfz6JNf1s05VEX5gcVuiMHB-akVfNFO23J0edb5-',
        '2022-05-17 08:13:33', '2022-05-17 16:18:33',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI1ZDMyZmQ3Yi03Y2I2LTRiMGYtYWIzZC02OTdiODM4YzQ1NDMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1Mjc3NTIxMywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3ODI0MTMsImlhdCI6MTY1Mjc3NTIxMywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.XkZ8SKd7rTZngI1IwHdPA9tH025BmfZ7KI1VmKA1-RBkJJ98VU6IJXxtJPzAu8KVFVW1pNdYPSvqRtSfhGEGyUk1tHWBX1BOAgQGSZSzOezDcmGoF-4htRA5MV4cnYozW5Gp67H9QcgK8EeMK7PavAT4UhC7QLPwBba_s5ZUUP2ompnjSFsXBdNW2c1-g4SVtRFrz6Mq5n6naRuXk7tUGaWfgrfwucWzRal_M-uk_CwE1YT4x1Get9rGSx17NI4Q4QhTaVm3KI--1h8XjPjJI6Zt8B1bv4h5F1mQL_SY6wNAPGehH73RtuYS6pm8TmhIrfJ1zhnM2dFVfWEWlM_Fqg',
        '2022-05-17 16:13:33', '2022-05-17 18:13:33',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652775213.298000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652782413.298000000],\"iat\":[\"java.time.Instant\",1652775213.298000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'm02A-8hgrEbBARjIkNSk_KFhbsSUqDU0AjpwU7sp6yke51kVzVNtb891msQoctuWm28UX7Td83BDehyoKXrxY0itTA9kYgxI5EKf0NnSC98adjUkkN5Re7l9HZLA-GSR',
        '2022-05-17 16:13:34', '2022-05-24 16:13:34',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('d9dec827-e5a6-4ecd-94be-b713fe9549ff', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"yVp0tB4vSiskaLDqlPgCw7s-8YSVospohiNRZlSt0hI=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=yVp0tB4vSiskaLDqlPgCw7s-8YSVospohiNRZlSt0hI%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"31E65042B86BA670B822D5A171CC991B\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'xzz0FX_gKLWYw3Gr1WMRfEEV7D1ogvMuToixz8fIoryZbbHitMZ35_buJFkayTzEkeKMZ27W3s0juNL-9L7N8WnznEZYhjmvuente-peoVghJUOBAeSqDT2K1uSRHsJR',
        '2022-05-08 10:45:06', '2022-05-08 18:50:06',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI4NDYzMWZjZC1mNjg1LTQ5ZGItYWRmZS0wOTdhYTMwMWNlYWMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjAwNjcxMSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY1MjAxMzkxMSwiaWF0IjoxNjUyMDA2NzExLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.QeDgTGT76vuGq_5uCt1Tnh_zla-PSh_xh-TrNNyFsE6VFy6F6qbBMLFLrbPvZKshMwoLMfRwJSNL4C2cPbPOSl85fvaUV-ABg8V4rCT0qqOi4GSuusjhwCEFBUbYWODZwYzjq8SGk6W8ZLRuvLDTaPWjfa8NB-qTW_JpJrVm0ixbQew6ZO9Jlqq6g6SKzmZdH9aawX-9kUE3TKy4leWJVzjur-09u_mcfHgsWgNKtNzaf-4G9lUItzRBQvcxJcOm_oMqo_xYnX75TW5yK49wXW6lUwU_-akU2A1Rqp0puDOzxRpp0svwYerIViYNJDo9nUgs4bvlnZ4Gc3pXUWKraA',
        '2022-05-08 18:45:12', '2022-05-08 20:45:12',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652006711.645749300],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1652013911.645749300],\"iat\":[\"java.time.Instant\",1652006711.645749300],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'lxh3q_usbSsTPMIvyZ7Yfnrf3exCdWdLbJb7E7pD0uPAV2A0wv1bantGBM2Z_Eu5NZiH49ii-92CV_FheptnxUSwsBpnBQBJLPGDKkJQTqzcRfUAWaSrAyQ0I2AZIAYo',
        '2022-05-08 18:45:12', '2022-05-15 18:45:12',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('da1e4271-136e-4715-8a41-e93f0031dce8', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"N0mQL65ETghWjGf-M4sCrwl-9QOeWQe8HQBPg13VYt0=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=N0mQL65ETghWjGf-M4sCrwl-9QOeWQe8HQBPg13VYt0%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"E7092A02E907F47A0DCF2F39BF0804FC\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'TI0Y2X0r6c5BgF7Je_RPc8DYTaGP18R86YoxQEtBrcgfcuBhOgcgI-ohjknPOWxSkS5fGE9KRO6CcDmBJcP6ExAurZcBIlQYu62cGcigSu3ILPZYWbcJnr0EDGe_7dXe',
        '2022-05-24 10:32:50', '2022-05-24 18:37:50',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzMmUzM2ZlOS1lNTI4LTQ2MTEtYWEyOC1mMGEzYTQ3MDAwZmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4ODM3MCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM5NTU3MCwiaWF0IjoxNjUzMzg4MzcwLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.HSev87Indhu95N-R9H57UfEhEDV8lOv2ftlcGj9_bPahOK6hDR6XSyGeoAX0xITTn_7EKfMW_TnW1h86yxZE6CvqVzNe6O-MwRwF0AjXkcaCMOwgiMfKn9_EFuxy8VLoQ28esMmmzgQToimH2-zEpiStK8RFenSxt8GXH4TP9ipaglHjAaFDUPBi8nIT_Ptuu00DXnZRmrdPgACnfCUgBDrIE8RYqnKvhR2WGKGszggrMN1j4ALltViUZOtrSsSHpNecA1dMk6m_anXevz8BkrgV4FCn0ecW1Ww76zWbum8NjJalgJt5CiU3unz4t83VlSi3dI6tt_9mmJ3vQzVfow',
        '2022-05-24 18:32:50', '2022-05-24 20:32:50',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653388370.295000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653395570.295000000],\"iat\":[\"java.time.Instant\",1653388370.295000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '2natvKkiAfGrifAJrkCKTn4dj8trhWuSjx9hZTL6trJC2ig9pCTdVbfcgx3VMbd3AfclKqlDDU-vwhQcJ_QpW7YmYcrmh9GJNWt8zswGU3hV8EPMEsbkhgRik5S0GEDx',
        '2022-05-24 18:32:50', '2022-05-31 18:32:50',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('dd3ce85b-6f39-449d-8cdf-ad4a6ebff71b', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"vngjv1zZacxA5wJZNlQ-Yfln5LFwP7C-g1xiX279Qxo=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=vngjv1zZacxA5wJZNlQ-Yfln5LFwP7C-g1xiX279Qxo%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"8C779C16DC0943B324FAD0D9E81F7663\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'GhAVg_Yg9Z38hdrz9n5uCHhoq6ycB2EVEpUmmXl-I5MbEmE707dUriR9El0TDYnruE5BWI3R8oyX5c7QPiaxglVFR_RcqZWj35FE90Bi4wzJb7YHTHiQn9gxlhf36u9p',
        '2022-04-04 08:27:41', '2022-04-04 16:32:41',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJiM2Q4NmY1Zi00NjM0LTQ5NGYtYjE5Zi0wOWRjZjYxMDdlODkiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0OTA2MDg2MSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0OTA2ODA2MSwiaWF0IjoxNjQ5MDYwODYxLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.jgmiIfLHDQGOy2HizcYy1rtfDEEPAdaUq-nIocIxT9qFU379p1Z2F5t9E9eDoB9i6JaH0OzLpORTSgfCx3mfK2P2GodMYPHqWhnmvubfFyOc6hgJiKbZHlhygOOdZ8cLPUQ69mOridB0uJ_ng43qQWnQEuyeeu3LJWky-Tak9nuLsMxiUOBJoANf8yyzf5c2Z65EzEVZkM0ZCal9rZ0YCCDOoW2cWw70eJA-grM7hdHYSPLPf-Lp6XTlSUSYz5_uDJ_hqR7fya6WvLthFyrWRSrqPV_22FozNnwZbX-0tn25aEdFxQa9X-GB0dMwFCFzzimWyjNVDMT29uYb69-urw',
        '2022-04-04 16:27:41', '2022-04-04 18:27:41',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1649060861.170000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1649068061.170000000],\"iat\":[\"java.time.Instant\",1649060861.170000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'YA1kYcclFonA9P5wav9uQ2gJ5h_SpK8M-hOQNaBpbbIEePTKkfKN_P2oLaW_nNl2rdy2jHJDMzurcBVOJQooLAtIwQjNesEKRgm-PP9rwNQfPknr8aV_LN73XgffFdEW',
        '2022-04-04 16:27:41', '2022-04-11 16:27:41',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('df87fa0f-eb45-4293-8552-630c8238f961', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"MTpUo0lnldhHgn63V_c9CCYfqZ0T1M0dpKk_4fH3rf4=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=MTpUo0lnldhHgn63V_c9CCYfqZ0T1M0dpKk_4fH3rf4%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.0.1\",\"sessionId\":\"A644E1A9A0497F8C74E12CCEAF54E2AE\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'EOagn1vRf8iHlztko7Q0i4RkDy7aTOxgYaIS04DWbmdSN6NRBZe6Q6YyvYoY_RbxmYe3H91m8iCgd2hwDgg7dyIk-gynFyRbA49Qz3spv8jdWekO56SH2N6km7VA6l_D',
        '2022-05-17 01:28:51', '2022-05-17 09:33:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI2NzU2ZmQzYS1kYTdhLTQwMzEtYTE1Yi0yNTVjNjdhODViYmMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyNzUwOTMxLCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwidXNlck5pY2tOYW1lIjoi5LqR6YC4IiwiZXhwIjoxNjUyNzU4MTMxLCJpYXQiOjE2NTI3NTA5MzEsInVzZXJJZCI6MSwiYXV0aG9yaXRpZXMiOlsiXC9zeXN0ZW0iXX0.T03YHVhXQSw1dmzIzK71keQMBFd4MFDUfscfcuDJ0JN7WQNavhAXWUt85jYqX7BBB8jwwTn_4VEqoXv8x04mcLBHQrXF6JAAPahAiyvkUVm-P-YNnBcR0JvHzMRPBKYI_VvriS7P6_GyJH9b-bbz-xmx7kMOgCyI-3-HIZVemgX7-amMHcJNivSSSUczpEiSCAgJcP9_n2sb2nBZEux5axqj708-5TlRiaGGhistMylrnKoJf5AbT5VkxoFuE9TPYVymZ6rNgiiCfmv33WpkAM3yZCXHSfCFMYtF71hzKvyT_6LkNMNShSfgC97t5TkNuRRJ3hJTIwjH4Bjnq9hFIw',
        '2022-05-17 09:28:51', '2022-05-17 11:28:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652750931.119000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652758131.119000000],\"iat\":[\"java.time.Instant\",1652750931.119000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary 'M2JGoU7Q3bFODDjts9unROhupS1x3wlwVwGjF8FWBNbyarxrm3pS1GxYSQT2m7-TfqB2cVTI9H-hktca1woAiWKdG590p5vdPHvmkvhEyLzsoTEgOCvBNXIAv5LOG8Dy',
        '2022-05-17 09:28:51', '2022-05-24 09:28:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('e060e2f2-2840-4a8e-9bf4-352e3b958a4f', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"gs3FWvWMTM8-VXkfswqawTDIABd8P6PApUeVJWjvWJ8=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=gs3FWvWMTM8-VXkfswqawTDIABd8P6PApUeVJWjvWJ8%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'qW4bYc2ZE0tYn-C8EmlCLHBbFblOfVx1VN5H-oPR40N9Ud4AVxejI2y2Nqe4GwtqmMU2lhTpZThzdbJ-KaNQ8qJOSlEQlNy5-jJ6AN698EtAZzvP9PiYKJetV2AMgfw0',
        '2022-05-10 16:08:28', '2022-05-11 00:13:28',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI4MGRkNjhiMi00NDUxLTQzMzctYWQ3Yi01NzM0NTkxNmU0ZjEiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjE5ODkwNywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJleHAiOjE2NTIyMDYxMDcsImlhdCI6MTY1MjE5ODkwNywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.OQaPoDGkkZ8xXbRj9fCENiUKleUTLrEoEIPw6hONSwKxv_ej0F_wRG-BTO2XLBIG-iHkFyRKVWLKcRYYMdoRef7M2MkdTV_QLRgZaQiGpJIbjlK7MujkGcYHs0-JwxYQzcuiA_SOXtFADmrbnHn1PkTbqBAEabL2uMyi-iqQMHhpmBW-yls5ajh2_GkSDmwQW932zFNstCRHVmqogvrWAtS32jG673mUROUBwkeLNohHCWXJQXKu0UbrhjbvfjUO5dGXN_zjkJGN8ElzSrOYbULj70E4mhdKx9avdmulc721xgStEo6xWpSbSl6Q3iTNcbU12cs1ZMRpPgCIvDal9g',
        '2022-05-11 00:08:28', '2022-05-11 02:08:28',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652198907.976000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652206107.976000000],\"iat\":[\"java.time.Instant\",1652198907.976000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '4vitRNUTfaK__-xayVYOPsmp32VibylebQnn3yDSmTDhTgAZ8xXTSaYVBKhPOht1JuH08FFSJwIzwR0pTuN4IL3hs2Fv0N8NNUrU4txvUKb53g1DLBhujddmTL7UarWO',
        '2022-05-11 00:08:28', '2022-05-18 00:08:28',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('e15f66d9-eeec-4103-81ff-77d86ceb50cf', '3c431544-6bd5-4c2e-ab4c-76b159d73997', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"swagger\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"V2VkIE1heSAyNSAyMDIyIDA5OjM2OjM1IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=swagger&scope=all&state=V2VkIE1heSAyNSAyMDIyIDA5OjM2OjM1IEdNVCswODAwICjkuK3lm73moIflh4bml7bpl7Qp&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"5B2C1F169ECD10F8FD27B554A7021886\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'CvWqo5WpFG2wLz7fpB9BqRilexQzZOuBFEnJV2wq0fzymInaUfpT8YDCsZ-MZ1lnjMbbypOMiGhkvzB0lbzjUV_RSssPekm9ZOSb2JbyQNV2CW5evS1Yi2f7B0z3qzvc',
        '2022-05-25 09:36:35', '2022-05-25 17:41:35',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIwYTEzMzIyMS00ODNmLTQ4ZTAtYTA0Yi00ZjdkNWU3M2JlZDIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJzd2FnZ2VyIiwibmJmIjoxNjUzNDcxMzk1LCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wva3dxcXI0OHJnby5jZGh0dHAuY24iLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTM0Nzg1OTUsImlhdCI6MTY1MzQ3MTM5NSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.lQTKiPg34PEjk_7u9tT9xQyAUoKUFNFl-vIVwZTvGU1lxVZRj6KLYbR_niytbSBsroLBsooQUSYE2irZ0QkX6oGaRufv_iN2XgUFb_Yml09QfvDzRxQ2jKMcnGUibE1TM1qpp3Q6bZKMiKe7zeSeAOUUfA_7cFQduW7H6WpjHbSzMkcNoeI2M5VJ-2Lni94dO35KLkOIBPEVyDzyZR-hxABnwbcNjOV9iEQJK3oK-j9Mcusy-c4_6zqN8op9jsjfylaYUqz8FnnXuB-SWA2hqLiAQjy59K2vTflj8UNaKyeRyB_k9FgeAAgd1g634cMJaBnpbVemnVI1Pli9J1xQrg',
        '2022-05-25 17:36:36', '2022-05-25 19:36:36',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"swagger\"]],\"nbf\":[\"java.time.Instant\",1653471395.778000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653478595.778000000],\"iat\":[\"java.time.Instant\",1653471395.778000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary 'OxOXvdML7nPAo-V84aWS_WVzKDCeWnVolGRRKqzfWRlUoGf1s25nLWFqJ9_PPkAOmmhOTlSuKk8XCVFwTdwS_IBug-TCqKdSI8e3lNlcvG38T8j3xsUWtU4ZBqWE7Y75',
        '2022-05-25 17:36:36', '2022-06-01 17:36:36',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('e17cfe40-9572-4b01-a0bc-796336f6af06', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"g_NvbAJdhPFxZBHGfXepvQ4-9tW9k1JKYChFfmEnWBI=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=g_NvbAJdhPFxZBHGfXepvQ4-9tW9k1JKYChFfmEnWBI%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"DF16A12395EEC522A61C193C843D2A4F\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":1,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '15DFgt85Z2AQIn3fytkhiXS1oFAnFlM6_pAuno3ipcM6pC5OSvZvOkwVgdWUF-FTqODEHHJKOneRXShoJcauJjTFJJ50nNOEy4tPtB7v_sHKtzd9CYcP6IZZ8Gnwq2Uq',
        '2022-03-25 16:12:51', '2022-03-26 00:17:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIxMjkzNTUzNS1iN2JiLTRmMmUtYjdjMy1iMzdhYzNhMWI5N2EiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODIyNDc3MCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODIzMTk3MCwiaWF0IjoxNjQ4MjI0NzcwLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.czK8hnlpqjHkUVuhndgrO3L4c_EkE_yRRF25OIAtJ_A9jNmuu5-TlFFYyHbt3KObKQREiqG7SKOLD-PHlp76QNilLPN62mdc6h9wHJ1VVUmsxwhgW6wfN_3BlgItfddcagYzGJHhn8qJjxV7VFxtRKvSc7YInX2lMXiEBAuW3phPmOksfGd1gzr6qDehNsbJQdLaFjbssCRzPVp2PRc1MzJ3wroRley8XLrb__6K1yuZZAGKYBQ0XnKkGxThYhAJHRCWgwngmgrhYqmDBLaqzwugk3DsitxTh8unQLfCz0dQaj1vdeaIQNZnmxRPOTUsIcjiLE62XPZDyGDSHotIrw',
        '2022-03-26 00:12:51', '2022-03-26 02:12:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648224770.844079700],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648231970.844079700],\"iat\":[\"java.time.Instant\",1648224770.844079700],\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '34_dLEWBjaiMXLG26dQEjnyTfxDfeBetbvNvcktCETDlYZi9bkrH-PWjbaya-spuufDLEuTg4h-xHz4XLJqXXJHM7-eM6woWU0iR4eooZdMB4D_0xzl_5MHz3d1VTRDy',
        '2022-03-26 00:12:51', '2022-04-02 00:12:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('e3b79e0d-3b9b-4e77-8f4c-cb5260b29063', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"yL7JrbegHvD8WeeNlgLwocaBdnZJIYhPUo46Huz_2u4=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=yL7JrbegHvD8WeeNlgLwocaBdnZJIYhPUo46Huz_2u4%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"B875A73BB9F1D6085F93AD38F1FBF1FA\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '7NmG_tU5jFdd6wlUNcyQMpRu03uO5nOzDBNxGjs-K6L_R2aZXPe2sQhzB-yCT9GZ3TSmgax4_6BraA6of86REbWP0adoNneCHImycD4axVs9PYCPQoLasKcyavJ0kA9p',
        '2022-05-16 16:37:30', '2022-05-17 00:42:30',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5OTJmZTE3Yy0zMjZiLTQ2ODItOGNiMy03YmNiNzI5YzdmNjMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxOTA1MCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjYyNTAsImlhdCI6MTY1MjcxOTA1MCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.sXCRYGTv4Jemb3L5AcErjEcGo-Ie90EtqIZSxwgQLNRbIIOAld4r1HIXi8HAk_FPneSHQ1wuCHemQZcQ0DBngy8JUKgcPTc7atkw-kTmW-G0-1xaMhudKe807c8OVUfOvJ7qtLMK22wv6ZE9iuhak2f9kf_4lzvVUSPZzITtqWstxsvf-3GcNNseW8p71j8PaOp2cL5isyaZvfkhXVJS4Gzt0LGwUZwYkg0hK5QV4aiFkEjS7fZR0hoHTrPWW7wDwvlO3tkKcwnzjeMgRsnlJB_9faWQZmIcB5MjE1_TVZsaVPDza2nl60jgveMTT8klRp-ozMuDAygTQielC_QAZg',
        '2022-05-17 00:37:30', '2022-05-17 02:37:30',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652719050.097000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652726250.097000000],\"iat\":[\"java.time.Instant\",1652719050.097000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'HD-K-pk03Zev1Izfx6sDnGOkA5UbZqQva6PprWkCdtp0FPYNzuckK61aOn5Rri3uTF71bxbNAFQ-TPZbaPshGLo7CjKp1-UeluVcthsHlOk-0jXq6Wc7qjUpsRDQVrWa',
        '2022-05-17 00:37:30', '2022-05-24 00:37:30',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('e53b3c7e-64b2-4866-bc0b-f3d3499b08e4', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"dpEc6kD4Y-0UVrbmmzThopoMdMNMHyL7G_kDOOPqMHI=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=dpEc6kD4Y-0UVrbmmzThopoMdMNMHyL7G_kDOOPqMHI%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"8F3D7356CCBABCACE8ADBBCF544E03D4\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'NmKsw8qWGvMO9G37nOCHrW8Ek8m9UPROU4ZniyvPbXRpGR-FBvvYtnVR2q8gOPvl_4KwFZzVFG0DWr0Dow3xrCllvMdx_Fz1n1Go0JXes3i6Sy84Wb2kUnLEDl2UAgSs',
        '2022-03-29 13:00:56', '2022-03-29 21:05:56',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJhMmE5M2MwOC1lNzViLTRhNjQtOGFkMy0wZTZiOTczYjVlZmUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0ODU1ODg1Niwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0ODU2NjA1NiwiaWF0IjoxNjQ4NTU4ODU2LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.E0vbVNVtGTSth7uhSl8CjmjXbjo0TyPPtq4fcq8uCzNQGQUCoj_7qpx_uNPCtU0kcOpNi7gbbAeMeKEzl-Cq7b4PDhPMpn2qqfPMV2usxP1IoeaCUcRShXEXp-tbUxNjdayULg2qiTOD0BPi9gBu1CNd_Tbemf7qp1zE9BLN0L5a-TrYBpWXUAIXcoc3h7YCYTGX-kyHkB0e-pEQhk8dQ802X39kPAOTGkHER8wsU32HXbirCGco_svMGtrSbvja10cMrmGKIEpWlhJ3xvW_AJdzgKyb2eUpbZ7CK5OhHt5qu55kmnHl-P3YZNv4cFtpg9IlajqSbPuyb3YZ69fbEw',
        '2022-03-29 21:00:57', '2022-03-29 23:00:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1648558856.573000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1648566056.573000000],\"iat\":[\"java.time.Instant\",1648558856.573000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'MLSga0XSF1fOoIHCI9MmiN6TTS7jw9AIlVONnlUTRCiSce4_qh59sTIA0LFD7rc0Akaf6tk9I9BC-LF6mZHVvnlHBC3yiJeM9kCa8FHJ8HmozuTddaHFxIw0Lufjj_C6',
        '2022-03-29 21:00:57', '2022-04-05 21:00:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('e729fd2d-a913-423e-b41e-cfda06b7ef82', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"v2I2C3VX756OoVM2tLcJV6f2KILr8g4EjmPwMioJKyg=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=v2I2C3VX756OoVM2tLcJV6f2KILr8g4EjmPwMioJKyg%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.96.0\",\"sessionId\":\"C63D33B151C0AB401722D7F2E385FD42\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'zLSGMPLIdohEguyVd8O-kj3EwzlHQzSWol3i_S-UUoNih970Y1a2UnnfRTaimg5THF9sdDxMt1_b8fTD5po1h2YU87UkgxyB0vmuz3uTKz7RdNRJylHU81a6bJSrtKac',
        '2022-05-16 17:30:35', '2022-05-17 01:35:35',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIyOWU1OWE4OS0wMDJlLTRiYTYtOTQ5NS1mNGM3MTM0YmVjN2UiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcyMjIzNSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3Mjk0MzUsImlhdCI6MTY1MjcyMjIzNSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.UCBFxkhU6_lNI0SF5V2OrnU6ec6GGxwC-Hgkoxwrcpydkcu2KBJePO6U20Uidv8pm6kTRVeWIolqTcU_MwRXKlO3FP8C2PrQWpG30kv8LURSLojw2sdWq-ZIvXnPCOE147OakctqEE5zM8EmADhdXd7fu6tehLb2AyPOrkY_hbUQJxz81SLcDSZfCM7CJfR-9tlNv1qdyzkZ2Rsvj06qpRBuoJ3WALH_gxRfWH1tT4TckSQnPMbeTd1yiqC1Rkoj_a4yd37ACFn8jnBBZC1vft3YdaSeMijoVW196wYhz7v9BVqJ_l3KGv0uXipP2O1chZwjekqmduAFPZFinzWaEA',
        '2022-05-17 01:30:36', '2022-05-17 03:30:36',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652722235.634000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652729435.634000000],\"iat\":[\"java.time.Instant\",1652722235.634000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'tVnwzWE2cvSjMa6tU3HMxL0qTcQBSSBj-DN83z8sjtAQUY3e7qbQuDFY1peBzcVugOOukGgFynNdnfh99LrvW9CMm_Ws_uXE_u4zV7N6o-e4THMMaTLUj24uZXr2vE5Y',
        '2022-05-17 01:30:36', '2022-05-24 01:30:36',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('e7b03e4a-e689-4a25-bf4e-39a1f336584e', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"Ou7MEcrQ0D5G6YwmGp7P0pQzDwtyy4nnWV1U9rA2hK0=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=Ou7MEcrQ0D5G6YwmGp7P0pQzDwtyy4nnWV1U9rA2hK0%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"C8A145F4FE02B23DD1D3099C6FE1C11C\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'f-5tCzMdbswCOloNpbaaGhkYM6euj8VMQc7D1mxsp7ASTWLwd2yjXnHjSD-z7sz3bkx3qGM8NDe_cIaW8gc6rZV-EydtgJDT3AzCXiyiGeFxwMuyu0cLSXtxqqthW4Fk',
        '2022-05-25 10:36:36', '2022-05-25 18:41:36',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIwYTEzMzIyMS00ODNmLTQ4ZTAtYTA0Yi00ZjdkNWU3M2JlZDIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzQ3NDk5Niwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzQ4MjE5NiwiaWF0IjoxNjUzNDc0OTk2LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.iftsqnu9Cjk5KuZG1cm81xmKNgllT4lAU0gxNXWSFtEW6aSQ7Tqx-8eVU_iCY6opTUb15aSZnxhHyCDh7AtZ47o_Ave7wc1TOKyWQvWm51pwVstlMZRxjfoP6t1Wsd_bH2jh2CbNqSXhRSO-rmrtBkz7Y_x6EZoZeAEdKjxi1GTYxGRVUy2R--1sVWU377lI6ojPb7wteK4_sOZDT9vR6s2TohAFP58dyEPKDVjSpTLSpXNt-o8HY1g3M3DfKCHbfWIYHT8NjPYYhabADhOK-V3AE9xXDWiYAJU9HaLwCw3lGOzdDz1HUKFAYq-6m3cWHg2STj8WxdVvdbDf42V7ZQ',
        '2022-05-25 18:36:36', '2022-05-25 20:36:36',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653474996.147000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653482196.147000000],\"iat\":[\"java.time.Instant\",1653474996.147000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'hcRc4jq-hubGgb85lxlRDHE_4al7zJ7iZ5zyC0MgVThGR6ObdiFF1ky-P3H3pJzU0gXw2Dtn2lnFSoUTrCTA78w--JSdFKcuD92uoBFp9DK-Y7XJ7H8Du33J8Ur_9qBs',
        '2022-05-25 18:36:36', '2022-06-01 18:36:36',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('e806d560-331d-48d9-ae00-26ab3be8f974', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:49:11', NULL, NULL,
        _binary 'eyJraWQiOiJjNjNjY2E3Mi0wM2Q1LTQ4ZDEtYTIwMi02MjNjMWQ4ZGZmMjQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUyOTQ2NTUxLCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTI5NTM3NTEsImlhdCI6MTY1Mjk0NjU1MX0.p1Z9KvaXEf4XESZpykwZ_wkgJvlORNGVvkScTUW1didbkfVNEUX6y_TAhxOfTNzzoUFmgiu7e1AhN4MnFFkZYeezjugBnh31fMA5iv8EBlkMB0sWlyVPWFnvTcCfRNz4ZZYLnjZ8ElwNT6025pZornF9njNukYMw6A9y0sSOWwIKKmBpQ4jCAaQqkqgHidrezCuOX-q54yR0n3jaOWr2RcZ6XmgKEv_Yx-YQYn6DaLFLgAZKewpneNslBPTfD87eflD6aSF_9YoKKg5NwVl5LFhuGha2s6mkMwoO-ckvGL5yR4P2OrKWSV3C8sRljpv0PtvsIWUPnGcQMq8v_BOlIw',
        '2022-05-19 15:49:12', '2022-05-19 17:49:12',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652946551.855000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1652953751.855000000],\"iat\":[\"java.time.Instant\",1652946551.855000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('e859c2c5-2509-45fd-9ce0-77995431ee34', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"pHkFQSf0eKJUOFiAz6xRClVC511xukRNyB7mebOAvOA=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=pHkFQSf0eKJUOFiAz6xRClVC511xukRNyB7mebOAvOA%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"107BE8834F56AE53255BBD14BDCFC262\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":3,\"updateTime\":[2022,1,10,23,35,37],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'Joior8YSC84IrGFulqsGM1nxjsR3HrqrVLa_5w-4DP0deUngxFg5nHwW_wVathhgzwYVhusFSbmD8fFUhkZTXdXssrY-fy4DQD0JBWnVyBk2z7Mdoi3rY75XanjCU2g1',
        '2022-04-05 02:36:21', '2022-04-05 10:41:21',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIxMjYwN2ZiNC05ZTY4LTRhNzItYjhmMi0yODI0MzFjODg2MDAiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY0OTEyNjE4MSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsImV4cCI6MTY0OTEzMzM4MSwiaWF0IjoxNjQ5MTI2MTgxLCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.DSzrHnJfpCTfUD_MFLAoiHkd5JEzqBP63QY9pmw1sl-WIy_V9DRn7h0Yc-2RbpbsrkLASTDcB_4xJZ_ymiqTMocAsfVNHS-RE8fEIF-qqpUTQE0wt7boX2nHzTuhjuCTZTI5CgHbrW72FiQaUAM3IYEUymu1mIbeu3Ei_gweqjJ2nLCZF22sr2ZYf_XVIQLDytcINEjJmArCujLQr-eJUuCTyNxmgsa2w0r-jJ1ebTHMrr67Ob8zXECwGBBKMlv2sTgQw-C5VuG7_RXWIjGmTPCn03YiEpZfR4ccGqAmCG9NkMUMdvJFNNEqbMZw9TY0aB1hosae0Ni9o9JxF20zrA',
        '2022-04-05 10:36:21', '2022-04-05 12:36:21',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1649126181.423000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"exp\":[\"java.time.Instant\",1649133381.423000000],\"iat\":[\"java.time.Instant\",1649126181.423000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'ho5SMUH7eSlQO8MwrDTSpetFhyl6c9OOoCaJ7EOX7g_CTwlD8w0QvjIu_LPuynCC2ghufhJzJke_iXdAW_aEzPT01naWr5yI4HwXujkt7rROCjWr7dJY79VQNwaKmMT2',
        '2022-04-05 10:36:21', '2022-04-12 10:36:21',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('e911eed4-71e8-40d6-a75a-50e75da1ce11', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'vains-Sofia',
        'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken\",\"principal\":{\"@class\":\"org.springframework.security.oauth2.core.user.DefaultOAuth2User\",\"authorities\":[\"java.util.Collections$UnmodifiableSet\",[{\"@class\":\"org.springframework.security.oauth2.core.user.OAuth2UserAuthority\",\"authority\":\"ROLE_USER\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"login\":\"vains-Sofia\",\"id\":52526354,\"node_id\":\"MDQ6VXNlcjUyNTI2MzU0\",\"avatar_url\":\"https://avatars.githubusercontent.com/u/52526354?v=4\",\"gravatar_id\":\"\",\"url\":\"https://api.github.com/users/vains-Sofia\",\"html_url\":\"https://github.com/vains-Sofia\",\"followers_url\":\"https://api.github.com/users/vains-Sofia/followers\",\"following_url\":\"https://api.github.com/users/vains-Sofia/following{/other_user}\",\"gists_url\":\"https://api.github.com/users/vains-Sofia/gists{/gist_id}\",\"starred_url\":\"https://api.github.com/users/vains-Sofia/starred{/owner}{/repo}\",\"subscriptions_url\":\"https://api.github.com/users/vains-Sofia/subscriptions\",\"organizations_url\":\"https://api.github.com/users/vains-Sofia/orgs\",\"repos_url\":\"https://api.github.com/users/vains-Sofia/repos\",\"events_url\":\"https://api.github.com/users/vains-Sofia/events{/privacy}\",\"received_events_url\":\"https://api.github.com/users/vains-Sofia/received_events\",\"type\":\"User\",\"site_admin\":false,\"name\":null,\"company\":null,\"blog\":\"\",\"location\":null,\"email\":null,\"hireable\":null,\"bio\":null,\"twitter_username\":null,\"public_repos\":5,\"public_gists\":0,\"followers\":1,\"following\":0,\"created_at\":\"2019-07-04T07:55:46Z\",\"updated_at\":\"2022-03-12T08:02:01Z\",\"private_gists\":0,\"total_private_repos\":0,\"owned_private_repos\":0,\"disk_usage\":0,\"collaborators\":0,\"two_factor_authentication\":false,\"plan\":{\"@class\":\"java.util.LinkedHashMap\",\"name\":\"free\",\"space\":976562499,\"collaborators\":0,\"private_repos\":10000}}},{\"@class\":\"org.springframework.security.core.authority.SimpleGrantedAuthority\",\"authority\":\"SCOPE_read:user,user:email\"}]],\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"login\":\"vains-Sofia\",\"id\":52526354,\"node_id\":\"MDQ6VXNlcjUyNTI2MzU0\",\"avatar_url\":\"https://avatars.githubusercontent.com/u/52526354?v=4\",\"gravatar_id\":\"\",\"url\":\"https://api.github.com/users/vains-Sofia\",\"html_url\":\"https://github.com/vains-Sofia\",\"followers_url\":\"https://api.github.com/users/vains-Sofia/followers\",\"following_url\":\"https://api.github.com/users/vains-Sofia/following{/other_user}\",\"gists_url\":\"https://api.github.com/users/vains-Sofia/gists{/gist_id}\",\"starred_url\":\"https://api.github.com/users/vains-Sofia/starred{/owner}{/repo}\",\"subscriptions_url\":\"https://api.github.com/users/vains-Sofia/subscriptions\",\"organizations_url\":\"https://api.github.com/users/vains-Sofia/orgs\",\"repos_url\":\"https://api.github.com/users/vains-Sofia/repos\",\"events_url\":\"https://api.github.com/users/vains-Sofia/events{/privacy}\",\"received_events_url\":\"https://api.github.com/users/vains-Sofia/received_events\",\"type\":\"User\",\"site_admin\":false,\"name\":null,\"company\":null,\"blog\":\"\",\"location\":null,\"email\":null,\"hireable\":null,\"bio\":null,\"twitter_username\":null,\"public_repos\":5,\"public_gists\":0,\"followers\":1,\"following\":0,\"created_at\":\"2019-07-04T07:55:46Z\",\"updated_at\":\"2022-03-12T08:02:01Z\",\"private_gists\":0,\"total_private_repos\":0,\"owned_private_repos\":0,\"disk_usage\":0,\"collaborators\":0,\"two_factor_authentication\":false,\"plan\":{\"@class\":\"java.util.LinkedHashMap\",\"name\":\"free\",\"space\":976562499,\"collaborators\":0,\"private_repos\":10000}},\"nameAttributeKey\":\"login\"},\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"org.springframework.security.oauth2.core.user.OAuth2UserAuthority\",\"authority\":\"ROLE_USER\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"login\":\"vains-Sofia\",\"id\":52526354,\"node_id\":\"MDQ6VXNlcjUyNTI2MzU0\",\"avatar_url\":\"https://avatars.githubusercontent.com/u/52526354?v=4\",\"gravatar_id\":\"\",\"url\":\"https://api.github.com/users/vains-Sofia\",\"html_url\":\"https://github.com/vains-Sofia\",\"followers_url\":\"https://api.github.com/users/vains-Sofia/followers\",\"following_url\":\"https://api.github.com/users/vains-Sofia/following{/other_user}\",\"gists_url\":\"https://api.github.com/users/vains-Sofia/gists{/gist_id}\",\"starred_url\":\"https://api.github.com/users/vains-Sofia/starred{/owner}{/repo}\",\"subscriptions_url\":\"https://api.github.com/users/vains-Sofia/subscriptions\",\"organizations_url\":\"https://api.github.com/users/vains-Sofia/orgs\",\"repos_url\":\"https://api.github.com/users/vains-Sofia/repos\",\"events_url\":\"https://api.github.com/users/vains-Sofia/events{/privacy}\",\"received_events_url\":\"https://api.github.com/users/vains-Sofia/received_events\",\"type\":\"User\",\"site_admin\":false,\"name\":null,\"company\":null,\"blog\":\"\",\"location\":null,\"email\":null,\"hireable\":null,\"bio\":null,\"twitter_username\":null,\"public_repos\":5,\"public_gists\":0,\"followers\":1,\"following\":0,\"created_at\":\"2019-07-04T07:55:46Z\",\"updated_at\":\"2022-03-12T08:02:01Z\",\"private_gists\":0,\"total_private_repos\":0,\"owned_private_repos\":0,\"disk_usage\":0,\"collaborators\":0,\"two_factor_authentication\":false,\"plan\":{\"@class\":\"java.util.LinkedHashMap\",\"name\":\"free\",\"space\":976562499,\"collaborators\":0,\"private_repos\":10000}}},{\"@class\":\"org.springframework.security.core.authority.SimpleGrantedAuthority\",\"authority\":\"SCOPE_read:user,user:email\"}]],\"authorizedClientRegistrationId\":\"github-idp\",\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"F364ADBB4B26335481C6E797318D0DC2\"}},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"LBo8GFTH4QFurbKvKjAmAmlKKAeQqu8KjCfxz6SSd48=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=LBo8GFTH4QFurbKvKjAmAmlKKAeQqu8KjCfxz6SSd48%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"state\":\"35c5zUnLG6-PnwF8IRJZSNy63BDhm8kcHtqF2ZGdvZ4=\"}',
        '35c5zUnLG6-PnwF8IRJZSNy63BDhm8kcHtqF2ZGdvZ4=', NULL, '2022-04-17 04:34:35', NULL, NULL, NULL, NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('eb249307-54d0-4eda-bdcd-655c8850f4d9', '3c431544-6bd5-4c2e-ab4c-76b159d73997', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"0:0:0:0:0:0:0:1\",\"sessionId\":\"24C3EDC8B449F9B644B6F8BB6370E6D0\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"swagger\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"V2VkIE1heSAyNSAyMDIyIDE0OjI2OjE3IEdNVCswODAwIChDU1Qp\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=swagger&scope=all&state=V2VkIE1heSAyNSAyMDIyIDE0OjI2OjE3IEdNVCswODAwIChDU1Qp&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary 'F94XpBkXccoZgJGvKl8968SjMoG7yT5Nztq6_6rlrYHkZNosnWpGqrbeSoK8_lznQbXdLhidzDNDrX0Wt_bdso3aqanzCNX9JPuPNeN_8rD80H6QTKhRuwPZ6cK-cNZN',
        '2022-05-25 14:26:38', '2022-05-25 22:31:38',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('ec8e747d-2d0d-4856-a481-7084bf96ba64', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"sRculYSuMv_ePvWR_6f5RDyJbL5FsvaJ54LFHmILHyg=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=sRculYSuMv_ePvWR_6f5RDyJbL5FsvaJ54LFHmILHyg%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"10.20.32.0\",\"sessionId\":\"CBB4364DE6F9185752D5957FCFA4B706\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'hMyK3EHl1fFNGZDsobbEm6hRn2rw_Fsa3iTpId3_NYN4y5hxuZy_EW8JqW_2gPYZFolMIOuJ0gC4OqBic4qdOwYOT8tzweY6fXW7INYN4x6cD0alZOLktLsx5vOETsAw',
        '2022-05-16 17:06:25', '2022-05-17 01:11:25',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIzNTNhZTYwZi03NjE4LTQzMzEtODk3OC1kN2U1ZGI2YjBhMzYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcyMDc4NSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3Mjc5ODUsImlhdCI6MTY1MjcyMDc4NSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.AXu7L7Yff1KTwDVIINcqh_WtoaIK90KfdI9kM9Q95TifhYFWdsR5D5PrscYYfwod9j9gh3FUb6MccWpuEZq-U870bCC8n5kGrWKoW8T0Bj_D56YSbm53MLA2269HztC5hABf9lTY-RjGdTl0IvP9dcQl7hUJ8M1hxyVq7jWA27NsqO2Pzo9Omu5atIwZ715z-JWq4d84YvPC6nHNamiUsYZSkIJhIz9-SPWobk7h4XGbcoAT4Hz7Rp0PisbM88GkbAu7uJ1j2_yVcENd3YVBVx-GCYJLJYCQ6IoXNjNwDZ0e2gGHd11lhYLMXDp_NJlljmWdetIbffGoZTpPZu5ORA',
        '2022-05-17 01:06:25', '2022-05-17 03:06:25',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652720785.120000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652727985.120000000],\"iat\":[\"java.time.Instant\",1652720785.120000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary '6RKo7Xj5n2EejP1H8NKJZiB9C4uwdbQ8zesrLU5_pljtAaw2gq8ZNWHTgKYEKl35U022hahJ_zqaljZPqxRfu1hFhgpV0v74_DhjK0pLo2ULxLlUWG_x3k8-GuQ0j2jx',
        '2022-05-17 01:06:25', '2022-05-24 01:06:25',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('ed92f132-2be3-4b5d-a17d-dea45297e931', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-18 22:05:44', NULL, NULL,
        _binary 'eyJraWQiOiIxYzVkYjI3OS1mODMyLTQxZTgtOWY5Ni02YzhjMGY1ZWJiODUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyOTQwMzQ0LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwidXNlck5pY2tOYW1lIjoi5LqR6YC4IiwiZXhwIjoxNjUyOTQ3NTQ0LCJpYXQiOjE2NTI5NDAzNDQsInVzZXJJZCI6MSwiYXV0aG9yaXRpZXMiOlsiXC9zeXN0ZW0iXX0.RL8qyfEAleLMmiT0Rkl2kLN1PpG_J7Y7W86ZvvLT4K4iQNm8Co1sOCveFV-Wc04MEQqSD5Th-ak8Q9bOPPSxS88ABhO-FTEsygSenCdzS72fRw9qDXfZJHg7eYHPYeHne0KpGFrcKYVAscS2OLi0C-w6QV80RGUiGJ5aqkzzzNnyQgJ2mRBhhRSaYDg0SRdR7s7f4P2TrrCsvuwxf4909LvwOVFmZnbxkt1B4-jGVS86GGOSSbsobJ283_zd4MN-MUrgZ0MPRYsI3MiKX3MHdarUoUdvMLNVLmmTFSlnuvx-YSnQpFXMf4DYU8XXEZsjmtq9WjFO37Qhna3ufTpCiQ',
        '2022-05-19 14:05:44', '2022-05-19 16:05:44',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652940344.137000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652947544.137000000],\"iat\":[\"java.time.Instant\",1652940344.137000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL,
        _binary '7X5rr7UQQwAIjR-zH6KGXCcmULuP32MjRIuKEXuFx4loLvVX-S8NXJsCY8eMY0OW86Dh_ajHsjq9KwPsE_CdsS7VXmCBvZPkm3tRl36n78e6oCNmYE7vln7PX8wZw7DL',
        '2022-05-19 14:05:44', '2022-05-26 14:05:44',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('ee83a3f8-a6e7-4bf4-ab05-99bf412b05ac', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"Vj5K1di8g1s_EbK7S8SMZ86rk_jqnLxZK2IVkYYWBzU=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=Vj5K1di8g1s_EbK7S8SMZ86rk_jqnLxZK2IVkYYWBzU%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"0:0:0:0:0:0:0:1\",\"sessionId\":\"3FA9C590A16A92C7344B82DEDD544A38\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'XpUs3nO1OrM0j4q0B4GeZoRL-RbHZgM1oTxEpaapjJIyoUFXJDopVsSu91iYJxk_Dg1y77WYovlVFF75D22EtQS453fP6UrIW1K7UW9Qk_zcpAeaIJBwnfN6q5NN6D6p',
        '2022-05-24 10:39:57', '2022-05-24 18:44:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiJiYzU1MWQ2Yy1jNzllLTRhNmYtYjA2ZC0xMzBkMjFhNDM2MmQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzM4ODc5Nywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzM5NTk5NywiaWF0IjoxNjUzMzg4Nzk3LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.SP59ITumgwltrfeobW7roE1Q4rHUsghLP_zI7yk9ZZ2ILRnBdMjeFqsi_saoHjPLrc50GjcU8LEBNZXy6ehi3zpWOl_6a5sumqHa6_bPjYLvzHKc65XwPNSc8g1AFJAxdSSd3eDWtBmGWET5jD6ThFO4UeELZLZo17mio9Fv5wLx-Hh0Q72LJUHw2qxld9EtfVjfH7ugvRv-VpMjjlqLr4LryRZfauBO00usAEsX_3cvYrDIUVqXRMv5ISrPah6q1ptSTflgUhQiXGTZ0wtTkQ09WtvK5hjx3e_xpPEzAHDkGvbB24O7iq4q8AS0juJ1QbV--URY7yTwFXYeiEVnhQ',
        '2022-05-24 18:39:57', '2022-05-24 20:39:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653388797.372000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653395997.372000000],\"iat\":[\"java.time.Instant\",1653388797.372000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'qYPLy-cJVSoR3mXyiI1qsQv_Tia75G00lWamqrKMk8jmO2chd4wGDygtciymShdKwUF3OxkMfaSJG1xsU9VI-hUy4N8wb29jVG5kkTwA6YlEkb5u0aKBTEUFbtZna7FN',
        '2022-05-24 18:39:57', '2022-05-31 18:39:57',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('f093d9db-9d15-4655-b26e-32b5c984aa5b', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"BZI_svXXNHYL6J2Gt38VDXMRjK4sWDeJWZqZQ3nFJPY=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=BZI_svXXNHYL6J2Gt38VDXMRjK4sWDeJWZqZQ3nFJPY%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"2D9863CD0B2667545C46273C5511DA8A\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'CUHa_92sIhlJrGO9Y5BqVaMRp4ziHaU42LsxakaTPCNj8kHNOfyWXuntJh1M9RCF6F0NHjeRa9JopOs_Z_lKBaHbnoISys2iA9NJ1jHshlopb0VIo5jnThFHrx8oW8v8',
        '2022-05-16 16:38:51', '2022-05-17 00:43:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5OTJmZTE3Yy0zMjZiLTQ2ODItOGNiMy03YmNiNzI5YzdmNjMiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxOTEzMSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjYzMzEsImlhdCI6MTY1MjcxOTEzMSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.kabP1y9yyIBzRr8tIquIX8J25OLEQOb8xqTsyTor0r6TSBT61863ckiYGVH4bUVTcJG-hOqnFFFDJL1iQrazS_gHvZ9xw8qezWrJKpDCpk_as9GHWW9_gQymIueMEKVQpYh5Yq1gcgW0_BMg4Hi7e_QF5gYu-C9WBZF7xVwTpy6zhmc2I1ScGk3G94GAP_6Qd-o_OpUM9UjBatR7OiwJhxMOh74tpDV_gyVVA6eOUxzDOK4nQ7h-TWDlhSTf1l2URx-qJodrQ6QGkCizz5_lPLlDfFF9hYoUnJWa_ElF8XGzIThHZgpd8DTdBapKsTK_vSBlKNJ3ETSbRLrS6dbwpw',
        '2022-05-17 00:38:52', '2022-05-17 02:38:52',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652719131.733000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652726331.733000000],\"iat\":[\"java.time.Instant\",1652719131.733000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'fBXX3BFwKK_kSZXV-x9kolwDkd1r6q30ihew3aBYHo3OtU-ig4vWkuicg2XotNcKJYbXBUWwrKPC75PdG_crhvlu-4ADLMVZhW-o6A0-TvcNRDQFdFqp1ouwSfAl4JOr',
        '2022-05-17 00:38:52', '2022-05-24 00:38:52',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('f3dd0701-1e53-4348-9dbd-9c7ec539ad96', '3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', 'client_credentials',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-20 01:45:16', NULL, NULL,
        _binary 'eyJraWQiOiI5NDBhNTZlMy1iYmQ4LTQzOGMtYTU3Mi1jNGMwNzNjYzE5YjUiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImF1ZCI6ImFkbWluIiwibmJmIjoxNjUzMDExMTE2LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJleHAiOjE2NTMwMTgzMTYsImlhdCI6MTY1MzAxMTExNn0.lRPN-j14MKjn1E6UCr4sdxbjoU5OSRQWNSdnk2lpK_kbt_1T7WmbRToQIAep2KXWdKvfIc78Y2pXwz73p5Jyuy7DBu6hyMR54-kO89M6tqRCfT26vhdZAuIK1y3TWvMofkxaDxHYvAYg5pYIzfo0cw7MF5bb0vNOrsUwkmJaaCL1r1KpvChy3jpnzsM99veBFEyem54wJLoH9526lMXBsL3xRRg3Zb8VSsSFjp8-2O2vei69YudS180a1g4Gs1ZO5n3-btqqZJ1U__7yhBryZEOwOHWjr-O7TBMC8wkWWDneN-1xph74l9GQnGO5Mf2DAVHHQsoDVIwpbszjeRRtow',
        '2022-05-20 09:45:16', '2022-05-20 11:45:16',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"admin\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653011116.150000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"exp\":[\"java.time.Instant\",1653018316.150000000],\"iat\":[\"java.time.Instant\",1653011116.150000000]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('f5cd7d3d-57c1-4730-b158-2c1943ef39be', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"46uoBPr-F1Zaa_sXa7Z_lSOeih4id6xsC_myZIhBZ4k=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=46uoBPr-F1Zaa_sXa7Z_lSOeih4id6xsC_myZIhBZ4k%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '80kof97--YciB0YevFY7pGU77Da9AUR2fUTEBrKE8UaAO5R0IHp1ExO1oX8DCTJmxmgKTXvZ0pUPT7p4v0MPjGA85G3wtnWYKL-Qww_ZU3KMsgJXiWFwF089pHQF0TiC',
        '2022-05-10 16:30:22', '2022-05-11 00:35:22',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI4MGRkNjhiMi00NDUxLTQzMzctYWQ3Yi01NzM0NTkxNmU0ZjEiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjIwMDIyMSwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJleHAiOjE2NTIyMDc0MjEsImlhdCI6MTY1MjIwMDIyMSwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.Gq4I0-aPp4NQeXxMn8J0gFWQkzSPe85bvcpp5rDnmeBzN5F2TctzlzI3NsT1UTlq2M_sNo58tMlnvl4fLk7_BwsXPQt1UozxCumyrNWukZQ-adiDEd9eV0U9vsYhulKkLN5ffEkdfKbt2m0N7tPTLus2O-y1b0FnrqFjz4jl8bxT-KDhTNlebxvLgharzHuAJm0WRYM9f-istiGyofkokfEsmuTDuhjbUZAmPhbVNU9va66ocBgEiDBIHbkTrI9WnkK2VAOjoGZ3F0Avama6xGNDMk1t1oNvKuZdRfyulNAiWXFFcEXzuyOsqPFwEgqB8ossKHmkBTUtfI1PhQCCWw',
        '2022-05-11 00:30:22', '2022-05-11 02:30:22',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652200221.712000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652207421.712000000],\"iat\":[\"java.time.Instant\",1652200221.712000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'EEe_yp_b441aivOHLozz9zhDYMOxgYWm8KgMQsj3B6VRUkCGGIIe0-b8CiU4urXp1x46R146ppxHhWpwvSDrfEN9x0Cme-UDnK3VYDMCVIPCCj88GVank0QupaH5DsSS',
        '2022-05-11 00:30:22', '2022-05-18 00:30:22',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('f61aa7fc-1cdd-44a0-963b-6fe9be1a8184', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"iMUr8oBduFfCttbfZHUz-4HTrFNM45MdYvpGkKZeLzo=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=iMUr8oBduFfCttbfZHUz-4HTrFNM45MdYvpGkKZeLzo%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"FE7158E2E553A4C8164EC481F9BE6A10\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'cZZXsEIoqpfl0hRkTMuXuK34DZBwQcdlmPFz5WnLGuHGOyTfbfg_6KuOWz8-sBXBnWHHuMs0fJfyOj1venmt_-cUQDlS_N4kIuoG-s40U-NcaLV4cxFgZB9JsSknmxLs',
        '2022-05-16 16:15:43', '2022-05-17 00:20:43',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI1NDJhZjY2OS0zNmIzLTQ4YzAtOGNmNS1iODZkNjkxYTVkMjYiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjcxNzc0Mywic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI3MjQ5NDMsImlhdCI6MTY1MjcxNzc0MywidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.gEEpYo1GYMLU_kbKzT31Fi37tYD4NRfXozwkg_uMTLjr5o16xwRi8Rdzt4gCUO2Es01Qzca7xc66C-0dOd7dVEePrenUZ3mxoKDdgMYAA3bUpbj7SiamlvA2vNBu05EtHd3NJyZSPDyr-MiFalhWl6crIFe9yMD7Lwj3jUPv29dhwVqpqn5WbIiHSto-F9P5X3riD3i-zLbLVSXUG3G0sowlIWCktwy0Ya_PHut8nm9ha7P9Lv7kp3ZhJyf-PA8Z2bOgrAz8LSfNrXa08qgaHXXhcKbqDdY4hUElX42mrN2TLsUxbqa0B3KYP1BqK453l6kFIOmFH4fgDXUvKS-0Gg',
        '2022-05-17 00:15:43', '2022-05-17 02:15:43',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652717743.400000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652724943.400000000],\"iat\":[\"java.time.Instant\",1652717743.400000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'fGWS1IZ6X_iBMGuXWDsJw1HTgcbLy-Hr2RKhm6PnjkNLf7vhsVKgVNbuZrYePiaT5Gywzf2wPe5WzwJrbmcFu24cF3ybKRfB__iMH4AI9cnktangHcnQZAGcOmKCequa',
        '2022-05-17 00:15:44', '2022-05-24 00:15:44',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('f67fe439-14e3-4c1d-bd40-0a31b39cb152', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'password',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":null,\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]]}',
        NULL, NULL, '2022-05-19 07:55:39', NULL, NULL,
        _binary 'eyJraWQiOiJjNjNjY2E3Mi0wM2Q1LTQ4ZDEtYTIwMi02MjNjMWQ4ZGZmMjQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyOTQ2OTM4LCJzY29wZSI6WyJ1c2VyLnBob3RvcyIsImFsbCIsInVzZXIudXNlckluZm8iXSwiaXNzIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjUwMDAiLCJ1c2VyTmlja05hbWUiOiLkupHpgLgiLCJleHAiOjE2NTI5NTQxMzgsImlhdCI6MTY1Mjk0NjkzOCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.J0jhcQQEKqvNXxEY0JyXQjSlMTr4u_X5qEEyOlF6NGRs5k40weGjDaWgFR5vUYERFnXgkDRwpnTRiQfBDVdYgfeAgOpclGNlD3_JNIxv1JU0gWwBjKPZLZNe4cITB5ffikTOl1EJzcezsOeGaJMO8maa0hSU4ACmkjNtKYx3rxwdZr6VdomUfymH_7T8N0htxmmMdo87ylUPWol7fPR-tNx2FljFvf_O6WDV67tQVJDFyAyLVmTUPHnypD38crsXquv6bTXualI9Cc_AaaH10uIASje_ND27hw4LHmcIg7K4Mi1CQH3ix3UgPLfq2Bf57nqw3iIABp9ZpvwJMrSi9Q',
        '2022-05-19 15:55:39', '2022-05-19 17:55:39',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652946938.994000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.photos\",\"all\",\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://127.0.0.1:5000\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1652954138.994000000],\"iat\":[\"java.time.Instant\",1652946938.994000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.photos,all,user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'Kf-NrTicw7SiIxTZFu4CtwflZxygxNTuBxoMpSfACAyruv6oS9WzeWOrukGzwxWBiU0eB8u8EVKMam7XL9hGy47Q5sZ_pHG63-KOlPs1l6BU_h80weHReoW3El_L2oeV',
        '2022-05-19 15:55:39', '2022-05-26 15:55:39',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('f8e0e95f-62b5-472a-840e-b65b59fa54cb', '3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"gateway\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"state\":\"kfNZooxNNk9LtQoArpkm2x_ky2L48d8hBi2tBO471Ds=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=gateway&scope=all&state=kfNZooxNNk9LtQoArpkm2x_ky2L48d8hBi2tBO471Ds%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/code/redirect\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"D30D9517A069E0F4A528240EF9C66835\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]]}',
        NULL,
        _binary '6hiJxRlO3IG67v_5ReUT9zNjc-6WUMmh4XjXkwcNabtdnr9wm3Ey7mHxSJlDQTuMsnxWL00VfuC9yXiPhuApIEoK6tw-E2Hytw6tkM3rPH5OHXaopPe-WmEDVdI2OYwK',
        '2022-05-13 15:51:51', '2022-05-13 23:56:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI5YTdkMGNmYi1hOTY3LTQ4NWEtOGY3ZS0zN2QxNDJlMTFlZTQiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJnYXRld2F5IiwibmJmIjoxNjUyNDU3MTEwLCJzY29wZSI6WyJhbGwiXSwiaXNzIjoiaHR0cDpcL1wvODFiMWQ3OGVkZDFhLmMubWV0aG9kb3QuY29tOjMzMTUwIiwiZXhwIjoxNjUyNDY0MzEwLCJpYXQiOjE2NTI0NTcxMTAsInVzZXJJZCI6MSwiYXV0aG9yaXRpZXMiOlsiXC9zeXN0ZW0iXX0.dN7t5jqNg36cAu1H2vkUHv6mNuqBzvlrFKU2cshufPUnSk6GbQSw4o66Se0AseEXalB-HzH99dAK84gQMEurNDPQj9dbNWlKEfLk6ZSM86bO4SG-y5mZKXDq7oPA13iO01Y4hFBGaY5ailuKsD8FgB34yI9IRh6zknwxbJMqNuroh-k26Qd-kfLqBN503NNG2ie8PxzWaTbLHQDOYq8nMUh3jALzBTR7miluBX3D0GnoNfEFjutPl7qzD2fa5ZgJjk7j-tKUyWg1HhjJOuwY6ylp_kSCp86WvAEvbQhhhc4YgHdkFJAF1msi_u8_2ZGEMK9VxWrF958cEb0dkMfQIw',
        '2022-05-13 23:51:51', '2022-05-14 01:51:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"gateway\"]],\"nbf\":[\"java.time.Instant\",1652457110.821000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"all\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652464310.821000000],\"iat\":[\"java.time.Instant\",1652457110.821000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":true}',
        'Bearer', 'all', NULL, NULL, NULL, NULL,
        _binary 'TjWmUm4t22cLOeD61cDsrG-1jzECBlCPMdNXLI9Mqwx8kMGa3cnRHv-8YjtGx93GWg44xxihklp58InJ41OdyQf3RTzcLVqHHpCoZxk94LU2OBhH_34J2S6kfsHid9g7',
        '2022-05-13 23:51:51', '2022-05-20 23:51:51',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('fad4ba1f-58bc-447f-abd3-bfe655d5310b', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '1001', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"ZopvdIcjMw3AANuKRQZiSm5f6HsCXY6LgHHa7lShzBI=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=ZopvdIcjMw3AANuKRQZiSm5f6HsCXY6LgHHa7lShzBI%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"FC0A66DDD32E7228E80022D4EE4F5DA1\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":3,\"username\":\"1001\",\"password\":\"$2a$10$cQexdEVuUPfVt/vlSI3Fw.pjJs8BVzYt3TdQcm9CBajxKZoQmAb.q\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,4,5,1,20,20],\"nickName\":\"测试账号01\",\"phone\":\"17683906992\",\"email\":\"17683906992@163.com\",\"avatar\":null,\"sex\":3,\"updateTime\":[2022,4,5,12,12,48],\"authorities\":null,\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.HashSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary '5axLjl_no4O1kB-AoA-XfE580WtYG_zzH7GDT55CTcsHjpjqgrGUDQbnbHt3KMMbf89l_SoTzN9IWQ9QOGD2tMsTayNfqthvJaqt4k-qmA-lARouPgrYDpI6Matfe4xQ',
        '2022-04-05 04:43:35', '2022-04-05 12:48:35',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}', NULL, NULL, NULL,
        NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
       ('fcce0f6a-1b67-403f-8808-a8766f74ed07', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"XxgnPBpiDGCPgmHMzcf3d0y3h1pPss6IT8sus-pP1SA=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://81b1d78edd1a.c.methodot.com:33150/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=XxgnPBpiDGCPgmHMzcf3d0y3h1pPss6IT8sus-pP1SA%3D&redirect_uri=http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"BE11128D6F981769600AB0EE350CBB12\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"昵称\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,4,5,12,12,44],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'sNGsV9Ekg_Iwt-5FoAkpJCsQIahaxBe_-rwPJyluZEg6iXUBZsQCyLDCHUX7GKdbJTY54q7EJMBAtdAY8dfuXDKgoSbuZCRPYruVkyW-uevIUtW4jT7AeJZsPGN2Vqic',
        '2022-05-10 15:43:14', '2022-05-10 23:48:14',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiI4MGRkNjhiMi00NDUxLTQzMzctYWQ3Yi01NzM0NTkxNmU0ZjEiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MjE5NzM5NCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC84MWIxZDc4ZWRkMWEuYy5tZXRob2RvdC5jb206MzMxNTAiLCJleHAiOjE2NTIyMDQ1OTQsImlhdCI6MTY1MjE5NzM5NCwidXNlcklkIjoxLCJhdXRob3JpdGllcyI6WyJcL3N5c3RlbSJdfQ.mH0WuUq4kQDiUAvA9Ie4t-SgBmG3F6wrzG4yzW4jZ0J4cfTnvwmRJycvlihHDDeVmwShtRzDDEXjdzwgZO0VL98p4HUAVc5ODiBnjmXPKMoPOoECTvKGqs9-n0mpvJSsY7upnpmMahfhNPQtwmcmbDM8657WRDLdpG3y_HQj5tN_jeeBmcy1Q793rpSM5nEu3CHd_YarQGt-FAzi8sEOli7LSLPwWWTfJUEzDQEcevkPP68EGsG-SEsSUCeEsSv68_PXrKAEsIdS4gED2NLUFYzI6Qu__KZBBeENMVtbGVDJDdbCTSKX2lysaJIkNMITbtKtGbCrc48y11sB_0td4A',
        '2022-05-10 23:43:15', '2022-05-11 01:43:15',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1652197394.519000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://81b1d78edd1a.c.methodot.com:33150\"],\"exp\":[\"java.time.Instant\",1652204594.519000000],\"iat\":[\"java.time.Instant\",1652197394.519000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'A-YABM4MG2AxuWWlEvHijvj-9hsjzM-EWaCcIQ_qZjvyLypZSSf-kf_uHwS7c1Onuwxy_bUdhLJWdsmIvEtPqq73MA7t9Pw0hU4Fe0MYqwsrVpvjXI1plySfpR9nHBK0',
        '2022-05-10 23:43:15', '2022-05-17 23:43:15',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}'),
       ('fdedf5c8-ac68-49d7-916b-439a3bffd24d', '3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'authorization_code',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\":{\"@class\":\"org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest\",\"authorizationUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize\",\"authorizationGrantType\":{\"value\":\"authorization_code\"},\"responseType\":{\"value\":\"code\"},\"clientId\":\"admin\",\"redirectUri\":\"http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"scopes\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"state\":\"xrwkVQocIv3lX_YWqYVf0VsBUFypJQIwjRGqFB7axs4=\",\"additionalParameters\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"},\"authorizationRequestUri\":\"http://kwqqr48rgo.cdhttp.cn/oauth2/authorize?response_type=code&client_id=admin&scope=user.userInfo&state=xrwkVQocIv3lX_YWqYVf0VsBUFypJQIwjRGqFB7axs4%3D&redirect_uri=http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc\",\"attributes\":{\"@class\":\"java.util.Collections$UnmodifiableMap\"}},\"java.security.Principal\":{\"@class\":\"org.springframework.security.authentication.UsernamePasswordAuthenticationToken\",\"authorities\":[\"java.util.Collections$UnmodifiableRandomAccessList\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"details\":{\"@class\":\"org.springframework.security.web.authentication.WebAuthenticationDetails\",\"remoteAddress\":\"127.0.0.1\",\"sessionId\":\"5B2C1F169ECD10F8FD27B554A7021886\"},\"authenticated\":true,\"principal\":{\"@class\":\"com.vains.entity.SysUser\",\"id\":1,\"username\":\"123\",\"password\":\"$2a$10$K7nVcC.75YZSZU1Fq6G6buYujG.dolGYGPboh7eQbtkdFmB0EfN5K\",\"nonExpired\":true,\"nonLocked\":true,\"deleted\":false,\"accountNonExpired\":null,\"accountNonLocked\":null,\"credentialsNonExpired\":null,\"createTime\":[2022,1,10,23,35,34],\"nickName\":\"云逸\",\"phone\":\"17683906999\",\"email\":\"17683906999@163.com\",\"avatar\":\"头像\",\"sex\":0,\"updateTime\":[2022,5,14,16,52,14],\"authorities\":[\"java.util.HashSet\",[{\"@class\":\"com.vains.model.security.GrantedAuthorityDto\",\"authority\":\"/system\"}]],\"enabled\":true},\"credentials\":null},\"org.springframework.security.oauth2.server.authorization.OAuth2Authorization.AUTHORIZED_SCOPE\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]]}',
        NULL,
        _binary 'Iq5zx7kbLI8nBtfIDl3YRq2ubEa-0H_C6EmSp7bq6ovivz3yGlpzmq-aetwdt0hvwKzE9dkCQytQIyEnk0kD_okmjqFiRq74RifDCtM0rn1nxC4tgNCoDeeODzok3Tct',
        '2022-05-25 09:40:38', '2022-05-25 17:45:38',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":true}',
        _binary 'eyJraWQiOiIwYTEzMzIyMS00ODNmLTQ4ZTAtYTA0Yi00ZjdkNWU3M2JlZDIiLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMjMiLCJhdWQiOiJhZG1pbiIsIm5iZiI6MTY1MzQ3MTYzOCwic2NvcGUiOlsidXNlci51c2VySW5mbyJdLCJpc3MiOiJodHRwOlwvXC9rd3FxcjQ4cmdvLmNkaHR0cC5jbiIsInVzZXJOaWNrTmFtZSI6IuS6kemAuCIsImV4cCI6MTY1MzQ3ODgzOCwiaWF0IjoxNjUzNDcxNjM4LCJ1c2VySWQiOjEsImF1dGhvcml0aWVzIjpbIlwvc3lzdGVtIl19.J_EC0wpLs300RWl-n0LM6ToVk9h0qljlMgPDQSspj_kHI4-ojtyV5SpeOrH1ZBMbB-31IrMCBVhB_9OpuWlxrNrDrCBiV_xcfofFhFhl0rsnl9693mClp5d-7yEWhndYdTdq2avmzHCBQzmL8qaLOTwyMmEUJi_GmeGqxg1pKPrhbzAc33EDDbUmCwu3ElqclE7QccGto5TEmiilKmBOJVHrK3BI_oDEEi0U6wFSgHCfl1HEULTjAINCDc5UeIG4otx4GIwN5YQygoW_F_YVbyBP0eZGa9z7p2rICCY7aU3qcEJ1uwG-vCS4zwfzO4qciK0HFZhWHh8jB8ZkneoM2A',
        '2022-05-25 17:40:39', '2022-05-25 19:40:39',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.claims\":{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"sub\":\"123\",\"aud\":[\"java.util.Collections$SingletonList\",[\"admin\"]],\"nbf\":[\"java.time.Instant\",1653471638.518000000],\"scope\":[\"java.util.Collections$UnmodifiableSet\",[\"user.userInfo\"]],\"iss\":[\"java.net.URL\",\"http://kwqqr48rgo.cdhttp.cn\"],\"userNickName\":\"云逸\",\"exp\":[\"java.time.Instant\",1653478838.518000000],\"iat\":[\"java.time.Instant\",1653471638.518000000],\"userId\":1,\"authorities\":[\"java.util.HashSet\",[\"/system\"]]},\"metadata.token.invalidated\":false}',
        'Bearer', 'user.userInfo', NULL, NULL, NULL, NULL,
        _binary 'RB9QZZPFwe2CSKN7qSbETI2PUc21pwHdvQ4WJSkFaEaSP0OpGnlHZP7r6BVnV1AWs3246z-EMvCEi1AzpFYPPXSHUVHliFWQKfSDb3nwKvHShKNA3P76nJ0-BJAQPsSF',
        '2022-05-25 17:40:39', '2022-06-01 17:40:39',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"metadata.token.invalidated\":false}');
/*!40000 ALTER TABLE `oauth2_authorization` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `oauth2_authorization_consent`
--

DROP TABLE IF EXISTS `oauth2_authorization_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_authorization_consent`
(
    `registered_client_id` varchar(100) COLLATE utf8mb4_bin  NOT NULL,
    `principal_name`       varchar(200) COLLATE utf8mb4_bin  NOT NULL,
    `authorities`          varchar(1000) COLLATE utf8mb4_bin NOT NULL,
    PRIMARY KEY (`registered_client_id`, `principal_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_authorization_consent`
--

LOCK
TABLES `oauth2_authorization_consent` WRITE;
/*!40000 ALTER TABLE `oauth2_authorization_consent` DISABLE KEYS */;
INSERT INTO `oauth2_authorization_consent`
VALUES ('3c431544-6bd5-4c2e-ab4c-76b159d73995', '1001', 'SCOPE_user.userInfo'),
       ('3c431544-6bd5-4c2e-ab4c-76b159d73995', '123', 'SCOPE_user.userInfo'),
       ('3c431544-6bd5-4c2e-ab4c-76b159d73996', '123', 'SCOPE_all'),
       ('3c431544-6bd5-4c2e-ab4c-76b159d73997', '123', 'SCOPE_all');
/*!40000 ALTER TABLE `oauth2_authorization_consent` ENABLE KEYS */;
UNLOCK
TABLES;

-- ----------------------------
-- Table structure for oauth2_registered_client
-- ----------------------------
DROP TABLE IF EXISTS `oauth2_registered_client`;
CREATE TABLE `oauth2_registered_client`
(
    `id`                            varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin  NOT NULL,
    `client_id`                     varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin  NOT NULL,
    `client_id_issued_at`           timestamp(0)                                            NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `client_secret`                 varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
    `client_secret_expires_at`      datetime(0) NULL DEFAULT NULL,
    `client_name`                   varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin  NOT NULL,
    `client_profile`                varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
    `client_authentication_methods` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
    `authorization_grant_types`     varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
    `redirect_uris`                 varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
    `scopes`                        varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
    `client_settings`               varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
    `token_settings`                varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth2_registered_client
-- ----------------------------
INSERT INTO `oauth2_registered_client`
VALUES ('3c431544-6bd5-4c2e-ab4c-76b159d73995', 'admin', '2021-12-17 06:15:32',
        '$2a$10$8dVhMnIJQxDUi6PKKhgy8O9AE5dPmb/SQaO7rJulnn701IOoPAyO6', NULL, '超级号',
        'https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png',
        'client_secret_basic', 'client_credentials,password,authorization_code,refresh_token',
        'http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/admin-oidc,http://127.0.0.1:5100/login/oauth2/code/admin-oidc,http://f72e1293a051.c.methodot.com:33184/login/oauth2/code/admin-oidc,http://vains-sofia.gitee.io/vains3-admin-template-ts/loginRedirect,http://127.0.0.1:3000/vains3-admin-template-ts/loginRedirect',
        'user.photos,user.userInfo,all',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.client.require-proof-key\":false,\"settings.client.require-authorization-consent\":true}',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.token.reuse-refresh-tokens\":true,\"settings.token.id-token-signature-algorithm\":[\"org.springframework.security.oauth2.jose.jws.SignatureAlgorithm\",\"RS256\"],\"settings.token.access-token-time-to-live\":[\"java.time.Duration\",7200.000000000],\"settings.token.refresh-token-time-to-live\":[\"java.time.Duration\",604800.000000000]}');
INSERT INTO `oauth2_registered_client`
VALUES ('3c431544-6bd5-4c2e-ab4c-76b159d73996', 'gateway', '2021-12-17 06:15:32',
        '$2a$10$yLDXAI9F4XFCSq5/p2Et4OPZPlyURjCcD.m72dv0MPNMi6qfIOHWO', NULL, '网关',
        'https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png',
        'client_secret_basic', 'client_credentials,password,authorization_code,refresh_token',
        'http://k7fsqkhtbx.cdhttp.cn/login/oauth2/code/gateway-oidc,http://127.0.0.1:5100/code/redirect,http://k7fsqkhtbx.cdhttp.cn/code/redirect,http://f72e1293a051.c.methodot.com:33184/code/redirect',
        'user.photos,user.userInfo,all',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.client.require-proof-key\":false,\"settings.client.require-authorization-consent\":true}',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.token.reuse-refresh-tokens\":true,\"settings.token.id-token-signature-algorithm\":[\"org.springframework.security.oauth2.jose.jws.SignatureAlgorithm\",\"RS256\"],\"settings.token.access-token-time-to-live\":[\"java.time.Duration\",7200.000000000],\"settings.token.refresh-token-time-to-live\":[\"java.time.Duration\",604800.000000000]}');
INSERT INTO `oauth2_registered_client`
VALUES ('3c431544-6bd5-4c2e-ab4c-76b159d73997', 'swagger', '2022-05-16 06:15:32',
        '$2a$10$yLDXAI9F4XFCSq5/p2Et4OPZPlyURjCcD.m72dv0MPNMi6qfIOHWO', NULL, 'Swagger UI',
        'https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png',
        'client_secret_basic,client_secret_post', 'client_credentials,password,authorization_code,refresh_token',
        'http://k7fsqkhtbx.cdhttp.cn/swagger-ui/oauth2-redirect.html', 'all',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.client.require-proof-key\":false,\"settings.client.require-authorization-consent\":true}',
        '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.token.reuse-refresh-tokens\":true,\"settings.token.id-token-signature-algorithm\":[\"org.springframework.security.oauth2.jose.jws.SignatureAlgorithm\",\"RS256\"],\"settings.token.access-token-time-to-live\":[\"java.time.Duration\",7200.000000000],\"settings.token.refresh-token-time-to-live\":[\"java.time.Duration\",604800.000000000]}');

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
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('batch.schema.version','6.7.2.0',1),('cfg.execution-related-entities-count','true',1),('cfg.task-related-entities-count','true',1),('common.schema.version','6.7.2.0',1),('entitylink.schema.version','6.7.2.0',1),('eventsubscription.schema.version','6.7.2.0',1),('identitylink.schema.version','6.7.2.0',1),('job.schema.version','6.7.2.0',1),('next.dbid','1',1),('schema.history','create(6.7.2.0)',1),('schema.version','6.7.2.0',1),('task.schema.version','6.7.2.0',1),('variable.schema.version','6.7.2.0',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `TRANSACTION_ORDER_` int(11) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`) USING BTREE,
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`) USING BTREE,
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`) USING BTREE,
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_entitylink`
--

DROP TABLE IF EXISTS `act_hi_entitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_entitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `LINK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_ENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_ENT_LNK_REF_SCOPE` (`REF_SCOPE_ID_`,`REF_SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_ENT_LNK_ROOT_SCOPE` (`ROOT_SCOPE_ID_`,`ROOT_SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_ENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_entitylink`
--

LOCK TABLES `act_hi_entitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_entitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_entitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_STATUS_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`) USING BTREE,
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_tsk_log`
--

DROP TABLE IF EXISTS `act_hi_tsk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_tsk_log` (
  `ID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_tsk_log`
--

LOCK TABLES `act_hi_tsk_log` WRITE;
/*!40000 ALTER TABLE `act_hi_tsk_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_tsk_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`) USING BTREE,
  KEY `ACT_IDX_HI_PROCVAR_EXE` (`EXECUTION_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_bytearray`
--

DROP TABLE IF EXISTS `act_id_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_bytearray`
--

LOCK TABLES `act_id_bytearray` WRITE;
/*!40000 ALTER TABLE `act_id_bytearray` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_group`
--

LOCK TABLES `act_id_group` WRITE;
/*!40000 ALTER TABLE `act_id_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_info`
--

DROP TABLE IF EXISTS `act_id_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_info`
--

LOCK TABLES `act_id_info` WRITE;
/*!40000 ALTER TABLE `act_id_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`) USING BTREE,
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_membership`
--

LOCK TABLES `act_id_membership` WRITE;
/*!40000 ALTER TABLE `act_id_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_priv`
--

DROP TABLE IF EXISTS `act_id_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_priv` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `ACT_UNIQ_PRIV_NAME` (`NAME_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_priv`
--

LOCK TABLES `act_id_priv` WRITE;
/*!40000 ALTER TABLE `act_id_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_priv_mapping`
--

DROP TABLE IF EXISTS `act_id_priv_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_priv_mapping` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PRIV_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_FK_PRIV_MAPPING` (`PRIV_ID_`) USING BTREE,
  KEY `ACT_IDX_PRIV_USER` (`USER_ID_`) USING BTREE,
  KEY `ACT_IDX_PRIV_GROUP` (`GROUP_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_PRIV_MAPPING` FOREIGN KEY (`PRIV_ID_`) REFERENCES `act_id_priv` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_priv_mapping`
--

LOCK TABLES `act_id_priv_mapping` WRITE;
/*!40000 ALTER TABLE `act_id_priv_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_priv_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_property`
--

DROP TABLE IF EXISTS `act_id_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_property`
--

LOCK TABLES `act_id_property` WRITE;
/*!40000 ALTER TABLE `act_id_property` DISABLE KEYS */;
INSERT INTO `act_id_property` VALUES ('schema.version','6.7.2.0',1);
/*!40000 ALTER TABLE `act_id_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_token`
--

DROP TABLE IF EXISTS `act_id_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_token` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TOKEN_VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_DATE_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `IP_ADDRESS_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_AGENT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_DATA_` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_token`
--

LOCK TABLES `act_id_token` WRITE;
/*!40000 ALTER TABLE `act_id_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DISPLAY_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_user`
--

LOCK TABLES `act_id_user` WRITE;
/*!40000 ALTER TABLE `act_id_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_procdef_info`
--

DROP TABLE IF EXISTS `act_procdef_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_procdef_info`
--

LOCK TABLES `act_procdef_info` WRITE;
/*!40000 ALTER TABLE `act_procdef_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_procdef_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('a8c65df4-73b5-11ec-b72c-fa94c2855dc7','SpringBootAutoDeployment',NULL,NULL,'','2022-01-12 14:40:59.946',NULL,NULL,'a8c65df4-73b5-11ec-b72c-fa94c2855dc7',NULL);
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`) USING BTREE,
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) USING BTREE,
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_VERSION_` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`DERIVED_VERSION_`,`TENANT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('test1:1:a9e8e4f7-73b5-11ec-b72c-fa94c2855dc7',1,'http://www.activiti.org/processdef','test1','test1',1,'a8c65df4-73b5-11ec-b72c-fa94c2855dc7','D:\\OtherFiles\\IdeaRepository\\vains-cloud-template\\vains-flowable\\target\\classes\\processes\\test1.bpmn20.xml','D:\\OtherFiles\\IdeaRepository\\vains-cloud-template\\vains-flowable\\target\\classes\\processes\\test1.test1.png',NULL,0,1,1,'',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_actinst`
--

DROP TABLE IF EXISTS `act_ru_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT '1',
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TRANSACTION_ORDER_` int(11) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_RU_ACTI_START` (`START_TIME_`) USING BTREE,
  KEY `ACT_IDX_RU_ACTI_END` (`END_TIME_`) USING BTREE,
  KEY `ACT_IDX_RU_ACTI_PROC` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_RU_ACTI_PROC_ACT` (`PROC_INST_ID_`,`ACT_ID_`) USING BTREE,
  KEY `ACT_IDX_RU_ACTI_EXEC` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_IDX_RU_ACTI_EXEC_ACT` (`EXECUTION_ID_`,`ACT_ID_`) USING BTREE,
  KEY `ACT_IDX_RU_ACTI_TASK` (`TASK_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_actinst`
--

LOCK TABLES `act_ru_actinst` WRITE;
/*!40000 ALTER TABLE `act_ru_actinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_deadletter_job`
--

DROP TABLE IF EXISTS `act_ru_deadletter_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
  KEY `ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
  KEY `ACT_IDX_DEADLETTER_JOB_CORRELATION_ID` (`CORRELATION_ID_`) USING BTREE,
  KEY `ACT_IDX_DJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_DJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_DJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
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

LOCK TABLES `act_ru_deadletter_job` WRITE;
/*!40000 ALTER TABLE `act_ru_deadletter_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_deadletter_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_entitylink`
--

DROP TABLE IF EXISTS `act_ru_entitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_entitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LINK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_ENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
  KEY `ACT_IDX_ENT_LNK_REF_SCOPE` (`REF_SCOPE_ID_`,`REF_SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
  KEY `ACT_IDX_ENT_LNK_ROOT_SCOPE` (`ROOT_SCOPE_ID_`,`ROOT_SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE,
  KEY `ACT_IDX_ENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_entitylink`
--

LOCK TABLES `act_ru_entitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_entitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_entitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`) USING BTREE,
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_MI_ROOT_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int(11) DEFAULT NULL,
  `TASK_COUNT_` int(11) DEFAULT NULL,
  `JOB_COUNT_` int(11) DEFAULT NULL,
  `TIMER_JOB_COUNT_` int(11) DEFAULT NULL,
  `SUSP_JOB_COUNT_` int(11) DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int(11) DEFAULT NULL,
  `EXTERNAL_WORKER_JOB_COUNT_` int(11) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_STATUS_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`) USING BTREE,
  KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`) USING BTREE,
  KEY `ACT_IDX_EXEC_REF_ID_` (`REFERENCE_ID_`) USING BTREE,
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`) USING BTREE,
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`) USING BTREE,
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_external_job`
--

DROP TABLE IF EXISTS `act_ru_external_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_external_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_EXTERNAL_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
  KEY `ACT_IDX_EXTERNAL_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
  KEY `ACT_IDX_EXTERNAL_JOB_CORRELATION_ID` (`CORRELATION_ID_`) USING BTREE,
  KEY `ACT_IDX_EJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_EJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_EJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  CONSTRAINT `ACT_FK_EXTERNAL_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_EXTERNAL_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_external_job`
--

LOCK TABLES `act_ru_external_job` WRITE;
/*!40000 ALTER TABLE `act_ru_external_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_external_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_history_job`
--

DROP TABLE IF EXISTS `act_ru_history_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_history_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ADV_HANDLER_CFG_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_history_job`
--

LOCK TABLES `act_ru_history_job` WRITE;
/*!40000 ALTER TABLE `act_ru_history_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_history_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`) USING BTREE,
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`) USING BTREE,
  KEY `ACT_IDX_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_IDENT_LNK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`) USING BTREE,
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`) USING BTREE,
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
  KEY `ACT_IDX_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
  KEY `ACT_IDX_JOB_CORRELATION_ID` (`CORRELATION_ID_`) USING BTREE,
  KEY `ACT_IDX_JOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_JOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_JOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
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

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_suspended_job`
--

DROP TABLE IF EXISTS `act_ru_suspended_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
  KEY `ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
  KEY `ACT_IDX_SUSPENDED_JOB_CORRELATION_ID` (`CORRELATION_ID_`) USING BTREE,
  KEY `ACT_IDX_SJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_SJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_SJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
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

LOCK TABLES `act_ru_suspended_job` WRITE;
/*!40000 ALTER TABLE `act_ru_suspended_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_suspended_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  `SUB_TASK_COUNT_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`) USING BTREE,
  KEY `ACT_IDX_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`) USING BTREE,
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_timer_job`
--

DROP TABLE IF EXISTS `act_ru_timer_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`) USING BTREE,
  KEY `ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`) USING BTREE,
  KEY `ACT_IDX_TIMER_JOB_CORRELATION_ID` (`CORRELATION_ID_`) USING BTREE,
  KEY `ACT_IDX_TIMER_JOB_DUEDATE` (`DUEDATE_`) USING BTREE,
  KEY `ACT_IDX_TJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_TJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_TJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`) USING BTREE,
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`) USING BTREE,
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

LOCK TABLES `act_ru_timer_job` WRITE;
/*!40000 ALTER TABLE `act_ru_timer_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_timer_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `ACT_IDX_RU_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_IDX_RU_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`) USING BTREE,
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`) USING BTREE,
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`) USING BTREE,
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`) USING BTREE,
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_channel_definition`
--

DROP TABLE IF EXISTS `flw_channel_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_channel_definition` (
  `ID_` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `IMPLEMENTATION_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `ACT_IDX_CHANNEL_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_channel_definition`
--

LOCK TABLES `flw_channel_definition` WRITE;
/*!40000 ALTER TABLE `flw_channel_definition` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_channel_definition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_ev_databasechangelog`
--

DROP TABLE IF EXISTS `flw_ev_databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_ev_databasechangelog` (
  `ID` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `AUTHOR` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `FILENAME` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `MD5SUM` varchar(35) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LIQUIBASE` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `CONTEXTS` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `LABELS` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_ev_databasechangelog`
--

LOCK TABLES `flw_ev_databasechangelog` WRITE;
/*!40000 ALTER TABLE `flw_ev_databasechangelog` DISABLE KEYS */;
INSERT INTO `flw_ev_databasechangelog` VALUES ('1','flowable','org/flowable/eventregistry/db/liquibase/flowable-eventregistry-db-changelog.xml','2022-01-12 22:39:56',1,'EXECUTED','8:1b0c48c9cf7945be799d868a2626d687','createTable tableName=FLW_EVENT_DEPLOYMENT; createTable tableName=FLW_EVENT_RESOURCE; createTable tableName=FLW_EVENT_DEFINITION; createIndex indexName=ACT_IDX_EVENT_DEF_UNIQ, tableName=FLW_EVENT_DEFINITION; createTable tableName=FLW_CHANNEL_DEFIN...','',NULL,'3.10.3',NULL,NULL,'1998395602'),('2','flowable','org/flowable/eventregistry/db/liquibase/flowable-eventregistry-db-changelog.xml','2022-01-12 22:39:57',2,'EXECUTED','8:0ea825feb8e470558f0b5754352b9cda','addColumn tableName=FLW_CHANNEL_DEFINITION; addColumn tableName=FLW_CHANNEL_DEFINITION','',NULL,'3.10.3',NULL,NULL,'1998395602'),('3','flowable','org/flowable/eventregistry/db/liquibase/flowable-eventregistry-db-changelog.xml','2022-01-12 22:39:57',3,'EXECUTED','8:3c2bb293350b5cbe6504331980c9dcee','customChange','',NULL,'3.10.3',NULL,NULL,'1998395602');
/*!40000 ALTER TABLE `flw_ev_databasechangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_ev_databasechangeloglock`
--

DROP TABLE IF EXISTS `flw_ev_databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_ev_databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_ev_databasechangeloglock`
--

LOCK TABLES `flw_ev_databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `flw_ev_databasechangeloglock` DISABLE KEYS */;
INSERT INTO `flw_ev_databasechangeloglock` VALUES (1,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `flw_ev_databasechangeloglock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_event_definition`
--

DROP TABLE IF EXISTS `flw_event_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_event_definition` (
  `ID_` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE KEY `ACT_IDX_EVENT_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_event_definition`
--

LOCK TABLES `flw_event_definition` WRITE;
/*!40000 ALTER TABLE `flw_event_definition` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_event_definition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_event_deployment`
--

DROP TABLE IF EXISTS `flw_event_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_event_deployment` (
  `ID_` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DEPLOY_TIME_` datetime(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_event_deployment`
--

LOCK TABLES `flw_event_deployment` WRITE;
/*!40000 ALTER TABLE `flw_event_deployment` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_event_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_event_resource`
--

DROP TABLE IF EXISTS `flw_event_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_event_resource` (
  `ID_` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `RESOURCE_BYTES_` longblob,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_event_resource`
--

LOCK TABLES `flw_event_resource` WRITE;
/*!40000 ALTER TABLE `flw_event_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_event_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_ru_batch`
--

DROP TABLE IF EXISTS `flw_ru_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_ru_batch` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin NOT NULL,
  `SEARCH_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NOT NULL,
  `COMPLETE_TIME_` datetime(3) DEFAULT NULL,
  `STATUS_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BATCH_DOC_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_ru_batch`
--

LOCK TABLES `flw_ru_batch` WRITE;
/*!40000 ALTER TABLE `flw_ru_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_ru_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flw_ru_batch_part`
--

DROP TABLE IF EXISTS `flw_ru_batch_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flw_ru_batch_part` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BATCH_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin NOT NULL,
  `SCOPE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SEARCH_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NOT NULL,
  `COMPLETE_TIME_` datetime(3) DEFAULT NULL,
  `STATUS_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RESULT_DOC_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  KEY `FLW_IDX_BATCH_PART` (`BATCH_ID_`) USING BTREE,
  CONSTRAINT `FLW_FK_BATCH_PART_PARENT` FOREIGN KEY (`BATCH_ID_`) REFERENCES `flw_ru_batch` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flw_ru_batch_part`
--

LOCK TABLES `flw_ru_batch_part` WRITE;
/*!40000 ALTER TABLE `flw_ru_batch_part` DISABLE KEYS */;
/*!40000 ALTER TABLE `flw_ru_batch_part` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-26  1:30:35