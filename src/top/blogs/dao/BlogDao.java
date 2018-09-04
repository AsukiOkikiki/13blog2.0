package top.blogs.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import top.blogs.po.Blog;
import top.blogs.po.Comment;

public interface BlogDao {
	// ͨ��id��ȡblog
	public Blog getBlogById(@Param("id") int id);

	// ��ȡ����
	public Blog getCommentById(int id);

	// ��ȡĳtime��ȫ������
	public List<Blog> getBlogByDate(@Param("date") String date);

	// ��ȡĳtype��ȫ������
	public List<Blog> getBlogByType(@Param("type") String type);

	// ��ȡ����blog
	public List<Blog> getBlog();

	// ɾ��blog
	public int deleteBlog(@Param("id") int id);

	// �༭blog
	public int updateBlog(Blog blog);

	// ����blog
	public int saveBlog(Blog blog);

	// ��ѯ���༯��
	public List<String> getTypeList();

	// ͨ��������߶��������blog
	public List<Blog> getBlogByTitleOrSTitle(String value);

	// ��������
	public int saveComment(Comment comment);
}
