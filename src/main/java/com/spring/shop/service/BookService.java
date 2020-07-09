package com.spring.shop.service;

import com.spring.shop.model.Book;
import com.spring.shop.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;

    public List<Book> findAll() {
        return bookRepository.findAll();
    }

    public Book getById(long id) {
        return bookRepository.getById(id);
    }

    public Book save(Book book) {
        return bookRepository.save(book);
    }

    public void delete(Book book) {
        bookRepository.delete(book);
    }

    public Book editBook(String name, String author, int price, Book book) {
        book.setName(name);
        book.setAuthor(author);
        book.setPrice(price);

        return bookRepository.save(book);
    }

    public List<Book> findBookByName(String book) {
        List<Book> books;
        if (book != null && !book.isEmpty()) {
            books = bookRepository.findByName(book);
        } else {
            books = bookRepository.findAll();
        }
        return books;
    }
}
