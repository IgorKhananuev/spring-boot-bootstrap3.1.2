package com.igorkhanauev.springboot.security.service;

import com.igorkhanauev.springboot.security.model.Role;
import com.igorkhanauev.springboot.security.model.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

public interface UserService {
    List<User> getAllUsers();

    void save(User user);

    User show(Long id);

    void update(User user, String[] role);

    Role showRole(Long id);

    void delete(Long id);

    User findByUserName(String userName);
}
