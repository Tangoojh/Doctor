package com.zhiyou100.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhiyou100.Service.UserService;
import com.zhiyou100.model.User;
@Controller
public class LoginUserController {
	@Autowired
    private UserService userService;
	@RequestMapping("/login")
	public String login(String username,String password,Model model) {
		Map<String,Object> map = new HashMap<>(); 
		map.put("username", username);
		map.put("password", password);
	User user = userService.findUserByLogin(map);
	
	 if(user != null) {
		 return "index";
	 }
		return "redirect:login.jsp";	
	}
	@RequestMapping("/user/index")
	public String user(@RequestParam("")Map<String,String> map,@RequestParam(defaultValue="1")int pageNo,Model model) {
		PageHelper.startPage(pageNo, 3);
		List<User> u = userService.findUser(map);
		PageInfo<User> pageinfo = new PageInfo(u);
		model.addAttribute("page", pageinfo);
		model.addAttribute("u", pageinfo.getList());
		return "forward:/user/index.jsp";
	}
	@RequestMapping("/user/add")
	public String add(User user) {
		userService.addUser(user);
		return "forward:/user/index";
	}
	@RequestMapping("/user/delete")
	public String update(String userName) {
		userService.deleteUser(userName);
		return "forward:/user/index";
	}
}

