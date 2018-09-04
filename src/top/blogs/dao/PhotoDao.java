package top.blogs.dao;

import java.util.List;

import top.blogs.po.Photo;

public interface PhotoDao {
	//����ͼƬ
	public int savePhoto(String url);
	
	// ��ȡ����ͼƬ
	public List<Photo> getPhoto();

	// ͨ��id��ȡblog
	public String getPhotoById(int id);

	// �༭ͼƬ
	public int editPhoto(Photo photo);

	// ɾ��ͼƬ
	public int deletePhoto(int id);
}
