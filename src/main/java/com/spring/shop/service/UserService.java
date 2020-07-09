package com.spring.shop.service;

import com.spring.shop.model.User;
import com.spring.shop.model.enums.Role;
import com.spring.shop.model.enums.Status;
import com.spring.shop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private MailSenderService mailSenderService;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    public User findByName(String name) {
        User user = userRepository.findByName(name);
        return user;
    }

    public User createUser(User user) {

        user.setName(user.getName());
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setStatus(Status.ACTIVE);
        user.setRoles(Collections.singleton(Role.USER));
        user.setActivationCode(UUID.randomUUID().toString());

        sendMessage(user);

        return userRepository.save(user);
    }

    private void sendMessage(User user) {
        if (!StringUtils.isEmpty(user.getEmail())) {

            String message = String.format(
                    "Hello, %s \n" + "Welcome to Library. Please visit your email: " +
                            "http:/localhost:8080/activate/%s",
                            user.getName(),
                            user.getActivationCode());

            mailSenderService.send(user.getEmail(), "Activation code", message);
        }
    }

    public List<User> users() {
        return userRepository.findAll();
    }

    public User findById(long id) {
        return userRepository.findById(id);
    }

    public User editUser(Map<String, String> form, Status status, User user) {
        user.setStatus(status);

        Set<String> roles = Arrays.stream(Role.values()).map(Role::name).collect(Collectors.toSet());
        user.getRoles().clear();
        for (String key : form.keySet()) {
            if (roles.contains(key)) {
                user.getRoles().add(Role.valueOf(key));
            }
        }

        return userRepository.save(user);
    }

    public User updateProfile(User user, String password, String password2) {   //???
        if (!StringUtils.isEmpty(password)) {
            user.setName(user.getName());
            user.setPassword(passwordEncoder.encode(password));
            user.setPassword2(password2);
            return userRepository.save(user);
        }
        return null;
    }

    public boolean activationCode(String code) {
        User user = userRepository.findByActivationCode(code);
        if(user == null){
            return false;
        }
        user.setActivationCode(null);
        userRepository.save(user);

        return true;
    }
}
