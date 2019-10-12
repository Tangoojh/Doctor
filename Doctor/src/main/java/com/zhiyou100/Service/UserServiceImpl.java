package com.zhiyou100.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.zhiyou100.mapper.UserMapper;
import com.zhiyou100.model.User;
@Controller
public class UserServiceImpl implements UserService{
	@Autowired
    private UserMapper userMapper;
	
	@Override
	public User findUserByLogin(Map<String, Object> map) {
		User user = userMapper.findUserByLogin(map);
		return user;
	}

	@Override
	public List<User> findUser(Map<String, String> map) {
		List<User> u = userMapper.findUser(map);
		return u;
	}

	@Override
	public void addUser(User user) {
		userMapper.addUser(user);
	}

	@Override
	public void deleteUser(String userName) {
		userMapper.deleteUser(userName);
	}

}
