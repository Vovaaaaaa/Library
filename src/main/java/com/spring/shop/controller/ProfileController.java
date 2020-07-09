package com.spring.shop.controller;

import com.spring.shop.model.User;
import com.spring.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
public class ProfileController {

    @Autowired
    private UserService userService;

    @GetMapping("/profile")
    public String profileUpdate(Model model, @AuthenticationPrincipal User user) {
        //model.addAttribute("name", user.getName());

        return "profile";
    }

    @PostMapping("/profile")
    public String profileUpdate(@AuthenticationPrincipal @Valid User user, @RequestParam String password, @RequestParam String password2, Model model) {

//        if (user.getPassword() != null && !user.getPassword().equals(user.getPassword2())) {
//            model.addAttribute("passwordError", "Passwords are different");
//            return "profile";
//        }
//
        if (userService.updateProfile(user, password, password2) == null) {
            model.addAttribute("passwordError", "Password cannot be empty");
            return "profile";
        }

        userService.updateProfile(user, password, password2);
        return "redirect:/login";
    }
}
