package top.blogs.service;

import top.blogs.po.User;

public interface UserService {

	public User userLogin(String username, String password);

	public User getUserById(int id);

	// �û�ע��
	public int saveUser(User user);

	// ��֤�û���
	public User checkUsername(String username);
}
