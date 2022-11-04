package com.vains.strategy.context;

import com.vains.strategy.FileStrategy;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;

import java.util.Map;

/**
 * 文件处理策略上下文，通过该类获取对应实例
 *
 * @author vains
 */
@Component
@RequiredArgsConstructor
public class FileContext {

    private final Map<String, FileStrategy> fileStrategyMap;

    /**
     * 根据类型名获取对应实例
     *
     * @param name 类型名
     * @return 实例
     */
    public FileStrategy getInstance(String name) {
        if (ObjectUtils.isEmpty(name)) {
            return null;
        }
        return fileStrategyMap.get(name);
    }

}