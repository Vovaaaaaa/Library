package com.spring.shop.repository;

import com.spring.shop.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    User findByName(String name);

    User findById(long id);

    List<User> findAll();

    User save(User user);

    User findByActivationCode(String code);

}
