package top.blogs.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import top.blogs.dao.BlogDao;
import top.blogs.po.Blog;

public class Main {
	@Autowired
	private BlogDao blogEdit;

	public Blog getBlog(int id) {
		Blog b = blogEdit.getBlogById(id);
		return b;
	}

	public static void main(String[] args) {
		Main m = new Main();
		m.getBlog(1);
	}
}
