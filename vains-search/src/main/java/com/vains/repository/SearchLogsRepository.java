package com.vains.repository;

import com.vains.entity.SearchLogs;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

import java.time.LocalDateTime;

/**
 * 搜索日志 接口
 *
 * @author vains
 */
public interface SearchLogsRepository extends ElasticsearchRepository<SearchLogs, String> {

    /**
     * 查询不等于时间戳的数据，数量由参数 pageable控制
     * @param pageable 分页参数
     * @param timestamp 时间戳
     * @return 分页列表
     */
    Page<SearchLogs> findAllByTimestampNotOrderByTimestampDesc(LocalDateTime timestamp, Pageable pageable);

}
