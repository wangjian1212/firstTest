package com.sinosoft.exam.user.service;

import com.sinosoft.exam.user.model.User;

public interface UserService {
	/**
	 * 通过用户名获取用户
	 * @param name
	 * @return
	 */
	public User getUserByName(String name);

	/**
	 * 注册用户
	 * @param user
	 * @return
	 */
	public int saveUser(User user);

}
