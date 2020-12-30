package com.demo.springdemo.service;

import java.util.List;

import com.demo.springdemo.entity.User;

public interface UserService {

	public void saveUser(User user);
	
	public List<User> getUsers();
	
	public User getUser(String userId);
	
	public void deleteUser(String userId);
	
	public boolean loginUser(String userId, String password);
}
