package com.vains.strategy.client;

import com.vains.strategy.FileStrategy;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * Ftp 客户端
 *
 * @author vains
 */
@Component("ftp")
public class FtpFileClient implements FileStrategy {

    @Override
    public List<String> upload(List<MultipartFile> files) {
        throw new UnsupportedOperationException("暂不支持Ftp方式上传文件.");
    }

    @Override
    public void download() {
        throw new UnsupportedOperationException("暂不支持Ftp方式下载文件.");
    }
}