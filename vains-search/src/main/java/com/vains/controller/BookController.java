package com.vains.controller;

import com.vains.entity.Book;
import com.vains.repository.BookRepository;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 测试 接口
 *
 * @author vains
 */
@RestController
@AllArgsConstructor
@Api(tags = "测试搜索接口")
public class BookController {

    private final BookRepository bookRepository;

    @GetMapping("/list")
    @ApiOperation("分页查询")
    public Page<Book> list(Pageable pageable) {
        return bookRepository.findAll(pageable);
    }

    @GetMapping("/save")
    @ApiOperation("添加一条数据")
    public Book save(Book book) {
        return bookRepository.save(book);
    }

    @ApiOperation("根据名字查询")
    @GetMapping("/findByName")
    public Page<Book> findByName(String name, Pageable pageable) {
        System.out.println(SecurityContextHolder.getContext().getAuthentication());
        return bookRepository.findByName(name, pageable);
    }

}
