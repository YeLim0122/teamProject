package com.user.service;

import com.user.model.NotUserException;
import com.user.model.UserVO;

public interface UserService {
	
	int createUser(UserVO user);

	boolean idCheck(String mid);

	UserVO loginCheck(String userid, String pwd) throws NotUserException;

}
