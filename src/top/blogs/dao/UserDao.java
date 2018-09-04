package top.blogs.dao;

import org.apache.ibatis.annotations.Param;

import top.blogs.po.User;

public interface UserDao {
	// ��¼��֤
	public User userLogin(@Param("username") String username, @Param("password") String password);

	// ��֤�û���
	public User checkUsername(String username);

	// ��ѯ�û�
	public User getUserById(int id);

	// �û�ע��
	public int saveUser(User user);
}
