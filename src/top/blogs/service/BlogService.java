package top.blogs.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import top.blogs.po.Blog;
import top.blogs.po.Comment;

public interface BlogService {
	// ͨ��id��ȡblog
	public Blog getBlogById(@Param("id") int id);

	// ��ȡ����
	public Blog getCommentById(int id);

	// ��ȡĳtype��ȫ������
	public List<Blog> getBlogByType(@Param("type") String type);

	// ��ȡĳtime��ȫ������
	public List<Blog> getBlogByDate(@Param("date") String date);

	// ��ȡ����blog
	public List<Blog> getBlog();

	// ɾ��blog
	public int deleteBlog(@Param("id") int id);

	// �༭blog
	public int updateBlog(Blog blog);

	// ����blog
	public int saveBlog(Blog blog);

	// ͨ������������������Ĳ��Ҳ���

	public List<String> getTypeList();

	public List<Blog> getBlogByTitleOrSTitle(String value);

	// ��������
	public int saveComment(Comment comment);
}
