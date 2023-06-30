package com.user.mapper;

import com.user.model.NotUserException;
import com.user.model.UserVO;

public interface UserMapper {
	
	int createUser(UserVO user);

	Integer idCheck(String mid);

	UserVO loginCheck(String userid, String pwd) throws NotUserException;

}
