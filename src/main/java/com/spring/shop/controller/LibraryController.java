package com.spring.shop.controller;

import com.spring.shop.model.Book;
import com.spring.shop.service.BookService;
import com.spring.shop.service.ControllerUtilsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class LibraryController {

    @Autowired
    private BookService bookService;

    @Autowired
    private ControllerUtilsService utils;

    @GetMapping("/library")
    public String allBooks(Model model) {                                    //All
        model.addAttribute("books", bookService.findAll());
        return "/library";
    }

    @GetMapping("/book/{id}")
    public String bookInfo(@PathVariable long id, Model model) {        //information
        model.addAttribute("book", bookService.getById(id));
        return "bookInformation";
    }

    @GetMapping("/add_book")                                                  //create book
    public String addBook() {
        return "addBook";
    }

    @PostMapping("/add_book")
    public String addBook(@ModelAttribute @Valid Book book, BindingResult bindingResult, Model model) {

        if (bindingResult.hasErrors()) {
            model.mergeAttributes(utils.getErrors(bindingResult));
            model.addAttribute("message", book);
            return "addBook";
        }
        model.addAttribute("message", null);
        bookService.save(book);

        return "redirect:/book/" + book.getId();

    }

    @GetMapping("/delete/{id}")
    public String deleteBook(Book book) {                                      //delete
        bookService.delete(book);
        return "redirect:/library";
    }

    @GetMapping("/update/{id}")
    public String editBook(@PathVariable("id") long id, Model model) {         //update
        model.addAttribute("book", bookService.getById(id));
        return "editBook";
    }

    @PostMapping("/update/{id}")
    public String editBook(@RequestParam String name,
                           @RequestParam String author,
                           @RequestParam int price,
                           @RequestParam("book  Id") Book book) {

        bookService.editBook(name, author, price, book);
        return "redirect:/library";
    }

}

