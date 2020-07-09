package com.spring.shop.repository;

import com.spring.shop.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookRepository extends JpaRepository<Book, Long> {

    List<Book> findAll();

    Book getById(long id);

    Book save(Book book);

    void delete(Book book);

    List<Book> findByName(String name);

}
