package com.crpdev.login;

public class LoginService {
	
	public boolean isUserValid(String username, String password) {
		
		if("crpdev".equals(username) && "test123".contentEquals(password))
			return true;
		
		return false;
	}

}
