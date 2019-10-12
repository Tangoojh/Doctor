package com.zhiyou100.Service;

import java.util.List;
import java.util.Map;

import com.zhiyou100.model.User;

public interface UserService {

	User findUserByLogin(Map<String, Object> map);

	List<User> findUser(Map<String, String> map);

	void addUser(User user);

	void deleteUser(String userName);

}
