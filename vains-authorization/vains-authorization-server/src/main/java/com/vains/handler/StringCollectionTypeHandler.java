package com.vains.handler;

import com.baomidou.mybatisplus.extension.handlers.AbstractJsonTypeHandler;
import org.springframework.util.StringUtils;

import java.util.Collection;

/**
 * 集合序列化处理方式
 *
 * @author vains
 */
public class StringCollectionTypeHandler extends AbstractJsonTypeHandler<Collection<String>> {

    @Override
    protected Collection<String> parse(String json) {
        return StringUtils.commaDelimitedListToSet(json);
    }

    @Override
    protected String toJson(Collection<String> strings) {
        return StringUtils.collectionToCommaDelimitedString(strings);
    }

}
