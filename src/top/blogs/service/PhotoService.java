package top.blogs.service;

import java.util.List;

import top.blogs.po.Photo;

public interface PhotoService {
	// ��ȡ����ͼƬ
	public List<Photo> getPhoto();

	// ͨ��id��ȡblog
	public String getPhotoById(int id);

	// ���ͼƬ
	public int editPhoto(Photo photo);

	// ɾ��ͼƬ
	public int deletePhoto(int id);

	// ����ͼƬ
	public int savePhoto(String url);
}
