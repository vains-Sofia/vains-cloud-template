package com.vains.entity;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;
import org.springframework.data.elasticsearch.annotations.Setting;

/**
 * 测试实体
 *
 * @author vains
 */
@Data
@Document(indexName = "book")
@Setting(settingPath = "elasticsearch/settings.json")
public class Book {

    /**
     * 主键
     */
    @Id
    private Long id;

    /**
     * 标题
     */
    @Field(analyzer = "ik_synonym_max", searchAnalyzer = "ik_synonym_max", type = FieldType.Text)
    private String name;

    /**
     * 内容
     */
    private String content;
    
}
