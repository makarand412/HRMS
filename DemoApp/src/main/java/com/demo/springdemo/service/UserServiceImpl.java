package com.demo.springdemo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.springdemo.dao.UserDAO;
import com.demo.springdemo.entity.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDAO userDAO;

	@Transactional
	public void saveUser(User user) {
		userDAO.saveUser(user);		
	}

	@Transactional
	public List<User> getUsers() {
		return userDAO.getUsers();
	}

	@Transactional
	public User getUser(String userId) {
		return userDAO.getUser(userId);
	}

	@Transactional
	public void deleteUser(String userId) {
		userDAO.deleteUser(userId);		
	}

	@Transactional
	public boolean loginUser(String userId, String password) {		
		return userDAO.loginUser(userId, password);
	}

}
