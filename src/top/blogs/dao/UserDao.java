package top.blogs.dao;

import org.apache.ibatis.annotations.Param;

import top.blogs.po.User;

public interface UserDao {
	// 登录验证
	public User userLogin(@Param("username") String username, @Param("password") String password);

	// 验证用户名
	public User checkUsername(String username);

	// 查询用户
	public User getUserById(int id);

	// 用户注册
	public int saveUser(User user);
}
