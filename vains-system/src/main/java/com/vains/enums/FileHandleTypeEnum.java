package com.vains.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

/**
 * 文件上传类型枚举
 * @author vains
 */
@Getter
@RequiredArgsConstructor
public enum FileHandleTypeEnum implements BaseEnum<FileHandleTypeEnum, String> {

    /**
     * 本地磁盘文件
     */
    DISK_FILE("本地磁盘", "disk"),

    /**
     * Ftp文件
     */
    FTP_FILE("Ftp服务", "ftp"),

    /**
     * 腾讯云文件
     */
    TENCENT_OSS_FILE("腾讯云oss对象存储", "tencentOss");

    /**
     * 枚举说明
     */
    private final String name;

    /**
     * 枚举值
     */
    private final String value;

    @Override
    public String getValue() {
        return value;
    }
}