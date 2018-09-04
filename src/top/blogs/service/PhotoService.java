package top.blogs.service;

import java.util.List;

import top.blogs.po.Photo;

public interface PhotoService {
	// 获取所有图片
	public List<Photo> getPhoto();

	// 通过id获取blog
	public String getPhotoById(int id);

	// 标记图片
	public int editPhoto(Photo photo);

	// 删除图片
	public int deletePhoto(int id);

	// 保存图片
	public int savePhoto(String url);
}
