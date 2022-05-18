package com.vains.controller;

import com.vains.entity.SearchLogs;
import com.vains.repository.SearchLogsRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

/**
 * 搜索 接口
 *
 * @author vains
 */
@RestController
@AllArgsConstructor
@RequestMapping("/search")
public class SearchLogsController {

    private final SearchLogsRepository searchLogsRepository;

    @GetMapping("/list")
    public Iterable<SearchLogs> list(Pageable pageable) {
        return searchLogsRepository.findAllByTimestampNotOrderByTimestampDesc(LocalDateTime.now(), pageable);
    }

}
