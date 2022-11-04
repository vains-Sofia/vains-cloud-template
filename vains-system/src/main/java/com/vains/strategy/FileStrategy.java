package com.vains.strategy;

import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 文件策略类
 *
 * @author vains
 */
public interface FileStrategy {

    /**
     * 上传文件
     *
     * @param files 文件列表
     * @return url路径
     */
    List<String> upload(List<MultipartFile> files);

    /**
     * 下载文件
     */
    void download();

}