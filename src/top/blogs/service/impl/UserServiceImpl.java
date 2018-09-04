package top.blogs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import top.blogs.dao.UserDao;
import top.blogs.po.User;
import top.blogs.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao ud;

	public User getUserById(int id) {
		User user = ud.getUserById(id);
		return user;
	}

	public User userLogin(String username, String password) {
		User user = ud.userLogin(username, password);
		return user;
	}

	@Override
	public int saveUser(User user) {
		int i = ud.saveUser(user);
		return i;
	}

	@Override
	public User checkUsername(String username) {
		User user = ud.checkUsername(username);
		return user;
	}

}
