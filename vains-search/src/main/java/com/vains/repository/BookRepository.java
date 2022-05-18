package com.vains.repository;

import com.vains.entity.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

/**
 * 测试 repository
 *
 * @author vains
 */
public interface BookRepository extends ElasticsearchRepository<Book, Long> {

    /**
     * 分页查询
     * @param name 名字
     * @param pageable 分页参数
     * @return 分页对象
     */
    Page<Book> findByName(String name, Pageable pageable);

}
