package com.spring.shop.service;

import com.spring.shop.model.User;
import com.spring.shop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserPageService {

    @Autowired
    private UserRepository userRepository;

    public User userName(String name){
        return  userRepository.findByName(name);
    }
}
