package top.blogs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import top.blogs.dao.BlogDao;
import top.blogs.po.Blog;
import top.blogs.po.Comment;
import top.blogs.service.BlogService;

@Service
@Transactional
public class BlogServiceImpl implements BlogService {
	@Autowired
	private BlogDao blogDao;

	@Override
	public Blog getBlogById(int id) {
		return blogDao.getBlogById(id);
	}

	@Override
	public List<Blog> getBlog() {
		return blogDao.getBlog();
	}

	@Override
	public int deleteBlog(int id) {
		blogDao.deleteBlog(id);
		return 0;
	}

	@Override
	public int updateBlog(Blog blog) {
		blogDao.updateBlog(blog);
		return 0;
	}

	@Override
	public int saveBlog(Blog blog) {
		blogDao.saveBlog(blog);
		return 0;
	}

	@Override
	public List getBlogByType(String type) {
		return blogDao.getBlogByType(type);
	}

	@Override
	public List getBlogByDate(String date) {
		return blogDao.getBlogByDate(date);
	}

	@Override
	public List<String> getTypeList() {
		return blogDao.getTypeList();
	}

	@Override
	public List<Blog> getBlogByTitleOrSTitle(String value) {
		value = "%" + value + "%";
		return blogDao.getBlogByTitleOrSTitle(value);
	}

	@Override
	public Blog getCommentById(int id) {
		return blogDao.getCommentById(id);
	}

	@Override
	public int saveComment(Comment comment) {
		int i = blogDao.saveComment(comment);
		return i;
	}

}
