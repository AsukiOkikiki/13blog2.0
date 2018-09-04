package top.blogs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import top.blogs.dao.AdminDao;
import top.blogs.service.AdminService;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDao ad;

	public String getAdminByUsn(String username) {
		String password = ad.getAdminByUsn(username);
		return password;
	}

}
