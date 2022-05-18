package com.vains.entity;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.DateFormat;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;

import java.time.LocalDateTime;

/**
 * 搜索日志
 *
 * @author vains
 */
@Data
@Document(indexName = "search_logs")
public class SearchLogs {

    @Id
    private String id;

    /**
     * 日志
     */
    private String message;

    /**
     * ip
     */
    private String host;

    /**
     * 严重性 日志等级
     */
    private String severity;

    /**
     * 线程名
     */
    private String thread;

    /**
     * 打印的类
     */
    private String logger;

    /**
     * 输出事件戳
     */
    @Field(format = DateFormat.date_hour_minute_second_fraction)
    private LocalDateTime timestamp;

    /**
     * 异常堆栈
     */
    private String stacktrace;

    /**
     * 彩色日志
     */
    private String colourMessage;

}
