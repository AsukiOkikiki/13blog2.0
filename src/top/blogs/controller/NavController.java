package top.blogs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import top.blogs.dao.PhotoDao;
import top.blogs.po.Blog;
import top.blogs.po.Photo;
import top.blogs.po.User;
import top.blogs.service.BlogService;

@Controller
@RequestMapping("/nav")
public class NavController {
	@Autowired
	private BlogService bs;

	@Autowired
	private PhotoDao pe;

	@RequestMapping("/index")
	public ModelAndView blogPage(HttpSession session) {
		User user = (User) session.getAttribute("user");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("blogIndex");
		List<Blog> bloglist = bs.getBlog();
		List<String> typeList = bs.getTypeList();
		mv.addObject("typeList", typeList);
		mv.addObject("blogList", bloglist);
		return mv;
	}

	@RequestMapping("/photo")
	public ModelAndView photoPage(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<Photo> photoList = pe.getPhoto();
		mv.setViewName("photos");
		mv.addObject("photoList", photoList);
		return mv;
	}

	@RequestMapping("/other")
	public String otherPage() {
		return "others";
	}

	@RequestMapping("/about")
	public String aboutPage() {
		return "about";
	}

	@RequestMapping("/toLogin")
	public ModelAndView toLogin(String url) {
		ModelAndView mv = new ModelAndView("user_login");
		mv.addObject("url", url);
		return mv;
	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session, String url) {
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:" + url);
		return mv;
	}

	@RequestMapping("/toRegister")
	public ModelAndView toRegister(String url) {
		ModelAndView mv = new ModelAndView("user_register");
		mv.addObject("url", url);
		return mv;
	}
}
