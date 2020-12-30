package com.demo.springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "user")
public class User {

	@Id
	@Column(name = "user_id")
	@NotNull(message = "is required")
	@Size(min = 5, message = "User Id size must be greatr than 5")
	String userId;

	@NotNull(message = "is required")
	@Size(min = 8, message = "minimum 8 charaters and alphabets required")
	@Column(name = "password")
	String Password;

	
	@Column(name = "first_name")
	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
     String firstName;

	@Column(name = "middle_name")
	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	String middleName;

	@Column(name = "last_name")
	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	String lastName;

	@Column(name = "gender")
	@NotNull(message = "Please select gender")
	String gender;

	public User() {
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", Password=" + Password + ", firstName=" + firstName + ", middleName="
				+ middleName + ", lastName=" + lastName + ", gender=" + gender + "]";
	}

}
