package com.vains.strategy.client;

import com.baomidou.mybatisplus.core.toolkit.IdWorker;
import com.vains.strategy.FileStrategy;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

/**
 * 服务器磁盘客户端
 *
 * @author vains
 */
@Slf4j
@Component("disk")
public class DiskFileClient implements FileStrategy {

    @Override
    public List<String> upload(List<MultipartFile> files) {
        List<String> urls = new ArrayList<>();
        String defaultPath = System.getProperty("user.dir") + File.separator + "files" + File.separator;
        File defaultFilePath = new File(defaultPath);
        if (!defaultFilePath.exists() && !defaultFilePath.mkdirs()) {
            log.warn("上传目录 [{}] 创建失败.", defaultFilePath.getAbsolutePath());
            throw new RuntimeException("上传目录 [" + defaultFilePath.getAbsolutePath() + "] 创建失败.");
        }
        for (MultipartFile file : files) {
            if (file.isEmpty()) {
                continue;
            }
            String originalFilename = file.getOriginalFilename();
            String fileName = IdWorker.getId() + originalFilename.substring(originalFilename.lastIndexOf("."));
            try {
                file.transferTo(Paths.get(defaultFilePath.getAbsolutePath(), fileName));
            } catch (IOException e) {
                log.error("文件 [{}] 上传失败. 原因：{}", originalFilename, e.getMessage());
                throw new RuntimeException(e.getMessage());
            }
            urls.add("/files/" + fileName);
        }
        return urls;
    }

    @Override
    public void download() {
        log.info("下载文件...");
    }
}