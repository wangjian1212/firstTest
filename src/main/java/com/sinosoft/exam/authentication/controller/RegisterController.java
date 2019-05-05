package com.sinosoft.exam.authentication.controller;

import com.sinosoft.exam.tools.StringProcessor;
import com.sinosoft.exam.user.model.User;
import com.sinosoft.exam.user.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class RegisterController {
	@Autowired
	UserService userService;
	private static Logger logger = LoggerFactory.getLogger(RegisterController.class);

	/**
	 * 前往注册页面
	 * @return
	 */
	@RequestMapping("/toRegister")
	public String toRegister() {
		return "register";
	}

	/**
	 * 用户注册
	 * @param request
	 * @param userName
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/register", method= RequestMethod.POST)
	public String register(HttpServletRequest request,  String userName, String password){
		User user = new User();
		user.setName(userName);
		user.setPassword(StringProcessor.getMD5(password));
		int  result = userService.saveUser(user);
		logger.debug("用户注册状态："+result);
		return result > 0 ? "true" : "false";
	}

	/**
	 * 校验用户名是否重复
	 * @param request
	 * @param userName
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/checkUserNameUnique", method= RequestMethod.POST)
	public String checkUserNameUnique(HttpServletRequest request, String userName){
		User user = userService.getUserByName(userName);
		return null == user ? "true": "false";
	}

}
