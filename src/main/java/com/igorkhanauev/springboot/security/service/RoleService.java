package com.igorkhanauev.springboot.security.service;


import com.igorkhanauev.springboot.security.model.Role;

import java.util.List;

public interface RoleService {
    List<Role> getAllRoles();
}
