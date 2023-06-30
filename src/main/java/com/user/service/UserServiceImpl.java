package com.user.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.user.mapper.UserMapper;
import com.user.model.NotUserException;
import com.user.model.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Inject
	private UserMapper userMapper;
	
	@Override
	public int createUser(UserVO user) {
		
		return this.userMapper.createUser(user);
	}

	@Override
	public boolean idCheck(String mid) {
		Integer idx = userMapper.idCheck(mid);
		System.out.println("idx: "+idx);
		if (idx == null) return true;
		
		return false;
	}

	@Override
	public UserVO loginCheck(String userid, String pwd) throws NotUserException {
		// TODO Auto-generated method stub
		return null;
	}

}
