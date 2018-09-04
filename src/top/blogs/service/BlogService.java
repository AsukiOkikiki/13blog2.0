package top.blogs.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import top.blogs.po.Blog;
import top.blogs.po.Comment;

public interface BlogService {
	// 通过id获取blog
	public Blog getBlogById(@Param("id") int id);

	// 获取评论
	public Blog getCommentById(int id);

	// 获取某type的全部博客
	public List<Blog> getBlogByType(@Param("type") String type);

	// 获取某time的全部博客
	public List<Blog> getBlogByDate(@Param("date") String date);

	// 获取所有blog
	public List<Blog> getBlog();

	// 删除blog
	public int deleteBlog(@Param("id") int id);

	// 编辑blog
	public int updateBlog(Blog blog);

	// 保存blog
	public int saveBlog(Blog blog);

	// 通过标题或二级标题或正文查找博客

	public List<String> getTypeList();

	public List<Blog> getBlogByTitleOrSTitle(String value);

	// 保存评论
	public int saveComment(Comment comment);
}
