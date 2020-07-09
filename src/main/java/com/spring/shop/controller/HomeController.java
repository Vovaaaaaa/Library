package com.spring.shop.controller;

import com.spring.shop.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @Autowired
    private HomeService homeService;

    @GetMapping
    public String homePage(Model model) {
        int message = homeService.method();
        String date = homeService.date();

        model.addAttribute("message", message);
        model.addAttribute("date", date);

        return "homePage";
    }
}
