package com.spring.shop.controller;

import com.spring.shop.model.User;
import com.spring.shop.service.BookService;
import com.spring.shop.service.UserPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UsersOwnPageController {

    @Autowired
    private UserPageService userPageService;
    @Autowired
    private BookService bookService;

    @GetMapping("/library/users_own_page")
    public String userPage() {
        return "usersOwnPage";
    }

    @GetMapping("/library/users_own_page/filter")
    public String findBookByName() {
        return "booksFilter";
    }

    @PostMapping("/library/users_own_page/filter")
    public String findBookByName(@RequestParam String book, Model model) {
        model.addAttribute("books", bookService.findBookByName(book));
        return "booksFilter";
    }
}
