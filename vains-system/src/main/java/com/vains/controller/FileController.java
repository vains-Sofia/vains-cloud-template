package com.vains.controller;

import com.vains.enums.FileHandleTypeEnum;
import com.vains.model.Result;
import com.vains.strategy.context.FileContext;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.Collections;
import java.util.List;

/**
 * 文件接口
 *
 * @author vains
 */
@RestController
@Api(tags = "文件接口")
@RequestMapping("/file")
@RequiredArgsConstructor
public class FileController {

    private final FileContext fileContext;

    @PostMapping("/upload")
    @ApiOperation("上传文件")
    public Result<List<String>> upload(@RequestParam("file") MultipartFile file) {
        return Result.success(fileContext.getInstance(FileHandleTypeEnum.DISK_FILE.getValue()).upload(Collections.singletonList(file)));
    }

}