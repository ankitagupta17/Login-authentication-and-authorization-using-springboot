package com.example.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.example.shared.dto.UserDto;

public interface UserService extends UserDetailsService{


	UserDto createUser(UserDto userDto);
	UserDto getUser(String email);
	UserDto getUserByUserId(String userId);

}
