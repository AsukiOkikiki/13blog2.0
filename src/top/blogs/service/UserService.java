package top.blogs.service;

import top.blogs.po.User;

public interface UserService {

	public User userLogin(String username, String password);

	public User getUserById(int id);

	// 用户注册
	public int saveUser(User user);

	// 验证用户名
	public User checkUsername(String username);
}
