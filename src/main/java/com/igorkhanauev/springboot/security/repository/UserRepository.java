package com.igorkhanauev.springboot.security.repository;

import com.igorkhanauev.springboot.security.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
public interface UserRepository extends JpaRepository <User, Long> {
    User findByUsername(String username);
    Optional<User> findById(Long Id);
}
