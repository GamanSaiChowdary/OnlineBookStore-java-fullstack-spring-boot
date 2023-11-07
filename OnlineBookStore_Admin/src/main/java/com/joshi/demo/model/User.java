package com.joshi.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Transient;

@Entity
public class User {
	
	@Id
	String email;
	String name;
	Long phno;
	String address;
	String password;
	
	@Transient
	String confirmPassword;
	
	@Transient
	String hiddenCaptcha;
	
	@Transient
	String captcha;
	
	@Transient
	String realCaptcha;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getPhno() {
		return phno;
	}

	public void setPhno(Long phno) {
		this.phno = phno;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getHiddenCaptcha() {
		return hiddenCaptcha;
	}

	public void setHiddenCaptcha(String hiddenCaptcha) {
		this.hiddenCaptcha = hiddenCaptcha;
	}

	public String getCaptcha() {
		return captcha;
	}

	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}

	public String getRealCaptcha() {
		return realCaptcha;
	}

	public void setRealCaptcha(String realCaptcha) {
		this.realCaptcha = realCaptcha;
	}

	@Override
	public String toString() {
		return "User [email=" + email + ", name=" + name + ", phno=" + phno + ", address=" + address + ", password="
				+ password + ", confirmPassword=" + confirmPassword + ", hiddenCaptcha=" + hiddenCaptcha + ", captcha="
				+ captcha + ", realCaptcha=" + realCaptcha + "]";
	}
	
	
}
