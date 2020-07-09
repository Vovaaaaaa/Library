package com.spring.shop.controller;

import com.spring.shop.model.User;
import com.spring.shop.model.enums.Role;
import com.spring.shop.model.enums.Status;
import com.spring.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/admin_page")
public class AdminController {

    @Autowired
    private UserService userService;

    @GetMapping
    public String users(Model model) {
        model.addAttribute("users", userService.users());
        return "adminPage";
    }

    @GetMapping("/editUser/{id}")
    public String editUser(@PathVariable("id") long id, Model model) {
        model.addAttribute("user", userService.findById(id));
        model.addAttribute("roles", Role.values());
        model.addAttribute("status", Status.values());

        return "editUser";
    }

    @PostMapping("/editUser/{id}")
    public String editUser(@RequestParam Map<String, String> form,
                           @RequestParam Status status,
                           @RequestParam("userId") User user) {

        userService.editUser(form, status, user);
        return "redirect:/admin_page";
    }
}
