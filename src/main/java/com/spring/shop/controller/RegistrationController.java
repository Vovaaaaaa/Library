package com.spring.shop.controller;

import com.spring.shop.model.User;
import com.spring.shop.service.ControllerUtilsService;
import com.spring.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class RegistrationController {

    @Autowired
    private UserService userService;
    @Autowired
    private ControllerUtilsService util;

    @GetMapping("/login")
    public String singIn() {
        return "login";
    }

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(@ModelAttribute("user") @Valid User user, BindingResult bindingResult, Model model) {
        User userFromDb = userService.findByName(user.getName());

        if (user.getPassword() != null && !user.getPassword().equals(user.getPassword2())) {
            model.addAttribute("passwordError", "Passwords are different");
            return "registration";
        }
        if (bindingResult.hasErrors()) {
            model.mergeAttributes(util.getErrors(bindingResult));
            return "registration";
        }
        if (userFromDb != null) {
            model.addAttribute("nameError", "User with this name is already created!");
            return "registration";
        }
        userService.createUser(user);

        return "redirect:/login";
    }

    @GetMapping("/activate/{code}")
    public String activate(@PathVariable String code, Model model){
        boolean isActivated = userService.activationCode(code);

        if(isActivated){
            model.addAttribute("goodMessage", "User successfully activated");
        }else{
            model.addAttribute("badMessage", "Activated code was not find");
        }
        return "login";
    }
}
