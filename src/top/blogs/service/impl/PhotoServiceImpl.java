package top.blogs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import top.blogs.dao.PhotoDao;
import top.blogs.po.Photo;
import top.blogs.service.PhotoService;

@Service
@Transactional
public class PhotoServiceImpl implements PhotoService {
	@Autowired
	private PhotoDao pd;

	@Override
	public List<Photo> getPhoto() {
		return pd.getPhoto();
	}

	@Override
	public String getPhotoById(int id) {
		return pd.getPhotoById(id);
	}

	@Override
	public int editPhoto(Photo photo) {
		pd.editPhoto(photo);
		return 0;
	}

	@Override
	public int deletePhoto(int id) {
		pd.deletePhoto(id);
		return 0;
	}

	@Override
	public int savePhoto(String url) {
		pd.savePhoto(url);
		return 0;
	}

}
