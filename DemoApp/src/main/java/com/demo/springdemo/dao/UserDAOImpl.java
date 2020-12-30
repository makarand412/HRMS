package com.demo.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.springdemo.entity.User;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	
	
	public void saveUser(User user) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(user);
	}
	
	public List<User> getUsers() {

		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<User> theQuery = currentSession.createQuery("from User", User.class);
		
		List<User> user = theQuery.getResultList();
		
		return user;
	}

	public User getUser(String userId) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		User theUser = currentSession.get(User.class, userId);
		
		return theUser;
	}

	public void deleteUser(String userId) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query theQuery = currentSession.createQuery("delete from User where userId=:userId");
		
		theQuery.setParameter("userId", userId);
		
		theQuery.executeUpdate();
		
	}

	public boolean loginUser(String userId, String password) {
		
		boolean validUser = false;
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<User> theQuery = currentSession.createQuery("from User where userId=:userId and Password=:Password", User.class);
		
		theQuery.setParameter("userId", userId);
		theQuery.setParameter("Password", password);
		
		System.out.println("userId: "+userId+" Password"+password);
		
		List<User> theList = theQuery.getResultList();
		
		if((theList != null) && (theList.size()>0)) {
			validUser = true;
		}
		
		return validUser;
	}

}
