package com.sinosoft.exam.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sinosoft.exam.user.mapper.UserMapper;
import com.sinosoft.exam.user.model.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserMapper userMapper;

	@Override
	public User getUserByName(String name) {
		return userMapper.getUserByName(name);
	}

	@Override
	public int saveUser(User user) {

		return userMapper.saveUser(user);
	}

}
