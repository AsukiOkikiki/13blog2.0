package top.blogs.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import top.blogs.po.Admin;
import top.blogs.po.Blog;
import top.blogs.po.Message;
import top.blogs.service.AdminService;
import top.blogs.service.BlogService;
import top.blogs.service.PhotoService;
import top.blogs.util.DateUtil;
import top.blogs.util.PhotoUtil;

@Controller
@RequestMapping("/back")
public class BackController {

	@Autowired
	private BlogService bs;

	@Autowired
	private PhotoService ps;

	@Autowired
	private AdminService as;

	@RequestMapping("/index")
	public ModelAndView toBack(String username, String password) {
		ModelAndView mv = new ModelAndView();
		String psw = as.getAdminByUsn(username);
		if (psw != null && psw.equals(password)) {
			mv.setViewName("editBlog");
			List<Blog> blogList = bs.getBlog();
			mv.addObject("blogList", blogList);
			Admin admin = new Admin(username, password);
			return mv;
		}
		mv.setViewName("success");
		return mv;
	}

	@RequestMapping("/saveBlog")
	@ResponseBody
	public Message saveBlog(String title, String secondTitle, String text, String type)
			throws UnsupportedEncodingException {
		List<String> list = PhotoUtil.getShowPhoto(text);
		String showPhoto = list.get(0);
		String date = DateUtil.getDate();
		Blog blog = new Blog();
		blog.setTitle(title);
		blog.setSecondTitle(secondTitle);
		blog.setText(text);
		blog.setShowPhoto(showPhoto);
		blog.setType(type);
		blog.setDate(date);
		bs.saveBlog(blog);
		for (int i = 0; i < list.size(); i++) {
			ps.savePhoto(list.get(i));
		}
		Message message = new Message(true,"ok");
		return message;
	}

	@RequestMapping("/deleteBlog")
	public ModelAndView deleteBlog(int id) {
		bs.deleteBlog(id);
		ModelAndView mv = new ModelAndView();
		List<Blog> blogList = bs.getBlog();
		mv.addObject("blogList", blogList);
		mv.setViewName("editBlog");
		return mv;
	}

	@RequestMapping("/test")
	public ModelAndView test() {
		bs.getBlogById(1);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("success");
		return mv;
	}


}
