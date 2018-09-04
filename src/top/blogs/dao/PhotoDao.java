package top.blogs.dao;

import java.util.List;

import top.blogs.po.Photo;

public interface PhotoDao {
	//保存图片
	public int savePhoto(String url);
	
	// 获取所有图片
	public List<Photo> getPhoto();

	// 通过id获取blog
	public String getPhotoById(int id);

	// 编辑图片
	public int editPhoto(Photo photo);

	// 删除图片
	public int deletePhoto(int id);
}
