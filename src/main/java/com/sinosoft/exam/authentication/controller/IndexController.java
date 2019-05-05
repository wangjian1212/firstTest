package com.sinosoft.exam.authentication.controller;

import com.sinosoft.exam.user.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class IndexController {
	private static Logger logger = LoggerFactory.getLogger(RegisterController.class);
	@RequestMapping("/")
	public ModelAndView index(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		ModelAndView mv = new ModelAndView();
		if(null == user){//未登录，去登陆
			logger.debug("当前用户没有登陆，去登陆");
			mv.setViewName("login");
		}else{

			mv.setViewName("redirect:/quest/list/0");
		}
		return mv;
	}
}
